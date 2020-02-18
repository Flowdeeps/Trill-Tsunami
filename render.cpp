/**
 * \example Trill/trill-visual-raw
 *
 * Trill Visual Raw
 * ================
 *
 * New GUI fuctionality for Bela! 
 *
 * This example uses the Trill library and will work with any Trill sensor connected.
 *
 * The Trill sensor is scanned on an auxiliary task running parallel to the audio thread
 * and is read in DIFF mode giving the differential reading of each pad on the sensor.
 *
 * Readings are sent to the integrated p5 GUI every few milliseconds. 
 *
 * Once you run the project you will be able to visualise the value of each capacitive pad
 * on the sensor in the GUI.
 * 
 * A p5 sketch is included in this example that represents these values in a bar graph.
 *
 **/

#include <Bela.h>
#include <libraries/Trill/Trill.h>
#include <libraries/Gui/Gui.h>
#include <SampleStream.h>
#include "defs.hpp"
#include "samplelist.hpp"

// Trill objet declaration
Trill touchSensor;

// Gui object declaration
Gui gui;

AuxiliaryTask readI2cTask;

// Interval for reading from the sensor
int readInterval = 500; //ms
int readIntervalSamples = 0;
// Sleep time for auxiliary task
int gTaskSleepTime = 5000; // microseconds

// Time period (in seconds) after which data will be sent to the GUI
float gTimePeriod = 0.015;

int gRawRange[2] = {0, 0};

// set up the audio
bool isPlaying = false;

#define NUM_CHANNELS 2    // NUMBER OF CHANNELS IN THE FILE
#define BUFFER_LEN 44100   // BUFFER LENGTH
#define NUM_STREAMS 5

SampleStream *sampleStream[NUM_STREAMS];
AuxiliaryTask gFillBuffersTask;
int gStopThreads = 0;
int gTaskStopped = 0;
int gCount = 0;

void fillBuffers(void*) {
    for(int i=0;i<NUM_STREAMS;i++) {
        if(sampleStream[i]->bufferNeedsFilled())
            sampleStream[i]->fillBuffer();
    }
}

void loop(void*)
{
	while(!gShouldStop) {
		touchSensor.readI2C();
		usleep(gTaskSleepTime);
	}
}

bool setup(BelaContext *context, void *userData)
{
	// Setup a sensor on i2c 1, address 0x18 and in DIFF mode
	touchSensor.setup(1, 0x18, Trill::DIFF);

	readI2cTask = Bela_createAuxiliaryTask(loop, 50, "I2C-read", NULL);
	Bela_scheduleAuxiliaryTask(readI2cTask);

	readIntervalSamples = context->audioSampleRate*(readInterval/1000.0);

	gui.setup(context->projectName);

	// audio setup
    for(int i=0;i<NUM_STREAMS;i++) {
        sampleStream[i] = new SampleStream(gFilenames[i].c_str(), NUM_CHANNELS,BUFFER_LEN);
    }
    
    // Initialise auxiliary tasks
	if((gFillBuffersTask = Bela_createAuxiliaryTask(&fillBuffers, 90, "fill-buffer")) == 0)
		return false;

	return true;
}

void render(BelaContext *context, void *userData)
{
    // check if buffers need filling
    Bela_scheduleAuxiliaryTask(gFillBuffersTask);

	static unsigned int count = 0;
	
	for(unsigned int n = 0; n < context->audioFrames; n++) {
		// t t t t touch me…
		// Send number of touches, touch location and size to the GUI
		// after some time has elapsed.
		if(count >= gTimePeriod*context->audioSampleRate) 
		{
			for(unsigned int i = 0; i < touchSensor.numSensors(); i++) {
				if(touchSensor.rawData[i] > gRawRange[1]) {
					gRawRange[1] = touchSensor.rawData[i];
					if (touchSensor.rawData[i] > 0) {
						gPlayState[i] = true;
					}
				}
			}
			if(touchSensor.isReady()) {
				gui.sendBuffer(0, touchSensor.numSensors());
				gui.sendBuffer(1, gRawRange);
				gui.sendBuffer(2, touchSensor.rawData);
			}
			count = 0;
		}
		count++;
		
		// audio playback in the main thread
	    for (int i=0; i < NUM_STREAMS; i++) {
	        // process frames for each sampleStream objects (get samples per channel below)
			if (gPlayState[i]) {
		        sampleStream[i] -> processFrame();
			}
	    }
	    
		for(unsigned int channel = 0; channel < context->audioOutChannels; channel++) {
		    
	        float out = 0;
	        for(int i=0; i < NUM_STREAMS; i++) {
	            // get samples for each channel from each sampleStream object
	            out += sampleStream[i] -> getSample(channel);
	        }
	        // you may need to attenuate the output depending on the amount of streams playing back
	        audioWrite(context, n, channel, out);
	        
		}
	}
}

void cleanup(BelaContext *context, void *userData)
{
    for(int i=0;i<NUM_STREAMS;i++) {
        delete sampleStream[i];
    }
}

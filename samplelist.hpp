/***** samplelist.hpp *****/

std::string gFilenames[5] = {
	"piano_loop.wav",
	"bassphrase.wav",
	"bassphrase2.wav",
	"basspiano.wav",
	"stab1.wav"
};

int gFileLengths[5] = {
	206403,
	76239,
	117677,
	247920,
	57192
};

int gFilePointers[5] = {
	0,
	0,
	0,
	0,
	0
};

bool gPlayState[5] = {
	false,
	false,
	false,
	false,
	false
};

float gSampleData[5] = {};
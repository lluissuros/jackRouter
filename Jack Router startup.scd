// "https://www.youtube.com/watch?v=-IEWOs5EXqU"

(
ServerOptions.devices;
ServerOptions.outDevices;
ServerOptions.inDevices;

Server.default = Server.local;
s = Server.default;
s.options.device_("JackRouter");
s.options.sampleRate = 44100;
s.options.memSize = 2 ** 19;

// s.waitForBoot => I could load here synths or other files.

s.boot;
)


/*
1) Open Audio Midi Setup in Applications/Utilities
2) Run Jack
- in preferences change sample rate to 44.1Khz
3) In 'System Preferences/Sound' choose Jack for input and output.
4) Run SuperCollider
- make sure SuperCollider is in 44.1Khz
- choose Jack as your device
- run your code (make sure server is booted)
5) Start Logic
 choose Jack as your device
- have project with an audio track that has input 1-2 for its input.
6) Start playing something in SC
7) Connect inputs with outputs in Jack with double clicking.
*/
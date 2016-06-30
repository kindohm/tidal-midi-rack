{-|
module Sound.Tidal.MidiRack where

import Sound.Tidal.Stream (makeI, makeF)

import Sound.Tidal.MIDI.Control

rack :: ControllerShape
rack = ControllerShape { params = [

                            -- nord drum 2
                            mCC "nlevel" 7,
                            mCC "npan" 10,
                            mCC "nnoisefreq" 14,
                            mCC "nnoisetype" 15,
                            mCC "nnoiseenv" 16,
                            mCC "nnoiseres" 17,
                            mCC "nnoiseattack" 18,
                            mCC "nnoiseattackmode" 19,
                            mCC "npitch" 31,
                            mCC "npitch2" 63,
                            mCC "ndecay" 50,

                            -- volca bass stuff
                            mCC "bslide" 5,
                            mCC "blforate" 41,
                            mCC "blfoint" 42,
                            mCC "bpitch1" 43,
                            mCC "bpitch2" 44,
                            mCC "bpitch3" 45,
                            mCC "battack" 46,
                            mCC "bdecay" 47,
                            mCC "bcutoffegint" 48,

                            -- volca keys stuff
                            mCC "kslide" 5,
                            mCC "kvoice" 40,
                            mCC "kdetune" 42,
                            mCC "kvcoegint" 43,
                            mCC "kcutoff" 44,
                            mCC "kvcfegint" 45,
                            mCC "klforate" 46,
                            mCC "klfopitchint" 47,
                            mCC "klfocutoffint" 48,
                            mCC "kattack" 49,
                            mCC "kdecay" 50,
                            mCC "ksustain" 51,
                            mCC "kdelaytime" 52,
                            mCC "kdelayfeedback" 53,

                            -- rytm stuff
                            mCC "machtype" 15,
                            mCC "scene" 92,

                            mCC "synth1" 16,
                            mCC "synth2" 17,
                            mCC "synth3" 18,
                            mCC "synth4" 19,
                            mCC "synth5" 20,
                            mCC "synth6" 21,
                            mCC "synth7" 22,
                            mCC "synth8" 23,

                            mCC "samptune" 24,
                            mCC "sampfinetune" 25,
                            mCC "sampbitreduction" 26,
                            mCC "sampslot" 27,
                            mCC "sampstart" 28,
                            mCC "sampend" 29,
                            mCC "samploop" 30,
                            mCC "samplevel" 31,

                            mCC "filtatk" 70,
                            mCC "filtdec" 71,
                            mCC "filtsus" 72,
                            mCC "filtrel" 73,
                            mCC "filtfreq" 74,
                            mCC "filtres" 75,
                            mCC "filttype" 76,
                            mCC "filtenv" 77,

                            mCC "perf1" 35,
                            mCC "perf2" 36,
                            mCC "perf3" 37,
                            mCC "perf4" 39,
                            mCC "perf5" 40,
                            mCC "perf6" 41,
                            mCC "perf7" 42,
                            mCC "perf8" 43,

                            mCC "atk" 78,
                            mCC "hld" 79,
                            mCC "dec" 80,
                            mCC "ovr" 81,
                            mCC "del" 82,
                            mCC "reverb" 83,
                            mCC "rytmpan" 10,
                            mCC "vol" 7,

                            mCC "lfospeed" 102,
                            mCC "lfomult" 103,
                            mCC "lfofade" 104,
                            mCC "lfodest" 105,
                            mCC "lfowaveform" 106,
                            mCC "lfophase" 107,
                            mCC "lfotrig" 108,
                            mCC "lfodepth" 109,

                            mCC "delaytime" 16,
                            mCC "delaypingpong" 17,
                            mCC "delaywidth" 18,
                            mCC "delayfeedback" 19,
                            mCC "delayhpf" 20,
                            mCC "delaylpf" 21,
                            mCC "delayrevsend" 22,
                            mCC "delayvol" 23,
                            mCC "delayoverdrive" 72,

                            mCC "revdelay" 24,
                            mCC "revdecay" 25,
                            mCC "revvol" 31,

                            mCC "distamt" 70,
                            mCC "distsym" 71
                          ],
                         duration = ("dur", 0.05),
                         velocity = ("vel", 1),
                         latency = 0.1
                       }

oscKeys = toOscShape rack


-- volca bass
bslide = makeF oscKeys "bslide"
blforate = makeF oscKeys "blforate"
blfoint = makeF oscKeys "blfoint"
bpitch1 = makeF oscKeys "bpitch1"
bpitch2 = makeF oscKeys "bpitch2"
bpitch3 = makeF oscKeys "bpitch3"
battack = makeF oscKeys "battack"
bdecay = makeF oscKeys "bdecay"
bcutoffegint = makeF oscKeys "bcutoffegint"


-- volca keys
kslide = makeF oscKeys "kslide"
kvoice = makeF oscKeys "kvoice"
kdetune = makeF oscKeys "kdetune"
kvcoegint = makeF oscKeys "kvcoegint"
kcutoff = makeF oscKeys "kcutoff"
kvcfegint = makeF oscKeys "kvcfegint"
klforate = makeF oscKeys "klforate"
klfopitchint = makeF oscKeys "klfopitchint"
klfocutoffint = makeF oscKeys "klfocutoffint"
kattack = makeF oscKeys "kattack"
kdecay = makeF oscKeys "kdecay"
ksustain = makeF oscKeys "ksustain"
kdelaytime = makeF oscKeys "kdelaytime"
kdelayfeedback = makeF oscKeys "kdelayfeedback"


-- note on/off
note         = makeI oscKeys "note"
dur          = makeF oscKeys "dur"

-- standard synth params
synth1       = makeF oscKeys "synth1"
synth2       = makeF oscKeys "synth2"
synth3       = makeF oscKeys "synth3"
synth4       = makeF oscKeys "synth4"
synth5       = makeF oscKeys "synth5"
synth6       = makeF oscKeys "synth6"
synth7       = makeF oscKeys "synth7"
synth8       = makeF oscKeys "synth8"

-- generic synth level and tuning
level          = makeF oscKeys "synth1"
tune          = makeF oscKeys "synth2"
decay        = makeF oscKeys "synth3"

-- filter params
filtatk      = makeF oscKeys "filtatk"
filtdec      = makeF oscKeys "filtdec"
filtsus      = makeF oscKeys "filtsus"
filtrel      = makeF oscKeys "filtrel"
filtfreq      = makeF oscKeys "filtfreq"
filtres      = makeF oscKeys "filtres"
filttype      = makeF oscKeys "filttype"
filtenv      = makeF oscKeys "filtenv"

-- amplitude params
atk          = makeF oscKeys "atk"
hld          = makeF oscKeys "hld"
dec          = makeF oscKeys "dec"
ovr          = makeF oscKeys "ovr"
del          = makeF oscKeys "del"
reverb       = makeF oscKeys "reverb"
rytmpan       = makeF oscKeys "rytmpan"
vol          = makeF oscKeys "vol"

-- performance
perf1        = makeF oscKeys "perf1"
perf2        = makeF oscKeys "perf2"
perf3        = makeF oscKeys "perf3"
perf4        = makeF oscKeys "perf4"
perf5        = makeF oscKeys "perf5"
perf6        = makeF oscKeys "perf6"
perf7        = makeF oscKeys "perf7"
perf8        = makeF oscKeys "perf8"

-- sample
samptune         = makeF oscKeys "samptune"
sampfinetune     = makeF oscKeys "sampfinetune"
sampbitreduction = makeF oscKeys "sampbitreduction"
sampslot         = makeF oscKeys "sampslot"
sampstart        = makeF oscKeys "sampstart"
sampend          = makeF oscKeys "sampend"
samploop         = makeF oscKeys "samploop"
samplevel        = makeF oscKeys "samplevel"

-- machine type (e.g. hard snare, classic snare, hard bd, classic bd, etc)
machtype     = makeF oscKeys "machtype"

-- scene
scene = makeF oscKeys "scene"

-- lfo
lfospeed = makeF oscKeys "lfospeed"
lfomult = makeF oscKeys "lfomult"
lfofade = makeF oscKeys "lfofade"
lfodest = makeF oscKeys "lfodest"
lfowaveform = makeF oscKeys "lfowaveform"
lfophase = makeF oscKeys "lfophase"
lfotrig = makeF oscKeys "lfotrig"
lfodepth = makeF oscKeys "lfodepth"

-- delay
rdelaytime = makeF oscKeys "delaytime"
rdelaypingpong = makeF oscKeys "delaypingpong"
rdelaywidth = makeF oscKeys "delaywidth"
rdelayfeedback = makeF oscKeys "delayfeedback"
rdelayhpf = makeF oscKeys "delayhpf"
rdelaylpf = makeF oscKeys "delaylpf"
rdelayrevsend = makeF oscKeys "delayrevsend"
rdelayvol = makeF oscKeys "delayvol"
rdelayoverdrive = makeF oscKeys "delayoverdrive"

-- reverb
revdelay = makeF oscKeys "revdelay"
revdecay = makeF oscKeys "revdecay"
revvol = makeF oscKeys "revvol"

-- distortion
distamt = makeF oscKeys "distamt"
distsym = makeF oscKeys "distsym"

-- bd params
bdhold = makeF oscKeys "synth4"
bdsweeptime = makeF oscKeys "synth5"
bdsweepdepth = makeF oscKeys "synth6"
bdsnap = makeF oscKeys "synth6"
bdwav = makeF oscKeys "synth7"
bdtic = makeF oscKeys "synth8"
bdtra = makeF oscKeys "synth8"
bdfmamount = makeF oscKeys "synth4"
bdfmsweeptime = makeF oscKeys "synth6"
bdfmdecay = makeF oscKeys "synth7"
bdfmtune = makeF oscKeys "synth8"

-- sd params
sdnoisedecay = makeF oscKeys "synth6"
sdnoiselevel = makeF oscKeys "synth7"
sdhardsweepdepth = makeF oscKeys "synth4"
sdhardtic = makeF oscKeys "synth5"
sdhardsweeptime = makeF oscKeys "synth8"
sdclasdetune = makeF oscKeys "synth4"
sdclassnap = makeF oscKeys "synth5"
sdclasbalance = makeF oscKeys "synth8"
sdfmtune = makeF oscKeys "synth4"
sdfmdecay = makeF oscKeys "synth5"
sdfmamount = makeF oscKeys "synth8"

rshardsweepdepth = makeF oscKeys "synth4"
rshardtic = makeF oscKeys "synth5"
rshardnoiselevel = makeF oscKeys "synth6"
rshardsym = makeF oscKeys "synth7"
rshardsweeptime = makeF oscKeys "synth8"

rsclasbalance = makeF oscKeys "synth4"
rsclastune2 = makeF oscKeys "synth5"
rsclassym = makeF oscKeys "synth6"
rsclasnoiselevel = makeF oscKeys "synth7"
rsclastic = makeF oscKeys "synth8"

-- cp params
cpnum = makeF oscKeys "synth4"
cprate = makeF oscKeys "synth5"
cpnoiselevel = makeF oscKeys "synth6"
cprand = makeF oscKeys "synth7"
cpdecay = makeF oscKeys "synth8"


-- bt params
btnoiselevel = makeF oscKeys "synth5"
btsnap = makeF oscKeys "synth6"

-- toms
tomsweepdepth = makeF oscKeys "synth4"
tomsweeptime = makeF oscKeys "synth5"
tomnoisedecay = makeF oscKeys "synth6"
tomnoiselevel = makeF oscKeys "synth7"
tomnoisetone = makeF oscKeys "synth8"

-- cyms and cb
hatcolor = makeF oscKeys "synth4"
cycolor = makeF oscKeys "synth4"
cytone = makeF oscKeys "synth5"
cbdetune = makeF oscKeys "synth4"

-- nord
npitch = makeF oscKeys "npitch"
npitch2 = makeF oscKeys "npitch2"
ndecay = makeF oscKeys "ndecay"

vel          = makeF oscKeys "vel"

-}

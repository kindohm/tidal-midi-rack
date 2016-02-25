 module Sound.Tidal.MidiRack2 where

import Sound.Tidal.Stream (makeI, makeF)

import Sound.Tidal.MIDI.Control

rack :: ControllerShape
rack = ControllerShape { params = [

                            mCC "modwheel" 1,

                            -- nord drum 2
                            mCC "nlevel" 7,
                            mCC "npan" 10,
                            mCC "nnoisefreq" 14,
                            mCC "nnoisetype" 15,
                            mCC "nnoiseenv" 16,
                            mCC "nnoiseres" 17,
                            mCC "nnoiseatk" 18,
                            mCC "nnoiseatkmode" 19,
                            mCC "nnoisedecaytype" 20,
                            mCC "nnoisedecay" 21,
                            mCC "nnoisedecaylo" 22,
                            mCC "ndistamount" 23,
                            mCC "ndisttype" 24,
                            mCC "neqfreq" 25,
                            mCC "neqgain" 26,
                            mCC "nechofeedback" 27,
                            mCC "necho" 28,
                            mCC "nechotime" 29,
                            mCC "nspectra" 30,
                            mCC "npitch" 31,
                            mCC "nwave" 46,
                            mCC "ntimbredecay" 47,
                            mCC "npunch" 48,
                            mCC "ndecaytype" 49,
                            mCC "ndecay" 50,
                            mCC "ndeclo" 51,
                            mCC "ntimbre" 52,
                            mCC "nenvelope" 53,
                            mCC "nbend" 54,
                            mCC "nbendtime" 55,
                            mCC "nclick" 56,
                            mCC "nclicktype" 57,
                            mCC "nmix" 58,
                            mCC "nechotime2" 61,
                            mCC "npitch2" 63,
                            mCC "ndecay" 50,

                            -- RYTM
                            mCC "synth1" 16,
                            mCC "synth2" 17,
                            mCC "synth3" 18,
                            mCC "synth4" 19,
                            mCC "synth5" 20,
                            mCC "synth6" 21,
                            mCC "synth7" 22,
                            mCC "synth8" 23,
                            mCC "perf1" 35,
                            mCC "perf2" 36,
                            mCC "perf3" 37,
                            mCC "perf4" 39,
                            mCC "perf5" 40,
                            mCC "perf6" 41,
                            mCC "perf7" 42,
                            mCC "perf8" 43,

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

                            -- 1M stuff
                            mCC "rmod" 1,
                            mCC "rlpcutoff" 3,
                            mCC "rport" 5,
                            mCC "rres" 9,
                            mCC "rcrush" 12,
                            mCC "rdelaytime" 13,
                            mCC "rosc1" 16,
                            mCC "rosc2" 17,
                            mCC "rsub" 18,
                            mCC "rnoise" 19,
                            mCC "rpitchenv" 22,
                            mCC "rpitchatk" 23,
                            mCC "rpitchdecay" 24,
                            mCC "rlfopitch" 26,
                            mCC "rlfofade" 27,
                            mCC "rlfofilter" 28,
                            mCC "rlforate" 29,
                            mCC "rlfoamp" 30,
                            mCC "rlfotype" 35,
                            mCC "rosc1type" 46,
                            mCC "rosc1range" 47,
                            mCC "rosc1color" 50,
                            mCC "rosc1xmod" 52,
                            mCC "rosc2color" 55,
                            mCC "rosc2tune" 56,
                            mCC "rosc1mod" 60,
                            mCC "rosc2type" 61,
                            mCC "rosc2range" 62,
                            mCC "rosc2mod" 63,
                            mCC "ramptone" 69,
                            mCC "rhpcutoff" 79,
                            mCC "rfilterenv" 81,
                            mCC "rfilterkey" 82,
                            mCC "rfilteratk" 83,
                            mCC "rfilterdecay" 84,
                            mCC "rfiltersustain" 85,
                            mCC "rfilterrelease" 86,
                            mCC "rampatk" 89,
                            mCC "rampdecay" 90,
                            mCC "rreverb" 91,
                            mCC "rdelay" 94,
                            mCC "rampsustain" 96,
                            mCC "ramprelease" 97,
                            mCC "rosc2ring" 111,
                            mCC "rosc2sync" 112,
                            mCC "rsubtype" 113,
                            mCC "rnoisetype" 114,
                            mCC "rlpftype" 115,
                            mCC "rlegato" 116,
                            mCC "rlfokeytrig" 117,
                            mCC "rtemposync" 118,
                            mCC "rmono" 119,

                            -- minilogue
                            mCC "mnoise" 1,
                            mCC "mosc1pitch" 2,
                            mCC "mosc2pitch" 3,
                            mCC "mosc1shape" 4,
                            mCC "mosc2shape" 5,
                            mCC "mosc1" 7,
                            mCC "mosc2" 8,
                            mCC "mxmod" 9,
                            mCC "mpitchmod" 10,
                            mCC "mcutoff" 11,
                            mCC "mres" 12,
                            mCC "mfilterenv" 13,
                            mCC "mampatk" 16,
                            mCC "mampdecay" 17,
                            mCC "mampsus" 18,
                            mCC "mamprel" 19,
                            mCC "mfilteratk" 20,
                            mCC "mfilterdecay" 21,
                            mCC "mfiltersus" 22,
                            mCC "mfilterrel" 23,
                            mCC "mlforate" 24,
                            mCC "mlfoamt" 26,
                            mCC "mvoicedepth" 27,
                            mCC "mhpcutoff" 29,
                            mCC "mdelaytime" 30,
                            mCC "mdelayfeedback" 31,
                            mCC "mosc1oct" 64,
                            mCC "mosc2oct" 65,
                            mCC "mosc1wave" 66,
                            mCC "mosc2wave" 67,
                            mCC "msync" 80,
                            mCC "mring" 81,
                            mCC "mcutoffvel" 82,
                            mCC "mkeytrack" 83,
                            mCC "mcutofftype" 84,
                            mCC "mlfotarget" 90,
                            mCC "mlfoamount" 91,
                            mCC "mlfowave" 92
                          ],
                         duration = ("dur", 0.05),
                         velocity = ("vel", 1),
                         latency = 0.1
                       }

oscKeys = toOscShape rack


-- note on/off, vel
note         = makeI oscKeys "note"
dur          = makeF oscKeys "dur"
vel          = makeF oscKeys "vel"
modwheel     = makeF oscKeys "modwheel"

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


-- nord
npitch = makeF oscKeys "npitch"
npitch2 = makeF oscKeys "npitch2"
ndecay = makeF oscKeys "ndecay"
nlevel = makeF oscKeys "nlevel"
npan = makeF oscKeys "npan"
nnoisefreq = makeF oscKeys "nnoisefreq"
nnoisetype = makeF oscKeys "nnoisetype"
nnoiseenv = makeF oscKeys "nnoiseenv"
nnoiseres = makeF oscKeys "nnoiseres"
nnoiseatk = makeF oscKeys "nnoiseatk"
nnoiseatkmode = makeF oscKeys "nnoiseatkmode"
nnoisedecaytype = makeF oscKeys "nnoisedecaytype"
nnoisedecay = makeF oscKeys "nnoisedecay"
nnoisedecaylo = makeF oscKeys "nnoisedecaylo"
ndistamount = makeF oscKeys "ndistamount"
ndisttype = makeF oscKeys "ndisttype"
neqfreq = makeF oscKeys "neqfreq"
neqgain = makeF oscKeys "neqgain"
nechofeedback = makeF oscKeys "nechofeedback"
necho = makeF oscKeys "necho"
nechotime = makeF oscKeys "nechotime"
nspectra = makeF oscKeys "nspectra"
nwave = makeF oscKeys "nwave"
ntimbredecay = makeF oscKeys "ntimbredecay"
npunch = makeF oscKeys "npunch"
ndecaytype = makeF oscKeys "ndecaytype"
ndeclo = makeF oscKeys "ndeclo"
ntimbre = makeF oscKeys "ntimbre"
nenvelope = makeF oscKeys "nenvelope"
nbend = makeF oscKeys "nbend"
nbendtime = makeF oscKeys "nbendtime"
nclick = makeF oscKeys "nclick"
nclicktype = makeF oscKeys "nclicktype"
nmix = makeF oscKeys "nmix"
nechotime2 = makeF oscKeys "nechotime2"


-- 1M
rmod = makeF oscKeys "rmod"
rlpcutoff = makeF oscKeys "rlpcutoff"
rport = makeF oscKeys "rport"
rres = makeF oscKeys "rres"
rcrush = makeF oscKeys "rcrush"
rdelaytime = makeF oscKeys "rdelaytime"
rosc1 = makeF oscKeys "rosc1"
rosc2 = makeF oscKeys "rosc2"
rsub = makeF oscKeys "rsub"
rnoise = makeF oscKeys "rnoise"
rpitchenv = makeF oscKeys "rpitchenv"
rpitchatk = makeF oscKeys "rpitchatk"
rpitchdecay = makeF oscKeys "rpitchdecay"
rlfopitch = makeF oscKeys "rlfopitch"
rlfofade = makeF oscKeys "rlfofade"
rlfofilter = makeF oscKeys "rlfofilter"
rlforate = makeF oscKeys "rlforate"
rlfoamp = makeF oscKeys "rlfoamp"
rlfotype = makeF oscKeys "rlfotype"
rosc1type = makeF oscKeys "rosc1type"
rosc1range = makeF oscKeys "rosc1range"
rosc1color = makeF oscKeys "rosc1color"
rosc1xmod = makeF oscKeys "rosc1xmod"
rosc2color = makeF oscKeys "rosc2color"
rosc2tune = makeF oscKeys "rosc2tune"
rosc1mod = makeF oscKeys "rosc1mod"
rosc2type = makeF oscKeys "rosc2type"
rosc2range = makeF oscKeys "rosc2range"
rosc2mod = makeF oscKeys "rosc2mod"
ramptone = makeF oscKeys "ramptone"
rhpcutoff = makeF oscKeys "rhpcutoff"
rfilterenv = makeF oscKeys "rfilterenv"
rfilterkey = makeF oscKeys "rfilterkey"
rfilteratk = makeF oscKeys "rfilteratk"
rfilterdecay = makeF oscKeys "rfilterdecay"
rfiltersustain = makeF oscKeys "rfiltersustain"
rfilterrelease = makeF oscKeys "rfilterrelease"
rampatk = makeF oscKeys "rampatk"
rampdecay = makeF oscKeys "rampdecay"
rreverb = makeF oscKeys "rreverb"
rdelay = makeF oscKeys "rdelay"
rampsustain = makeF oscKeys "rampsustain"
ramprelease = makeF oscKeys "ramprelease"
rosc2ring = makeF oscKeys "rosc2ring"
rosc2sync = makeF oscKeys "rosc2sync"
rsubtype = makeF oscKeys "rsubtype"
rnoisetype = makeF oscKeys "rnoisetype"
rlpftype = makeF oscKeys "rlpftype"
rlegato = makeF oscKeys "rlegato"
rlfokeytrig = makeF oscKeys "rlfokeytrig"
rtemposync = makeF oscKeys "rtemposync"
rmono = makeF oscKeys "rmono"


-- minilogue
mnoise = makeF oscKeys "mnoise"
mosc1pitch = makeF oscKeys "mosc1pitch"
mosc2pitch = makeF oscKeys "mosc2pitch"
mosc1shape = makeF oscKeys "mosc1shape"
mosc2shape = makeF oscKeys "mosc2shape"
mosc1 = makeF oscKeys "mosc1"
mosc2 = makeF oscKeys "mosc2"
mxmod = makeF oscKeys "mxmod"
mpitchmod = makeF oscKeys "mpitchmod"
mcutoff = makeF oscKeys "mcutoff"
mres = makeF oscKeys "mres"
mfilterenv = makeF oscKeys "mfilterenv"
mampatk = makeF oscKeys "mampatk"
mampdecay = makeF oscKeys "mampdecay"
mampsus = makeF oscKeys "mampsus"
mamprel = makeF oscKeys "mamprel"
mfilteratk = makeF oscKeys "mfilteratk"
mfilterdecay = makeF oscKeys "mfilterdecay"
mfiltersus = makeF oscKeys "mfiltersus"
mfilterrel = makeF oscKeys "mfilterrel"
mlforate = makeF oscKeys "mlforate"
mlfoamt = makeF oscKeys "mlfoamt"
mvoicedepth = makeF oscKeys "mvoicedepth"
mhpcutoff = makeF oscKeys "mhpcutoff"
mdelaytime = makeF oscKeys "mdelaytime"
mdelayfeedback = makeF oscKeys "mdelayfeedback"
mosc1oct = makeF oscKeys "mosc1oct"
mosc2oct = makeF oscKeys "mosc2oct"
mosc1wave = makeF oscKeys "mosc1wave"
mosc2wave = makeF oscKeys "mosc2wave"
msync = makeF oscKeys "msync"
mring = makeF oscKeys "mring"
mcutoffvel = makeF oscKeys "mcutoffvel"
mkeytrack = makeF oscKeys "mkeytrack"
mcutofftype = makeF oscKeys "mcutofftype"
mlfotarget = makeF oscKeys "mlfotarget"
mlfoamount = makeF oscKeys "mlfoamount"
mlfowave = makeF oscKeys "mlfowave"


-- rytm
synth1       = makeF oscKeys "synth1"
synth2       = makeF oscKeys "synth2"
synth3       = makeF oscKeys "synth3"
synth4       = makeF oscKeys "synth4"
synth5       = makeF oscKeys "synth5"
synth6       = makeF oscKeys "synth6"
synth7       = makeF oscKeys "synth7"
synth8       = makeF oscKeys "synth8"
perf1        = makeF oscKeys "perf1"
perf2        = makeF oscKeys "perf2"
perf3        = makeF oscKeys "perf3"
perf4        = makeF oscKeys "perf4"
perf5        = makeF oscKeys "perf5"
perf6        = makeF oscKeys "perf6"
perf7        = makeF oscKeys "perf7"
perf8        = makeF oscKeys "perf8"

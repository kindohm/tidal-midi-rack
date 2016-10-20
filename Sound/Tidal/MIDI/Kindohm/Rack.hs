module Sound.Tidal.MIDI.Kindohm.Rack where

import Sound.Tidal.Params
import Sound.Tidal.MIDI.Control
import Sound.Tidal.MIDI.Kindohm.CustomParams

rackController :: ControllerShape
rackController = ControllerShape { controls = [
                            mCC modwheel_p 1,

                            --rytm
                            mCC synth1_p 16,
                            mCC synth2_p 17,
                            mCC synth3_p 18,
                            mCC synth4_p 19,
                            mCC synth5_p 20,
                            mCC synth6_p 21,
                            mCC synth7_p 22,
                            mCC synth8_p 23,
                            mCC perf1_p 35,
                            mCC perf2_p 36,
                            mCC perf3_p 37,
                            mCC perf4_p 39,
                            mCC perf5_p 40,
                            mCC perf6_p 41,
                            mCC perf7_p 42,
                            mCC perf8_p 43,
                            mCC perf9_p 44,
                            mCC perf10_p 45,
                            mCC perf11_p 46,
                            mCC perf12_p 47,

                            --minilogue
                            mCC noise_p 1,
                            mCC pitch1_p 2,
                            mCC pitch2_p 3,
                            mCC shape1_p 4,
                            mCC shape2_p 5,
                            mCC vol1_p 7,
                            mCC vol2_p 8,
                            mCC xmod_p 9,
                            mCC pitchmod_p 10,
                            mCC cutoff_p 11,
                            mCC resonance_p 12,
                            mCC egint_p 13,
                            mCC attack_p 16,
                            mCC decay_p 17,
                            mCC sustain_p 18,
                            mCC release_p 19,
                            mCC egattack_p 20,
                            mCC egdecay_p 21,
                            mCC egsustain_p 22,
                            mCC egrelease_p 23,
                            mCC lforate_p 24,
                            mCC lfoint_p 26,
                            mCC voicedepth_p 27,
                            mCC hcutoff_p 29,
                            mCC delaytime_p 30,
                            mCC delayfeedback_p 31,
                            mCC oct1_p 64,
                            mCC oct2_p 65,
                            mCC wave1_p 66,
                            mCC wave2_p 67,
                            mCC sync_p 80,
                            mCC ring_p 81,
                            mCC lfotarget_p 90,
                            mCC lfomod_p 91,
                            mCC lfowave_p 92,
                            mCC portamento_p 61,

                            -- volca
                            mCC kportamento_p 5,
                            mCC voice_p 40,
                            mCC octave_p 41,
                            mCC detune_p 42,
                            mCC vcoegint_p 43,
                            mCC vcfegint_p 45,
                            mCC kcutoff_p 44,
                            mCC klforate_p 46,
                            mCC klfopitchint_p 47,
                            mCC klfocutoffint_p 48,
                            mCC kattack_p 49,
                            mCC kdecay_p 50,
                            mCC ksustain_p 51,
                            mCC kdelaytime_p 52,
                            mCC kdelayfeedback_p 53,

                            -- FL harmor
                            mCC x_p 100,
                            mCC y_p 101,
                            mCC z_p 102,
                            mCC ab_p 103,
                            mCC gain_p 105,

                            -- FL effects
                            mCC reverb_p 104

                          ],
                         latency = 0.1
                       }

rack = toShape rackController

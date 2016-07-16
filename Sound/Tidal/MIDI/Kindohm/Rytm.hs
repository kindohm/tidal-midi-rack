module Sound.Tidal.MIDI.Kindohm.Rytm where

import Sound.Tidal.Params
import Sound.Tidal.MIDI.Control
import Sound.Tidal.MIDI.Kindohm.CustomParams

rytmController :: ControllerShape
rytmController = ControllerShape { controls = [

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
                            mCC perf4_p 38,
                            mCC perf5_p 39,
                            mCC perf6_p 40,
                            mCC perf7_p 41,
                            mCC perf8_p 42,
                            mCC cutoff_p 74,
                            mCC resonance_p 75,
                            mCC pan_p 10,
                            mCC reverb_p 83
                          ],
                         latency = 0.2
                       }

rytm = toShape rytmController

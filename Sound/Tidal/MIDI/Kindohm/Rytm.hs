module Sound.Tidal.MIDI.Kindohm.Rytm where

import Sound.Tidal.Params
import Sound.Tidal.MIDI.Control
import Sound.Tidal.MIDI.Kindohm.CustomParams

rytmController :: ControllerShape
rytmController = ControllerShape { controls = [
                            mCC perf1_p 35,
                            mCC perf2_p 36,
                            mCC perf3_p 37,
                            mCC perf4_p 38,
                            mCC perf5_p 39,
                            mCC perf6_p 40,
                            mCC perf7_p 41,
                            mCC perf8_p 42,
                            mCC scene1_p 92
                          ],
                         latency = 0.5
                       }

rytm = toShape rytmController

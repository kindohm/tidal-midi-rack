module Sound.Tidal.MIDI.Kindohm.RytmFL where

import Sound.Tidal.Params
import Sound.Tidal.MIDI.Control
import Sound.Tidal.MIDI.Kindohm.CustomParams

rytmFLController :: ControllerShape
rytmFLController = ControllerShape { controls = [
                            mCC perf1_p 35,
                            mCC perf2_p 36,
                            mCC perf3_p 37,
                            mCC perf4_p 38,
                            mCC perf5_p 39,
                            mCC perf6_p 40,
                            mCC perf7_p 41,
                            mCC perf8_p 42,
                            mCC scene1_p 92,
                            mCC x_p 100,
                            mCC y_p 101,
                            mCC z_p 102,
                            mCC ab_p 103
                          ],
                         latency = 0.5
                       }

rytmFL = toShape rytmFLController

module Sound.Tidal.Rytm where

import Sound.Tidal.Params
import Sound.Tidal.MIDI.Control

(tun, tun_p) = pF "tun" (Just 0.5)
(perf1, perf1_p) = pF "perf1" (Just 0)
(perf2, perf2_p) = pF "perf2" (Just 0)
(perf3, perf3_p) = pF "perf3" (Just 0)
(perf4, perf4_p) = pF "perf4" (Just 0)
(perf5, perf5_p) = pF "perf5" (Just 0)
(perf6, perf6_p) = pF "perf6" (Just 0)
(perf7, perf7_p) = pF "perf7" (Just 0)
(perf8, perf8_p) = pF "perf8" (Just 0)
(synth1, synth1_p) = pF "synth1" (Just 0)
(synth2, synth2_p) = pF "synth2" (Just 0)
(synth3, synth3_p) = pF "synth3" (Just 0)
(synth4, synth4_p) = pF "synth4" (Just 0)
(synth5, synth5_p) = pF "synth5" (Just 0)
(synth6, synth6_p) = pF "synth6" (Just 0)
(synth7, synth7_p) = pF "synth7" (Just 0)
(synth8, synth8_p) = pF "synth8" (Just 0)
(reverb, reverb_p) = pF "reverb" (Just 0)

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
                         latency = 0.01
                       }

rytm = toShape rytmController

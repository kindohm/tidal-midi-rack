module Sound.Tidal.MIDI.Kindohm.VolcaKeys where

import Sound.Tidal.Params
import Sound.Tidal.MIDI.Control
--import Sound.Tidal.MIDI.Kindohm.CustomParams

(kportamento, kportamento_p) = pF "kportamento" (Just 0)
(kcutoff, kcutoff_p) = pF "kcutoff" (Just 0)
(klfopitchint, klfopitchint_p) = pF "klfopitchint" (Just 0)
(klforate, klforate_p) = pF "klforate" (Just 0)
(klfocutoffint, klfocutoffint_p) = pF "klfocutoffint" (Just 0)
(kattack, kattack_p) = pF "kattack" (Just 0)
(kdecay, kdecay_p) = pF "kdecay" (Just 0)
(ksustain, ksustain_p) = pF "ksustain" (Just 0)
(kdelaytime, kdelaytime_p) = pF "kdelaytime" (Just 0)
(kdelayfeedback, kdelayfeedback_p) = pF "kdelayfeedback" (Just 0)

volcaController :: ControllerShape
volcaController = ControllerShape { controls = [
                            mCC modwheel_p 1,


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
                            mCC kdelayfeedback_p 53

                          ],
                         latency = 0.5
                         -- 0.23 for SD
                         -- 0.1 for classic dirt
                       }

rack = toShape volcaController

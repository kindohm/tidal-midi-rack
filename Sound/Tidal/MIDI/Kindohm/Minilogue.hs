module Sound.Tidal.MIDI.Kindohm.Minilogue where

import Sound.Tidal.Params
import Sound.Tidal.MIDI.Control
import Sound.Tidal.MIDI.Kindohm.CustomParams

minilogueController :: ControllerShape
minilogueController = ControllerShape { controls = [

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
                            mCC lfomod_p 91,
                            mCC lfowave_p 92,
                            mCC portamento_p 61
                          ],
                         latency = 0.2
                       }

ml = toShape minilogueController

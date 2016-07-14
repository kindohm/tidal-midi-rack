module Sound.Tidal.MIDI.Kindohm.Erebus where

import Sound.Tidal.Params
import Sound.Tidal.MIDI.Control

erebusController :: ControllerShape
erebusController = ControllerShape { controls = [
                            mCC modwheel_p 1
                          ],
                         latency = 0.2
                       }

erebus = toShape erebusController

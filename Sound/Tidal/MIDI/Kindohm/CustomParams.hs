module Sound.Tidal.MIDI.Kindohm.CustomParams where

import Sound.Tidal.Params

-- volca keys
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

-- minilogue
(noise, noise_p) = pF "noise" (Just 0)
(shape1, shape1_p) = pF "shape1" (Just 0)
(shape2, shape2_p) = pF "shape2" (Just 0)
(vol1, vol1_p) = pF "vol1" (Just 1)
(vol2, vol2_p) = pF "vol2" (Just 1)
(xmod, xmod_p) = pF "xmod" (Just 0)
(pitchmod, pitchmod_p) = pF "pitchmod" (Just 0.5)
(egint, egint_p) = pF "egint" (Just 0.5)
(egattack, egattack_p) = pF "egattack" (Just 0)
(egdecay, egdecay_p) = pF "egdecay" (Just 0)
(egsustain, egsustain_p) = pF "egsustain" (Just 1)
(egrelease, egrelease_p) = pF "egrelease" (Just 0)
(voicedepth, voicedepth_p) = pF "voicedepth" (Just 0)
(oct1, oct1_p) = pF "oct1" (Just 0.5)
(oct2, oct2_p) = pF "oct2" (Just 0.5)
(wave1, wave1_p) = pF "wave1" (Just 1)
(wave2, wave2_p) = pF "wave2" (Just 1)
(sync, sync_p) = pF "sync" (Just 0)
(ring, ring_p) = pF "ring" (Just 0)
(lfotarget, lfotarget_p) = pF "lfotarget" (Just 0)
(lforate, lforate_p) = pF "lforate" (Just 0)
(lfomod, lfomod_p) = pF "lfomod" (Just 0)
(lfowave, lfowave_p) = pF "lfowave" (Just 0.5)

-- for rytm
(tun, tun_p) = pF "tun" (Just 0.5)
(perf1, perf1_p) = pF "perf1" (Just 0)
(perf2, perf2_p) = pF "perf2" (Just 0)
(perf3, perf3_p) = pF "perf3" (Just 0)
(perf4, perf4_p) = pF "perf4" (Just 0)
(perf5, perf5_p) = pF "perf5" (Just 0)
(perf6, perf6_p) = pF "perf6" (Just 0)
(perf7, perf7_p) = pF "perf7" (Just 0)
(perf8, perf8_p) = pF "perf8" (Just 0)
(perf9, perf9_p) = pF "perf9" (Just 0)
(perf10, perf10_p) = pF "perf10" (Just 0)
(perf11, perf11_p) = pF "perf11" (Just 0)
(perf12, perf12_p) = pF "perf12" (Just 0)
(synth1, synth1_p) = pF "synth1" (Just 1)
(synth2, synth2_p) = pF "synth2" (Just 0)
(synth3, synth3_p) = pF "synth3" (Just 0)
(synth4, synth4_p) = pF "synth4" (Just 0)
(synth5, synth5_p) = pF "synth5" (Just 0)
(synth6, synth6_p) = pF "synth6" (Just 0)
(synth7, synth7_p) = pF "synth7" (Just 0)
(synth8, synth8_p) = pF "synth8" (Just 0)
(reverb, reverb_p) = pF "reverb" (Just 0)
(scene1, scene1_p) = pF "scene1" (Just 0)

-- for Harmor
(x, x_p) = pF "x" (Just 0.5)
(y, y_p) = pF "y" (Just 0.5)
(z, z_p) = pF "z" (Just 0.5)
(ab, ab_p) = pF "ab" (Just 0.5)

-- 0-coast
(porttime, porttime_p) = pF "porttime" (Just 0)
(port, port_p) = pF "port" (Just 0)

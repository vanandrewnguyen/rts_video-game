///scrPlayAudio(emitter, sound, pitchMin, pitchMax, gainMin, gainMax, soundX, soundY, priority);

var em = argument0;
var soundID = argument1;
var pitchMin = argument2;
var pitchMax = argument3;
var gainMin = argument4;
var gainMax = argument5;
var sx = argument6;
var sy = argument7;
var priority = argument8;

// If we can't play sounds then the rest of unneeded
if (global.canPlayAudio == 0) { exit; }

// Grab the final pitch and gain to pass to emitter
// We base audio gain based on how close the sound source is to center within a radius
var audioDistance = point_distance(oAudioCont.centerX, oAudioCont.centerY, sx, sy);
var audioMult = (1 - (audioDistance / oAudioCont.maximumAudioDistance));
if (audioMult < 0) { audioMult = 0; }
var finalPitch = random_range(pitchMin, pitchMax);
var finalGain = random_range(gainMin, gainMax) * audioMult;

// Reduce gain if sound is already playing (to avoid blowing players ears out)
if (audio_is_playing(soundID)) { finalGain *= 0.4; }

// Finally play the sound
audio_emitter_pitch(em, finalPitch);
audio_emitter_gain(em, finalGain);
audio_play_sound_on(em, soundID, false, priority);

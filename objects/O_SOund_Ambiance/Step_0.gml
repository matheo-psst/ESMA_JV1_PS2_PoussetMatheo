if room == R_Exterieur
{
	if (!audio_is_playing(birds_chirping_ambiance_26052)) {
	 // Joue le son une seule fois
	 audio_play_sound(birds_chirping_ambiance_26052, 1, false, 0.4);
}
}
if room == R_ABRIP49
{
	if (!audio_is_playing(underground_prison_33504)) {
	 // Joue le son une seule fois
	 audio_play_sound(underground_prison_33504, 1, false, 0.2);
	 
	 audio_stop_sound(birds_chirping_ambiance_26052)
}
}
	
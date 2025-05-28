
if (show_text) {
    Text_Time -= 1;
	if (!audio_is_playing(keyboard_typing)) {
	 // Joue le son une seule fois
	 audio_play_sound(keyboard_typing, 1, false);
}
	
    if (Text_Time <= 0) {
        show_text = false;
		O_Player.Reading = false;
		audio_stop_sound(keyboard_typing)
		instance_destroy()
		
    }
}

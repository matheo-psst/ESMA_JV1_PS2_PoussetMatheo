
if (show_text) {
    Text_Time -= 1;
	audio_play_sound(keyboard_typing, 0, 0, 1.0, undefined, 1.0);
    if (Text_Time <= 0) {
        show_text = false;
		O_Player.Reading = false;
		instance_destroy()
    }
}

key_left = keyboard_check(vk_left) or keyboard_check(ord("Q"))
key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);
key_r = keyboard_check_pressed(ord("R"));
key_jump_hold = keyboard_check(vk_space);
key_shift_hold = keyboard_check(vk_shift);
clickG = mouse_check_button_pressed(mb_left);
clickDHold = mouse_check_button(mb_right);
clickDreleased = mouse_check_button_released(mb_right);
corde = instance_place(x,y,O_Corde) and key_jump_hold;


var move =  key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

//Jump
if (place_meeting(x,y+1,O_Collider)) && (key_jump) and !place_meeting(x,y+1,O_Corde)
{
	vsp	= -7;
	
	
}

///horizontal


if(clickDHold)
{
	hsp = move;
	
	
}
if  (place_meeting(x+hsp,y,O_Collider))
{
	while (!place_meeting(x+sign(hsp),y,O_Collider))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}

if(key_shift_hold && O_Endurance.Endurance>0) {
	hsp= move*8;
	
}
x = x + hsp;


//vertical

if  (place_meeting(x,y+vsp,O_Collider))
{
	while (!place_meeting(x,y+sign(vsp),O_Collider))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}

if(corde) {
	vsp = -4;
}

y = y + vsp


if(key_r and O_Manager_Muni.chargeur < 7 and O_Manager_Muni.Munition>0) {
	alarm_set(1,50);
		audio_play_sound(_9mm, 0, 0, 0.2, undefined, 1.0);
	//TODO son de reload
	
}


if (O_Manager_Muni.chargeur > 0 and clickDHold and clickG and vsp == 0 and alarm_get(0)<=0 ) 
{	
	O_Manager_Muni.chargeur--;
	alarm_set(0,20);
	instance_create_layer(x,y-20,"O_Player",O_Balle);
	audio_play_sound(Bullet_2, 0, 0, 1.0, undefined, 1.0);
}
if(!clickDHold and clickG and !instance_exists(O_Atk)) 
{
	var nvdirection = x - xprevious;
	nvdirection /= walksp;
	if(image_xscale == 1) {
		instance_create_layer(x + sprite_width,y,"O_Player",O_Atk);
	}
	else {
		instance_create_layer(x + sprite_width,y,"O_Player",O_Atk);
	}
	O_Atk.nvdirection = nvdirection
}

//vie

if(O_lifemanager.playerlife <= 0)
{
	audio_play_sound(SlowDown, 0, 0, 1.0, undefined, 0.6);
	audio_play_sound(YOu_LOOSE, 0, 0, 1.0, undefined, 1.0);
	room_goto(R_Mort);

	O_lifemanager.playerlife = 5;
}

var l51EC08C1_0;
l51EC08C1_0 = keyboard_check_pressed(vk_escape);
if (l51EC08C1_0)
{
	room_goto(R_Menu_Pause);
	audio_play_sound(SlowDown, 0, 0, 1.0, undefined, 1.0);
	audio_pause_all();
	
}


if(!place_meeting(x,y,O_Zone_Detection_Mouche)) {
	moucheSon = false;	
}
if(!place_meeting(x,y,O_Zone_Detection_Fourmies)) {
	fourmieSon = false;	
}
if(!place_meeting(x,y,O_Zone_Detection_Ver)) {
	VerSon = false;	
}
if(!place_meeting(x,y,O_Zone_Detection_Piquan)) {
	PiquanSon = false;	
}

if room == R_ABRIP49
{
	/// ---souris---
	flash_dir = point_direction(x, y, mouse_x, mouse_y);

	/// 
	// Longueur : flèches ↑ / ↓
	if (keyboard_check_pressed(vk_up))   flash_length += len_step;
	if (keyboard_check_pressed(vk_down)) flash_length -= len_step;

	// Opacité : flèches → / ←
	if (keyboard_check_pressed(vk_right)) dark_alpha += alpha_step;
	if (keyboard_check_pressed(vk_left))  dark_alpha -= alpha_step;

	/// --- limites ---
	flash_length = clamp(flash_length, len_min, len_max);
	dark_alpha   = clamp(dark_alpha, 0, 1);

	show_debug_message(VerSon)
}


if(clickDHold) and !corde and !instance_exists(O_Bras) 
{
	bras = instance_create_depth(x, y-20, -y, O_Bras)
	
}
if (clickDreleased ||  corde)
{
	instance_destroy(bras)
}
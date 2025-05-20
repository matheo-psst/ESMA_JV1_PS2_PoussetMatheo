key_left = keyboard_check(vk_left) or keyboard_check(ord("Q"))
key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);
key_jump_hold = keyboard_check(vk_space);
clickG = mouse_check_button_pressed(mb_left);
clickDHold = mouse_check_button(mb_right);

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

y = y + vsp

//Animation

if  (!place_meeting(x,y+1,O_Collider))
{
	sprite_index = S_PLayer_Air;
	image_speed= 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}

if (clickDHold and clickG and vsp == 0) 
{	
	instance_create_layer(x,y,"O_Player",O_Balle);
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

if(place_meeting(x,y,O_Corde) and key_jump_hold)
{
	vsp = -2;
}

if(place_meeting(x,y,O_Corde_1) and key_jump_hold)
{
	vsp = -2;
}

//vie

if(O_lifemanager.playerlife <= 0)
{
	x = xstart;
	y = ystart;

	O_lifemanager.playerlife = 5;
}

var l51EC08C1_0;
l51EC08C1_0 = keyboard_check_pressed(vk_escape);
if (l51EC08C1_0)
{
	room_goto(R_Menu_Pause);
}

var l635D9627_0;
l635D9627_0 = keyboard_check_pressed(ord("R"));
if (l635D9627_0)
{
	room_restart();
}

if(move>0) {
	image_xscale = 1;
}
else if(move<0) {
	image_xscale = -1;
}
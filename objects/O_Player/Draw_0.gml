draw_self();
if(clickDHold)
{
	var dir = point_direction(x,y,mouse_x,mouse_y);
	
	if(90<dir and dir<270) {
		draw_sprite_ext(S_Arme, 0, x, y+10, 1, -1, dir, #FFFFFF, 1);
	}
	else {
		draw_sprite_ext(S_Arme, 0, x, y+10, 1, 1, dir, #FFFFFF, 1);
	}
	
}
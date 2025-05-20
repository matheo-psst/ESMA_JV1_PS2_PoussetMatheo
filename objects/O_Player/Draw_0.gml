draw_self();
if(clickDHold)
{
	draw_sprite_ext(S_Arme, 0, x, y+10, 1, 1, point_direction(x,y,mouse_x,mouse_y), #FFFFFF, 1);
}
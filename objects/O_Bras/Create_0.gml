var dir = point_direction(x,y,mouse_x,mouse_y);
	
if(90<dir and dir<270) {
	image_xscale = -1
	image_angle = dir-180 
}
else {
	image_xscale = 1
	image_angle =  dir 
}
speed = 0
x = O_Player.x
y = O_Player.y-20

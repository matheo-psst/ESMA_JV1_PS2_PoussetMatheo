if (!instance_place(x, y+2, O_Collider))
{
	vspeed = 3;
}
if(hp<=0) {
	instance_destroy();	
}

distancePlayer = distance_to_object(O_Player);

if (distancePlayer < 100) {
    if (distancePlayer > 0) {
        move_towards_point(O_Player.x, y, 1);
    }
    else {
        speed = 0;
    }
}
if(hspeed>0) {
	image_xscale = -1;
}
else if(hspeed<0) {
	image_xscale = 1;
}
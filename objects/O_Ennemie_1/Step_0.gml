if (!instance_place(x, y+2, O_Collider))
{
	vspeed = 3;
}
if(hp<=0) {
	instance_destroy();	
}

if(hspeed>0) {
	image_xscale = -1;
}
else if(hspeed<0) {
	image_xscale = 1;
}
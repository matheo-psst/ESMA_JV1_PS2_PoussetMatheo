if(!Mort_Monstre) {
	if (!instance_place(x, y+2, O_Collider))
	{
		vspeed = 3;
	}

	if(hspeed>0) {
		image_xscale = -1;
	}
	else if(hspeed<0) {
		image_xscale = 1;
	}
}

if(hp<=0) {
	sprite_index = sprite;
	Mort_Monstre = true;
	speed = 0;
}
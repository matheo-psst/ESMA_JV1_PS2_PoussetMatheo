if Mort_Monstre == false
{
	
	if (!instance_place(x, y+2, O_Collider))
	{
		vspeed = 3;
	}

	distancePlayer = distance_to_object(O_Player);

	if (distancePlayer < 250) {
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

}
else {
	instance_deactivate_object(zone);
}
if(hp<=0) {
	Mort_Monstre = true
	sprite_index = S_VerDeTer_Mort;	
	hspeed= 0;
}
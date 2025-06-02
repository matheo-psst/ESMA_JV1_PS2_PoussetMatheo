if Mort_Monstre == false
{
	
		

	distancePlayer = distance_to_object(O_Player);

	//calcul distance avec perso 
	if (distancePlayer < 600) {
	    if (distancePlayer > 300 && x != O_Player.x) {
	        move_towards_point(O_Player.x, O_Player.y, 3);
	    }
	    else {
	        speed = 0;
	        if(alarm_get(3) <= 0) {
	            alarm_set(3,100);
	        }
	    }
	}
	else {
	    dirTimer++;
	    if(dirTimer>=changeDirTime) {    
	        targetX = x+(irandom_range(-3,3)*50);
	        targetY = y+(irandom_range(-3,3)*50);
    
	        dirTimer = 0;
	        changeDirTime = irandom_range(60,120);
	    }

	    var dir = point_direction(x,y,targetX, targetY);
	    var dist = point_distance(x,y,targetX, targetY);

	    if(dist>4) {
	        x+=lengthdir_x(2, dir);    
	        y+=lengthdir_y(2, dir);    
	    }
	}
	if(targetX>xprevious || hspeed>0) {
		image_xscale = -1;
	}
	else if(targetX<xprevious || hspeed<0) {
		image_xscale = 1;
	}

}
else {
	instance_deactivate_object(zone);
}

if(hp<=0) {
	Mort_Monstre = true
	sprite_index = S_Mouche_Morte;	
	hspeed= 0;
	gravity= 0.3;
}
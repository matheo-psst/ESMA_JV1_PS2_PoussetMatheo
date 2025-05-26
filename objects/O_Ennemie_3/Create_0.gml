if Mort_Monstre == false
{
	event_inherited();
	
	randomise();
	speed = 2;
	changeDirTime = irandom_range(60,120);
	dirTimer = 0;

	targetX = x + irandom_range(-100,100);
	targetY = y + irandom_range(-100,100);
	
	zone = instance_create_layer(x,y,"Ennemies", O_Zone_Detection_Ver)
	with zone{
		suivi = other;
	}
}




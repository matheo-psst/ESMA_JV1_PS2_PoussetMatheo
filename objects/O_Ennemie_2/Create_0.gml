if Mort_Monstre == false
{
	
	
	randomise();
	speed = 2;
	changeDirTime = irandom_range(60,120);
	dirTimer = 0;

	targetX = x + irandom_range(-100,100);
	targetY = y + irandom_range(-100,100);
	
	zone = instance_create_layer(x,y,"Ennemies", O_Zone_Detection_Mouche)
	with zone{
		suivi = other;
	}
}
// il manque un truc que j'ai supprimer sans faire exprès 
	
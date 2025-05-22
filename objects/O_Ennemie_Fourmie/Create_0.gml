if Mort_Monstre == false
{
	state = 0;        // 0 = suspendu, 1 = chute, 2 = au sol
	grav = 0;       // pas de gravité tant qu’il est suspendu
	vsp  = 0;
	monte = false;
	spd = 0;

	zone = instance_create_layer(x,y,"Ennemies", O_Zone_Detection_Fourmies)
		with zone{
			suivi = other;
		}
	
}
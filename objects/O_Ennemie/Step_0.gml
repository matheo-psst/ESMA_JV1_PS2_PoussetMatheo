if(state != 0 and place_meeting(x,y-1, O_Collider)) {
	state = 0;
}
switch (state) {
    
    // === ÉTAT 0 : Suspendu ===
    case 0:
		hspeed = 0;
		image_yscale = -1;
        var dx = abs(O_Player.x - x);
        var dy = abs(O_Player.y - y);
        if (dx < 16 && dy < 500	) {
            // Vérifie qu’il n’y a pas de mur (O_Collider) entre lui et le joueur
            if (!collision_line(x, y, O_Player.x, O_Player.y, O_Collider, false, true)) {
                // Détection validée, commence à tomber
				y++;
                grav = 0.3;
                state = 1;
            }
        }
    break;

    // === ÉTAT 1 : Chute ===
    case 1:
        // Appliquer la gravité
        vsp += grav;
		image_yscale = 1;
        // Vérifie s'il va toucher un mur (O_Collider)
        if (place_meeting(x, y + vsp, O_Collider)) {
			while(!place_meeting(x,y+1,O_Collider)) {
				y+=1;
			}
            vsp = 0;
            state = 2;
        } else {
			y += vsp;
        }
    break;

    // === ÉTAT 2 : Au sol / au repos ===
    case 2:
		hspeed = -spd;
        if (!instance_place(x, y+2, O_Collider))
		{
			state = 1;
		}
		
		if(!monte and alarm_get(1)<=0) {
			monte = true;
			alarm_set(1,120);
		}
    break;
}
if(hp<=0) {
	instance_destroy();	
}
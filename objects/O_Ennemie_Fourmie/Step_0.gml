if Mort_Monstre == false
{
	
	if(place_meeting(x,y-1, O_Collider) and state != 0) {
		state = 0;
		spd = 0;
		vspeed = 0;
		y+=5;
		show_debug_message("ytgfvcbgfvgfvcbg")
	}
	switch (state) {
    
	    // === ÉTAT 0 : Suspendu ===
	    case 0:
			monte =false ;
			sprite_index = S_Fourmie_Base;
			hspeed = 0;
			image_yscale = -1;
	        var dx = abs(O_Player.x - x);
	        var dy = abs(O_Player.y - y);
	        if (dx < 16 && dy < 500) {
	            // Vérifie qu’il n’y a pas de mur (O_Collider) entre lui et le joueur
	            if (!collision_line(x, y, O_Player.x, O_Player.y, O_Collider, false, true)) {
	                // Détection validée, commence à tomber
					y+=20;
	                state = 1;
	                grav = 0.3;
					sprite_index = S_Fourmie;
	            }
	        }
	    break;

	    // === ÉTAT 1 : Chute ===
	    case 1:
	        // Appliquer la gravité
	        sprite_index = S_Fourmie;
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
			if(!monte and distance_to_object(O_Player) < 200) {
				move_towards_point(O_Player.x,y, 2);
				alarm_set(1,120);
			}
			else if(spd == 0) {
				hspeed = 2;	
				spd = 1;
				audio_play_sound(Fourmie, 0, 0, 1.0, undefined, 1.0);
			}
			else if(!monte and alarm_get(1)<=0) {
				monte = true;
				alarm_set(1,120);
			}
	    break;
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
if(hp == 0) {
	hp--;
	audio_play_sound(dying_monster, 0, 0, 1.0, undefined, 1.0);	
}
if(hp<=0) {
	Mort_Monstre = true
	var nv = image_xscale;
	sprite_index = S_FOurmie_Morte;	
	hspeed= 0;
	grav = 0.3;
}
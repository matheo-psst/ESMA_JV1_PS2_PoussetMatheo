var clickD = mouse_check_button(mb_right);
var clickDHold = mouse_check_button(mb_right);
var clickG = mouse_check_button(mb_left);
//Animation
with O_Player {
	var corde = instance_place(x,y,O_Corde)&&keyboard_check(vk_space);
	
	
	if(!clickD and clickG and instance_exists(O_Atk)) {//attaque
		sprite_index = S_Player_Atk;
	}
	else if(corde) {//corde
		sprite_index = S_Ecalade;
	}
	else if(clickD && !corde && hsp ==0) {//visee sans saut
		sprite_index = S_Player_Visee;
	}
	else if(clickD && !corde && hsp !=0) {//visée avec saut
		sprite_index = S_Player_Visee;
	}
	else {
		if(vsp == 0 and hsp == 0) {//idle
			sprite_index = S_Player;
		}
		else if(vsp<0) {//saut
			sprite_index = S_saut;
		}
		else if(vsp>0) {//tombe
			sprite_index = S_saut_bas;
		}
		else if(hsp != 0) {//avance
			sprite_index = S_Player_Right;
		}
	}
	if(alarm_get(1)>0) {
		//TODO reload sprite	
	}
	//direction
	if(clickDHold and instance_exists(O_Bras)) {
		image_xscale  = O_Player.bras.image_xscale;	
	}
	else if(hsp>0 && !clickDHold) {
		image_xscale = 1;
	}
	else if(hsp<0 && !clickDHold){
		image_xscale = -1;
	}
	
	

}

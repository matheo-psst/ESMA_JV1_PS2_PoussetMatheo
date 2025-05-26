var clickD = mouse_check_button(mb_right);
var clickG = mouse_check_button(mb_left);
//Animation
with O_Player {
	var corde = instance_place(x,y,O_Corde)&&keyboard_check(vk_space);
	
	if(!clickD and clickG) {//attaque
		sprite_index = S_Player_Atk;
	}
	else if(clickD) {//visée
		sprite_index = S_Player_Visee;
		if(90<dir and dir<270) {
			image_xscale = -1;
		}
		else {
			image_xscale = 1;
		}
	}
	else if(corde) {//corde
		sprite_index = S_Ecalade;
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
	//direction
	if(hsp>0) {
		image_xscale = 1;
	}
	else if(hsp<0){
		image_xscale = -1;
	}
	

}

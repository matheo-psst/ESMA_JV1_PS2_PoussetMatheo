draw_self();
depth = -y;
if room == R_ABRIP49
{
	/// --- 1) Sprite du joueur ---
	

	/// --- 2) Surface : création si nécessaire ---
	if (!surface_exists(surf_light))
	    surf_light = surface_create(room_width, room_height);

	/// --- 3) Préparation de la surface ---
	surface_set_target(surf_light);
	draw_clear_alpha(c_black, dark_alpha);   // <- ici on utilise dark_alpha !
	
		gpu_set_blendmode(bm_subtract);
		draw_set_colour(c_white);
		draw_set_alpha(1);

		var dir_left  = flash_dir - flash_half_angle;
		var dir_right = flash_dir + flash_half_angle;
	
	if clickDHold
	{
		/// Triangle = zone que l’on *soustrait* du noir
		draw_triangle_colour(
		    x, y,
		    x + lengthdir_x(flash_length, dir_left),
		    y + lengthdir_y(flash_length, dir_left),
		    x + lengthdir_x(flash_length, dir_right),
		    y + lengthdir_y(flash_length, dir_right),
		    c_white, c_white, c_white, false);
	}
		gpu_set_blendmode(bm_normal);
		surface_reset_target();

		/// --- 4) Affichage à l’écran ---
		draw_surface(surf_light, 0, 0);

}


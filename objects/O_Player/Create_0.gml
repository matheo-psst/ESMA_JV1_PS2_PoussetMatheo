hsp = 0;
vsp = 0;
grv = 0.3;
walksp = 4;

if room == R_ABRIP49
{
	gpu_set_tex_filter(false)

	dir = point_direction(x,y,mouse_x,mouse_y);

	/// --- Lampe torche : initialisation (v2) ---
	flash_on          = true;      // ON/OFF
	flash_length      = 500;       // longueur initiale (px)
	flash_half_angle  = 30;        // demi-angle (°)

	dark_alpha        = 0.40;      // 0 = pas d’ombre, 1 = noir total
	len_step          = 10;        // pas d’allongement en px
	alpha_step        = 0.05;      // pas d’opacité

	len_min           = 60;        // bornes de sécurité
	len_max           = 600;
	surf_light        = -1;
}
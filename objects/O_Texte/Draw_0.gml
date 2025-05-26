var halfw = w * 0.5;

draw_set_colour(c_black);
draw_set_alpha(0.5);
draw_roundrect_ext(x-halfw-border,u_h_(border*2),x+halfw+border,y,15,15,false);
darw_sprite(sMarker,0,x,y);
draw_set_alpha(1);

DrawSettext(c_white,fSign,fa_center,fa_top);
draw_text(x,y-h-border,text_current);
/// o_infoText – Draw GUI
if (show_text) {
    var xpos = display_get_gui_width()  * 0.5;
    var ypos = display_get_gui_height() * 0.85;
    
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_font(fSign);          // Remplace par ta police
    draw_set_color(c_white);             // Couleur du texte
    draw_text(xpos, ypos, display_str);
}

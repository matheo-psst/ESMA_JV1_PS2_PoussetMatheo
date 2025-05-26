// O_Porte – Collision avec O_Atk
if (!is_open) {
    is_open     = true;
    sprite_index = S_Porte_Ouverte;   // on montre la porte ouverte
    solid        = false;           // elle n’est plus solide
    mask_index   = S_Porte_Ouverte;   // masque « troué » = le joueur passe
    with (other) instance_destroy(); // détruire le hitbox d’attaque si besoin
}

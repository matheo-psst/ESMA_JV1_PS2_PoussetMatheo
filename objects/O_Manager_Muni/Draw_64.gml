/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 3E65F45E
/// @DnDArgument : "y" "40"
/// @DnDArgument : "xscale" "2"
/// @DnDArgument : "yscale" "2"
/// @DnDArgument : "sprite" "S_Muni"
/// @DnDSaveInfo : "sprite" "S_Muni"
draw_sprite_ext(S_Muni, 0, 0, 40, 2, 2, 0, $FFFFFF & $ffffff, 1);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 2DE15146
/// @DnDArgument : "x" "80"
/// @DnDArgument : "y" "80"
/// @DnDArgument : "xscale" "1.5"
/// @DnDArgument : "yscale" "1.5"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "text" "chargeur"
draw_text_transformed(80, 80, "" + string(chargeur), 1.5, 1.5, 0);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 47FF23F8
/// @DnDArgument : "x" "120"
/// @DnDArgument : "y" "80"
/// @DnDArgument : "xscale" "1.5"
/// @DnDArgument : "yscale" "1.5"
/// @DnDArgument : "caption" ""/""
/// @DnDArgument : "text" "Munition"
draw_text_transformed(120, 80, string("/") + string(Munition), 1.5, 1.5, 0);
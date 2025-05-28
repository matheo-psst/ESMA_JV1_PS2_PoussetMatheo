/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 6EFDB484
/// @DnDArgument : "y" "40"
/// @DnDArgument : "sprite" "S_Muni"
/// @DnDSaveInfo : "sprite" "S_Muni"
draw_sprite(S_Muni, 0, 0, 40);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 16B7D381
/// @DnDArgument : "x" "40"
/// @DnDArgument : "y" "40"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "var" "chargeur"
draw_text(40, 40,  + string(chargeur));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 6699DB53
/// @DnDArgument : "x" "50"
/// @DnDArgument : "y" "40"
/// @DnDArgument : "caption" ""/""
/// @DnDArgument : "var" "Munition"
draw_text(50, 40, string("/") + string(Munition));
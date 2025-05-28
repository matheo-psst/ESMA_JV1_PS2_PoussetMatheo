/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 0CBF8D73
/// @DnDArgument : "y1" "20"
/// @DnDArgument : "x2" "300"
/// @DnDArgument : "y2" "40"
/// @DnDArgument : "value" "Endurance/Max_Endurance*100"
/// @DnDArgument : "backcol" "$00FFFFFF"
/// @DnDArgument : "barcol" "$00FFFFFF"
/// @DnDArgument : "mincol" "$FFFF1900"
/// @DnDArgument : "maxcol" "$FFFFFFFF"
draw_healthbar(0, 20, 300, 40, Endurance/Max_Endurance*100, $00FFFFFF & $FFFFFF, $FFFF1900 & $FFFFFF, $FFFFFFFF & $FFFFFF, 0, (($00FFFFFF>>24) != 0), (($00FFFFFF>>24) != 0));
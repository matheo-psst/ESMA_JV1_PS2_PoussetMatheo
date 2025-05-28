/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 0CBF8D73
/// @DnDArgument : "x2" "400"
/// @DnDArgument : "y2" "20"
/// @DnDArgument : "value" "playerlife/maxPlayerlife*100"
/// @DnDArgument : "backcol" "$00FFFFFF"
/// @DnDArgument : "barcol" "$00FFFFFF"
/// @DnDArgument : "mincol" "$FF0000FF"
/// @DnDArgument : "maxcol" "$FF0000FF"
draw_healthbar(0, 0, 400, 20, playerlife/maxPlayerlife*100, $00FFFFFF & $FFFFFF, $FF0000FF & $FFFFFF, $FF0000FF & $FFFFFF, 0, (($00FFFFFF>>24) != 0), (($00FFFFFF>>24) != 0));
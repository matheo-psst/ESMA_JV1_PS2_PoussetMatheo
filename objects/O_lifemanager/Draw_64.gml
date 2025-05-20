/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1B25CB23
/// @DnDArgument : "code" "/*var l6E4EA0C6_0 = sprite_get_width(S_Life);$(13_10)var l6E4EA0C6_1 = 0;$(13_10)for(var l6E4EA0C6_2 = playerlife; l6E4EA0C6_2 > 0; --l6E4EA0C6_2) {$(13_10)	draw_sprite(S_Life, 0, 0 + l6E4EA0C6_1, 0);$(13_10)	l6E4EA0C6_1 += l6E4EA0C6_0;$(13_10)}*/"
/*var l6E4EA0C6_0 = sprite_get_width(S_Life);
var l6E4EA0C6_1 = 0;
for(var l6E4EA0C6_2 = playerlife; l6E4EA0C6_2 > 0; --l6E4EA0C6_2) {
	draw_sprite(S_Life, 0, 0 + l6E4EA0C6_1, 0);
	l6E4EA0C6_1 += l6E4EA0C6_0;
}*//**/

/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 0CBF8D73
/// @DnDArgument : "x2" "100000"
/// @DnDArgument : "y2" "20"
/// @DnDArgument : "value" "playerlife*maxPlayerlife/100"
/// @DnDArgument : "backcol" "$00FFFFFF"
/// @DnDArgument : "barcol" "$00FFFFFF"
/// @DnDArgument : "mincol" "$FF0000FF"
/// @DnDArgument : "maxcol" "$FF1DFF00"
draw_healthbar(0, 0, 100000, 20, playerlife*maxPlayerlife/100, $00FFFFFF & $FFFFFF, $FF0000FF & $FFFFFF, $FF1DFF00 & $FFFFFF, 0, (($00FFFFFF>>24) != 0), (($00FFFFFF>>24) != 0));
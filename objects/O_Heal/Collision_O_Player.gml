/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1AB12EDC
/// @DnDArgument : "var" "O_lifemanager.playerlife"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "5"
if(O_lifemanager.playerlife < 5){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7FEDD1CD
	/// @DnDParent : 1AB12EDC
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "O_lifemanager.playerlife"
	O_lifemanager.playerlife += 1;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 574B46AF
	/// @DnDParent : 1AB12EDC
	instance_destroy();}
/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1AB12EDC
/// @DnDArgument : "var" "playerlife"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "5"
if(playerlife < 5){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7FEDD1CD
	/// @DnDParent : 1AB12EDC
	/// @DnDArgument : "expr" "+1"
	/// @DnDArgument : "var" "playerlife"
	playerlife = +1;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 574B46AF
	/// @DnDParent : 1AB12EDC
	instance_destroy();}
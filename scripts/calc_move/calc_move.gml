/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 4380539A
/// @DnDComment : Script assets have changed$(13_10)for v2.3.0 see $(13_10)https://help.yoyogames.com/hc/en-us/articles/360005277377 $(13_10)for more information
/// @DnDArgument : "funcName" "calc_move"
function calc_move() 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 00D79D7A
	/// @DnDParent : 4380539A
	/// @DnDArgument : "expr" "h_spd*drag"
	/// @DnDArgument : "var" "h_spd"
	h_spd = h_spd*drag;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5948CEC9
	/// @DnDParent : 4380539A
	/// @DnDArgument : "expr" "global.grav"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "v_spd"
	v_spd += global.grav;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3C697D85
	/// @DnDParent : 4380539A
	/// @DnDArgument : "var" "abs(h_spd)"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "0.5"
	if(abs(h_spd) < 0.5)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 64C58E21
		/// @DnDParent : 3C697D85
		/// @DnDArgument : "var" "h_spd"
		h_spd = 0;
	}
}
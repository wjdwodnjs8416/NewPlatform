/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 4380539A
/// @DnDComment : Script assets have changed$(13_10)for v2.3.0 see $(13_10)https://help.yoyogames.com/hc/en-us/articles/360005277377 $(13_10)for more information
/// @DnDArgument : "funcName" "get_input"
function get_input() 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7A945732
	/// @DnDParent : 4380539A
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "jump"
	jump = false;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 1C6C2F77
	/// @DnDParent : 4380539A
	/// @DnDArgument : "key" "vk_right"
	var l1C6C2F77_0;
	l1C6C2F77_0 = keyboard_check(vk_right);
	if (l1C6C2F77_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6DD5523E
		/// @DnDParent : 1C6C2F77
		/// @DnDArgument : "expr" "walk_spd"
		/// @DnDArgument : "var" "h_spd"
		h_spd = walk_spd;
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 54C557FA
	/// @DnDParent : 4380539A
	/// @DnDArgument : "key" "vk_left"
	var l54C557FA_0;
	l54C557FA_0 = keyboard_check(vk_left);
	if (l54C557FA_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 21F432DF
		/// @DnDParent : 54C557FA
		/// @DnDArgument : "expr" "-walk_spd"
		/// @DnDArgument : "var" "h_spd"
		h_spd = -walk_spd;
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 53638378
	/// @DnDParent : 4380539A
	var l53638378_0;
	l53638378_0 = keyboard_check_pressed(vk_space);
	if (l53638378_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4CB7EDFF
		/// @DnDParent : 53638378
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "jump"
		jump = true;
	}
}
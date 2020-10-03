/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 4380539A
/// @DnDComment : Script assets have changed$(13_10)for v2.3.0 see $(13_10)https://help.yoyogames.com/hc/en-us/articles/360005277377 $(13_10)for more information
/// @DnDArgument : "funcName" "get_input"
function get_input() 
{
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
}
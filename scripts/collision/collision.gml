/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 6207F67C
/// @DnDComment : Script assets have changed$(13_10)for v2.3.0 see $(13_10)https://help.yoyogames.com/hc/en-us/articles/360005277377 $(13_10)for more information
/// @DnDArgument : "funcName" "collision"
function collision() 
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 6154C4A1
	/// @DnDParent : 6207F67C
	/// @DnDArgument : "x" "h_spd"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_solid"
	/// @DnDSaveInfo : "object" "obj_solid"
	var l6154C4A1_0 = instance_place(x + h_spd, y + 0, obj_solid);
	if ((l6154C4A1_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6E266545
		/// @DnDParent : 6154C4A1
		/// @DnDArgument : "var" "collide"
		/// @DnDArgument : "value" "false"
		var collide = false;
	
		/// @DnDAction : YoYo Games.Loops.While_Loop
		/// @DnDVersion : 1
		/// @DnDHash : 6684D094
		/// @DnDParent : 6154C4A1
		/// @DnDArgument : "var" "collide"
		/// @DnDArgument : "value" "false"
		while ((collide == false)) {
			/// @DnDAction : YoYo Games.Collisions.If_Object_At
			/// @DnDVersion : 1.1
			/// @DnDHash : 37EB0F28
			/// @DnDParent : 6684D094
			/// @DnDArgument : "x" "sign(h_spd)"
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "object" "obj_solid"
			/// @DnDArgument : "not" "1"
			/// @DnDSaveInfo : "object" "obj_solid"
			var l37EB0F28_0 = instance_place(x + sign(h_spd), y + 0, obj_solid);
			if (!(l37EB0F28_0 > 0))
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 10AF1761
				/// @DnDParent : 37EB0F28
				/// @DnDArgument : "expr" "sign(h_spd)"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "x"
				x += sign(h_spd);
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 526434B8
			/// @DnDParent : 6684D094
			else
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 4784003C
				/// @DnDParent : 526434B8
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "collide"
				collide = true;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 10F0650B
				/// @DnDParent : 526434B8
				/// @DnDArgument : "var" "h_spd"
				h_spd = 0;
			}
		}
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 04D34B99
	/// @DnDParent : 6207F67C
	/// @DnDArgument : "expr" "h_spd"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "x"
	x += h_spd;

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 14E94AF9
	/// @DnDParent : 6207F67C
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "v_spd"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_solid"
	/// @DnDSaveInfo : "object" "obj_solid"
	var l14E94AF9_0 = instance_place(x + 0, y + v_spd, obj_solid);
	if ((l14E94AF9_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6270A463
		/// @DnDParent : 14E94AF9
		/// @DnDArgument : "var" "collide"
		/// @DnDArgument : "value" "false"
		var collide = false;
	
		/// @DnDAction : YoYo Games.Loops.While_Loop
		/// @DnDVersion : 1
		/// @DnDHash : 04B5DD4B
		/// @DnDParent : 14E94AF9
		/// @DnDArgument : "var" "collide"
		/// @DnDArgument : "value" "false"
		while ((collide == false)) {
			/// @DnDAction : YoYo Games.Collisions.If_Object_At
			/// @DnDVersion : 1.1
			/// @DnDHash : 02E0A37F
			/// @DnDParent : 04B5DD4B
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y" "sign(v_spd)"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "object" "obj_solid"
			/// @DnDArgument : "not" "1"
			/// @DnDSaveInfo : "object" "obj_solid"
			var l02E0A37F_0 = instance_place(x + 0, y + sign(v_spd), obj_solid);
			if (!(l02E0A37F_0 > 0))
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 1DC273C3
				/// @DnDParent : 02E0A37F
				/// @DnDArgument : "expr" "sign(v_spd)"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "y"
				y += sign(v_spd);
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 06A2D22B
			/// @DnDParent : 04B5DD4B
			else
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 28626513
				/// @DnDParent : 06A2D22B
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "collide"
				collide = true;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 7FDD4AAF
				/// @DnDParent : 06A2D22B
				/// @DnDArgument : "var" "v_spd"
				v_spd = 0;
			}
		}
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 15587DFC
	/// @DnDParent : 6207F67C
	/// @DnDArgument : "expr" "v_spd"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "y"
	y += v_spd;
}
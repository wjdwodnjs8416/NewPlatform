/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 467928B0
/// @DnDComment : Script assets have changed$(13_10)for v2.3.0 see $(13_10)https://help.yoyogames.com/hc/en-us/articles/360005277377 $(13_10)for more information
/// @DnDArgument : "funcName" "anim"
function anim() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 76FC9389
	/// @DnDParent : 467928B0
	/// @DnDArgument : "var" "on_ground"
	/// @DnDArgument : "value" "true"
	if(on_ground == true)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 58A8F705
		/// @DnDParent : 76FC9389
		/// @DnDArgument : "var" "h_spd"
		/// @DnDArgument : "not" "1"
		if(!(h_spd == 0))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4D40CBD7
			/// @DnDParent : 58A8F705
			/// @DnDArgument : "expr" "spr_walk"
			/// @DnDArgument : "var" "sprite_index"
			sprite_index = spr_walk;
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 04F8C403
			/// @DnDParent : 58A8F705
			/// @DnDArgument : "var" "h_spd"
			/// @DnDArgument : "op" "2"
			if(h_spd > 0)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 75835977
				/// @DnDParent : 04F8C403
				/// @DnDArgument : "expr" "1"
				/// @DnDArgument : "var" "facing"
				facing = 1;
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 6408DFFF
			/// @DnDParent : 58A8F705
			else
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 23A84F12
				/// @DnDParent : 6408DFFF
				/// @DnDArgument : "expr" "-1"
				/// @DnDArgument : "var" "facing"
				facing = -1;
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 0BAE499F
		/// @DnDParent : 76FC9389
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0E386BCB
			/// @DnDParent : 0BAE499F
			/// @DnDArgument : "expr" "spr_idle"
			/// @DnDArgument : "var" "sprite_index"
			sprite_index = spr_idle;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 5D156827
	/// @DnDParent : 467928B0
	else
	{
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 0B53E954
		/// @DnDParent : 5D156827
		/// @DnDArgument : "value" "spr_air"
		/// @DnDArgument : "instvar" "10"
		sprite_index = spr_air;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1022D4F2
		/// @DnDParent : 5D156827
		/// @DnDArgument : "var" "v_spd"
		/// @DnDArgument : "op" "1"
		if(v_spd < 0)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 04910FAF
			/// @DnDParent : 1022D4F2
			/// @DnDArgument : "instvar" "11"
			image_index = 0;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 3332C111
		/// @DnDParent : 5D156827
		else
		{
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 782488FE
			/// @DnDParent : 3332C111
			/// @DnDArgument : "value" "1"
			/// @DnDArgument : "instvar" "11"
			image_index = 1;
		}
	}
}
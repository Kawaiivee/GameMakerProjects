/// @description Need to RNG AEIOU on ccreate
randomize();
rng = irandom_range(0, 25);
alarm_0_flag = true;
alarm_1_flag = true;
x_rand = -1;
y_rand = 0;

//0 = a, 4 = e, 8 = i, 14 = o, 20 = u, 24 = y
//all others have corresponding sprites
image_speed = 0;
switch(rng){
	case 1:
	case 2:
	case 3:
		enemy_type = "A";
		sprite_index = spr_enemy_ship_a;
		image_index = irandom_range(0, 2);
		break;
	
	case 5:
	case 6:
	case 7:
		enemy_type = "E";
		sprite_index = spr_enemy_ship_e;
		image_index = irandom_range(0, 2);
		break;
	
	case 9:
	case 10:
	case 11:
	case 12:
	case 13:
		enemy_type = "I";
		sprite_index = spr_enemy_ship_i;
		image_index = irandom_range(0, 4);
		break;
	
	case 15:
	case 16:
	case 17:
	case 18:
	case 19:
		enemy_type = "O";
		sprite_index = spr_enemy_ship_o;
		image_index = irandom_range(0, 4);
		break;
	
	case 21:
	case 22:
	case 23:
	case 25:
		enemy_type = "U";
		sprite_index = spr_enemy_ship_u;
		image_index = irandom_range(0, 3);
		break;
	
	//generated a vowel or y ship -- destroy this instance and make a new one
	case 0:
	case 4:
	case 8:
	case 14:
	case 20:
	case 24:
		enemy_type = "WE RNGed a vowel ship, how did that happen?";
		instance_create_layer(x, y, "Instances", obj_enemy);
		instance_destroy();
	default:
		enemy_type = "SOMETHING WENT WRONG IN TYPE ASSIGNING!";
		break;
}


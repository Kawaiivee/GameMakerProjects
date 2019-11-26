/// @description Need to RNG AEIOU on ccreate
randomize();
rng = irandom_range(0, 25);
//0 = a, 4 = e, 8 = i, 14 = o, 20 = u, 24 = y
//all others have corresponding sprites
image_speed = 0;
switch(rng){
	case 1:
	case 2:
	case 3:
		type = "A";
		sprite_index = spr_enemy_ship_a;
		image_index = irandom_range(0, 2);
		break;
	
	case 5:
	case 6:
	case 7:
		type = "E";
		sprite_index = spr_enemy_ship_e;
		image_index = irandom_range(0, 2);
		break;
	
	case 9:
	case 10:
	case 11:
	case 12:
	case 13:
		type = "I";
		sprite_index = spr_enemy_ship_i;
		image_index = irandom_range(0, 4);
		break;
	
	case 15:
	case 16:
	case 17:
	case 18:
	case 19:
		type = "O";
		sprite_index = spr_enemy_ship_o;
		image_index = irandom_range(0, 4);
		break;
	
	case 21:
	case 22:
	case 23:
	case 25:
		type = "U";
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
		type = "WE RNGed a vowel ship";
		instance_create_layer(x, y, "Instances", obj_enemy);
		instance_destroy();
	default:
		type = "SOMETHING WENT WRONG IN TYPE ASSIGNING!";
		break;
}


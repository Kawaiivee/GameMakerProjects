/// @description kill enemy and dest bullet
var bt = bullet_type;
with(other){
	if(bt == enemy_type){
		instance_destroy();
		global.points += 1;
	}
}

instance_destroy();

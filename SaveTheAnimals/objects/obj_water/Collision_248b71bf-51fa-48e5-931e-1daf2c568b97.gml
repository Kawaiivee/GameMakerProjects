/// @description water put out fire
audio_play_sound(snd_hit, 100, false);
with(other){
	if(fullness <= 0.35){
		instance_destroy();
	}
	fullness -= 0.03;
	repeat(irandom_range(15,20)){
		instance_create_layer(x, y, "Instances", obj_steam);
		
	}
}

instance_destroy();

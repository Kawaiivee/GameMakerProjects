/// @description fade away particles
//Gradually fade away and then destroy the instance
//otherwise, we have a lot of debris floating offscreen......no good for memory
//
//image_alpha is the transparency of the image
image_alpha -= 0.01;
if(image_alpha <= 0){	//checks to see if object is fully faded away. if so, delete the instance
	if(global.stocks <= 0){
		obj_audio_manager.audio_flag = true;
		room_goto(rm_menu);
		exit;
	}
	instance_destroy();
	room_restart();
}
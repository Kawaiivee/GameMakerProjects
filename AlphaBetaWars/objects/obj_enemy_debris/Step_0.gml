/// @description fade away particles
//Gradually fade away and then destroy the instance
//otherwise, we have a lot of debris floating offscreen......no good for memory
//
//image_alpha is the transparency of the image
image_alpha -= 0.005;
if(image_alpha <= 0.5){	//checks to see if object is fully faded away. if so, delete the instance
	instance_destroy();
}
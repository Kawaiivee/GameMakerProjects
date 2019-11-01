/// @description Cheese Getting Touched
//Guarantees this happens AFTER Cheese is acquired
if(place_meeting(x,y,objPrippy)){
	instance_destroy();
	objPrippy.cheese_acquired = true;
}
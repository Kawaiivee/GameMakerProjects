/// @description
//For guaranteeing this happens AFTER the projectile is drawn
//Perhaps you may only see the 'flassh picture' if projectile i.e.e hits the ground
if(place_meeting(x,y,obj_wall)){
	instance_destroy();
}
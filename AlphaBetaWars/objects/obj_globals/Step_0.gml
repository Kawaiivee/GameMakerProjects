/// @description Insert description here
// You can write your code in this editor

if(global.points % 10 == 0 && global.points != 0 && can_earn){
	global.stocks += 1;
	can_earn = false;
}
if(!can_earn && global.points % 10 != 0){
	can_earn = true;
}
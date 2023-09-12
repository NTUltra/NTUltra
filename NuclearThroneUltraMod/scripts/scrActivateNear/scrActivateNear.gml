///scrActivateNear();
// /@description activates everything nearby, used to make sure floors and walls are checked within range even deactivated once
///@param range
function scrActivateNear(range = 64){
	instance_activate_region(x-range,y-range,x+range,y+range,true);
}
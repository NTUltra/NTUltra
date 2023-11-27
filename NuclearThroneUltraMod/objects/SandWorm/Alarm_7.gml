/// @description While loop dissapear do some attack
if alarm[3] > 0
{
	event_user(2);
	alarm[7] = 5;
}
with instance_create(x + (xOffset*image_xscale),y,Dust) {
	motion_add(random(360),2+random(3));
}
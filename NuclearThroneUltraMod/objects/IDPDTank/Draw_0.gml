//Draw indicator for tping
if !isDown
{
	var mr = moveRange + moveRangeMargin;
	//Top Left to Top Right
	draw_sprite_ext(sprTankAreaIndicator,0,middleX - mr,y,mr*2,1,0,c_white,1);
	//Top Left to Down Left
	draw_sprite_ext(sprTankAreaIndicator,0,middleX - mr,y,verticalDistanceBeteenTanks,1,270,c_white,1);
	//Down Left to Down Right
	draw_sprite_ext(sprTankAreaIndicator,0,middleX - mr,y + verticalDistanceBeteenTanks,mr*2,1,0,c_white,1);
	//Top Right to Down Right
	draw_sprite_ext(sprTankAreaIndicator,0,middleX + mr,y,verticalDistanceBeteenTanks,1,270,c_white,1);
	//Joints
	//Top Left
	draw_sprite(sprTankAreaIndicatorJoint,0,middleX - mr,y);
	//Top Right
	draw_sprite(sprTankAreaIndicatorJoint,0,middleX + mr,y);
	//Down Left
	draw_sprite(sprTankAreaIndicatorJoint,0,middleX - mr,y + verticalDistanceBeteenTanks);
	//Down Right
	draw_sprite(sprTankAreaIndicatorJoint,0,middleX + mr,y + verticalDistanceBeteenTanks);
}

draw_sprite_ext(sprite_index,-1,x,y,1,1,0,c_white,1)
draw_sprite_ext(sprGun,-1,x+lengthdir_x(-wkick,gunangle),y+lengthdir_y(-wkick,gunangle),1,right,gunangle,c_white,1)

if alarm[2] < 30 && alarm[2] > 1
{
	var lassy = y + laserY;
	var lasd = 0;
	do {lassy += 2;lasd += 1}
	until position_meeting(x,lassy,Wall) or lasd > 400
	draw_sprite_ext(sprLaserSight,0,x + 1,y+laserY,lasd,1,270,c_white,1);
}

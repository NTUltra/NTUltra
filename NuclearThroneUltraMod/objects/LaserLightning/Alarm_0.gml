if(instance_exists(Player)){
	if (aimed=false && team == 2)
	{
		aimed=true;
		direction = scrAimAssistLaser(direction);
	}
}

var dir;
dir = 0

do {x += lengthdir_x(2,image_angle) y += lengthdir_y(2,image_angle) dir += 1}
until (place_meeting(x,y,hitme) and dir > 16) or place_meeting(x,y,Wall) or dir > 160


alarm[0] = 2
var dis = point_distance(x,y,xstart,ystart);
image_xscale = dis*0.5
var xx = xstart;
var yy = ystart;
var step = 32;
var xstep = lengthdir_x(step,image_angle);
var ystep = lengthdir_y(step,image_angle);
var traveled = 0;
var side = lightningStartDir;
if lightningStartDir
{
	xx+=xstep*0.5;
	yy+=ystep*0.5;
}
if instance_exists(Player) && Player.skill_got[17]
	snd_play(sndSpark2,0.2,true);
else
	snd_play(sndSpark1,0.2,true);
var xOffset = lengthdir_x(12,image_angle+90);
var yOffset = lengthdir_y(12,image_angle+90);
do {
	with instance_create(xx,yy,Lightning)
	{
		image_speed += 0.1;
		if side
		{
			image_angle = other.image_angle + 90
			x-=xOffset;
			y-=yOffset;
		}
		else
		{
			image_angle = other.image_angle - 90
			x+=xOffset;
			y+=yOffset;
		}
		side = !side;
		team = other.team
		ammo = 6
		event_perform(ev_alarm,0);//prop cause infinite loop
		visible = 0
		with instance_create(x,y,LightningSpawn)
			image_angle = other.image_angle
	}
	xx+=xstep;
	yy+=ystep;
	traveled+=step;
} until (traveled >= dis)
instance_create(x,y,Smoke)
lightningStartDir = !lightningStartDir;

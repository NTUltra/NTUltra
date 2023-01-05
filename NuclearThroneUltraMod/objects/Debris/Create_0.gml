var area;
if instance_exists(SpiralCont) || instance_exists(GenCont)
{
	instance_destroy();
	exit;
}
if instance_exists(Player) area = Player.area
	else area = BackCont.area
if area=104
	area=103
friction = 0.2
switch(area)
{
case 0:sprite_index = sprDebris0; break;
case 1:sprite_index = sprDebris1; break;
case 2:sprite_index = sprDebris2; break;
case 3:sprite_index = sprDebris3; break;
case 4:sprite_index = sprDebris4; break;
case 5:sprite_index = sprDebris5; break;
case 6:sprite_index = sprDebris6; break;
case 7:sprite_index = sprDebris7; break;
case 8:sprite_index = sprDebris8; break;
case 9:sprite_index = sprDebris9; break;
case 10:sprite_index = sprDebris10; break;
case 100:sprite_index = sprDebris100; break;
case 102:sprite_index = sprDebris102; break;
case 103:sprite_index = sprDebris103; break;
case 105:sprite_index = sprDebris105; break;
case 106:sprite_index = sprDebris106; break;
case 107:sprite_index = sprDebris107; break;
case 101:sprite_index = sprDebris101; break;
case 109:sprite_index = sprDebris109; break;
case 108:sprite_index = sprDebris108; break;
case 110:sprite_index = sprDebris110; break;
case 111:sprite_index = sprDebris111; break;
case 112:sprite_index = sprDebris112; break;
case 114:sprite_index = sprDebris114; break;
case 115:sprite_index = sprDebris115; break;
case 116:sprite_index = sprDebris116; break;
case 117:sprite_index = sprDebris114; break;
case 118:sprite_index = sprDebris118; break;
case 120:sprite_index = sprDebris120; break;
case 121:sprite_index = sprDebris121; break;
case 122:sprite_index = sprDebris122; break;
case 123:sprite_index = sprDebris123; break;
case 124:sprite_index = sprDebris123; break;
case 125:sprite_index = sprDebris125; break;
case 126:sprite_index = sprDebris126; break;
case 127:sprite_index = sprDebris127; break;
default: sprite_index = sprDebris0; break;
}
image_speed = 0
image_index = random(4)
image_angle = random(360)
size = 1
motion_add(random(360),3+random(2))
alarm[0] = 200+random(90)
time = 10

if speed > 0
alarm[1] = random(10)/speed+1

var s = 6;
dmgDivision = 10;
sizeDiv = 1;
if instance_exists(Player)
{
	if Player.ultra_got[94]//elementor ultra Cold Heart
	{
		speed*=1.5
		friction=0.17;
		alarm[2] = 1;
		image_xscale += 0.1;
		image_yscale += 0.1;
		s += 1;
	}
	if Player.skill_got[26]//Hammer head
	{
		dmgDivision -= 4;
		speed *= 1.2;
		s += 4.5;
		sizeDiv = 0.8;
		if Player.ultra_got[94]
		{
			//Its too much together
			s -= 1;
			speed *= 0.95;
		}
	}
}
if instance_exists(enemy)
{
	var n = instance_nearest(x,y,enemy)
	if n != noone && n.team != 2
	{
		speed *= 0.5;
		motion_add(point_direction(x,y,n.x,n.y),speed+s);
	}
}

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
default: sprite_index = sprDebris0; break;
}
image_speed = 0
image_index = random(4)
image_angle = random(360)
size = 1
motion_add(random(360),6+random(2))
alarm[0] = 200+random(90)
time = 10

if speed > 0
alarm[1] = random(10)/speed+1

if instance_exists(Player)
{
if Player.race=24
{
if Player.ultra_got[94]//elementor ultra Cold Heart
{
speed*=2
friction=0.14;
}
}
}


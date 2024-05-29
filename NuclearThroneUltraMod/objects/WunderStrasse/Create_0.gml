event_inherited();
alarm[2] = 25;
image_yscale += 2;
dmg += 1.5;
depth = 6;
sprEdge = sprWunderStrasseEnd;
endX = x;
endY = y;
image_speed = 0.8;
alpha = 1;
alphaDecrease = 0.1;
if instance_exists(Player) && Player.skill_got[17]
{
	alphaDecrease = 0.09 - (Player.betterlaserbrain*0.003)
}
alarm[3] = 1;
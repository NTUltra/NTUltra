event_inherited();
alarm[2] = 30;
image_yscale += 2;
dmg += 4;
depth = 6;
sprEdge = sprWunderStrasseEnd;
indexStart = irandom(sprite_get_number(sprEdge));
indexEnd = irandom(sprite_get_number(sprEdge));
endX = x;
endY = y;
image_speed = 0.4;
alpha = 1;
alphaDecrease = 0.1;
if instance_exists(Player) && Player.skill_got[17]
{
	alphaDecrease = 0.09 - (Player.betterlaserbrain*0.003)
}
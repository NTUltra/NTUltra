/// @description Its time
event_inherited();
typ = 5;
owner = -1;
team = 2;
dmg = 2;
if instance_exists(Player)
{
	if Player.skill_got[17] = 1
		image_yscale = 1.8+(Player.betterlaserbrain*0.22)
}
offset = 16;
camKick = 0;
wkick = 4;
camShake = 0;
mywep = 0;
image_speed = 0.5;
ending = false;
pitch = 0;
prevangle = image_angle;
alarm[2] = 2;
hit = [];
owner = -1;
startSpr = sprWazerStart;
endSpr = sprWazerEnd;
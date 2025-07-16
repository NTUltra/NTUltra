loops = GetPlayerLoops();
maxhealth = 60;
if loops > 0 || scrIsHardMode()
	maxhealth = 100 * clamp(loops*3,1,5)
mySize = 2

spr_idle = sprBigSkull
spr_hurt = sprBigSkullHurt
spr_dead = sprBigSkullDead


event_inherited()
alarm[1] = 5;
shadowSprite = shd32;
isActivated = false;
snd_hurt = sndHitRock
scrIsHardMode()
	alarm[1] += 120;
if instance_exists(Player) && Player.subarea != 1
{	
	if loops == 0
	{
		loops = 1;
		alarm[3] = 1;
		alarm[1]-=200
	}
}
if loops < 1
	alarm[2] = 1
// instance_create(x,y,BigWallBreak);
y -= 16;
x -= 16;
scrCreateSpace(1);
y += 16;
x += 16;
name = "SACRIFICE BLOOD?"

alarm[6] = 5;

loops = GetPlayerLoops();
maxhealth = 100 * clamp(loops*2,1,5)
size = 2

spr_idle = sprBigFishSkullOpen
spr_hurt = sprBigFishSkullOpenHurt
spr_dead = sprBigFishSkullDead


event_inherited()
shadowSprite = shd32;

snd_hurt = sndHitRock
alarm[1]=900 * clamp(loops*1.3,1,4)//33 sec 900
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
instance_create(x,y,WallBreak);
name = "?"

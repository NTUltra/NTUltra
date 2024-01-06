var loops = GetPlayerLoops();
maxhealth = 50;
if loops > 0 || scrIsHardMode()
	maxhealth = 120 * clamp(loops*6,1,14)
mySize = 1
//if UberCont.public == 0//Temp only for dev build
//{
	spr_idle = sprBigVultureSkullOpen;
	spr_hurt = sprBigVultureSkullOpenHurt
/*}
else
{
	spr_idle = sprBigVultureSkull;
	spr_hurt = sprBigVultureSkullHurt;
}*/
spr_dead = sprBigVultureSkullDead
name = "ENTER?"

event_inherited()
canMoveOver = true;
shadowSprite = shd48;
snd_hurt = sndHitRock
alarm[1]=470;
if scrIsHardMode() || scrIsGamemode(20)
	alarm[1] += 60;
alarm[1] *= clamp(loops*2.5,1,6)//335//10 seconds 300
instance_create(x,y,WallBreak);
instance_create(x,y+16,WallBreak);
instance_create(x+16,y,WallBreak);
instance_create(x+16,y+16,WallBreak);
instance_create(x-16,y,WallBreak);
instance_create(x-16,y+16,WallBreak);

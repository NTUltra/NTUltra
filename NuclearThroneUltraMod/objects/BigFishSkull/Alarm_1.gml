with Player
oasisskip=-1;

with BanditBoss
oasis=false;

with WantBoss //THIS IS THE BIG BLOCKCOCK soflock
{
	if oasis
		instance_destroy();
}
with PitEnterance
{
	disable = true;	
}
spr_idle = sprBigFishSkull
spr_hurt = sprBigFishSkullHurt


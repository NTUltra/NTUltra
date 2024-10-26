maxhealth = 100//80
mySize = 2
rad = 0;
close = false;
radRequired = 30;
isCharged = false;
lightScale = 1;
lightAnimation = 0;
vxO = 0;
vyO = 0;
alarm[1] = 30;
if instance_exists(Player)
{
	///crown of naturalarmal selection no rads more items
	//if scrIsCrown(13)
	//	rad=40;
	if scrIsCrown(28)
		rad = 20;
	if Player.loops > 0
	{
		maxhealth += 40;
		radRequired = 40;
	}
}
spr_idle = sprPStat2Idle
spr_hurt = sprPStat2Hurt
spr_dead = sprPStatDead
maxPopoSpawns = 3;
event_inherited()
maxSpeed = 0;
canMoveOver = true;
team=1;

snd_hurt = sndStatueHurt
snd_dead = sndStatueDead


name = "CLOSE CROWNVAULT?";
canBeMoved = false;
canBeAngled = false;
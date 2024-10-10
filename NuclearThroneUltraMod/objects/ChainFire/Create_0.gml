event_inherited();
friction = 0//0.6
canBeMoved = false;
typ = 2 //0 = normal, 1 = deflectable, 2 = destructable
candmg=true;
dmg = 27;
chainType = Chain;
particle = Smoke;
hitEntities = [];
cx = xstart;
cy = ystart;
bounce = 0;
if instance_exists(Player) && Player.skill_got[15]//Shotgun shoulder
{
	bounce += 1;
}
xprev = x;
yprev = y;
myHspeed = 0;
myVspeed = 0;
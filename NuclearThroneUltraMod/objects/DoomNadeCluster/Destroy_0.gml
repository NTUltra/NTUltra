snd_play(sndExplosion)
instance_create(x,y,Explosion);
snd_play(choose(sndDoomGuy1,sndDoomGuy2,sndDoomGuy3,sndDoomGuy4,sndDoomGuy5),0.1,false,true,5,false,false,0.7);
var ang = random(360)
with instance_create(x+lengthdir_x(4,ang),y+lengthdir_y(2,ang),DoomGrenade)
{
team=other.team;
}
with instance_create(x+lengthdir_x(4,ang+120),y+lengthdir_y(2,ang+120),DoomGrenade)
{
team=other.team;
}
with instance_create(x+lengthdir_x(4,ang+240),y+lengthdir_y(2,ang+240),DoomGrenade)
{
team=other.team;
alarm[2] = 8 + irandom(7);
}

instance_create(x,y,WallBreakWallOnly);


repeat(10)
{
with instance_create(x,y,Smoke)
motion_add(random(360),random(3))
}


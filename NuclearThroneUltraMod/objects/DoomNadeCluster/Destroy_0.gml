snd_play(sndExplosion)
instance_create(x,y,Explosion);

ang = random(360)
with instance_create(x+lengthdir_x(4,ang),y+lengthdir_y(2,ang),DoomGrenade)
{
scrCanHumphry();
team=other.team;
}
with instance_create(x+lengthdir_x(4,ang+120),y+lengthdir_y(2,ang+120),DoomGrenade)
{
scrCanHumphry();
team=other.team;
}
with instance_create(x+lengthdir_x(4,ang+240),y+lengthdir_y(2,ang+240),DoomGrenade)
{
scrCanHumphry();
team=other.team;
}

instance_create(x,y,WallBreak);


repeat(10)
{
with instance_create(x,y,Smoke)
motion_add(random(360),random(3))
}


if speed = 0
{instance_destroy()
other.rad += 10
if other.crown == 4
other.rad += 1.8;
snd_play(sndRadPickup)

if other.skill_got[3]//Pluto
{
with instance_create(x,y,BulletHit)
sprite_index=sprEatBigRad;
}
else
{
with instance_create(x,y,BulletHit)
sprite_index=sprEatBigRadPlut;
}
}


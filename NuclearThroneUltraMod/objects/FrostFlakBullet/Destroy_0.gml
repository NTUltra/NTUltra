repeat(bullets)
{
with instance_create(x,y,FreezeBullet)
{motion_add(random(360),8+random(8))
image_angle = direction
team = other.team
}
}
Sleep(20)

repeat(6)
{
with instance_create(x,y,Dust)
motion_add(random(360),random(3))
}
snd_play(sndFlakExplode);
BackCont.shake += 8


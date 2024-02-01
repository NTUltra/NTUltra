event_inherited()
scrDrop(10,0);

repeat(40)
instance_create(x,y,ToxicGas)

snd_play(sndToxicBarrelGas)

var dir = random(360)
repeat(20)
{
dir += 360/20
with instance_create(x,y,EnemyBullet2)
{
motion_add(dir,4)
image_angle = direction
team = other.team
}
with instance_create(x,y,AcidStreak)
{
motion_add(dir,8)
image_angle = direction
}
}

BackCont.shake += 20

repeat(5)
{
with instance_create(x,y,ExploderExplo)
motion_add(random(360),random(2)+2)
}

snd_play(sndFrogExplode)

scrDrop(1,1)
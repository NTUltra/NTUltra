event_inherited()


repeat(40)
instance_create(x,y,ToxicGas)

snd_play(sndToxicBarrelGas)

dir = random(360);
var angStep = 360/20
repeat(20)
{
dir += angStep
with instance_create(x,y,EnemyBullet2)
{
motion_add(other.dir,4)
image_angle = direction
team = other.team
}
with instance_create(x,y,AcidStreak)
{
motion_add(other.dir,8)
image_angle = direction
}
}
snd_play(sndFrogExplode)

BackCont.shake += 20

repeat(5)
{
with instance_create(x,y,ExploderExplo)
motion_add(random(360),random(2)+2)
}

snd_play(sndFrogExplode)

scrDrop(1,1)


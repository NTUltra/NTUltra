if !sleeping
{
with instance_create(x,y,EnemyDisc)
{motion_add(other.direction+(random(60)-30),4)
image_angle = direction
team = other.team}
snd_play(sndDiscDie);
}

scrDrop(20,3)

event_inherited()


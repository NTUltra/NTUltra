event_inherited();
maxSpeed = 3;
image_speed = 0.4;
raddrop = 5
maxhealth = 5
meleedamage = 0
mySize = 1
target=-1;
my_health=maxhealth;
dmg = 10;
hurt_pitch_variation = 0;

team = 2;

spr_idle = sprAllyExploderIdle
spr_walk = sprAllyExploderWalk
spr_hurt = sprAllyExploderHurt
spr_dead = sprAllyExploderDead


snd_hurt = sndHitFlesh
snd_melee = sndMaggotBite
snd_dead = sndFrogExplode

//behavior
alarm[1] = 2+random(5)

if instance_exists(enemy)
motion_add(point_direction(instance_nearest(x,y,enemy).x,instance_nearest(x,y,enemy).y,x,y),1)

close = 0


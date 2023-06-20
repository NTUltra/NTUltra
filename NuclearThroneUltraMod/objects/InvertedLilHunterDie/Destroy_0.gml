snd_play(sndExplosionL)
snd_play(sndLilHunterDeath)
ang = random(360)
instance_create(x+lengthdir_x(16,ang),y+lengthdir_y(16,ang),Explosion)
instance_create(x+lengthdir_x(16,ang+120),y+lengthdir_y(16,ang+180),Explosion)
instance_create(x+lengthdir_x(16,ang+240),y+lengthdir_y(16,ang+180),Explosion)

with instance_create(x,y,Corpse)
{
mySize = 1
mask_index = mskPlayer
motion_add(other.direction,other.speed)
sprite_index = sprInvertedLilHunterDead
image_xscale = choose(1,-1)

if instance_exists(Player)
{
if Player.skill_got[20] = 1
{
speed += 9
if Player.race=25
speed+=1;
}
}
if speed > 16
speed = 16
if mySize > 0
speed /= mySize


}


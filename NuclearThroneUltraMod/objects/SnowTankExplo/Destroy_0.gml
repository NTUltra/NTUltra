with instance_create(x,y,MovingCorpse)
{
mySize = other.mySize
mask_index = other.mask_index
motion_add(other.direction,other.speed)
speed += max(0,-other.my_health/5)
sprite_index = other.spr_dead;
image_xscale = other.right

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

scrDrop(30,15)

BackCont.shake += 5

snd_play(sndExplosionCar);
repeat(3)
{
instance_create(x+random(6)-3,y+random(6)-3,Explosion)
}

repeat(3)
{
instance_create(x+random(8)-4,y+random(8)-4,SmallExplosion)
}


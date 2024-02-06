if other.team != team and other.my_health > 0
{//instance_destroy()
with other
{
DealDamage(other.dmg);

sprite_index = spr_hurt
image_index = 0
snd_play(snd_hurt, hurt_pitch_variation,true)

motion_add(other.direction,5)
scrForcePosition60fps();
if speed > maxSpeed + 2
	speed = maxSpeed + 2;
}
with instance_create(x,y,BulletHit)
sprite_index=sprHeavyBulletHit;

scrRecycleGland(cost,radCost);
event_user(0);
if other.team!=0
hits--;

if hits<1
instance_destroy();
}




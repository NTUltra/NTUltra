if other.team != team and other.my_health > 0
{//instance_destroy()
with other
{
my_health -= other.dmg
if instance_exists(Player){
if Player.ultra_got[28]//roids ultra d
{my_health -=1;}}
sprite_index = spr_hurt
image_index = 0
snd_play(snd_hurt, hurt_pitch_variation,true)

motion_add(other.direction,5)
if speed > maxSpeed + 2
	speed = maxSpeed + 2;
}
with instance_create(x,y,BulletHit)
sprite_index=sprHeavyBulletHit;

scrRecycleGland(2);
event_user(0);
if other.team!=0
hits--;

if hits<1
instance_destroy();
}




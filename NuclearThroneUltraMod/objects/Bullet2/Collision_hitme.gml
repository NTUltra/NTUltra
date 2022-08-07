if other.team != team and other.my_health > 0 && alarm[0] < 1
{instance_destroy()
with other
{
my_health -= other.dmg
sprite_index = spr_hurt
image_index = 0
motion_add(other.direction,4)
if speed > 16
	speed = 16;
}

snd_play(other.snd_hurt, other.hurt_pitch_variation,true)
with instance_create(x,y,BulletHit)
sprite_index = sprBullet2Disappear}


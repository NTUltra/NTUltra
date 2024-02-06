if other.team != team and other.my_health > 0
{instance_destroy()
	Sleep(20)
with other
{
DealDamage(other.dmg)
sprite_index = spr_hurt
image_index = 0
motion_add(other.direction,3)
scrForcePosition60fps();
if speed > maxSpeed + 2
	speed = maxSpeed + 2;
snd_play(snd_hurt, hurt_pitch_variation,true)

}
with instance_create(x,y,BulletHit)
	sprite_index = sprFlakHit;
}


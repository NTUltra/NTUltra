if other.team != team and other.my_health > 0
{
ammo=0;
with HorrorBeam
{
ammo=0;
dropRad = false;
}

if other.sprite_index != other.spr_hurt
{

	with other
	{

		raddrop+=other.rad;
		other.rad=0;
		my_health -= max(1,floor(other.charge*0.75));
		sprite_index = spr_hurt
		image_index = 0
		motion_add(other.image_angle,2+other.charge)

		snd_play(snd_hurt, hurt_pitch_variation)
	}

	if bskin=1
	{
	with instance_create(x,y,BulletHit)
	sprite_index=sprHorrorHitB;
	}
	else if bskin=2
	{
	with instance_create(x,y,BulletHit)
	sprite_index=sprHorrorHitC;
	}
	else
	{
	with instance_create(x,y,BulletHit)
	sprite_index=sprHorrorHit;
	}

}

}


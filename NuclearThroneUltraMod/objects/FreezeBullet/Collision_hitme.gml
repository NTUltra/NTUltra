if other.team != team and other.my_health > 0 and other.object_index!=Player
{instance_destroy()
with other
{
if instance_exists(Player){
if Player.ultra_got[28]//roids ultra d
{other.dmg += 2}}
DealDamage(other.dmg)

//freeze bitch!
scrFreezeTarget(other.freezetime);
sprite_index = spr_hurt
image_index = 0
motion_add(other.direction,8)
}

snd_play(other.snd_hurt, other.hurt_pitch_variation,true)
with instance_create(x,y,BulletHit)
	sprite_index = sprFreezeBulletHit;

scrRecycleGland(2);

}
else if other.team != team and other.my_health > 0
{
//Hit player


instance_destroy()
with other
{

	DealDamage(other.dmg,false,false,false)

	//freeze bitch!
	if frozen<1&&my_health>0{
	    instance_create(x,y,FrozenPlayer)
		frozen = 6;
		getFrozen=0;
	}
	sprite_index = spr_hurt
	image_index = 0
	motion_add(other.direction,8)
	snd_play(snd_hurt, hurt_pitch_variation)
}


}




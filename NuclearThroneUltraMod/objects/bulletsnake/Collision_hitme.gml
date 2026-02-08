if other.team != team and other.my_health > 0
{
	var me = id;
	with other
	{
		snd_play(snd_hurt, hurt_pitch_variation,true)
	
		if instance_exists(Player){
		if Player.ultra_got[28]//roids ultra d
		{other.dmg += 2;}}
	
		DealDamage(other.dmg);
		with instance_create(x,y,Venom)
		{
			dmg = 1;
			rate = 4;
			amount = 1;
			scrCopyWeaponMod(me);
			team = me.team;
			owner = other
		}
		sprite_index = spr_hurt
		image_index = 0
		motion_add(other.direction,7)
	}
	instance_create(x,y,ScorpionBulletHit)

	if !norecycle
		scrRecycleGland(cost);
		
	instance_destroy()
}




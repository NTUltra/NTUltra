if other.team != team and other.my_health > 0
{
with other
{
	if UberCont.normalGameSpeed == 60
		my_health -= other.dmg*0.5;
	else
		my_health -= other.dmg
	if instance_exists(Player)
	{

	//freeze bitch!
	if alarm[11]<1&&my_health>0&&Player.ultra_got[63]{
	frozen=true;
		with instance_create(x,y,FrozenEnemy)
		{
			var s = min(2,other.size)
			image_xscale=s*choose(1,-1);
			image_yscale=s;
			xx=other.x
			yy=other.y
			owner=other.id;
		}
	alarm[11]+=20;
	if alarm[1] > 0
		alarm[1] += 15;
	}


	}
	sprite_index = spr_hurt
	image_index = 0
	motion_add(other.image_angle,10)
	snd_play(snd_hurt, hurt_pitch_variation)
	}

if other.my_health<1// && other.sprite_index!=other.spr_hurt
{
amountofenemies++;
with ArmourStrike
	amountofenemies=other.amountofenemies
}


instance_create(x,y,Dust)

}


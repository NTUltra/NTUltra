if object_index!=SnowTank && object_index!=InvertedSnowTank && object_index!=GoldSnowTank && 
!instance_exists(Portal) && instance_number(enemy) <2 && instance_number(becomenemy) = 0 and !instance_exists(Menu) and !instance_exists(RadMaggotChest) and !instance_exists(BecomeScrapBoss) and instance_exists(Player) and !instance_exists(GenCont)
{MorphMe=false;}

	if!(MorphMe){

	myCorpse = instance_create(x,y,Corpse)
	with myCorpse
	{
		size = other.size
		mask_index = other.mask_index
		if other.speed > 0
		{
			motion_add(other.direction,other.speed)
			speed += max(0,-other.my_health/5)
		}
		sprite_index = other.spr_dead
		image_xscale = other.right

		if instance_exists(Player)
		{
			if Player.ultra_got[52] == 1
				speed += 4;
			if Player.skill_got[20] == 1
			{
				speed += 9.3
				if Player.race=25
					speed+=1.25;
				
				if speed > 18
					speed = 18
			}
		}
		if speed > 18
			speed = 18
		if size > 0
			speed /= size
	}
	snd_play(snd_dead, 0.1,true);
}

Sleep(15+size*15)
//Mutations
scrEnemyDeathEvent();

if totemBuffed
{
	scrDrop(10,0);	
}

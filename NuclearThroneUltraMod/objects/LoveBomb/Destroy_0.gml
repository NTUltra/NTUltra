/// @description Deliver some love
with instance_create(x,y,LoveExplosion)
	scrCanHumphry();
if instance_exists(Player) && Player.canHeal && random(100) < 7.7//7.69% chance
{
	with instance_create(Player.x,Player.y-8,HealFX)
	{
		sprite_index=sprBloodlust;
	}
	snd_play_2d(sndBloodlustProc);
	var num = 1
	Player.my_health = max(Player.my_health,min(Player.my_health + num,Player.maxhealth));
    if UberCont.opt_ammoicon
	{
		dir = instance_create(x,y,PopupText)
		dir.mytext = "+"+string(num)
		if Player.my_health = Player.maxhealth
		dir.mytext = "MAX"
		else if Player.my_health > Player.maxhealth
		dir.mytext = "OVER MAX"
		dir.sprt = sprHPIconPickup;
	}
	else
	{
		dir = instance_create(x,y,PopupText)
		dir.mytext = "+"+string(num)+" HP"
		if Player.my_health = Player.maxhealth
		dir.mytext = "MAX HP"
		else if Player.my_health > Player.maxhealth
		dir.mytext = "OVER MAX HP"
	}
}
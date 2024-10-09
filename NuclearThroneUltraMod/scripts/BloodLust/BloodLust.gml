///BloodLust();
// /@description
///@param
function BloodLust(){
	//SOME KILLS REGENERATE HEALTH
	var chance = 7.6
	if Player.race == 25
		chance = 9.5
	if instance_exists(DropReducer) && Player.my_health < Player.maxhealth && Player.my_health <= 2
		chance += 2;//Took a hit not from self damage and is now low on health
    if Player.skill_got[7] = 1 and Player.canHeal && random(100) <  chance//7.69% chance
    {
		var splatDir = random(360);
		var rpt = 1+mySize;
		var angStep = 360 / rpt;
		repeat(rpt)
		{
			with instance_create(x,y,BloodStreak)
			{
				motion_add(splatDir,6 + other.mySize)
				image_angle = direction
			}
			scrAddToBGFXLayer(
				sprBloodSplat,
				irandom(sprite_get_number(sprBloodSplat)),
				x + lengthdir_x(random_range(4,8)+mySize,splatDir),
				y + lengthdir_y(random_range(4,8)+mySize,splatDir),
				random_range(0.8,1),
				random_range(0.8,1),
				splatDir,
				c_white,
				1
			);
			splatDir += angStep;
		}
		scrSpawnBloodBullets(x,y,3,14);
    	snd_play_2d(sndBloodlustProc,0,true);
	    with instance_create(Player.x,Player.y-8,HealFX)
	    {
			sprite_index=sprBloodlust;
	    }
    
	    num = 1
		scrHeal(1);
		if instance_exists(YungCuzDupe)
		{
			var healedOne = false;
			var tries = 1000;
			while !healedOne && tries > 0
			{
				with YungCuzDupe
				{
					if !healedOne && random(4) < 1
					{
						healedOne = true;
						my_health = min(my_health + 1, maxhealth);
						with instance_create(x,y-2,HealFX)
						{
							sprite_index=sprBloodlust;
						}
					}
				}
				tries -= 1;
			}
		}
		/*
	    Player.my_health = max(Player.my_health,min(Player.my_health + num,Player.maxhealth));
		
		if UberCont.opt_ammoicon
		{
			dir = instance_create(x,y,PopupText)
			dir.sprt = sprHPIconPickup;
		    dir.mytext = "+"+string(num)
		    if Player.my_health = Player.maxhealth
		    dir.mytext = "MAX"
			else if Player.my_health > Player.maxhealth
			dir.mytext = "OVER MAX"
		}
		else
		{
		    dir = instance_create(x,y,PopupText)
		    dir.mytext = "+"+string(num)+" HP"
		    if Player.my_health = Player.maxhealth
		    dir.mytext = "MAX HP"
			else if Player.my_health > Player.maxhealth
			dir.mytext = "OVER MAX HP"
		}*/
    }
}
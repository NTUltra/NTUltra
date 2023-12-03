///BloodLust();
// /@description
///@param
function BloodLust(){
	//SOME KILLS REGENERATE HEALTH
	var chance = 7.7
	if Player.race == 25
		chance = 7.95;
    if Player.skill_got[7] = 1 and Player.canHeal and random(100) <  chance//7.69% chance
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
		}
    }
}
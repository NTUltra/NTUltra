///BloodLust();
// /@description
///@param
function BloodLust(){
	//SOME KILLS REGENERATE HEALTH
	var chance = 7.7
	if Player.race == 25
		chance = 7.89;
	if UberCont.opt_gamemode == 34//HARD MODE
		chance -= 0.5;
    if Player.skill_got[7] = 1 and random(100) <  chance//7.69% chance
    {
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
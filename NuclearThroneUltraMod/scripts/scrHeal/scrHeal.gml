///scrHeal();
// /@description
///@param
function scrHeal(num = 1){
	if Player.my_health + num <= Player.maxhealth
		Player.my_health += num
	else
		Player.my_health = max(Player.my_health,Player.maxhealth);
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
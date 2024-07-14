///scrHeal();
// /@description
///@param
function scrHeal(num = 1, canOverHeal = false){
	if !instance_exists(Player)
		exit;
	if !Player.canHeal
		exit;
	var maxCap = floor(max(Player.maxhealth*2,10));
	if canOverHeal || Player.my_health + num <= Player.maxhealth
		Player.my_health += num
	else
		Player.my_health = max(Player.my_health,Player.maxhealth);
	if UberCont.opt_ammoicon
	{
		var popupText = instance_create(x,y,PopupText)
		popupText.sprt = sprHPIconPickup;
		popupText.mytext = "+"+string(num)
		if Player.my_health = Player.maxhealth
		popupText.mytext = "MAX"
		else if Player.my_health > Player.maxhealth
		{
			if canOverHeal
			{
				Player.my_health = min(Player.my_health,maxCap);
				if (Player.my_health == floor(max(Player.maxhealth*2,10))) {
					popupText.mytext = "MAX OVERHEAL!";
				}
				else
				{
					popupText.mytext = "+"+string(num)+"#OVERHEAL!";
				}
			}
			else
				popupText.mytext = "OVER MAX"
		}
	}
	else
	{
		var popupText = instance_create(x,y,PopupText)
		popupText.mytext = "+"+string(num)+" HP"
		if Player.my_health = Player.maxhealth
		popupText.mytext = "MAX HP"
		else if Player.my_health > Player.maxhealth
		{
			if canOverHeal
				popupText.mytext = "+"+string(num)+"HP#OVERHEAL!";
			else
				popupText.mytext = "OVER MAX HP"
		}
	}
}
/// @description Increase max health and make sure this never returns

// Inherit the parent event
event_inherited();
with Player
{
	if ultra_got[62] && altUltra//LIVING ARMOUR
	{
		maxarmour += 1;
		armour += 1;
		with instance_create(x,y,PopupText)
		{
			mytext = "+1 MAX ARMOUR!"
			theColour = c_lime;
			moveSpeed = 1;
			alarm[1] = 60;
		}
	}
	else
	{
		maxhealth += 1;
		my_health += 1;
		with instance_create(x,y,PopupText)
		{
			mytext = "+1 MAX HP!"
			theColour = c_lime;
			moveSpeed = 1;
			alarm[1] = 60;
		}
	}
}
UberCont.voidShopHealthUpgrade *= 2;
//UberCont.maxHpIncrease += 1
cost = UberCont.voidShopHealthUpgrade;
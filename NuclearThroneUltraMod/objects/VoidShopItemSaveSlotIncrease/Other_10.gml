/// @description Increase save slots
event_inherited();

with UberCont
{
	total_run_slots += 1;
	scrSave();
	if total_run_slots >= max_run_slots
	{
		with other
		{
			event_user(1);
			with instance_create(x,y,PopupText)
			{
				mytext = "MAX SAVE SLOTS REACHED!"
				theColour=c_lime;
				moveSpeed = 1;
				alarm[1] = 60;
			}
			instance_create(x,y,VoidShopItemEliteWeaponChest);
		}
	}
	else
	{
		other.cost = 2 * total_run_slots;
		with instance_create(other.x,other.y,PopupText)
		{
			mytext = "+1 SAVE SLOT!"
			theColour = c_lime;
			moveSpeed = 1;
			alarm[1] = 60;
		}
	}
}
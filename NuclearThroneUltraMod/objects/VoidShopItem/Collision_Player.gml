/// @description Collect reward click
if KeyCont.key_pick[other.p] = 1
{
	if (UberCont.portalEssence >= cost)
	{
		UberCont.portalEssence -= cost;
		KeyCont.key_pick[Player.p] = 2;
		event_user(0)
	}
	else
	{
		var dir = instance_create(x,y,PopupText)
		dir.mytext = "NOT ENOUGH PORTAL ESSENCE"
		dir.theColour=c_red;
	}
}
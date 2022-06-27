/// @description You want to go for pizza?
if image_index == 1 && !wentIn
{
	if KeyCont.key_pick[other.p] = 1
	{
		wentIn = true;
		name = "PIZZA TIME!!";
		KeyCont.key_pick[Player.p] = 2;
		with Player
		{
		area = 102
		subarea = 0
		}
		with instance_create(x+16,y+16,Portal) type = 1
	}
}
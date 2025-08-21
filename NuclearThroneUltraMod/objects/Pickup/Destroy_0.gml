/// @description Pluto orb attack
if !collected && hasPluto
{
	with instance_create(x,y,PlutoAttack)
	{
		dmgBoost = other.plutoDmgAdd;
		if dmgBoost == 0
			widthScale -= 0.5;
		else if dmgBoost > 2
		{
			widthScale += dmgBoost*0.25;
		}
	}
}
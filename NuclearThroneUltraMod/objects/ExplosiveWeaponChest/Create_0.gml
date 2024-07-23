event_inherited();
for (var wi = 0; wi < maxwep; wi++) {
	if wep_type[wi] != 4 && !scrIsAlsoExplosiveType(wi)
	{
		wep_area[wi] = -1;
	}
}
event_user(1);
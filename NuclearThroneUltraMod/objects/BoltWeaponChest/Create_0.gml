event_inherited();
//if (!scrIsGamemode(31))
//{
for (var wi = 0; wi < maxwep; wi++) {
	if wep_type[wi] != 3 && !scrIsAlsoBoltType(wi)
	{
		wep_area[wi] = -1;
	}
}
//}
event_user(1);
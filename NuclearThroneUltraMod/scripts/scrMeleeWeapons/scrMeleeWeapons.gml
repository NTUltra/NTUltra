function scrMeleeWeapons() {
	with Player
	{
	if (wep_type[wep] == 0 || wep == 24 || wep == 36 || wep == 53 
	|| wep==198 || wep==37|| wep==126|| wep==108|| wep==109
	|| wep==123 || wep == 222|| wep==239 || wep==220 || wep==291 || wep == 332 || wep == 377 || wep == 458
	) && string_copy(wep_name[wep],0,8) != "INFINITY"
	{
	return true;
	}
	}
	return false;
}

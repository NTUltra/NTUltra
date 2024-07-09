/// @description Update Skin
//skin = UberCont.skin
skinLocked = false;
if skin == 1 && UberCont.race_bskin[race]=1
{
	UberCont.skin[race]=skin;
}
else if skin == 2 && UberCont.race_cskin[race]=1
{
	UberCont.skin[race]=skin;
}
else if skin == 3 && UberCont.race_dskin[race]=1
{
	UberCont.skin[race]=skin;
}
else if skin == 4 && UberCont.race_eskin[race]=1
{
	UberCont.skin[race]=skin;
}
else if skin == 5 && UberCont.race_fskin[race]=1
{
	UberCont.skin[race]=skin;
}
else if skin == 6 && UberCont.race_gskin[race]=1
{
	UberCont.skin[race]=skin;
}
else if skin == 0
{
	UberCont.skin[race]=skin;
}
else
{
	skinLocked = true;	
}
//else
//	UberCont.skin[race] = 0;
with Menu
{
	portraitLerp = 0;
	skin = other.skin;
}
/// @description some rads

// Inherit the parent event
event_inherited();
with myPartner
{
	my_health = 0;	
}
with myCorpse
{
	image_angle = other.image_angle;	
}
scrRaddrop(1);
scrDrop(15,0,true);
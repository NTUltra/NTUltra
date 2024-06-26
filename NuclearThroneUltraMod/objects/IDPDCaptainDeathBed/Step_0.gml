/// @description Cant immediatly kill
if killable
{
	event_inherited();
}
else
{
	my_health = maxhealth;
}
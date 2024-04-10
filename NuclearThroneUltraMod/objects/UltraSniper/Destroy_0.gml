scrDrop(40,10)
scrDrop(6,0)
if !sleeping
	instance_create(x,y,BigGreenExplosion);
event_inherited();
with Player
{
	if race == 11
	scrUnlockCSkin(11,"FOR KILLING#AN UTLRA SNIPER BOT#AS HUNTER",0)
}
/// @description Roll credits!
with UberCont
{
	debug("ROLL CREDITS");
	scrRestart();
	if other.endingType == 0
		room_goto(romCredits);
}
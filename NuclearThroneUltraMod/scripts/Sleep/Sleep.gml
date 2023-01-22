function Sleep(argument0) {
	//MY SCRIPT? sleep(argument0*UberCont.opt_freeze); //optimise make this a while loop for now I know it causes issues on other devices whatev
	//var time = get_timer()/1000;
	//while ((get_timer()/1000-time) < argument0*UberCont.opt_freeze){/*LOEPERDEPOEP*/}
	//die while loop can crashes veroorzaken op android en ios XD (omdat die leeg is...)
	if UberCont.normalGameSpeed == 60
		argument0 *= 2;
	//We will turn this into a pause screen sprite surface thing so that it does not cause crashes and such
	// RETAIL SCRIPT
	var time;
	if (instance_exists(GenCont)) return 0;
	time = get_timer() / 1000;
	while (get_timer() / 1000 - time < max(1, argument0 * UberCont.opt_freeze)) { }


}

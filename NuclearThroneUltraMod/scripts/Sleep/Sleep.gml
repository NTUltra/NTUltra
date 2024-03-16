function Sleep(duration) {
	//exit;//Fuck freeze frames
	//MY SCRIPT? sleep(argument0*UberCont.opt_freeze); //optimise make this a while loop for now I know it causes issues on other devices whatev
	//var time = get_timer()/1000;
	//while ((get_timer()/1000-time) < argument0*UberCont.opt_freeze){/*LOEPERDEPOEP*/}
	//die while loop can crashes veroorzaken op android en ios XD (omdat die leeg is...)
	if UberCont.opt_freeze == 0
		return 0;
	if UberCont.normalGameSpeed == 60
		duration *= 2;
	
	duration *= UberCont.opt_freeze;
	duration *= 0.15;
	if !instance_exists(FreezeFrame)
	{
		with instance_create(x,y,FreezeFrame)
		{
			alarm[0] = max(1,duration);
		}
	}
	else if FreezeFrame.alarm[1] > 0
	{
		with FreezeFrame
		{
			alarm[0] += duration;
		}
	}
	//We will turn this into a pause screen sprite surface thing so that it does not cause crashes and such
	// RETAIL SCRIPT
	/*
	var time;
	if (instance_exists(GenCont)) return 0;
	time = get_timer() / 1000;
	while (get_timer() / 1000 - time < max(1, duration * UberCont.opt_freeze)) { }
	*/

}

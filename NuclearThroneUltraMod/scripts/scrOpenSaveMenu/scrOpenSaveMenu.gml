///scrOpenSaveMenu();
// /@description
///@param
function scrOpenSaveMenu(){
	//scrSaveRun();
	with UberCont
	{
		if total_run_slots < 1
		{
			total_run_slots += 1;
			scrSave();
		}
		//PAUSE GAME
		event_user(0);
		alarm[7] = 1;
		isPaused = 1
		instance_create(x,y,SaveRunMenu);
	}
}
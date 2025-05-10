if alarm[3] > 0
exit;
if time < 1
{
	if UberCont.normalGameSpeed == 60
		time += 0.2;
	else
		time += 0.4;
	if time > 1
		time = 1;
	exit;
}
if (UberCont.mouse__x < x+16 and UberCont.mouse__y < y+16 and UberCont.mouse__x > x-20 and UberCont.mouse__y > y-20)
{
	
	with RerollIcon
		selected = false;
		
	selected = true;
	with UberCont
	{
		selectedIndex = other.skillIndex;	
	}
}
if selected && visible
{
	if !hover
		snd_play_2d(sndHover);
	hover = true;
	if KeyCont.key_spec[p] == 1 && !(instance_exists(Player) && Player.ultra_got[19] && Player.altUltra){
		//KeyCont.key_spec[p] = 2;
		with SkillIcon
		{
			showDetail = !showDetail;
		}
		alarm[2] = 6;
		if showDetail
			snd_play_2d(sndClick);
		else
			snd_play_2d(sndClickBack);
		UberCont.opt_show_mutation_details = showDetail;
	}
	else if instance_exists(Player) && (KeyCont.key_fire[p] == 1 || KeyCont.key_pick[p] == 1) && (!mouse_check_button_pressed(mb_left) || (UberCont.mouse__x < x+16 and UberCont.mouse__y < y+16 and UberCont.mouse__x > x-20 and UberCont.mouse__y > y-20))
	{
		KeyCont.key_fire[p] = 2;
		KeyCont.key_pick[p] = 2;
		UberCont.globalMutationsChosen += 1414;
		if skill >= 0
		{
			with Player
				scrLoseSkill(other.skill, false, false);
				Player.skillpoints += 1;
		}
		Player.rerollpoints -= 1;
		with GameRender {
			event_user(0);
		}
		with RerollIcon
		instance_destroy();
		
		with SkillIcon
		instance_destroy()

		with LevCont
		instance_destroy()

		with UltraIcon
		instance_destroy()
		if Player.skillpoints > 0 || Player.refundPoints > 0 || Player.charpoints > 0 || (Player.rerollpoints > 0 && scrHasEnoughMutations(1))
		{
			instance_create(x,y,LevCont);
		}
		else if !instance_exists(GenCont)
		{
			with instance_create(x,y,GenCont){
			race = Player.race;}
		}
	}
}
else
{
	hover = false;	
}
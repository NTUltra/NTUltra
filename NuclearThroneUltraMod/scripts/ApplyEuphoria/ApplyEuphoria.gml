///ApplyEuphoria();
// /@description speed change for projectiles
///@param
function ApplyEuphoria(){
	if instance_exists(Player)
	{
		if team != Player.team
		{
			if Player.crown == 23//Crown of speed
			{
				speed += 0.35;
				speed *= 1.22;
			}
			if Player.skill_got[12] = 1
			{
				speed = speed*0.76
			}
			if Player.crown == 24//Crown of sloth
			{
				speed = max(0,speed-0.1);
				speed *= 0.82;
			}
			if UberCont.opt_gamemode == 9
			{
				//Easy mode adjustments
				speed = speed*0.9
				image_xscale -= 0.1;
				image_yscale -= 0.1;
			}
		}
	}
}
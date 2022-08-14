///StartHogInvestment();
// /@description
///@param
function StartHogInvestment(){
	debug("CHECK INVESTMENT", usedHogInvestment);
	if ultra_got[79] && loops >= 2 && !usedHogInvestment
	{
		debug("HOGGERS");
		usedHogInvestment = true;
		//skillsChosen=10;
		hogpoints = 3;//1 is the deadzone so only get 2 when set to 3
		skillpoints += 2;
	}
}
///HogSpend();
// /@description
function HogSpend(){
	var maxRad = 0;
	with Player {
		maxRad = GetPlayerMaxRad();	
	}
	var calcCost = maxRad * cost;
    if (Player.rad-calcCost>=0)
    {
		Player.rad-=calcCost;
	    with instance_create(x,y,PopupText)
	    mytext = "-"+string(other.cost*100)+"% RADS";
		return true;
	}
	else
	{
		snd_play(sndUltraEmpty,0.05,true);
		with instance_create(x,y,PopupText)
		{
			mytext = "NOT ENOUGH RADS";
			theColour=c_red;
		}
	}
	return false;
}
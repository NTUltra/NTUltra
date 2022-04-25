speed = 0
x=xstart;
y=ystart;
if alarm[3] < 1 && prevhealth > my_health
{
	//took a hit
	var dmgTaken = prevhealth - my_health;
	my_health += dmgTaken * 0.75;
}

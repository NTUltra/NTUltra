event_inherited()

if walk > 0
{
walk -= 1
motion_add(direction,0.8)
}

if speed > 3.8
speed = 3.8

if nofly > 0
{
	if UberCont.normalGameSpeed == 60
		nofly -= 0.25
	else
		nofly -= 0.5

}

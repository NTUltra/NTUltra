fishx = room_width/2
fishy = room_height/2

image_angle = random(1000)

type = 1
//1 = normal 2 = proto 3 = idpd 4= venuz 5 = inv 6 = wonder
time = 0

if instance_exists(Player)
{
if Player.area = 100//CROWN
type = 2

if Player.area = 103 || Player.area == 104//MANSION
type = 4
if scrIsInInvertedArea()//INV
type=5;
if Player.area == 8//WONDERLAND
type = 6;
if Player.area == 135//HQ
type = 3;
if Player.area == 137//VOID
type = 7;
}

depth = -6;

repeat(80)//(200)
{
	with SpiralCont
		event_perform(ev_alarm,0)

	with Spiral
		event_perform(ev_alarm,0)

	with SpiralDebris
		event_perform(ev_alarm,0)

	with SpiralStar
		event_perform(ev_alarm,0)
}
active = true
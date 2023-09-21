fishx = room_width/2
fishy = room_height/2

image_angle = random(1000)
active = 0

type = 1
//1 = normal 2 = proto 3 = idpd 4= venuz 5 = inv 6 = wonder
time = 0

if instance_exists(Player)
{
if Player.area = 100
type = 2

if Player.area = 103
type = 4
if scrIsInInvertedArea()
type=5;
if Player.area == 8
type = 6;
}

depth = -6;

repeat(60)//(200)
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

active = 1

alarm[0] = 1;
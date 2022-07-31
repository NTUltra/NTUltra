fishx = room_width/2
fishy = room_height/2

image_angle = random(1000)
active = 0

type = 1
//1 = normal 2 = proto 3 = idpd 4= venuz 5 = inv 6 = wonder
time = 0


repeat(60)//(200)
{
with ThroneIISpiral
event_perform(ev_step,0)

with Spiral
event_perform(ev_step,0)

with SpiralDebris
event_perform(ev_step,0)
}

active = 1


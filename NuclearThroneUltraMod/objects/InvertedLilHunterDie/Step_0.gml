
instance_create(x,y,Smoke)

image_angle = direction-90

direction += trn
if UberCont.normalGameSpeed == 60
	trn += random(0.5)-0.25
else
	trn += random(1)-0.5

if speed < 6
speed += 2
speed += 0.05


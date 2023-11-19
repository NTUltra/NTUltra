//image_angle = direction
if UberCont.normalGameSpeed == 60
	image_angle+=20;
else
	image_angle+=40;
scrBoltMarrow(1,8);
scrBoltTrail(trailColour,0.05,2);
if(speed<=0){instance_destroy();}

alarm[0]=time;
if room_speed < UberCont.normalGameSpeed
{
room_speed+=1;
}
else{
room_speed=UberCont.normalGameSpeed;
instance_destroy();}


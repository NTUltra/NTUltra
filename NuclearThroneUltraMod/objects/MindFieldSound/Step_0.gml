/// @description Slowly shift sound
audio_emitter_position(emitter,x,y,depth);
if time < 1
{
	if UberCont.normalGameSpeed == 60
		time += 0.1;
	else
		time += 0.2;
}
else
	time = 1;
x = lerp(ox,tx,time);
y = lerp(oy,ty,time);
/// @description xxx
if UberCont.normalGameSpeed == 60
{
	crackTime += crackTimeIncrease * 0.5;
	crackTimeIncrease += crackTimeIncrease*0.005;
}
else
{
	crackTime += crackTimeIncrease;
	crackTimeIncrease += crackTimeIncrease*0.01;
}
	
BackCont.shake = max(BackCont.shake, 30*UberCont.opt_shake);
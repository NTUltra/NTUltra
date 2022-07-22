function scrHorrorUltraE() {
	with Player
	{

	if ultra_got[0] && !altUltra
	{
	var i = 0;
	var j = false;
	do
	{
	i++;
	if ultra_got[i]
	j=true;
	}
	until(i>=maxultra)

	if j==false
	{
	return true;
	}

	return false;

	}
	else
	return true;


	}



}

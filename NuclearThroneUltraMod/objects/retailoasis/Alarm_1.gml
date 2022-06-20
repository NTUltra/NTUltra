with Player
	oasisskip=-1;

with BanditBoss
	oasis=false;

with WantBoss //THIS IS THE BIG BLOCKCOCK soflock
{
	if oasis
		instance_destroy();
}
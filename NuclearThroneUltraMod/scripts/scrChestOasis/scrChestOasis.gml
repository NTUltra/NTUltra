function scrChestOasis() {
	if !instance_exists(GenCont)
	{
	with Player
	{

	    if area=1 and subarea<2&&oasisskip!=-1 and loops < 1
	    {
		    oasisskip-=1;
		    if oasisskip=0
		    {
				snd_play(sndOasisHorn);
		    with instance_create(x,y,WantBoss)
		    {oasis=true;
		    event_perform(ev_alarm,0) }
		    }
	    }
	}
	}
}

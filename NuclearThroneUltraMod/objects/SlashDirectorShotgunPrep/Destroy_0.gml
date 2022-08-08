with instance_create(x,y,SlashDirectorShotgunBurst)
{
rate=other.rate//for extra speed more bullets per step
Direction= other.Direction
creator = other.creator
ammo = other.ammo
totalammo = other.totalammo
time = other.time
team = other.team
event_perform(ev_alarm,0) 
}


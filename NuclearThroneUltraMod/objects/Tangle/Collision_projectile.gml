if instance_exists(Player){
if Player.ultra_got[20] && !Player.altUltra//plant STEREO ultra D
    {
    with other{
    if team!=Player.team && (type == 1 || type == 2)
    instance_destroy();}
    }
}


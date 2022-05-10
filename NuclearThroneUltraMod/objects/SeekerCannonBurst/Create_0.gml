leftang=point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)-60;
rightang=point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+60;

if instance_exists(Player)
{

leftang=point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)-60*Player.accuracy;
rightang=point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+60*Player.accuracy;

}
ang=choose(0,120);
left=false;


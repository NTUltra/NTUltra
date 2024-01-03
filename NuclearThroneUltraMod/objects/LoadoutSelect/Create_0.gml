scrWeapons();
scrRaces();
scrStartingWeapons();
scrCrowns();
scrUltras();
scrSecretUltraStat();
race=0;
scale=1;
ultraScale = 1;
wepopenscale=1;
wep=0;
imageIndex = 0;
time = 0;
wepmenuopen=false;

skin=0;
if instance_exists(Menu)
{
race=Menu.race;
skin=UberCont.skin[race];
}
arrowOpenerY = 59;
crownIcons = [];
sxo = 126;//135
ultraOpen = false;
sx = __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-sxo;
depth = TopCont.depth - 1;
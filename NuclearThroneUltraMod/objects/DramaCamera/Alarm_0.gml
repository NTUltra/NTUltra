__view_set( e__VW.XView, 0, x-(__view_get( e__VW.WView, 0 )*0.5) );
__view_set( e__VW.YView, 0, y-(__view_get( e__VW.HView, 0 )*0.5) );


var time = get_timer()/1000;
while ((get_timer()/1000-time) < 1000){/*LOEPERDEPOEP*/}



with BanditBoss
depth = -2
with InvertedBanditBoss
depth = -2
with BigVulture
depth = -2
with ScrapBoss
depth = -2
with InvertedScrapBoss
depth = -2
with LilHunter
depth = -2
with InvertedLilHunter
depth = -2
with HotDrake
depth = -2
with InvertedHotDrake
depth = -2
with ChesireCat
depth = -2
with InvertedChesireCat
depth = -2
with BallMom
depth = -2
with HyperCrystal
depth = -2
with Technomancer
depth = -2


with Drama
instance_destroy();

instance_activate_object(Floor);
instance_activate_object(Wall);
instance_activate_object(enemyCollisionWall);
instance_destroy()
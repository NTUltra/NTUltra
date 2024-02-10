scrUltras()
depth = -102;
p = 0
alarm[0]=1;
image_speed = 0;
//Skeleton's random ultra decision
skill1=1;
skill2=1;
skill3=1;
skill4=1;
randomHand = choose(1,2);
ultimategamble=0;
if instance_exists(Player){
///more skeleton data things for resetting redemption Ultra A
race = Player.race
crown = Player.crown
lastarea = Player.lastarea;
area = Player.area//other.lastarea;
loops = Player.loops;
hard = Player.hard;
kills = Player.kills;
subarea=Player.subarea;
wep=Player.wep
bwep=Player.bwep
skeletonlives=Player.skeletonlives;
bskin = Player.bskin;

wepmod1=Player.wepmod1
wepmod2=Player.wepmod2
wepmod3=Player.wepmod3
wepmod4=Player.wepmod4

bwepmod1=Player.bwepmod1
bwepmod2=Player.bwepmod2
bwepmod3=Player.bwepmod3
bwepmod4=Player.bwepmod4
}
skillIndex = instance_number(UltraIcon) - 1;
exceptionclick=false;
selected = false;
isAlternative = false;
canAlt = false;
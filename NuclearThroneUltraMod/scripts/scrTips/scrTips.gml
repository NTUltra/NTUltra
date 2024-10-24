function scrTips() {
	tiptype = choose(0,0,0,0,0,0,0,0,0,1,1,1,2,2,3,4,5,choose(0,6,0,0,1,1,2,2,3,4,5,5,6,6,7,7,7))
	if !instance_exists(Player)
		tiptype = 0
	tip = "";
	if (deaths < 20 || !UberCont.unlocked_alt_routes) && instance_exists(Player) && Player.loops < 1
	{
		tip = choose("WELCOME TO NUCLEAR THRONE!","TRY TO ALWAYS STAY ON THE MOVE",
		"ENEMIES DROP HEALTH AND AMMO","HEALTH CAN DROP MORE OFTEN WHEN IT'S LOW",
		"most projectiles can be deflected or destroyed by melee#except for pink squares",
		"pink square bullets toxic gas and fire cannot be deflected","director weapons can be redirected by firing again",
		"sheep have a high chance to drop health, ammo and radiation", "use radiation to mutate!","pick your mutations wisely",
		"the number next to a weapon indicates its tier","do not stick with a low tier weapon for too long", "always try out a new weapon",
		"some weapons have a green popup with a small explanation","having three weapon specific mutations will offer you a secret mutation",
		"when you reach level 10 you get an ultra mutation!","use cover!","you can do this!","you will unlock tons of stuff#check the gamemode menu for some of the unlockables",
		"if you die in the first area you will unlock casual mode","casual mode is essentially a normal mode#nuclear throne is just very difficult",
		"your health can go beyond max#by picking up big healthchests at max health", "health = HP", "radiation = rads", "once you get further in the game you will unlock alternative paths",
		"you can loop the game by destroying the big generators!","when you have an light blue outline you are immune to damage!",
		"shells are the shotgun projectiles that bounce#they don't necessarily use shotgun ammo!",
		"most weapon specific mutations are based on your projectile type#not on your ammo type",
		"blood bullets are also bullets#and will be refunded with recycle gland","picking up a weapon reloads your weapons",
		"hover over HUD elements in the top of your screen#such as mutations and weapons#for a short explanation",
		"you can speed up this loading screen#in the options menu","most ultra mutations can destroy squares",
		"when you reach level 10 you get your ultra mutation!","destroy the generators to loop","characters you looped with get a green border",
		"just have fun", "don't get baited by items", "wield one strong slow firing weapon#and one quick firing weapon",
		"crowns can be very beneficial in certain situations!","taking a crown unlocks crown start!","golden weapons can be unlocked as starting weapons");
	}
	else if tiptype = 0
	{
	//RANDOM
	tip = choose(
	"you can turn off flashy effects by turning down screenshake and artificial lag to 0",
	"picking up a weapon reloads your weapons",
	"always move",
	"characters you looped with show a green border",
	"beware of the pit!",
	"ghosts are real",
	"popguns fire shells not bullets",
	"blood bullets work with recycle gland",
	"the wastelands show no mercy",
	"stunned or sleeping enemies do not deal contact damage to you",
	"overhealth is capped at double your max hp or at minimum 10hp",
	"secret ultras require a specific#crown, mutation, skin or weapon setup",
	"secret ultras require a specific type of#crown, weapon, or mutation#when you reach level ultra",
	"secret ultras all require a specific setup#when you reach level ultra",
	"idpd grunts can roll",
	"fish can play guitar",
	"you've got this!",
	"some crowns are kinda cute",
	"after getting 100% you can get 200% completion!",
	"for 200% completion you have to#find all alternative ultras#get all golden weapons#and loop on all characters",
	"you can swap cursed weapons#with other cursed weapons",
	"green outline on mutations means#you have taken them before",
	"try every mutation it will also unlock a gamemode",
	"you can combine multiple gamemodes!",
	"some enemies shoot through walls!",
	"don't worry",
	"input targeted ad here",
	"recycle gland recycles radiation cost",
	"you can stack the same weapon mods",
	"stand still over a weapon mod#for a detailed description",
	"cursed pickups are worth more",
	"cursed pickups fade faster and explode",
	"don't hold onto your early weapons for too long",
	"swap your early weapons even when you mod them",
	"tier display acts as a guideline for weapon power",
	"Simple descriptions give you the jist of things",
	"enable simple descriptions if you don't like reading",
	"enable detailed descriptions if you'd like to know the stats",
	"all weapons are full auto\nbut tapping will make some fire faster",
	"all weapons are auto",
	"where is that last geezer",
	"swap weapons for new ones",
	"try some different weapon types",
	"every mutant has atleast 5 ultras!",
	"alternative routes are generally faster but harder",
	"alternative routes are harder",
	"alternative routes are faster",
	"each mutant has a secret ultra",
	"don't forget to update your game <3",
	"tapping fires some weapons quicker",
	"HP will only drop when damaged",
	"shotgun shoulders:\nincreases bouncer bullets bounces",
	"shotgun shoulders:\nincreases sword gun bounces",
	"Check out the Ultra mod wiki!",
	"Check out the ultra mod discord!",
	"When you respawn#you level up faster",
	"explosives can destroy walls",
	"melee weapons can deflect bullets",
	"extra feet prevents lava damage",
	"flying characters can fly over lava",
	"shotguns are great for close combat",
	"assassins can pretend they're dead",
	"fish can dodge roll",
	"use [space] or [Q] to swap weapons#instead of mouse wheel",
	"hover over HUD elements to see more info",
	"hover over weapon in HUD#to show fire type",
	"hover over your crown#to see what it is",
	"impact wrists is crazy",
	"ecstatic fists can give#even more damage increase#when you are overhealed",
	"always keep one eye on your ammo",
	"robots can digest anything",
	"bandits like camping near explosives",
	"not today",
	"armour blocks a full hit of damage",
	"everything has been rebalanced compared to retail",
	"rosebud",
	"try some different crowns",
	"for handling some enemies its best to keep distance",
	"inverted areas are optional",
	"it's not fair, it's not right",
	"watch out for dehydration",
	"crystal can shield",
	"fear is the mindkiller",
	"loading...",
	"skip",
	"that was crazy",
	"keep it together",
	"winnable",
	"inverted enemies have less health",
	"there is a cheatcode#to unlock everything",
	"square bullets are immune to melee",
	"some enemies are more vulnerable while charging",
	"flashing effects can be turned off by setting screenshake and freezeframes to 0",
	"casual mode is just normal mode",
	"when looping the game wants you dead",
	/*these are rare*/ choose(
	"don't get angry just blame the game",
	"don't get mad just blame the dev, but he will tell you: 'skill issue'",
	"even at 50% loading speed this tip is probably a little too long to read, oh well thats too bad. You didn't miss much though there is nothing here really. Maybe there is a secret though at the end of this loong very long tip. No there really isn't",
	"no","bob and weave","airhorn.wav","danger zone","no sex jokes","in and about",
	"obsidian throwing knife can one shot big bandit, if throwing during his charge","you have now seen all loading tips", "that previous loading tip sucked!"
	,"the purple dragon","golden frog anyone?","Y.V. mony rad","the flying cat head","myth of time","sheeps are a thing","feedback is much appreciated","follow @erdeppol","I love you!",
	"be nice#get bitches","fish can dodgeroll to prevent blood hammer self damage","I could go for a burger right now",
	"reach level ultra as yv with two melee weapons","double inversion magnet to loop!","doe normaal man"),
	"the I.D.P.D. is looking for you",
	"Visiting inverted areas increases the quality of weapons that drop",
	"gold weapons don't count towards#your progression percentage",
	"try hitting grenades for extra range",
	"pick your mutations wisely",
	"if only you could talk to the monsters",
	"steroids can dual wield",
	"ammo chests always give#ammo for your primary weapon",
	"always wear dry socks",
	"one fast firing weapon#one strong weapon",
	"energy weapons use lots of ammo",
	"elite wep chests drop weps#of the highest tier possible",
	"try not opening weapon chests",
	"fire at things until they die",
	"ammo drops depend on your weapons",
	"war is hell",
	"kraken pulls enemies towards you",
	"doing alright",
	"let's have fun!",
	"be kind",
	"blast!",
	"overcome the challenge!",
	"don't main anyone#just play everything!",
	"scarier face has been changed",
	"don't get complacent",
	"there are a ton of gamemodes to unlock and try",
	"there are more than 850 weapons",
	"director weapons can pierce shields/deflects",
	"damn squares",
	"you can toggle mutation details using#[Right Mouse Button]",
	"charge proto statues with radiation#then blow up the statue#to enter the crownvault",
	"F5 to toggle full screen",
	"F8 to toggle borderless window",
	"gamma guts halves contact damage taken",
	"euphoria extends immunity duration",
	"scarier face is real good with hard hitting weapons",
	"taking eagle eyes is for people with large brains",
	"almost all splinter guns are burst weapons",
	"hypersomnia does not work on faking assassins",
	"alternative areas are more difficult and optional but faster",
	"fire and toxic gas cannot be deflected!",
	"bring a ranged weapon to the volcano",
	"have good balance of defensive and offensive mutations",
	"try to fill a gap when choosing mutations",
	"skill overcomes all",
	"don't get greedy",
	"don't make things harder for yourself",
	"risk and reward!",
	"all director weapons#deal more damage#before redirecting",
	"bolt pierce is based on damage#and can be enhanced by damage buffs",
	"damage buffs, buff all types of damage#such as corpse collision and gamma guts",
	"don't get hit by red beachballs",
	"square bullets go through walls",
	"you'll get better overtime",
	"mix it up!",
	"and now...",
	"don't listen",
	"listen",
	"please game",
	"hang in there",
	"swing in there",
	"attack!",
	"and for my next act...",
	"there are other worlds out there",
	/*more rares*/choose("if you ever get stuck#outside a level#walk far away#from the level to get teleported back","use wasd to move","don't get baited by items","ask and ye shall receive","you smell that?","sick build bro","what does your gun tell you?","don't get baited by items"
	,"frog is voiced by#Jukio Kallio","don't be sorry#git gutter","kimchi","Lets have some fucking fun boyos!","kill is the mindfearer", "when life gets tough#remember#there is always#Nuclear Throne"
	,"thematically inconsistent!","skeleton has#a fifth ultra mutation","don't be afraid to pick up new weapons","like and subsribe!","do a barrel loop!",
	choose("28 EGGS FOR BREAKFAST","shit on my tits","12th doctor is the best one","microtransactions","if you are seeing this#you are fucking awesome","coldline texas",
	,"my brother in christ#I dont even#have the time#to read this entire#loading screen tip#because the loading is#so fucking fast#fuck you#why you do this to me#are you expecting me to#take a screenshot of this#bullshit!"
	,"trans rights","guys seriously how do I nerf worm?","shoutout to rayman redemption & redesigner!","you should own cats","the original idea for#the name trashtalk#came from Lars (& Jonas) in a stream#Lars made a lot of the sounds#in ultra mod#Jonas is the original sound designer")/*super rare*/
	,"No I wont add a toxic immunity mutation","get that bag","yes girl","humphry can't run","1984"),
	"don't worry about long-term effects","when near a portal you#don't take damage","don't die","nice",
	"yung cuz definitely exists","venuz patrol",
	"should not have done that","thank you for playing","Some unused mutations are buffed","visit crownvaults twice#for weapon mods","death is near","good luck","are you ready?"
	,"you can change the direction#of director projectiles#by clicking after firing"
	,"explosives can destroy traps",
	"try new weapons",
	"plant can trap anything",
	"enemies everywhere",
	"shotgun shoulders deals splash damage!",
	"recycle gland stops enemies from deflecting bullets",
	"rebel ally bullets#can get recycled#using recycle gland",
	"this mod has been build up#from update 19",
	"don't be a dirty casual",
	"fish can walk",
	"git gud!",
	"when something explodes#it's probably best#not to hit it with a stick",
	"ammo chests prioritize primary weapon",
	"when you open an ammo chest#when near full on ammo#it will distribute the ammo#over your other ammo types",
	"don't trust fortune cookies",
	"doing great!",
	"stay hydrated",
	"picking up a weapon#reloads your weapon",
	"gloves give you invincibility frames",
	"welcome back",
	"it's good to have you here",
	"grab some coffee",
	"grab some tea",
	"ever changing",
	"try out other mods aswell!",
	"free!",
	"support indie game developers",
	"always keep moving",
	"use line of sight",
	"having two of the same ammo type will make that ammo type likely to drop",
	"having a melee weapon  that uses no ammo will make your ammo drops more random",
	"burst weapons are weapons that fire multiple projectiles over time",
	"energy brain almost doubles energy damage",
	"some weapons use multiple types of ammo",
	"some weapons use multiple projectile types",
	"for some weapons you can stack up on different weapon specific mutations",
	"don't get too comfortable with your current weapon setup",
	"you can re-roll mutations",
	"don't forget to swap your weapons out",
	"use your active!",
	"don't forget to use your active",
	"leaving chests in an area has a chance to spawn a big weapon chest in the next area",
	"try a different gamemode",
	"there are a ton of gamemodes to unlock",
	"you can view your available ultras in the options menu by pressing the green crown",
	"if you want to report a bug join the discord! <3",
	"<3",
	"secret ultras require a certain setup when you reach level ultra",
	"there are secret crowns and a purple fiend who hints at how to unlock them",
	"yes, you can have multiple crowns!",
	"kraken is a water element",
	"let's have fun",
	"stress relief",
	"just enjoy",
	"chicken can slow down time",
	"the more dangerous the weapon#the more damage it deals",
	"everything changes",
	"buy the game!",
	"have a great day!",
	"take care",
	"respect yourself",
	"don't let me tell you what to do",
	"huff and puff",
	"remember to drink water",
	"stretching time!",
	"good morning",
	"good afternoon",
	"good night",
	"everything in moderation",
	"blast some music",
	"dead not dead",
	"expect the unexpected",
	"you can loop (again)",
	"secret ultras don't count towards 100%",
	"gamemodes and skins count towards 100%",
	"explosions are very dangerous",
	"Nuclear Throne is very difficult#try casual mode for a more 'normal' difficulty",
	"Hard mode has exclusive enemies, its brutal",
	"yv car can be unlocked with not just a screwdriver",
	"try wrench or needle on yv's car",
	"some crowns have been changed",
	"taking a crown unlocks crown start",
	"the auto-fire system#lets you hold the trigger#but fire single trigger weapons#slightly slower",
	"all weapons are full auto#but single fire weapons#fire faster when clicking"
	)
	}
	else if tiptype = 1
	{
	//AREA BASED

	if Player.area = 0
	tip = choose("it's dark here","your friends were here")
	if Player.area = 1
	tip = choose("welcome to the future","the wasteland calls you","scorching sun","watch out for maggots","let's do this","dust surrounds you","the wind hurts","use the skulls to go to a different area","today is the day","try destroying the skulls","many routes to take","here we go again","1-1 but sand")
	if Player.area = 2
	tip = choose("don't drink the water","the sewers stink","don't touch the frogs","don't eat the rat meat","danger","water dripping","sludge everywhere","frog loves to sing","the sludge","the sewers has very little item drops","very few ammo and health drops here")
	if Player.area = 3
	tip = choose("shoot robots on sight","thank goodness snipers only have one eye","there used to be trees here","look up","rust everywhere","the sound of birds","don't cross the streams","climb over cars","thieves can steal ammo","thieves can steal weapons")
	if Player.area = 4
	tip = choose("oh no","good luck","spiderwebs everywhere","reflections on the walls","skin is crawling","nearly there")
	if Player.area = 5
	tip = choose("wear a scarf","they used to have electricity","miss the sun","civilization","walk softly",choose("cold potatoes","there is a pink sheep nearby","there is no yeti","there is no yeti","there is no yeti","lill hunter is a bitch"))
	if Player.area = 6
	tip = choose("beep boop","nerds","don't push any buttons","randa","almost halfway there","where they're made","freaks can merge","big machine's core takes more damage","watch out for machinery","where some of them were made")
	if Player.area = 100
	tip = choose("aw yes","take a crown to uncurse your weapon","there is value here","visit this place atleast twice","let's hope its not toxic again","precursors",
	"old torches","you can get 3 mods#on a single weapon","mods stack","take a crown to unlock#crown start for this character","most weapon mods benefit from#weapon specific mutations","a weapon you mod will always come through the portal, you can pick it up next area",
	"power craving spawns more mods","open mind can spawn two proto chests","weapon mods can be rerolled#when you have 3","when you mod a weapon it will always come through the portal with you even if you leave it")
	if Player.area = 102
	tip = choose("hunger...","it smells nice here","wait for it....")
	if Player.area = 103
	tip = choose("space...","always wanted to go here","so much money","4 years later...")

	if Player.area = 104
	tip = choose("mony","home","where the guns at")
	if Player.area = 105
	tip = choose("inverted","another dimension","same world","mystery","blue","wormhole","what is this place","blueberry","im blue da ba dee!","interdimensional travel","this is not the wastelands?!","SHORTCUT!")
	if Player.area = 7
	tip = choose("inferno","hell","its getting hot in here", "vulcano", "hot", "heat", "lava", "magma","lava damages over time",
	"boiling veins protects you#against lava","don't stand#too long in lava","hot feet","tomato sauce","do not run away from a dragon fight!","do not flee from thy dragon")
	if Player.area = 8
	tip = choose("sweet","wonderland","evil cards","play your cards right","other world","this does not belong","teapots of doom","cotton candy floors","do not eat the mushrooms",choose("I'm not even a fan of#alice in wonderland","non cannon","dumb shit","regrets","this area was a mistake"))
	if Player.area == 9
	tip = choose("the palace","This place is old","nearly there","almost there","the time has come");
	if Player.area = 118
	tip = choose("the inverted palace","regular portals","greatness awaits","to evade","one more step");
	if Player.area = 10
	tip = choose("dry grass","savanna","they eat each other","they attack together","bring a good starting weapon","they heal off of corpses","this route is difficult!");
	if Player.area = 106
	tip = choose("inverted darkness","back to the other dimension","pls explain","inverted worlds are great","visit inverted world on loop","good luck getting through this"
	,"white ravens")
	if Player.area = 107
	tip = choose("black snow?","mud?","explosions everywhere!","should not have come here","the greed is real","do you want to die?","inverted demons","chocolate city")
	if Player.area = 101
	tip = choose("water","hold your breath","big fish here","you should come here more often","ocean man!","swimming","you can use lightning here")
	if Player.area = 108
	tip = choose("true hell","frozen vulcano","ice cold","hellheim","frost and lightning")
	if Player.area = 109
	tip = choose("this place is very deadly","don't get nuked","try not to burn","don't blow up","why are you here","your run ends now")
	if Player.area = 110
	tip = choose("not sure what the smell is","blue toxic?","glitchy","things are going wrong","get out of here")
	if Player.area = 111
	tip = choose("not cursed caves","green & blue","caves part 2","weird","odd","spinach caves","broccoli")
	if Player.area = 112
	tip = choose("buttons","balls","what was made here","experiments gone wrong","you have entered the danger zone")
	if Player.area = 113
	tip = choose("welcome to banditland","bandits with erasers","laserbandits","when the night falls","tonight bandit party","be afraid of the bandit")
	if Player.area = 114
	tip = choose("jungle","ugga bugga","wet grass","green","plants","extinct pandas","beware of the apex predator")
	if Player.area = 115
	tip = choose("cheese caves","cursed caves","gouda")//Fun fact I used to live in Gouda
	if Player.area = 116
	tip = choose("survival arena","when starting a wave#chests and weapon drops get destroyed","how long","go on","another one down","dont forget to drink water")
	if Player.area = 117
	tip = choose("mushrooms with guns","mushroom land","infected mushrooms","don't eat the mushrooms")
	if Player.area = 119
	tip = choose("friends","I will save you all!","never stop","return","loop","throne II","we're here");
	if Player.area = 120
	tip = choose("empty","nothingness","void","  "," ... ","no one here","inbetween","can they be trusted?");
	if Player.area = 121
	tip = choose("risk it","fast route","they are fast","colourful grass","watch yourself out there","inverted savanna")
	if Player.area = 122
	tip = choose("stinky water","something is not right","gas underwater?","toxic ocean","polder","dont drink this water","only toxic here","100% toxic weapon mod","toxic weapon chest!")
	if Player.area = 123
	tip = choose("pink and blue jungle","inverted bush box moves straight","inverted jungle","though faster and more aggressive#enemies here have less hp and drop more rads","land of square");
	if Player.area = 124
	tip = choose("buff mushrooms hiding in the dark","lots of radiation here","dark mushrooms","lightning mushrooms","inside out mushrooms","don't eat the mushroom","in a shocking turn of events")
	if Player.area = 125
	tip = choose("if you hold two melee weapons#as yv while reaching ultra#you can choose a secret ultra","blue gold","who's mansion is this?",
	"POPPOP increases projectile speed!",
	"thanks melee god",
	"maces for fake necklace",
	"daggers that send textses",
	"hammers that make breakfast?",
	"swords that sign breastses",
	"wrenches that straight festive",
	"jackhammers with 6 senses",
	"shovels that hate texas",
	"axes that wear vests it")
	if Player.area = 126
	tip = choose("skeletons","graveyard","crawling bones","don't get overwhelmed","be wary of skeletons","the dead walk","sniper skeletons are stationary","kill the cursed fish to uncurse yourself",choose("emo land","goth land","dark world","boneyard","cemetary","halloween"))
	if Player.area = 127
	tip = choose("love & death","crowd","sprawling bones","the brink","for all that have fallen","crawl","bloodshed forever")
	if Player.area = 128
	tip = choose("crown crown crown crown","crown crown","more crowns","get crown","royalty","kings and queens of wasteland","watch out for the crowns")
	if Player.area = 129
	tip = choose("blood line","multi crown")
	if Player.area = 130
	tip = choose("factory","weapons here","robots","what are they building in there","beat the boss to get your gun back");
	if Player.area = 131
	tip = choose("inverted factory","this is not normal","automation");
	if Player.area = 132
	tip = choose("cursed factory","mistakes were built","cursed robots");
	if Player.area = 133
	tip = choose("golden factory","bling bling guns","gold digging");
	if Player.area = 134
	tip = choose("ultra factory","supreme technology","top of the line","ultra robots");
	if Player.area = 135//HQ
	tip = choose("become the captain","nono popo","end this","stop the chase","end the popo");
	if Player.area = 136//Ultra scrapyard
	tip = choose("get an ultra weapon here","its green","irradiated beyond belief","radiation");
	if Player.area = 137//VOID
	tip = choose("void","nothing","empty","the good? the bad and the ugly","...","essence","space in between worlds","nothingness","darkness","the unknown","not of our worlds");
	if Player.area = 138//CLOUDLAND
	tip = choose("fluff","bullet heaven","aero","no earth here","no cover","venomous sky creatures","beware of bites","green skies","radiated skies","grenades fall down","bodies will fall","don't look down","the clouds","into the sky","skywards!","venom damages you until you are at 1hp or you pickup hp");
	if Player.area = 139//THE PIT
	tip = choose("the pit","ghosts materialize when you get close","ghost phase when far away","be wary of ghosts","the pit connects to inverted worlds","the depths","try gamma guts","ghosts just want a hug","hunting ghosts","who ya gonna call!?");
	}
	else if tiptype = 2
	{
	//CHARACTER BASED

	if Player.race = 0
	tip = choose("random shifts shapes","clearly the most powerful","never the same","shapeless","passive: anything","active: anything","noone compares","random..."
	,"roll extends gamma guts range","decided through the inbetween")

	if Player.race = 1
	tip = choose("last day before retirement","duty calls","it's ok to eat","gills on your neck","like kevin costner","rolling...","fish can play guitar"
	,"fish can dodge roll","fish can roll","waterboost boosts moves almost anything","roll has a few immunity frames#though the timing is tight!")

	if Player.race = 2
	tip = choose("crystal can handle this","family","this is no problem","crystal is hard","crystal is tough","crystal rocks","crystal has this under control",
	"shield does not block square projectiles!","be aware of the square","Shield does not block toxic gas", "shield does not block fire","shield does not block lasers"
	,"shield can block a lot","cursed")

	if Player.race = 3
	tip = choose("eyes sees everything","don't blink","all these thoughts","eyes can't speak","telekinesis pushes bullets away","telekinesis pulls in enemies","look into my eyes!"
	,"watch where you're going","eyes can see the inbetween","stare into the void","it will stare back","watch out when using telekinesis close to enemies","euphoria can be quite good with telekinesis",
	"control the battlefield","we have a vision!")

	if Player.race = 4
	tip = choose("it's so cold out here","melting is tired","everything hurts","cough","fragile but strong","your active can be held down","share the pain","connected through pain",
	"the body is weak but the mind is strong","want rest","remember who you are")

	if Player.race = 5
	tip = choose("kill kill kill","death death death","blood blood blood","slay slay slay","fast fast fast","go go go","shoot shoot shoot","murder murder murder",
	"eat eat eat","the apex predator","annihilate eliminate destroy","all shall die","plant is fast","no mercy","photosynthesizing...","plant can hold RMB to see further"
	,"trap the enemy", "use active again#while seed is in mid-air#to instantly pop it","carnage","consume consume consume", "destroy destroy destroy",
	"snare can prevent enemies from teleporting","most enemies cannot escape your snare","pur bloodlust",
	"annihilate annihalte annihilate", "obliterate obliterate obliterate","snare prevents enemies from teleporting!")

	if Player.race = 6
	tip = choose("yung venuz is so cool",
	"yung venuz is the best",
	"so cool",
	"thanks gun god",
	"\u0023verifyvenuz",
	"8 dollars to verify",
	"\u0023yv",
	"guns for fake necklace",
	"guns that send textses",
	"guns that make breakfast?",
	"guns that sign breastses",
	"guns that straight festive",
	"guns with 6 senses",
	"guns that hate texas",
	"guns that wear vests it",
	"venuz still not verified",
	"no popo",
	"pop pop",
	"pop pop has a slightly quicker reload speed#compared to normally firing twice",
	"pop pop increases projectile velocity")

	if Player.race = 7
	tip = choose("time to flex","steroids could do pushups forever","steroids used to be a scientist","appreciate revolvers","get shots","get strong"
	,"eat 14 eggs in the morning","steroids knew","read a book","wield two guns!")

	if Player.race = 8
	tip = choose("6b 69 6c 6c#61 6c 6c#68 75 6d 61 6e 73","72 6f 62 6f 74","3c 33","74 61 73 74 79","guns for breakfast","I'm afraid I can't let you do that",
	"don't forget to eat weapons","eating a weapon instantly reloads your other weapon","auto eat weapons left in the area",
	"robot can eat cursed weapons without taking damage while having thronebutt","thronebutt allows you to eat cursed weapons")

	if Player.race = 9
	tip = choose("remember the training","focus","go","never surrender","amateur hour is over","again","in cold shadows",
	"slow down time","hyper fast reactions","chicken used to slow down time#in the vanilla game","can't throw weapons",
	"fan of action movies","we do it for real now","don't ever die!","never give up!","focus allows you to take risks")

	if Player.race = 10//Rebel
	tip = choose("forget the old days","change is coming","a new generation","it will get better","spawning new allies heals old ones","allies take damage over time","making babies hurts","where do these allies come from?"
	,"allies gain health each loop","your ally's bullets trigger recycle gland","try ultra modding your ally's bullets","you can throw you allies","use your allies as shields","something speaks to you","how are you holding all these allies?",
	"allies can wander of and kill stuff")

	if Player.race = 11//hunter
	tip = choose("never miss",
	"ranged assassin",
	"never see you coming",
	"can't escape",
	"want out",
	"miss life",
	"after marking#you can unmark#by right clicking again",
	"pellets move faster with hunter",
	"shotguns shoot further as hunter",
	"marking someone significantly increases your accuracy",
	"the big hunt",
	"always on the hunt","next target","bigger target","when a marked target dies the marker snaps to a nearby enemy"
	)

	if Player.race = 12//yung cuz
	tip = choose("always in the shadow","yung cuz is so cool","the better shape",
	,"how to kill a god","waka waka","buddies cost#half your MAX HP","noscope","golden tv"
	,"mlg","prodigy","up n cmin","buddies return to you#when you stand still","\u0023yc",
	"you have to get good","duplicates get your mutations","yc is a god gamer","I'm number 1","clones","duplicate!","ctrl + C#ctrl + V",
	"your duplicates copy your mutations","your dupes also get your mutations#though sometimes a slightly worse version","gamers")

	if Player.race = 13//sheep
	tip = choose("BAAHHH","don't mess with me"
	,"BAAAA","BAHHH","moo?","silence of the lamb","just a sheep","peaceful","embrace the chaos",
	,"sheeps don't harm people","shawarma","charge allows you#to move through#some projectiles",
	"charge increases damage#the longer you charge it","while charging#at high speed#you don't take#contact damage","you are immune#while charging#at high speed",
	"extra feet and gamma guts#buff your charge","eat grass","popo won't come for you#while passive is active","you don't take contact damage#while passive is active"
	,"hypersomnia goes in effect#after your passive","pink lines indicate line of sight","when enemies see you kill they will attack you","when enemies see you deal damage they will attack"
	,"sheep can tackle vans!","sheep is very good at taking out idpd vans","is it a disguise?","from the 4th universe"
	)

	if Player.race = 14//panda
	tip = choose("never let go of your bamboo","rng","portal magic","what is a panda doing here",
	"don't want to be here","help me","panda used to be a pacifist",
	"throw weapons to#conserve ammo","throw damage scales#with your level","your thrown weapons will return to you",
	,"fight to survive","manage your weapons!","panda is unpredictable with weapons",
	"panda enjoys a good nap","resting is not being lazy","sleepy","don't care","it's not lazy its just energy efficient"
	,"throw weapons in portals to re-roll them","thrown weapons teleport back to you","sometimes throwing a weapon might be quicker than reloading it!"
	,"your active can be held down"
	)

	if Player.race = 15//Atom
	tip = choose("molecules","don't touch each other","elite being","not an accurate#representation of reality","science bitch!","balance of the universe","telefrag",
	"lava does not burn you because you fly","cobwebs dont slow you because you fly","primal force","primival essence","return to the beginning","dematerialize","explode",
	,"from the other side","split the atom","atoms for peace","Entropy","she blinded me with science","don't touch me")

	if Player.race = 16//Viking
	tip = choose("the radioactive sea","ocean fire","sea serpent","you've come from far","water dragon","tough!","weapon smith made viking's armour","serpent queen","venomous"
	,"rock hard","serpent strike","bitten by a radioactive serpent","armour strike damage scales#depending on your level","armour strike damage is more#when you are a higher level","3030"
	,"don't look in her eyes","the serpents have their own will","keep the serpents under control","armour blocks a full instance of damage!")

	if Player.race = 17//WEAPONSMITH
	tip = choose("anvil","you keep your weapon mods#when upgrading","you upgrade one of your#two weapons at random","weapon smith forges weapons for the other mutants",
	"weapon smith made viking's axe#its one of his best works",
	"the weapon that gets upgraded#is chosen randomly","weaponsmith used to be a smoker","hide your face","made of stone","no trousers","weaponsmith is a metalhead")

	if Player.race = 18//ANGEL
	tip = choose("ascend","the wall is not the enemy","fly over cars","you fly normally over all terrains","rogue guardian","you don't get pushed off of props",
	"lava does not burn you because you fly","cobwebs dont slow you because you fly",
	"I believe I can fly","don't serve gorillaman","angel can fly over lava","grow your wings","you can deflect melee damage","you can deflect contact damage","active costs less when#at or above full health",
	"deflect can deal#gamma guts damage","you are immune while deflecting","you can deflect contact damage",
	"angel can deflect contact damage")

	if Player.race = 19//SKELETON
	tip = choose("hard","dusty","dry","nothing...","bones","blood gamble chance#depends on ammo cost","survive","do not give up","keep going","the body has 69 bones","forget who you were","continue","become strong")

	if Player.race = 20//BUSINESS HOG
	tip = choose("post apocalyptic capitalism","delusional capitalist","mutated money","Making Nuclear Throne great again"
	,"Gad dang hippies","dollar dollar bill y'all","pay to win","games as a service","NFT (nuclear fucking throne)","please provide your creditcard information"
	,"your guns are stored#in the blockchain","stealing","scheming","cash explosion works with recycle gland and tail's end!","hog steals from anyone#even gods")

	if Player.race = 21//HORROR
	tip = choose("Enemies absorb the beam's rads","horrifying","pure energy",
	"Horror's beam destroys projectiles","Horror's beam powers up over time","Power","The horror","In the zone",
	"Radiation is everywhere","Green puppy","The beam homes in on your crosshair")

	if Player.race = 22//ROGUE
	tip = choose("Keep moving","Never look back","Never slow down","They're getting closer","Never stop","Another world lost","gone rogue","you can cancel portalstrike with e (use key)")

	if Player.race = 23//FROG
	tip = choose("Wait for me","Don't hold it up","Keep going","Let it all out","Gas is good","Bloated","Restless","Let's go","Can't wait","frog likes to sing","strangely attractive?")

	if Player.race = 24//ELEMENTOR
	tip = choose("mushroom of all the elements!","toxic is not! one of the elements","fire burns away toxic","frost freezes fire",
	"you can walk through your own walls","you can terraform away existing walls to create tunnels!","terraform costs secondary ammo",
	"use your defenses!","lets get that moodswing","lightning is stronger!","kraken is stronger!",
	"fire is stronger!","frost is stronger!","though elements are a little stronger you can still have a good build without them",
	"Mushroom power","the elements","your walls block projectiles","fire, frost, kraken and lightning are all stronger!")//"You can only place walls#against other walls","Create walls from other walls",

	if Player.race = 25//DOCTOR
	tip = choose("Efficient rad intake","Underleveled?","Second opinion","Trust me,#I'm a doctor","You can use that extra limb#to walk faster","That mutation seems good to me",
	"Try to stay close to radiation","don't do drugs kids","Doctor used to work in the labs","nasty experiments","The mutation doctor","every single mutation is better!","get vaccinated"
	,"proper self care","what kind of doctor?")

	if Player.race = 26//GOOD OL' HUMPHRY
	tip = choose("Rusty old soldier","Grandpa","When Humphry pulls out a gun","The real deal","experienced","fallout shelter"
	,"Out of the fallout shelter","focus and discipline","experience","shrink and slow projectiles", "radiation aged him",
	"humphry has mastered the art#of shrinking bullets","super soldier","he knew","paranoia","prepare for anything#even if it's not real?",
	"skill increases all damage you deal","damage buffs are multiplicative!"
	,"immortal soldier","overkill","S S S#Slow Shrink Stun","active costs additional skill on loop","your active costs more skill on loop")
	
	if Player.race = 27//HANDS
	tip = choose("look ma! no face","don't get too touchy","proto","the only inverted mutant","pull my finger","hand from the other side",
	"let's give each other a helping hand","reach out","what is on the other side?","GET OVER HERE!","walking backwards","strong handshake",
	"you can grab through walls","your hand break walls","you can grab chests","some enemies are too heavy#to grab","your active gets +1 damage#when you reach level ultra"
	,"you can hold your active to instantly target things with your hand","tap active again to let go",
	"when hands pulls someone in they become more vulnerable to certain types of damage that check for enemy i-frames",
	,"your active can be held down")
	
	}
	else if tiptype = 3 //WEAPONS
		tip = Player.wep_text[Player.wep]
	else if tiptype = 4//MUTATIONS
	{
		var hasSomeMutations = false;
		var i = 0;
		repeat(Player.maxskill + 2)
		{
			if Player.skill_got[i]
			{
				hasSomeMutations = true;
				continue;
			}
			i++;
		}
		if (hasSomeMutations)
		{
			dir = 0
			do dir = round(random(Player.maxskill + 1))
			until Player.skill_got[dir] = 1
			tip = Player.skill_tips[dir]
		}
		else
		{
			tip = "";	
		}
	}
	else if tiptype = 5 	//CROWNS
		tip = Player.crown_tips[Player.crown[irandom(array_length(Player.crown)-1)]]
	else if tiptype = 6  //ULTRAS
	{
	if Player.level>=10
	    {
	dir=0
	do dir = round(random(Player.maxultra))
	    until Player.ultra_got[dir] = 1
	    tip = Player.ultra_tips[dir]
    
	    }
	    else 
	    tip=""
	}
	else if tiptype == 7 ///GAMEMODE
		tip = UberCont.gamemode_tip[UberCont.opt_gamemode[irandom(array_length(UberCont.opt_gamemode)-1)]];
	if instance_exists(Player) && Player.ultra_got[19] && Player.altUltra
	{
		tip = "KILL KILL KILL";	
	}
	
	if tip = "" || tip == undefined
		scrTips();

	tip = string(tip);
}

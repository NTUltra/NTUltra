/// @description Init
hue = random_range(0,360);
theColour = make_color_hsv(hue,250,250);
__background_set_colour( make_color_rgb(194,176,163) )
spd = 1;
spawnTime = 60;
alarm[0] = spawnTime;
warnTime = 40;
vanSpeed = 8;
closeTimeMultiply = 1;
alarm[1] = spawnTime * 6;
routeString = ["?",false];
time_frame = 0;
time_microseconds=0;
time_seconds=0;
time_minutes=0;
time_hours=0;
txttime = "cheater";
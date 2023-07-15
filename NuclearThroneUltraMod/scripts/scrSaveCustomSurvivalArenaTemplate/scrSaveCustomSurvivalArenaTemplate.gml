///scrSaveCustomSurvivalArenaTemplate();
// /@description
///@param
function scrSaveCustomSurvivalArenaTemplate() {
	if !directory_exists("CustomSurvivalArena")
	{
		directory_create("CustomSurvivalArena");
	}
	var fileName = "CustomSurvivalArena/Important notes on creating custom survival arena.txt";
	var file = file_text_open_write(fileName);
	debug("file: ", file);
	var str = @"
- Must be JSON object consisting of a 2D array
- First entry of each wave must hold all properties
- Giving no number to xx or yy will spawn your object in 1 of 4 corners of the arena, in rotating order
- For positions xx & yy can only add up one number (no deductions or multiplications)
- The echo word repeats your object and spawns in multiple times (I could not use the word repeat)
- Can use cheat mode and press T to skip to other waves
- Check https://bitbucket.org/UltraMod/ultramod/src/master/NuclearThroneUltraMod/objects/ for all available object names that can be spawned
- Check https://bitbucket.org/UltraMod/ultramod/src/master/NuclearThroneUltraMod/sounds/ for all available songs and sounds
- Check https://bitbucket.org/UltraMod/ultramod/src/master/NuclearThroneUltraMod/sprites/ (filter on sprFloor) for all available floor tiles
- Do not use the name custom_survival_wave_template for your file as it will be overwritten"
	file_text_write_string(file,str);
	file_text_close(file);
	
	var fileName = "CustomSurvivalArena/custom_survival_wave_template.json";
	var file = file_text_open_write(fileName);
	debug("file: ", file);
	var str = @'

[
	[
		{
			"darkness": false,
            "song": "mus1",
            "floor": "sprFloor1",
            "floorb": "sprFloor1B",
            "nightwind": false,
            "wind": true,
            "drip": false,
            "heavyrain": false,
            "rain": false,
            "snow": false,
            "cave": false,
            "cheese": false
        },
        {
            "obj": "Bandit",
            "time": 1,
            "xx": "centerX + 112",
            "yy": "centerY + -16"
        },
        {
            "obj": "Bandit",
            "time": 1,
            "xx": "centerX + 144",
            "yy": "centerY + -16"
        },
        {
            "obj": "Bandit",
            "time": 1,
            "xx": "centerX + 144",
            "yy": "centerY + 16"
        },
        {
            "obj": "Bandit",
            "time": 1,
            "xx": "centerX + 112",
            "yy": "centerY + 16"
        },
        {
            "obj": "Barrel",
            "time": 90,
            "xx": "centerX + 128",
            "yy": "centerY"
        },
        {
            "obj": "Scorpion",
            "time": 20,
            "echo": 1
        },
        {
            "obj": "BigMaggot",
            "time": 20,
            "echo": 1
        },
        {
            "obj": "BanditBoss",
            "time": 30,
            "xx": "centerX",
            "yy": "centerY"
        }
    ],
    [
        {
            "darkness": true,
            "song": "mus2",
            "floor": "sprFloor2",
            "floorb": "sprFloor2B",
            "nightwind": false,
            "wind": false,
            "drip": true,
            "cheese": false,
            "heavyrain": false,
            "rain": false,
            "snow": false,
            "cave": false
        },
        {
            "obj": "Rat",
            "time": 20,
            "echo": 3
        },
        {
            "obj": "FastRat",
            "time": 10,
            "echo": 3
        },
        {
            "obj": "Ratking",
            "time": 10
        },
        {
            "obj": "Exploder",
            "time": 10
        },
        {
            "obj": "AmmoChest",
            "time": 10,
            "xx": "centerX",
            "yy": "centerY"
        },
        {
            "obj": "SurvivalArenaToxicTrapLeft",
            "time": 30,
            "xx": "centerX + -176",
            "yy": "centerY"
        },
        {
            "obj": "SurvivalArenaToxicTrapRight",
            "time": 30,
            "xx": "centerX + 160",
            "yy": "centerY"
        },
        {
            "obj": "WallBreak",
            "time": "2",
            "xx": "centerX",
            "yy": "centerY + -160"
        },
        {
            "obj": "SuperFrog",
            "time": "2",
            "xx": "centerX",
            "yy": "centerY + -152"
        }
    ]
]';
	file_text_write_string(file,str);
	file_text_close(file);
}
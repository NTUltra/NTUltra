/// @description Loredumper
translations = load_csv("lum - 1.csv");
var hh = ds_grid_height(translations);
translationKeys = ds_map_create();
for (var i = 0; i < hh; i++) {
	ds_map_add(translationKeys,translations[# 0, i], i);
}
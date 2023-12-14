/// @description Position myself based on my index
var vw = camera_get_view_width(0);
var vh = camera_get_view_height(0);
var vx = camera_get_view_x(0);
var vy = camera_get_view_y(0);
y = vy + vh - 28;//24
var step = 32;
// var totalWidth = totalSkills * step;
x = vx + (vw * 0.5)  - (step * totalSkills * 0.5) + (step * skillIndex);

alarm[1] = 5;
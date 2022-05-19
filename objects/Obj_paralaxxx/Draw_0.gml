var _camx = camera_get_view_x(view_camera[0]);
var _camy = camera_get_view_y(view_camera[0]);

var _p = .5;

draw_sprite_tiled(Sp_college_background, 0, _camx*_p, _camy*_p);

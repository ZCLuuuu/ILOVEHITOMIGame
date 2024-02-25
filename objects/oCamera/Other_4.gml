if !instance_exists(oPlayer) exit;

var _camWidth = camera_get_view_width(view_camera[0]);
var _camHeight = camera_get_view_height(view_camera[0]);


finalCamX = oPlayer.x - _camWidth/2;
finalCamY = oPlayer.y - _camHeight/2;


//if !instance_exists(oPlayer) exit;

//var _camWidth = camera_get_view_width(view_camera[0]);
//var _camHeight = camera_get_view_height(view_camera[0]);


//var _camX = oPlayer.x - _camWidth/2;
//var _camY = oPlayer.y - _camHeight/2;

//_camX = clamp(_camX,0,room_width-_camWidth);
//_camY = clamp(_camY,0,room_height-_camHeight);

//finalCamX =_camX;
//finalCamY =_camY;


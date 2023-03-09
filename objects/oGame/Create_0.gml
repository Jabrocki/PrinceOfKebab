/// @desc global varibles + manager variables
global.tileCollisionMap = layer_tilemap_get_id("Collision");
global.tileSize = 16;
global.grav = 0.3;

global.iCamera = instance_create_layer(0,0,layer,oCamera);

//Variable to check what object is lifted
global.iLifted = -1;

//Checks if game is paused
global.gamePaused = false;
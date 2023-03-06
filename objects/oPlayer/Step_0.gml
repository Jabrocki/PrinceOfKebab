/// @desc Player step (all player action happen here)

//Get player input (boolean)
keyLeft = keyboard_check(vk_left) or keyboard_check(ord("A"));
keyRight = keyboard_check(vk_right) or keyboard_check(ord("D"));
keyUp = keyboard_check(vk_up) or keyboard_check(ord("W"));

//Player state machine
script_execute(playerState);

//Coordinates adjsutment
/// @description

key_right = keyboard_check(vk_right);
key_left = keyboard_check(vk_left);
key_up = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);

hsp = (key_right-key_left) * walkSp;
vsp = (key_down-key_up) * walkSp;

if (tilemap_get(tilemap,floor((x+hsp)/16),floor(y/16)) == false) {
	
	hsp = 0;
	show_debug_message("off ground "+ string(hsp));
}
else show_debug_message("on ground "+ string(hsp));
if (tilemap_get(tilemap,floor(x/16),floor((y+vsp)/16)) == false) {
	
	vsp = 0;
}


x += hsp;
y += vsp;
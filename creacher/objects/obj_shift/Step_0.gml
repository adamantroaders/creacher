if(keyboard_check_pressed(vk_shift)&&shift_timer<0&&!place_meeting(obj_girl.x,obj_girl.y,obj_block)&&obj_girl.canmove){
	lastchar = char;
	char = "none";
	persistify = true;
	swaptimer = 27;
	image_speed = 1;
	shift_timer = 60;
	obj_creacher.pushingx=false;
	obj_creacher.pushingy=false;
}
if(swaptimer>0){
	swaptimer--;
}
if(swaptimer==0){
	room = target_room;
	persistify = false;
	swaptimer = -15;
	if(lastchar=="girl"){
		obj_girl.sprite_index = spr_girl_trans;
		obj_creacher.sprite_index = spr_creacher;
	}
	else{
		obj_creacher.sprite_index = spr_creacher_trans;
		obj_girl.sprite_index = spr_girl;
	}
}
if room==target_room && image_index=1{
	image_speed = 0;
	image_index = 0;
	if(room==Room1){
		target_room = Room1_shadow;
	}
	if(room==Room1_shadow){
		target_room = Room1;
	}
	if(lastchar=="girl"){
		char = "creacher";
	}
	else{
		char = "girl";
	}
}
if(shift_timer>0){
	shift_timer--;
}
if(shift_timer==0){
	shift_timer = -15;
}
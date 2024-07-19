if(keyboard_check_pressed(vk_shift)){
	if(char=="girl"){
		char = "creacher";
		persistify = true;
		swaptimer = 2;
		obj_girl.sprite_index = spr_girl_trans;
		obj_creacher.sprite_index = spr_creacher;
	}
	else{
		char = "girl";
		persistify = true;
		swaptimer = 2;
		obj_creacher.sprite_index = spr_creacher_trans;
		obj_girl.sprite_index = spr_girl;
	}
}
if(swaptimer>0){
	swaptimer--;
}
if(swaptimer==0){
	if(room==Room1){
		room = Room1_shadow;
	}
	if(room==Room1_shadow){
		room = Room1;
	}
persistify = false;
swaptimer = -15;
}
if(sprite_index==spr_guard_stone){
image_speed = 0;
image_index = 18;
pushable = true;
frozen = true;
if(instance_exists(obj_tutorial3)){
	obj_tutorial3.visible = true;
}
}
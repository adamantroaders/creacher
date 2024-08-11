if(other.sprite_index==spr_girl_transform&&sprite_index!=spr_guard_stone){
	image_speed = 1;
	sprite_index = spr_guard_stone;
	image_index = 0;
	if(patrol=="up"||patrol=="left"){
		x-=16;
	}
}
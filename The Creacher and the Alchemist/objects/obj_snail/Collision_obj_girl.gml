if(other.sprite_index==spr_girl_transform&&(sprite_index==spr_snail_right||sprite_index==spr_snail_left)){
	if(sprite_index==spr_snail_left){
		sprite_index = spr_snail_left_stone;
	}
	if(sprite_index==spr_snail_right){
		sprite_index = spr_snail_right_stone;
	}
	image_speed = 1;
	x/=32;
	//y/=32;
	x = round(x);
	//round(y);
	x*=32;
	//y*=32;
	
	if(place_meeting(x,y,obj_guard)||place_meeting(x,y,WALL)||place_meeting(x,y,obj_creacher)){
		x+=32;
		if(place_meeting(x,y,obj_guard)||place_meeting(x,y,WALL)||place_meeting(x,y,obj_creacher)){
			x-=64;
		}
	}
	if(place_meeting(x,y,obj_girl)){
		if(obj_girl.x-x)>-128&&(obj_girl.x-x)<0{
			x+=32;
			if(place_meeting(x,y,obj_girl)){
				if(obj_girl.x-x)>128&&(obj_girl.x-x)>0{
					x-=64;
				}
			}
		}
	}
	/*if(place_meeting(x,y,obj_girl)||place_meeting(x,y,obj_guard)||place_meeting(x,y,WALL)||place_meeting(x,y,obj_creacher)){
		x+=32;
		y+=32;
	}
	if(place_meeting(x,y,obj_girl)||place_meeting(x,y,obj_guard)||place_meeting(x,y,WALL)||place_meeting(x,y,obj_creacher)){
		y-=64;
	}*/
}
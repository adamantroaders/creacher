if(other.sprite_index==spr_girl_transform&&sprite_index!=spr_guard_stone){
	image_speed = 1;
	sprite_index = spr_guard_stone;
	image_index = 0;
	if(patrol=="up"||patrol=="left"){
		x-=16;
	}
	x/=32;
	y/=32;
	x = round(x);
	y = round(y);
	x*=32;
	y*=32;
	
	if(place_meeting(x,y,obj_girl)||place_meeting(x,y,obj_guard)||place_meeting(x,y,WALL)||place_meeting(x,y,obj_creacher)){
		x+=32;
		if(place_meeting(x,y,obj_girl)||place_meeting(x,y,obj_guard)||place_meeting(x,y,WALL)||place_meeting(x,y,obj_creacher)){
			x-=64;
			if(place_meeting(x,y,obj_girl)||place_meeting(x,y,obj_guard)||place_meeting(x,y,WALL)||place_meeting(x,y,obj_creacher)){
				x+=32;
				y+=32;
				if(place_meeting(x,y,obj_girl)||place_meeting(x,y,obj_guard)||place_meeting(x,y,WALL)||place_meeting(x,y,obj_creacher)){
					y-=64;
				}
			}
		}
	}
	
	
}
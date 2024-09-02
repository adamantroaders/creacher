x = myguard.x;
y = myguard.y;
if(obj_shift.persistify){
	persistent = true;
}
else{
	persistent = false;
}
if(myguard.facing=="down"){
	image_angle = 0;
	depth = myguard.depth-1;
}
if(myguard.facing=="up"){
	image_angle = 180;
	depth = myguard.depth+1;
}
if(myguard.facing=="right"){
	image_angle = 90;
	depth = myguard.depth-1;
}
if(myguard.facing=="left"){
	image_angle = 270;
	depth = myguard.depth-1;
}

if(!obj_shift.resetti&&instance_exists(obj_girl)&&place_meeting(x,y,obj_girl)&&obj_girl.visible&&!myguard.pushable){
	if(obj_girl.sprite_index==spr_girl_transform&&obj_shift.image_speed==0){
	if(myguard.facing=="right"||myguard.facing=="left")&&(abs(obj_girl.y-myguard.y)<128){
	obj_shift.resetti = true;
	}
	if(myguard.facing=="up"||myguard.facing=="down")&&(abs(obj_girl.x-myguard.x)<128){
	obj_shift.resetti = true;
	}
	}
	if(obj_girl.canmove){
		obj_shift.resetti = true;
	}
}


image_index = 0;
while(place_meeting(x,y,WALL)||(place_meeting(x,y,obj_guard)))&&image_index<8{
	image_index++;
}
if(image_index>=6&&stoptimer==-15){
	myguard.stop = true;
	stoptimer = 75;
}
if(stoptimer>0){
	stoptimer--;
}
if(stoptimer==0){
	stoptimer = -15;
}

if(myguard.sprite_index==spr_guard_stone||myguard.frozen){
	instance_destroy(self);
}
if(obj_shift.persistify){
	persistent = true;
}
else{
	persistent = false;
}

if(instance_exists(obj_girl)){
	if(obj_girl.snailmoved){
if(place_meeting(x,y+32,obj_goo)){
	if(instance_place(x,y+32,obj_goo).image_alpha>=0.4)
	down = true;
}
if(place_meeting(x,y-32,obj_goo)){
	if(instance_place(x,y-32,obj_goo).image_alpha>=0.4)
	up = true;
}
if(place_meeting(x+32,y,obj_goo)){
	if(instance_place(x+32,y,obj_goo).image_alpha>=0.4)
	right = true;
}
if(place_meeting(x-32,y,obj_goo)){
	if(instance_place(x-32,y,obj_goo).image_alpha>=0.4)
	left = true;
}

if(!down&&!up&&!right&&!left){
	image_index = 0;
}
else if(down&&!up&&!right&&!left){
	image_index = 1;
}
else if(!down&&up&&!right&&!left){
	image_index = 2;
}
else if(!down&&!up&&right&&!left){
	image_index = 3;
}
else if(!down&&!up&&!right&&left){
	image_index = 4;
}
else if(down&&up&&!right&&!left){
	image_index = 5;
}
else if(down&&!up&&right&&!left){
	image_index = 6;
}
else if(down&&!up&&!right&&left){
	image_index = 7;
}
else if(!down&&up&&right&&!left){
	image_index = 8;
}
else if(!down&&up&&!right&&left){
	image_index = 9;
}
else if(!down&&!up&&right&&left){
	image_index = 10;
}
else if(down&&up&&right&&!left){
	image_index = 11;
}
else if(down&&up&&!right&&left){
	image_index = 12;
}
else if(down&&!up&&right&&left){
	image_index = 13;
}
else if(!down&&up&&right&&left){
	image_index = 14;
}
else if(down&&up&&right&&left){
	image_index = 15;
}
	}
}


if(image_alpha<1){
	image_alpha+=0.1;
}

if(place_meeting(x,y,obj_goo)){
	instance_destroy();
}
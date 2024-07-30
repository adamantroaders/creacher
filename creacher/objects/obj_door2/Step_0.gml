if(obj_button2.pressed){
	if(dir=="up"){
		if(y>ymin){
			y-=2;
		}
	}
	else if(dir=="down"){
		if(y<ymax){
			y+=2;
		}
	}
	else if(dir=="left"){
		if(x>xmin){
			x-=2;
		}
	}
	else if(dir=="right"){
		if(x<xmax){
			x+=2;
		}
	}
}
if(!obj_button2.pressed){
	if(dir=="down"){
		if(y>init_y){
			y-=2;
		}
	}
	else if(dir=="up"){
		if(y<init_y){
			y+=2;
		}
	}
	else if(dir=="right"){
		if(x>init_x){
			x-=2;
		}
	}
	else if(dir=="left"){
		if(x<init_x){
			x+=2;
		}
	}
}
if(obj_shift.persistify){
	persistent = true;
}
else{
	persistent = false;
}
depth = d;
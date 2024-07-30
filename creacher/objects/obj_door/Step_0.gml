if(button==1){
if(obj_button.pressed&&!obj_button.button2){
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
if(!obj_button.pressed){
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
}

if(button==2){
if((obj_buttonred.pressed&&!obj_buttonred.button2)||(obj_buttonred2.pressed&&!obj_buttonred2.button2)){
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
if(!obj_buttonred.pressed&&!obj_buttonred2.pressed){
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
}

if(obj_shift.persistify){
	persistent = true;
}
else{
	persistent = false;
}
depth = d;
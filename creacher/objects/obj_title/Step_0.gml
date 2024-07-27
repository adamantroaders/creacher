if(!obj_startbutton.select){
y+=v;
if(v>0){
	v+=a;
}
else{
	v = 0;
	done = true;
}
}

if(obj_startbutton.first&&obj_startbutton.select){
	finalx = 512;
	finaly = -480;
	deltay = finaly - y;
	a = -0.5;
	v = 0;//-1*sqrt(-2 * a * deltay)
}

if(obj_startbutton.select){
	y+=v;
	if(y>finaly){
		v+=a;
	}
	else{
		v = 0;
		donedone = true;
	}
}
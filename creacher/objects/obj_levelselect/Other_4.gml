if(!first){
if(room==title){
x = truex;
finalx = x;
obj_shift.pause = false;
char = "girl";
visible = true;
if(x==784||x==1072){
	timer = 15;
}
else if(x==496||x==1360){
	timer = 30;
}
else{
	timer = 45;
}
if(x>1024){
	x+=1024;
	finalx+=3.97;
}
else{
	x-=1024;
	finalx-=3.97;
}
deltax = abs(finalx - x);
a = -0.05;
v = sqrt(abs(2 * a * deltax))
if(x>1024){
	v*=-1;
}
step = 1;
done = false;
}
}
first = false;
/*finalx = x;
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
done = false;*/

open = false;
lvl = 1;
sprind = 1;



target = Room1;
if(lvl==2){
	target = Room2;
}
if(lvl==3){
	target = Room3;
}
if(lvl==4){
	target = Room2;
}
if(lvl==5){
	target = Room6;
}
if(lvl==6){
	target = Room6;
}
if(lvl==7){
	target = Room12;
}
if(lvl==8){
	target = Room8;
}
if(lvl==9){
	target = Room9;
}
if(lvl==10){
	target = Room10;
}
if(lvl==11){
	target = Room11;
}
if(lvl==12){
	target = Room12;
}
if(lvl==13){
	target = Room13;
}
if(lvl==14){
	target = Room14;
}
if(lvl==15){
	target = Room15;
}
if(lvl==16){
	target = Room16;
}
if(lvl==17){
	target = Room17;
}
if(lvl==18){
	target = Room18;
}
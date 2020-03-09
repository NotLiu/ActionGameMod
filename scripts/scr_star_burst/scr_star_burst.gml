
var starnum = irandom_range(7,10);

for(var i = 0; i<starnum; i+=1){
	var angle = irandom_range(0,360);
	star = instance_create_depth(x, y, -2000, objStar);
	star.image_angle = angle;
}


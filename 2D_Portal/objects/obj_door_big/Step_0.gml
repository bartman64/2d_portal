/// @description Insert description here
// You can write your code in this editor


if (open) {
	openPercentage =  lerp(openPercentage, 1 , 0.1);

} else {
	openPercentage =  lerp(openPercentage, 0, .1);
	
}

image_yscale = (1 - openPercentage) * yscaleStart;
if(alarm_get(1)<=0) {
	hp--;
	alarm_set(1,20);
	image_blend = c_red;
	alarm_set(2,5);
}
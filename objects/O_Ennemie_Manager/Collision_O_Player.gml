if(alarm_get(0)<=0) {
	O_lifemanager.playerlife--;
	alarm_set(0,40);
}
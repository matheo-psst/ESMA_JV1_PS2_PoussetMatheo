if(alarm_get(0)<=0 and !Mort_Monstre) {
	O_lifemanager.playerlife--;
	alarm_set(0,40);
}
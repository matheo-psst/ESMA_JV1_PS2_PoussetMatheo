///@description rec
if(O_Manager_Muni.Munition>=7) {
	O_Manager_Muni.chargeur = 7;
	O_Manager_Muni.Munition-=7;
}
else {
	O_Manager_Muni.chargeur = O_Manager_Muni.Munition;
	O_Manager_Muni.Munition = 0;
}
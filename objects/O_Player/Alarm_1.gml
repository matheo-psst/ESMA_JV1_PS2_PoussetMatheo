///@description rec
var manque = 7-O_Manager_Muni.chargeur;

if(O_Manager_Muni.Munition>=7 || manque<O_Manager_Muni.Munition) {
	O_Manager_Muni.Munition-=manque;
	O_Manager_Muni.chargeur = 7;
	
}
else {
	O_Manager_Muni.chargeur = O_Manager_Muni.Munition;
	O_Manager_Muni.Munition = 0;
}
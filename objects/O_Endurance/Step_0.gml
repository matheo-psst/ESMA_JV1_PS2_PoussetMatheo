key_left = keyboard_check(vk_left) or keyboard_check(ord("Q"))
key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
key_shift_hold = keyboard_check(vk_shift);

if (key_shift_hold and (key_left or key_right))
{
	Endurance--
}

if(Endurance < Max_Endurance && !key_shift_hold)
{
	Endurance++;
}
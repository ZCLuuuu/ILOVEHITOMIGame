function controlsSetup()
{
	bufferTime = 3;
	
	jumpKeyBuffered = 0;
	jumpKeyBufferTimer = 0;
	
}

function getControls(){
	//Direction inputs
	rightKey = keyboard_check(ord("D"))+keyboard_check(vk_right);
	rightKey = clamp(rightKey,0,1);
	
	leftKey = keyboard_check(ord("A"))+keyboard_check(vk_left);
	leftKey = clamp(leftKey,0,1);

	jumpKeyPressed = keyboard_check_pressed(vk_space)
	jumpKeyPressed = clamp(jumpKeyPressed,0,1);
	
	jumpKey=keyboard_check(vk_space)
	jumpKey = clamp(jumpKey,0,1);
	
	//Jump key buffering
	if jumpKeyPressed
	{
		jumpKeyBufferTimer = bufferTime;
	}
	if jumpKeyBufferTimer > 0
	{
		jumpKeyBuffered = 1;
		jumpKeyBufferTimer--;
	}else{
		jumpKeyBuffered =0;
	}

}
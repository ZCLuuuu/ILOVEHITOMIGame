getControls()

//X Movement
	//Direction
	moveDir = rightKey-leftKey;
	if moveDir != 0 {face=moveDir;};
	
	//Get xspd
	xspd = moveDir * moveSpd;

	//X collision
	var _subPixel = .5;
	if place_meeting(x+xspd,y,oWall)
	{
		//scoot up to wall precisely
		var _pixelCheck = _subPixel*sign(xspd);
		while !place_meeting(x+_pixelCheck,y,oWall)
		{
			//x+=_pixelCheck;
			x = clamp(x+_pixelCheck,0,room_width);
		}
	
		//Set xspd to zero to collide
		xspd=0;
	}

	//Move
	//x+=xspd;
	x = clamp(x+xspd,0,room_width);
	
	
	

//Y movement
	//Gravity
	yspd += grav;
	
	//Jump
	//if jumpKeyPressed == true && place_meeting(x,y+1,oWall)
	if jumpKeyBuffered == true && place_meeting(x,y+1,oWall)
	{
		//jumpKeyBuffered=false;
		//jumpKeyBufferTimer=0;
		
		yspd = jspd;
		onGround = false;
		
		//Turn on the light
		roomIndex = floor(x/360);

		if roomIndex==0{
			oOffice00.image_alpha=0;
		};
		if roomIndex==1{
			oOffice01.image_alpha=0;
		};
		if roomIndex==2{
			oOffice02.image_alpha=0;
		};
		
	}
	
	//y collision
	var _subPixel = .5;
	if place_meeting(x,y+yspd,oWall)
	{
		var _pixelCheck=_subPixel * sign(yspd);
		while !place_meeting(x,y+_pixelCheck,oWall)
		{
			y+=_pixelCheck;
		}
		yspd=0;
	}
	if yspd>=0&&place_meeting(x,y+1,oWall)
	{
		onGround=true;
	}
	
	y+=yspd;
	

	
//Sprite control
	//Walking
	if abs(xspd) > 0 {sprite_index=sPlayer_right;};
	if xspd==0 {sprite_index=sPlayer_idle;};
	if !onGround {sprite_index=sPlayer_jump;};
	mask_index = maskSpr;
	
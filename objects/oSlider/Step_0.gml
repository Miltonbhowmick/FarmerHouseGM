/// @description Insert description here
// You can write your code in this editor
if(canPress== true)

{
	if(keyboard_check_released(vk_left))
	   
	   {
		   canPress=false;
		   state="go left";
		   
	   }
	   
	if(keyboard_check_released(vk_right))
	   
	   {
		   canPress=false;
		   state="go left";
		   
	   }
	   
	   
}

//shift left 

if(state=="go left")
  {
	  if(setOnce==false)
	    {
			setOnce=true;
			start=0;
			dest=-200;
			duration=30;
			time=0;
		}
		
		//ease function
		if(time<duration)
		{
			shift=ease_in(time,start,dest-start,duration);
			time++;
		}
		
		//reach endpoint and reset
		if(shift<=-shiftMax)
		
		 {
			 state="";
			 canPress=true;
			 shift=0;
			 setOnce=false;
			 
		 }//may be create problem 
		 
		 //reset indexes
		 if(position_index_Left<5)
		 {
			 position_index_Left +=1;
			 
		 }
		 else{
			 position_index_Left=0;
		 }
		 
  }
  
  if(state =="go right")
   {
	   if(setOnce==false)
	    {
			setOnce=true;
			start=0;
			dest=-200;
			duration=30;
			time=0;
		}
		
		//ease function
		if(time<duration)
		{
			shift= ease_in (time,start,dest-start,duration);
			time++;
		}
		
 }

		   
	   
	   
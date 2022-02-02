package com.xo;

import java.util.ArrayList;
import java.util.Random;

public class Colour {
	public String getColour()
	{
		ArrayList<String> c=new ArrayList<String>();	
		
		
		c.add("Blue");
		c.add("Black");
		c.add("White");
		c.add("Red");
		
		Random r=new Random();	
		
		int j=r.nextInt(4);
			
		
		return c.get(j);
	}
}

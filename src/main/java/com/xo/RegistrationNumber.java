package com.xo;

import java.util.ArrayList;
import java.util.Random;

public class RegistrationNumber {
	public String getRegistrationNumber()
	{
		Random r=new Random();
		
		String s="";
		
		char c1=(char)(r.nextInt(26)+65);
		char c2=(char)(r.nextInt(26)+65);
		int i1=r.nextInt(10);
		int i2=r.nextInt(10);
		char c3=(char)(r.nextInt(26)+65);
		char c4=(char)(r.nextInt(26)+65);
		int i3=r.nextInt(10);
		int i4=r.nextInt(10);
		int i5=r.nextInt(10);
		int i6=r.nextInt(10);
		s=s+c1+c2+'-'+String.valueOf(i1)+String.valueOf(i2)+'-'+c3+c4+'-'+String.valueOf(i3)+String.valueOf(i4)+String.valueOf(i5)+String.valueOf(i6);
		
		return s;
	}
}

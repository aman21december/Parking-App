package com.xo;

public class Car {
	String registration_number;
	String colour;
	public Car(String registration_number, String colour) {
		this.registration_number = registration_number;
		this.colour = colour;
	}
	public String getRegistration_number() {
		return registration_number;
	}
	public void setRegistration_number(String registration_number) {
		this.registration_number = registration_number;
	}
	public String getColour() {
		return colour;
	}
	public void setColour(String colour) {
		this.colour = colour;
	}
	@Override
	public String toString() {
		return "Car [registration_number=" + registration_number + ", colour=" + colour + "]";
	}
	
}

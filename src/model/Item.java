package model;

import java.io.Serializable;

public class Item implements Serializable{
	private String pattern;
	public String getPattern() { return pattern; }
	public void setPattern(String pattern) { this.pattern= pattern; }
}

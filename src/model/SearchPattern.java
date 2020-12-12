/*
 * Item.java
 */
/** 検索パターンに関する情報を持つJavaBeans **/
package model;

import java.io.Serializable;

public class SearchPattern implements Serializable{
	private String pattern;
	public String getPattern() { return pattern; }
	public void setPattern(String pattern) { this.pattern= pattern; }
}

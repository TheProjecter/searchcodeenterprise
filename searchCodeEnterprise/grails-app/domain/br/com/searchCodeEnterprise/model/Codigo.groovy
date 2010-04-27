package br.com.searchCodeEnterprise.model

import java.io.Serializable;

class Codigo implements Serializable{
	static searchable = {
		alias "foobar"
	    subIndex "fb"
		constant name: "type", value: "some foobar"
		constant name: "noise", values: ["squawk", "shriek"]
		spellCheck "include"
		}

	File fonte
	String descricao
	String autor
	
	static constraints = {
		
		}
	
	
	String toString(){
		return descricao
		}
}

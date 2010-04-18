package br.com.searchCodeEnterprise.model

class Codigo {
	static searchable = true
	
	File fonte
	String descricao
	String autor
	
	static constraints = {
		descricao()
		}
	
	
	String toString(){
		return descricao
		}
}

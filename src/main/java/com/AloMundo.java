package com;

public class AloMundo {

    private String nome;
    
    public AloMundo() {
        this("");
    }

    public AloMundo(String nome) {
        setNome(nome);
    }

    public String getNome() {
        return nome;
    }  

    public void setNome(String nome) {
        this.nome = nome;
    }  
}

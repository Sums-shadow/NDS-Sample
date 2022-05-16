/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Yves kayiba
 */
public class Utilisateur {
    private String nomUtilisateur;
    private String poste;
    private String motPass;
    private int nvA;
    private String auteur;
    private int ident;
    
    public void setNomUtilisateur(String nomUtilisateur){
    this.nomUtilisateur=nomUtilisateur;
    }
    public void setPoste(String poste){
    this.poste=poste;
    }
    public void setMotdePass(String motPass){
    this.motPass=motPass;
    }
    public void setNvA(int nvA){
    this.nvA=nvA;
    }
    public void setAuteur(String auteur){
    this.auteur=auteur;
    }
    public void setIdent(int ident){
    this.ident=ident;
    }
    public String getNomUtilisateur(){
    return nomUtilisateur;
    }
    public String getPoste(){
    return poste;
    }
    public String getMotdePass(){
    return motPass;
    }
    public int getNvA(){
    return nvA;
    }
    public String getAuteur(){
    return auteur;
    }
    public int getIdent(){
    return ident;
    }
    
          
}

package sn.unchk.potagerconnect.model;

import com.fasterxml.jackson.annotation.JsonProperty;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "potager")
public class Potager {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @JsonProperty("id_potager")
    @Column(name = "id_potager")  // Assurez-vous que le nom de la colonne correspond à celui de votre base de données
    private Integer id_potager;
    @Column(name = "nom_potager")
    @JsonProperty("nom_potager")
    private String nom_potager;
    @Column(name = "telephone")
    @JsonProperty("telephone")
    private String telephone;
    @Column(name = "ville")
    @JsonProperty("ville")
    private String ville;
    @Column(name = "adresse")
    @JsonProperty("adresse")
    private String adresse;
    @Column(name = "identifiant")
    private String identifiant;
    @Column(name = "mot_de_passe")
    private String mot_de_passe;
    @Column(name = "prenom_proprietaire")
    @JsonProperty("prenom_proprietaire")
    private String prenom_proprietaire;
    @Column(name = "nom_proprietaire")
    @JsonProperty("nom_proprietaire")
    private String nom_proprietaire;

    // Getters et Setters

    public Integer getId_potager() {
        return id_potager;
    }

    public void setId_potager(Integer id_potager) {
        this.id_potager = id_potager;
    }

    public String getNom_potager() {
        return nom_potager;
    }

    public void setNom_potager(String nom_potager) {
        this.nom_potager = nom_potager;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getVille() {
        return ville;
    }

    public void setVille(String ville) {
        this.ville = ville;
    }

    public String getAdresse() {
        return adresse;
    }

    public void setAdresse(String adresse) {
        this.adresse = adresse;
    }

    public String getNom_proprietaire() {
        return nom_proprietaire;
    }

    public void setNom_proprietaire(String nom_proprietaire) {
        this.nom_proprietaire = nom_proprietaire;
    }

    public String getPrenom_proprietaire() {
        return prenom_proprietaire;
    }

    public void setPrenom_proprietaire(String prenom_proprietaire) {
        this.prenom_proprietaire = prenom_proprietaire;
    }
    
}

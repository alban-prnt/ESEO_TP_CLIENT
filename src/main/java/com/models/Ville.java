package com.models;

import org.json.JSONObject;

public class Ville {
	
	public String code_commune_INSEE;
	public String nom_commune;
	public String code_postal;
	public String libelle_acheminement;
	public String ligne;
	public String latitude;
	public String longitude;


	public Ville(JSONObject obj) {
		this.code_commune_INSEE=obj.getString("code_commune_INSEE");
		this.nom_commune=obj.getString("nom_commune");
		this.code_postal=obj.getString("code_postal");
		this.libelle_acheminement=obj.getString("libelle_acheminement");
		this.ligne=obj.getString("ligne_5");
		this.latitude=obj.getString("latitude");
		this.longitude=obj.getString("longitude");
	}
	
	public Ville(String code_commune_INSEE, String nom_commune, String code_postal, String libelle_acheminement, String ligne, String latitude, String longitude) {
		super();
		this.code_commune_INSEE = code_commune_INSEE;
		this.nom_commune = nom_commune;
		this.code_postal = code_postal;
		this.libelle_acheminement = libelle_acheminement;
		this.ligne = ligne;
		this.latitude = latitude;
		this.longitude = longitude;
	}

	public Ville(String code_commune_INSEE, String nom_commune, String code_postal, String libelle_acheminement, String ligne) {
		super();
		this.code_commune_INSEE = code_commune_INSEE;
		this.nom_commune = nom_commune;
		this.code_postal = code_postal;
		this.libelle_acheminement = libelle_acheminement;
		this.ligne = ligne;
	}
	
	public Ville(String code_commune_INSEE) {
		super();
		this.code_commune_INSEE = code_commune_INSEE;
	}

	public Ville(String code_commune_INSEE, String nom_commune) {
		super();
		this.code_commune_INSEE = code_commune_INSEE;
		this.nom_commune = nom_commune;
	}

	public Ville(String code_commune_INSEE, String nom_commune, String code_postal) {
		super();
		this.code_commune_INSEE = code_commune_INSEE;
		this.nom_commune = nom_commune;
		this.code_postal = code_postal;
	}

	public Ville(String code_commune_INSEE, String nom_commune, String code_postal, String libelle_acheminement) {
		super();
		this.code_commune_INSEE = code_commune_INSEE;
		this.nom_commune = nom_commune;
		this.code_postal = code_postal;
		this.libelle_acheminement = libelle_acheminement;
	}

	public Ville() {
		super();
	}
	
	public String getLatitude() {
		return latitude;
	}

	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}

	public String getLongitude() {
		return longitude;
	}

	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}
	

	public String getcode_commune_INSEE() {
		return code_commune_INSEE;
	}

	public void setcode_commune_INSEE(String code_commune_INSEE) {
		this.code_commune_INSEE = code_commune_INSEE;
	}

	public String getnom_commune() {
		return nom_commune;
	}

	public void setnom_commune(String nom_commune) {
		this.nom_commune = nom_commune;
	}

	public String getcode_postal() {
		return code_postal;
	}

	public void setcode_postal(String code_postal) {
		this.code_postal = code_postal;
	}

	public String getlibelle_acheminement() {
		return libelle_acheminement;
	}

	public void setlibelle_acheminement(String libelle_acheminement) {
		this.libelle_acheminement = libelle_acheminement;
	}

	public String getLigne() {
		return ligne;
	}

	public void setLigne(String ligne) {
		this.ligne = ligne;
	}

}

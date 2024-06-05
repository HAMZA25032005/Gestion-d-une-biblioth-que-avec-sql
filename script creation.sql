CREATE TABLE famille_document (
  code_famille INT PRIMARY KEY,
  type_document VARCHAR(255),
  nombre_documents INT,
);


CREATE TABLE documents (
  code_doc INT(10) PRIMARY KEY,
  localisation VARCHAR(255),
  titre VARCHAR(255),
  auteur VARCHAR(255),
  annee_sortie INT,
  type VARCHAR(255),
  genre VARCHAR(255),
  emprunts_effectues INT,
  possibilite_emprunt text
);

CREATE TABLE fournisseur (
  numero_fournisseur INT PRIMARY KEY,
  raison_sociale VARCHAR(255),
  statut_signature_contrat text(255),
  code_doc INT,
  id_revendeur INT,
  FOREIGN KEY (code_doc) REFERENCES documents(code_doc) ON UPDATE CASCADE ON DELETE CASCADE,
  FOREIGN KEY (id_revendeur) REFERENCES revendeur(id_revendeur) ON UPDATE CASCADE ON DELETE CASCADE
);


CREATE TABLE revendeur (
  ID_revendeur INT PRIMARY KEY,
  nom_revendeur VARCHAR(255),
  telephone VARCHAR(255),
  adresse VARCHAR(255)
);


CREATE TABLE agent (
  ID_agent INT PRIMARY KEY,
  nom_agent VARCHAR(255),
  prenom_agent VARCHAR(255),
  mot_de_passe_agent VARCHAR(255)
  droit_modif_doc text,
  droit_modif_adherent text
);


CREATE TABLE modification_doc (
  code_doc INT,
  id_agent INT,
  type_modif_doc,
  FOREIGN KEY (code_doc) REFERENCES documents(code_doc) ON UPDATE CASCADE ON DELETE CASCADE,
  FOREIGN KEY (id_agent) REFERENCES agent(id_agent) ON UPDATE CASCADE ON DELETE CASCADE
);



CREATE TABLE commande (
  id_commande INT PRIMARY KEY,
  quantite INT,
  montant_total int(10)
);


CREATE TABLE passage_commande (
  id_agent INT,
  id_commande INT,
  FOREIGN KEY (id_agent) REFERENCES agent(id_agent) ON UPDATE CASCADE ON DELETE CASCADE,
  FOREIGN KEY (id_commande) REFERENCES commande(id_commande) ON UPDATE CASCADE ON DELETE CASCADE
);


CREATE TABLE document_commande (
  code_document_commande INT PRIMARY KEY,
  titre VARCHAR(255),
  type_document VARCHAR(255)
);


CREATE TABLE fiche_prob_emprunt (
  id_fiche INT PRIMARY KEY
  id_agent int,
  id_adherent,
  FOREIGN KEY (id_agent) REFERENCES agent(id_agent) ON UPDATE CASCADE ON DELETE CASCADE,
  FOREIGN KEY (id_adherent) REFERENCES adherent(id_adherent) ON UPDATE CASCADE ON DELETE CASCADE
  
);

CREATE TABLE fiche_inscription (
  id_fiche_inscription INT PRIMARY KEY,
  duree_emprunt INT,
  nom_adherent VARCHAR(255),
  prenom_adherent VARCHAR(255),
  adresse_adherent VARCHAR(255),
  montant_adhesion int(10),
  nombre_documents_a_emprunter INT,
  id_agent INT,
  id_adherent int,
  FOREIGN KEY (id_agent) REFERENCES agent(id_agent) ON UPDATE CASCADE ON DELETE CASCADE,
  FOREIGN KEY (id_adherent) REFERENCES adherent(id_adherent) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE modification_adherent (
  type_modif_adherent text,
  id_agent INT,
  id_adherent INT,
  FOREIGN KEY (id_agent) REFERENCES agent(id_agent) ON UPDATE CASCADE ON DELETE CASCADE,
  FOREIGN KEY (id_adherent) REFERENCES adherent(id_adherent) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE fiche_emprunt (
  id_fiche_emprunt INT PRIMARY KEY,
  nom_emprunteur VARCHAR(255),
  date_limite_restitution DATE,
  duree_pret INT,
  date_debut_pret DATE,
  code_doc int,
  date_retour_document DATE
  id_agent int,
  id adherent int,
  FOREIGN KEY (id_agent) REFERENCES agent(id_agent) ON UPDATE CASCADE ON DELETE CASCADE,
  FOREIGN KEY (id_adherent) REFERENCES adherent(id_adherent) ON UPDATE CASCADE ON DELETE CASCADE,
  FOREIGN KEY (code_doc) REFERENCES documents(code_doc) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE adherent (
  id_adherent INT PRIMARY KEY,
  type_adherent varchar(255)
  nom_adherent VARCHAR(255),
  prenom_adherent VARCHAR(255),
  adresse_adherent VARCHAR(255),
  mot_de_passe_adherent VARCHAR(255),
  nombre_emprunts INT,
  points INT,
  permission_emprunts text,
  anciennes_regularisations INT
);


CREATE TABLE chef_etablissement (
  nom_chef VARCHAR(255) PRIMARY KEY,
  prenom VARCHAR(255),
  id_adherent INT,
  id_fiche_reg INT,
  FOREIGN KEY (id_adherent) REFERENCES adherent(id_adherent) ON UPDATE CASCADE ON DELETE CASCADE,
  FOREIGN KEY (id_fiche_reg) REFERENCES fiche_regularisation(id_fiche_reg) ON UPDATE CASCADE ON DELETE CASCADE
);


CREATE TABLE fiche_regularisation (
  id_fiche_reg INT PRIMARY KEY,
  motif text,
  id_agent int,
  id adherent int,
  FOREIGN KEY (id_agent) REFERENCES agent(id_agent) ON UPDATE CASCADE ON DELETE CASCADE,
  FOREIGN KEY (id_adherent) REFERENCES adherent(id_adherent) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE fiche_reservation (
  id_reservation INT PRIMARY KEY,
  doc_a_reserver VARCHAR(255),
  date_reservation DATE,
  id_adherent int,
  FOREIGN KEY (id_adherent) REFERENCES adherent(id_adherent) ON UPDATE CASCADE ON DELETE CASCADE,
);











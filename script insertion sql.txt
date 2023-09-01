INSERT INTO documents(code_doc, localisation, titre, auteur, annee_sortie, type, genre, emprunts_effectues, possibilte_emprunt)
 VALUES
 (111, 'salle', 'L'Insoutenable_Légèreté_de_l'être', 'Milan_Kundera', 1993 , 'Livre' , 'Policier' , 2 , 'true'),
 (222, 'rayon', 'Voyage_au_bout_de_la_nuit', 'Louis_Ferdinand_Céline', 2000 , 'Article' , 'nouvelle' , 0 , 'false'),
 (333, 'rayon', 'La_boite_a_merveilles', 'Ahmed_sefrioui', 1964, 'roman' , 'Autobiographie' , 9 , 'true'),
 (444, 'salle', 'Antigone', 'Jean_annouilh', 1967 , 'Roman' , 'nouvelle' , 0 , 'false');

INSERT INTO revendeur(ID_revendeur, nom_revendeur, telephone, adresse)
 VALUES
 (182 , 'SAM', '0663328934','sam@mail.com'),
 (453 , 'LUCY', '0646357256', 'lucy@mail.com'),
 (887 , 'JACK', '0698443589', 'jack@mail.com');

INSERT INTO agent(ID_agent, nom_agent, prenom_agent, mot_de_passe_agent, droit_modif_doc , droit_modif_adherent)
 VALUES
 (998 , 'JOHN', 'PETERSON', 'john123', 'true', 'true'),
 (788 , 'ROSANA', 'PADILLA', 'rosana123', 'false', 'true'),
 (664 , 'SAMUEL', 'CRUZ', 'samuel123', 'true', 'false'),
 (109 , 'FARAH', 'OSBORN', 'farah123', 'false', 'false');

INSERT INTO commande(id_commande, quantite, montant_total)
 VALUES
 (003 ,5 , '50'),
 (004 ,2 , '20'),
 (005 ,7 , '70');

INSERT INTO document_commande(code_document_commande, titre, type_document)
 VALUES
 (550 ,'Black_lace', 'livre'),
 (580 ,'Spade_hearts', 'article'),
 (500 ,'Leather_dreams', 'cd_audio');

INSERT INTO fiche_prob_emprunt(id_fiche, id_agent, id_adherent)
 VALUES
 (5986, 998 , 339),
 (5989, 788 , 340),
 (5990, 664 , 341),

INSERT INTO fiche_emprunt(id_fiche_emprunt, nom_emprunteur, date_limite_restitution, duree_pret, date_debut_pret, code_doc, date_retour_document, id_agent, id_adherent)
 VALUES
 (919, 'RAHUL', '2022-05-20', 10 , '2022-05-10' , 444 , '2022-05-20' , 998 , 339 ),
 (920, 'OMAR', '2022-06-15', 10 , '2022-06-10' , 333 , '2022-06-20' , 998 , 342 );

INSERT INTO adherent(id_adherent, type_adherent, nom_adherent, prenom_adherent, adresse_adherent, mot_de_passe_adherent, nombre_emprunts, points, permission_emprunts, anciennes_regularisation)
 VALUES
 (339, 'Prof', 'RAHUL', 'WOODWARD' , 'rahul@mail.com' , 'rahul123' , 10 , 20 , true , 0),
 (340, 'Etudiant', 'NIKOLAS', 'DALE' , 'nikolas@mail.com' , 'nikolas123' , 0 , 0 , flase , 20),
 (341, 'Prof', 'MOLLY', 'CASTRO' , 'molly@mail.com' , 'molly123' , 15 , 17 , true , 3),
 (342, 'Etudiant', 'OMAR', 'RODGER' , 'omar@mail.com' , 'omar123' , 22 , 19 , true , 1);

INSERT INTO fiche_regularisation(id_fiche_reg, motif, id_agent, id_adherent)
 VALUES
 (777, 'retard', 998 , 342),
 (770, 'retard', 788 , 341);


INSERT INTO fiche_resrvation(id_reservation, doc_a_reserver, date_reservation, id_adherent)
 VALUES
 (866, 'THE_FREAKY_GUITAR', '2022-06-01', 341);


INSERT INTO famille_document(code_famille, type_document, nombre_documents)
 VALUES
 (8888, 'LIVRE', 2);


INSERT INTO fournisseur(numero_fournisseur, raison_sociale, statut_signature_contrat, code_doc, id_revendeur)
 VALUES
 (9652, 'employeur', 'oui', 111, 182),
 (9659, 'employeur', 'oui', 222, 453),
 (9672, 'employeur', 'oui', 333, 182),
 (9622, 'employeur', 'oui', 444, 182);


INSERT INTO fiche_inscription(id_fiche_inscription, duree_emprunt, nom_adherent, prenom_adherent, adresse_adherent, montant_adhesion, nombre_documents_a_emprunter, id_agent, id_aherent)
 VALUES
 (7567, 365, 'RAHUL', 'WOODWARD', 'rahul@mail.com', 50 , 50 , 664, 339),
 (7569, 365, 'NIKOLAS', 'DALE', 'nikolas@mail.com', 50 , 50 , 664, 340),
 (7570, 365, 'MOLLY', 'CASTRO', 'molly@mail.com', 50 , 50 , 664, 341);


INSERT INTO chef_etablissement(nom_chef, prenom, id_adherent, id_fiche_reg)
 VALUES
 ('JEFFERY', 'MCINTOSH', 341 , 770 );


INSERT INTO modification_doc(type_modif_doc, code_doc, id_agent)
 VALUES
 ('Ajout', 111 ,998 ),
 ('Ajout', 222 ,664 );


INSERT INTO passage_commande(id_agent, id_commande)
 VALUES
 (109, 003),
 (664, 004);



INSERT INTO modification_adherent(type_modif_adherent, id_adherent, id_agent)
 VALUES
 ('Ajout', 341,998 ),
 ('Ajout', 342, 788);

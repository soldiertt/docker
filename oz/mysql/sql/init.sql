
SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Base de données: `oz`
--


-- --------------------------------------------------------
--
-- Structure de la table `certification`
--

CREATE TABLE IF NOT EXISTS `certification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `denomination` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE(denomination)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `certification`
--
insert into certification (denomination) VALUES ("Gardiennage des PN");
insert into certification (denomination) VALUES ("Soudure aluminothermique des connexions");
insert into certification (denomination) VALUES ("Entretien des engins mécaniques");
insert into certification (denomination) VALUES ("Secouriste");
insert into certification (denomination) VALUES ("Soudure et découpage");
insert into certification (denomination) VALUES ("Sélection médicale pour conduite de véhicules");
insert into certification (denomination) VALUES ("Agent d'escorte");
insert into certification (denomination) VALUES ("EPI prévention incendie");
insert into certification (denomination) VALUES ("Utilisation plaque vibrante BOMAG");


-- --------------------------------------------------------
--
-- Structure de la table `work_regime`
--

CREATE TABLE IF NOT EXISTS `work_regime` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `denomination` varchar(25) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE(denomination)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `work_regime`
--
insert into work_regime (denomination) VALUES ('FULL_TIME');
insert into work_regime (denomination) VALUES ('45_TIME');
insert into work_regime (denomination) VALUES ('HALF_TIME');

-- --------------------------------------------------------
--
-- Structure de la table `brigade`
--

CREATE TABLE IF NOT EXISTS `brigade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(25) NOT NULL,
  `location` varchar(50),
  `titulaire` varchar(50),
  PRIMARY KEY (`id`),
  UNIQUE(code)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `brigade`
--
insert into brigade(code, location, titulaire) VALUES ("254003","5468 Tournai","Scst Lepers Bernard");
insert into brigade(code, location, titulaire) VALUES ("554000","5400 Ath","Ing Gilmet Thierry");
insert into brigade(code, location, titulaire) VALUES ("554003","5467 Ath","Scst Martiny Jean-François");
insert into brigade(code, location, titulaire) VALUES ("554110","5400 Ath","Ing Gilmet Thierry");
insert into brigade(code, location, titulaire) VALUES ("554111","5411 Ath","Scst Fourez Philippe");
insert into brigade(code, location, titulaire) VALUES ("554112","5411 Ath","Scst Fourez Philippe");
insert into brigade(code, location, titulaire) VALUES ("554113","5411 Ath","Scst Fourez Philippe");
insert into brigade(code, location, titulaire) VALUES ("554120","5400 Ath","Ing Gilmet Thierry");
insert into brigade(code, location, titulaire) VALUES ("554121","5412 Ath","Scst Van Stalle Gilles");
insert into brigade(code, location, titulaire) VALUES ("554122","5412 Ath","Scst Van Stalle Gilles");
insert into brigade(code, location, titulaire) VALUES ("999999","","");
insert into brigade(code, location, titulaire) VALUES ("CLI Tournai","","");
insert into brigade(code, location, titulaire) VALUES ("Magasin CLI","","");


-- --------------------------------------------------------
--
-- Structure de la table `grade`
--

CREATE TABLE IF NOT EXISTS `grade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` int(4) NOT NULL,
  `denomination` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE(code)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `grade`
--
insert into grade(code, denomination) VALUES (1,"Chargeur");
insert into grade(code, denomination) VALUES (2,"Chargeur principal");
insert into grade(code, denomination) VALUES (3,"Chef chargeur");
insert into grade(code, denomination) VALUES (4,"Conducteur de tracteur E");
insert into grade(code, denomination) VALUES (5,"Conducteur véhicule auto");
insert into grade(code, denomination) VALUES (6,"Signaleur 2ème classe");
insert into grade(code, denomination) VALUES (7,"Commis de factage");
insert into grade(code, denomination) VALUES (14,"Aspirant A.M.S. en stage");
insert into grade(code, denomination) VALUES (15,"Aspir.ag.maint.spécialisé");
insert into grade(code, denomination) VALUES (18,"Agent de maintenance");
insert into grade(code, denomination) VALUES (19,"Agent maint.spécialisé");
insert into grade(code, denomination) VALUES (21,"Chef de maintenance");
insert into grade(code, denomination) VALUES (28,"Technicien principal");
insert into grade(code, denomination) VALUES (44,"Agent de métier");
insert into grade(code, denomination) VALUES (45,"Agent métier spécialisé");
insert into grade(code, denomination) VALUES (50,"Agent métier (poste rés.)");
insert into grade(code, denomination) VALUES (106,"Electricien adjoint");
insert into grade(code, denomination) VALUES (134,"Planningman brigadier méc");
insert into grade(code, denomination) VALUES (164,"Aide-soudeur");
insert into grade(code, denomination) VALUES (191,"Ajusteur mécanicien infra");
insert into grade(code, denomination) VALUES (265,"Agent de l'ajustage");
insert into grade(code, denomination) VALUES (343,"Adjoint agent de maîtrise");
insert into grade(code, denomination) VALUES (344,"Assistant technico admin.");
insert into grade(code, denomination) VALUES (355,"Soudeur spécialisé");
insert into grade(code, denomination) VALUES (409,"Technicien travaux voie");
insert into grade(code, denomination) VALUES (455,"Chef technicien elm ECFM");
insert into grade(code, denomination) VALUES (502,"Chel technicien elm Signa");
insert into grade(code, denomination) VALUES (554,"Technicien elm ECFM");
insert into grade(code, denomination) VALUES (559,"Technicien elm Signalis.");
insert into grade(code, denomination) VALUES (613,"S/chef sect. techn. ECFM");
insert into grade(code, denomination) VALUES (657,"S/chef sect. techn. Voie");
insert into grade(code, denomination) VALUES (662,"1er Chef sect.technique");
insert into grade(code, denomination) VALUES (697,"S/chef sect. techn. Signa");
insert into grade(code, denomination) VALUES (803,"Secrétaire administratif");
insert into grade(code, denomination) VALUES (840,"Ingénieur ind. Principal");
insert into grade(code, denomination) VALUES (843,"Commis aux écritures");
insert into grade(code, denomination) VALUES (856,"Ingénieur ind. Infra élec");
insert into grade(code, denomination) VALUES (862,"Ingénieur ind. Infra voie");
insert into grade(code, denomination) VALUES (869,"Sous-chef de bureau");


-- --------------------------------------------------------
--
-- Structure de la table `holiday`
--

CREATE TABLE IF NOT EXISTS `holiday` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(50) NOT NULL,
  `date` DATE NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE(date)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `holiday`
--
insert into holiday(id, label, date) VALUES (701, 'Christmas', '2016-12-25');


-- --------------------------------------------------------
--
-- Structure de la table `circ_holiday`
--

CREATE TABLE IF NOT EXISTS `circ_holiday` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(2) NOT NULL,
  `denomination` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `circ_holiday`
--
insert into circ_holiday(code, denomination) VALUES ("SI","Prés. indisp. auprès épouse");
insert into circ_holiday(code, denomination) VALUES ("SI","Prés. indisp. auprès enfant");
insert into circ_holiday(code, denomination) VALUES ("D1","A déterminer");
insert into circ_holiday(code, denomination) VALUES ("CC","Mariage de l'agent");
insert into circ_holiday(code, denomination) VALUES ("CC","Accouchement de l'épouse");
insert into circ_holiday(code, denomination) VALUES ("CC","Décès du conjoint");
insert into circ_holiday(code, denomination) VALUES ("CC","Décès père");
insert into circ_holiday(code, denomination) VALUES ("CC","Décès mère");
insert into circ_holiday(code, denomination) VALUES ("CC","Décès beau-père");
insert into circ_holiday(code, denomination) VALUES ("CC","Décès belle-mère");
insert into circ_holiday(code, denomination) VALUES ("CC","Décès grand-père");
insert into circ_holiday(code, denomination) VALUES ("CC","Décès grand-mère");
insert into circ_holiday(code, denomination) VALUES ("CC","Décès frère");
insert into circ_holiday(code, denomination) VALUES ("CC","Décès soeur");
insert into circ_holiday(code, denomination) VALUES ("CC","Décès beau-frère");
insert into circ_holiday(code, denomination) VALUES ("CC","Décès belle-soeur");
insert into circ_holiday(code, denomination) VALUES ("CC","Décès fils");
insert into circ_holiday(code, denomination) VALUES ("CC","Décès fille");
insert into circ_holiday(code, denomination) VALUES ("CC","Décès petit-fils");
insert into circ_holiday(code, denomination) VALUES ("CC","Décès petite-fille");
insert into circ_holiday(code, denomination) VALUES ("CC","Mariage fils");
insert into circ_holiday(code, denomination) VALUES ("CC","Mariage fille");
insert into circ_holiday(code, denomination) VALUES ("D0","A déterminer");
insert into circ_holiday(code, denomination) VALUES ("CC","Décès grand-père conjoint");
insert into circ_holiday(code, denomination) VALUES ("CC","Décès grand-mère conjoint");
insert into circ_holiday(code, denomination) VALUES ("DN","Entretien psychologique");
insert into circ_holiday(code, denomination) VALUES ("DN","Réception 20 km Bruxelles");
insert into circ_holiday(code, denomination) VALUES ("DN","Epreuve régularisation TTxV");
insert into circ_holiday(code, denomination) VALUES ("DN","Surveillance épreuves recrutement BXL");
insert into circ_holiday(code, denomination) VALUES ("D0","Championnat national de tennis");


-- --------------------------------------------------------
--
-- Structure de la table `person`
--

CREATE TABLE IF NOT EXISTS `person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pnr` varchar(25) NOT NULL,
  `firstname` varchar(25) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `birthdate` DATE NOT NULL,
  `ssin` varchar(11)  NOT NULL,
  `badge` varchar(25) NOT NULL,
  `photo` varchar(50) DEFAULT NULL,
  `priv_phone` varchar(25) DEFAULT NULL,
  `work_phone` varchar(25) DEFAULT NULL,
  `medical_examination_date` DATE DEFAULT NULL,
  `rescuer` boolean DEFAULT false,
  `epi` boolean DEFAULT false,
  `cova` boolean DEFAULT false,
  `catenary_grounding` boolean DEFAULT false,
  `grade_id` int(11) NOT NULL,
  `brigade_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (grade_id)
        REFERENCES grade(id),
  FOREIGN KEY (brigade_id)
        REFERENCES brigade(id),
  UNIQUE(pnr),
  UNIQUE(ssin),
  UNIQUE(badge)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `person`
--


-- --------------------------------------------------------
--
-- Structure de la table `person_work_regime`
--

CREATE TABLE IF NOT EXISTS `person_work_regime` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) NOT NULL,
  `work_regime_id` int(11) NOT NULL,
  `since` DATE NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (person_id)
        REFERENCES person(id)
        ON DELETE CASCADE,
  FOREIGN KEY (work_regime_id)
		REFERENCES work_regime(id),
  UNIQUE(person_id, work_regime_id, since)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `person_work_regime`
--


-- --------------------------------------------------------
--
-- Structure de la table `person_certification`
--

CREATE TABLE IF NOT EXISTS `person_certification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) NOT NULL,
  `certification_id` int(11) NOT NULL,
  `date` DATE NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (person_id)
        REFERENCES person(id)
        ON DELETE CASCADE,
  FOREIGN KEY (certification_id)
        REFERENCES certification(id),
  UNIQUE(person_id, certification_id)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `person_certification`
--


-- --------------------------------------------------------
--
-- Structure de la table `absence`
--

CREATE TABLE IF NOT EXISTS `absence` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(3) NOT NULL,
  `denomination` varchar(50) NOT NULL,
  `num_code` varchar(5) NOT NULL,
  `value` int(2) NOT NULL,
  `dimcv` boolean NOT NULL DEFAULT false,
  PRIMARY KEY (`id`),
  UNIQUE(code)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `absence`
--
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("AA","Absence à justifier","67",8,1);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("AD","Bonification en temps (dimanche)","19",8,0);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("AG","Absence - grève","65",8,1);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("AI","Absence injustifiée","68",8,1);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("AM","Absence raison médicale","10",8,1);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("AM1","Absence raison médicale","10",1,1);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("AM2","Absence raison médicale","10",2,1);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("AM3","Absence raison médicale","10",3,1);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("AM4","Absence raison médicale","10",4,1);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("AM5","Absence raison médicale","10",5,1);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("AM6","Absence raison médicale","10",6,1);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("AM7","Absence raison médicale","10",7,1);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("AP","Absence temps partiel","40",8,0);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("AP4","Absence temps partiel","40",4,0);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("CA","Congé d'acceuil","42",8,0);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("CB","Congé de paternité","5",8,0);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("CC","Congé de circonstances","4",8,0);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("CC4","Congé de circonstances","4",4,0);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("CH","Congé compensateur hebdomadaire","21",8,0);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("CH4","Congé compensateur hebdomadaire","21",4,0);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("CM","Compensation mutation","24",8,0);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("CN","Congé annuel normal","7",8,0);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("CN4","Congé annuel normal","7",4,0);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("CV","Congé compensateur variable","22",8,0);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("CV4","Congé compensateur variable","22",4,0);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("D0","Dispence de service raison pers 0%","33",8,0);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("D01","Dispence de service raison pers 0%","33",1,0);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("D02","Dispence de service raison pers 0%","33",2,0);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("D03","Dispence de service raison pers 0%","33",3,0);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("D04","Dispence de service raison pers 0%","33",4,0);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("D05","Dispence de service raison pers 0%","33",5,0);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("D06","Dispence de service raison pers 0%","33",6,0);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("D07","Dispence de service raison pers 0%","33",7,0);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("D1","Dispence de service raison pers 100%","31",8,0);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("D11","Dispence de service raison pers 100%","31",1,0);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("D12","Dispence de service raison pers 100%","31",2,0);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("D13","Dispence de service raison pers 100%","31",3,0);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("D14","Dispence de service raison pers 100%","31",4,0);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("D15","Dispence de service raison pers 100%","31",5,0);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("D16","Dispence de service raison pers 100%","31",6,0);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("D17","Dispence de service raison pers 100%","31",7,0);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("DA","Disp. serv. Juré d'assises","38",8,0);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("DD","Disp. serv. Agent décoré","88",8,0);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("DE","Disp. serv. Organisation fête décoré","89",8,0);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("DG","Disp. serv. Grève","37",8,0);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("DN","Dispence de service normale 100%","87",8,0);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("DN1","Dispence de service normale 100%","87",1,0);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("DN2","Dispence de service normale 100%","87",2,0);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("DN3","Dispence de service normale 100%","87",3,0);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("DN4","Dispence de service normale 100%","87",4,0);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("DN5","Dispence de service normale 100%","87",5,0);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("DN6","Dispence de service normale 100%","87",6,0);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("DN7","Dispence de service normale 100%","87",7,0);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("DP","Disp. serv. Mandat politique","36",8,0);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("DT","Disp. serv. Transurb","39",8,0);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("GI","Grève non reconnue","69",8,0);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("JC","Jour de crédit","30",8,0);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("JC4","Jour de crédit","30",4,0);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("MA","Congé accouchement","0A10",8,0);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("MB","Accident chemin du travail","0B10",8,1);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("MB1","Accident chemin du travail","0B10",1,1);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("MB2","Accident chemin du travail","0B10",2,1);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("MB3","Accident chemin du travail","0B10",3,1);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("MB4","Accident chemin du travail","0B10",4,1);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("MB5","Accident chemin du travail","0B10",5,1);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("MB6","Accident chemin du travail","0B10",6,1);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("MB7","Accident chemin du travail","0B10",7,1);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("MC","Accident de travail","0C10",8,1);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("MC1","Accident de travail","0C10",1,1);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("MC2","Accident de travail","0C10",2,1);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("MC3","Accident de travail","0C10",3,1);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("MC4","Accident de travail","0C10",4,1);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("MC5","Accident de travail","0C10",5,1);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("MC6","Accident de travail","0C10",6,1);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("MC7","Accident de travail","0C10",7,1);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("MD","Congé accouchement/père","0D10",8,0);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("MF","Maladie professionnelle","0F10",8,0);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("MG","Maladie article 27","0G10",8,0);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("MT","Absence médicale sur jour 0 h planifié","16",8,1);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("MT1","Absence médicale sur jour 0 h planifié","16",1,1);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("MT2","Absence médicale sur jour 0 h planifié","16",2,1);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("MT3","Absence médicale sur jour 0 h planifié","16",3,1);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("MT4","Absence médicale sur jour 0 h planifié","16",4,1);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("MT5","Absence médicale sur jour 0 h planifié","16",5,1);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("MT6","Absence médicale sur jour 0 h planifié","16",6,1);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("MT7","Absence médicale sur jour 0 h planifié","16",7,1);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("OZ4","Non occupation-intervalle insuffisant","48",4,0);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("PS","Promotion sociale","34",8,0);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("RH","Repos hebdomadaire","1",8,0);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("RH4","Repos hebdomadaire","1",4,0);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("RR","Repos-jour férié en semaine","2",8,0);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("RR4","Repos-jour férié en semaine","2",4,0);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("SA","Congé soins d'acceuil","6",8,0);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("SI","Congé sans rémun.- raisons impérieuses","57",8,0);
insert into absence (code, denomination, num_code, value, dimcv) VALUES ("SY","Congé syndical","41",8,0);

-- --------------------------------------------------------
--
-- Structure de la table `work_day`
--

CREATE TABLE IF NOT EXISTS `work_day` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) NOT NULL,
  `date` DATE NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (person_id)
        REFERENCES person(id)
        ON DELETE CASCADE,
  UNIQUE(person_id, date)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;


-- --------------------------------------------------------
--
-- Structure de la table `work_hours`
--

CREATE TABLE IF NOT EXISTS `work_hours` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hours` int(2) NOT NULL,
  `night` boolean NOT NULL,
  `supp` boolean NOT NULL,
  `work_day_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (work_day_id)
	REFERENCES work_day(id)
    ON DELETE CASCADE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;


-- --------------------------------------------------------
--
-- Structure de la table `work_day_absence`
--

CREATE TABLE IF NOT EXISTS `work_day_absence` (
  `work_day_id` int(11) NOT NULL,
  `absence_id` int(11) NOT NULL,
  PRIMARY KEY (work_day_id, absence_id),
  FOREIGN KEY (work_day_id)
        REFERENCES work_day(id)
        ON DELETE CASCADE,
  FOREIGN KEY (absence_id)
        REFERENCES absence(id)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;


-- --------------------------------------------------------
--
-- Structure de la table `activity`
--

CREATE TABLE IF NOT EXISTS `activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `denomination` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `activity`
--
insert into activity (denomination) VALUES ("A.S. type F.H.");
insert into activity (denomination) VALUES ("A.S. type P.X.");
insert into activity (denomination) VALUES ("Abords de la voie");
insert into activity (denomination) VALUES ("Agent inapte");
insert into activity (denomination) VALUES ("Ballast");
insert into activity (denomination) VALUES ("Câbles et caniveaux ES");
insert into activity (denomination) VALUES ("Chômage");
insert into activity (denomination) VALUES ("Convoyage train de route");
insert into activity (denomination) VALUES ("Dérangements");
insert into activity (denomination) VALUES ("Entretien camion-grue");
insert into activity (denomination) VALUES ("Entretien camionnette");
insert into activity (denomination) VALUES ("Entretien remorque");
insert into activity (denomination) VALUES ("Formation (cours)");
insert into activity (denomination) VALUES ("Formation (déplac)");
insert into activity (denomination) VALUES ("L.R.S.");
insert into activity (denomination) VALUES ("P.N.");
insert into activity (denomination) VALUES ("Rails courts");
insert into activity (denomination) VALUES ("Traverses en béton");
insert into activity (denomination) VALUES ("Traverses en bois");
insert into activity (denomination) VALUES ("Visite CMR");
insert into activity (denomination) VALUES ("Visite des voies");
insert into activity (denomination) VALUES ("Voies courantes");
insert into activity (denomination) VALUES ("Voies sur O.A.");

-- --------------------------------------------------------
--
-- Structure de la table `troncon`
--

CREATE TABLE IF NOT EXISTS `troncon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `denomination` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `troncon`
--
insert into troncon (denomination) VALUES ("Troncon");
insert into troncon (denomination) VALUES ("Antoing");
insert into troncon (denomination) VALUES ("Blaton");
insert into troncon (denomination) VALUES ("Courtrai-Mouscron");
insert into troncon (denomination) VALUES ("Froyennes-Blandain");
insert into troncon (denomination) VALUES ("Leuze-Tournai");
insert into troncon (denomination) VALUES ("Maubray-Tournai");
insert into troncon (denomination) VALUES ("Mouscron");
insert into troncon (denomination) VALUES ("Mouscron-Froyennes");
insert into troncon (denomination) VALUES ("Mouscron-Tourcoing");
insert into troncon (denomination) VALUES ("Poste 5421");
insert into troncon (denomination) VALUES ("Poste 5422");
insert into troncon (denomination) VALUES ("St-Ghislain-Maubray");
insert into troncon (denomination) VALUES ("Tournai");
insert into troncon (denomination) VALUES ("Tournai et Mouscron");
insert into troncon (denomination) VALUES ("Tournai-Froyennes");

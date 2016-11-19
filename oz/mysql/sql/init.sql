
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
  `value` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE(value)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `certification`
--
insert into certification (id, value) VALUES (101, 'AETT (Agent d’escorte train travaux)');
insert into certification (id, value) VALUES (102, 'GABA (Garde Barrière)');
insert into certification (id, value) VALUES (103, 'Factionnaire');
insert into certification (id, value) VALUES (104, 'ARET (Agent responsable exécution du travail)');

-- --------------------------------------------------------
--
-- Structure de la table `security_function`
--

CREATE TABLE IF NOT EXISTS `security_function` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(25) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE(value)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `security_function`
--
insert into security_function (id, value) VALUES (201, 'Fonction 1');
insert into security_function (id, value) VALUES (202, 'Fonction 2');
insert into security_function (id, value) VALUES (203, 'Fonction 3');

-- --------------------------------------------------------
--
-- Structure de la table `work_regime`
--

CREATE TABLE IF NOT EXISTS `work_regime` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(25) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE(value)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `work_regime`
--
insert into work_regime (id, value) VALUES (301, 'PART_TIME');
insert into work_regime (id, value) VALUES (302, 'FULL_TIME');
insert into work_regime (id, value) VALUES (303, '45_TIME');
insert into work_regime (id, value) VALUES (304, 'HALF_TIME');

-- --------------------------------------------------------
--
-- Structure de la table `brigade`
--

CREATE TABLE IF NOT EXISTS `brigade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(25) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE(value)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `brigade`
--
insert into brigade(id, value) VALUES (401, 'Brigade Piron');
insert into brigade(id, value) VALUES (402, 'Brigade Francis');
insert into brigade(id, value) VALUES (403, 'Brigade Dupont');


-- --------------------------------------------------------
--
-- Structure de la table `grade`
--

CREATE TABLE IF NOT EXISTS `grade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(25) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE(value)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `grade`
--
insert into grade(id, value) VALUES (501, 'SERGENT');
insert into grade(id, value) VALUES (502, 'LIEUTENANT');
insert into grade(id, value) VALUES (503, 'CAPITAINE');


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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `holiday`
--
insert into holiday(id, label, date) VALUES (701, 'Christmas', '2016-12-25');


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
  `grade_id` int(11) NOT NULL,
  `brigade_id` int(11) NOT NULL,
  `security_function_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (grade_id)
        REFERENCES grade(id),
  FOREIGN KEY (brigade_id)
        REFERENCES brigade(id),
  FOREIGN KEY (security_function_id)
        REFERENCES security_function(id),
  UNIQUE(pnr),
  UNIQUE(ssin),
  UNIQUE(badge)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `person`
--
insert into person (id, pnr, firstname, lastname, birthdate, ssin, badge, photo, priv_phone, work_phone, medical_examination_date, rescuer, grade_id, brigade_id, security_function_id) VALUES
	(1, '0001', 'Jean-Louis', 'Bourlet', '1979-10-12', '79101228913', '3784', null, '0486/41.78.96', null, '2016-02-01', true, 501, 401, 201);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `person_work_regime`
--
insert into person_work_regime (person_id, work_regime_id, since) VALUES (1, 301, '2016-01-01');
insert into person_work_regime (person_id, work_regime_id, since) VALUES (1, 302, '2015-01-01');


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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `person_certification`
--
insert into person_certification (person_id, certification_id, date) VALUES (1, 101, '2015-01-01');


-- --------------------------------------------------------
--
-- Structure de la table `labour_input`
--

CREATE TABLE IF NOT EXISTS `labour_input` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) NOT NULL,
  `type` varchar(25) NOT NULL,
  `date` DATE NOT NULL,
  `time_start` TIME NOT NULL,
  `time_end` TIME NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (person_id)
        REFERENCES person(id)
        ON DELETE CASCADE,
  UNIQUE(person_id, type, date)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Contenu de la table `labour_input`
--
insert into labour_input (person_id, type, date, time_start, time_end) VALUES (1, 'NORMAL', '2016-11-18', '07:00', '15:00');
insert into labour_input (person_id, type, date, time_start, time_end) VALUES (1, 'NORMAL', '2016-11-19', '07:00', '15:00');


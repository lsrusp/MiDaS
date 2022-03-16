/* ######################################################### */
/* @authors                                                  */
/* @Lucas Santiago Rodrigues -- lucas_rodrigues@usp.br       */
/* ######################################################### */


/* ######################################################### */
/* Comandos para criar um schema para covidFAPESP            */
/* ######################################################### */
DROP SCHEMA IF EXISTS ComplexData CASCADE;
CREATE SCHEMA ComplexData;


/* ######################################################### */
/* Comandos para ínserir todas as tabelas                    */
/* ######################################################### */
DROP TABLE IF EXISTS ComplexData.dsSpine CASCADE;
CREATE TABLE ComplexData.dsSpine
(
muscle_B0 							double precision[],
muscle_FAT							double precision[],
muscle_FATFRACTION					double precision[],
muscle_T2star						double precision[],
muscle_WATER						double precision[],
vertebrae_B0						double precision[],
vertebrae_FAT						double precision[],
vertebrae_FATFRACTION				double precision[],
vertebrae_T2star					double precision[],
vertebrae_WATER						double precision[]
);

DROP TABLE IF EXISTS ComplexData.brats21 CASCADE;
CREATE TABLE ComplexData.brats21
(
flair 				double precision[],
seg					double precision[],
t1					double precision[],
t1ce				double precision[],
t2					double precision[]
);


\COPY (SELECT * FROM complexData.missing_exp) TO '/home/willian/experiments/imputationsTimes.csv' DELIMITER ',' CSV HEADER NULL '' ENCODING 'UTF-8';

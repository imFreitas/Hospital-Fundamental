ALTER TABLE MEDICO ADD `STATUS` VARCHAR(255);

UPDATE `hospital`.`medico` SET `STATUS` = 'Em_atividade' WHERE (`ID_MEDICO` = '1');
UPDATE `hospital`.`medico` SET `STATUS` = 'Em_atividade' WHERE (`ID_MEDICO` = '2');
UPDATE `hospital`.`medico` SET `STATUS` = 'Em_atividade' WHERE (`ID_MEDICO` = '3');
UPDATE `hospital`.`medico` SET `STATUS` = 'Em_atividade' WHERE (`ID_MEDICO` = '4');
UPDATE `hospital`.`medico` SET `STATUS` = 'Em_atividade' WHERE (`ID_MEDICO` = '5');
UPDATE `hospital`.`medico` SET `STATUS` = 'INATIVO' WHERE (`ID_MEDICO` = '6');
UPDATE `hospital`.`medico` SET `STATUS` = 'INATIVO' WHERE (`ID_MEDICO` = '7');
UPDATE `hospital`.`medico` SET `STATUS` = 'Em_atividade' WHERE (`ID_MEDICO` = '8');
UPDATE `hospital`.`medico` SET `STATUS` = 'Em_atividade' WHERE (`ID_MEDICO` = '9');
UPDATE `hospital`.`medico` SET `STATUS` = 'INATIVO' WHERE (`ID_MEDICO` = '10');
UPDATE `hospital`.`medico` SET `STATUS` = 'Em_atividade' WHERE (`ID_MEDICO` = '13');
UPDATE `hospital`.`medico` SET `STATUS` = 'Em_atividade' WHERE (`ID_MEDICO` = '14');
UPDATE `hospital`.`medico` SET `STATUS` = 'Em_atividade' WHERE (`ID_MEDICO` = '15');

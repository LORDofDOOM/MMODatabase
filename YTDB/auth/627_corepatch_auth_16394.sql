ALTER TABLE `logs` ADD COLUMN `level` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `type`;

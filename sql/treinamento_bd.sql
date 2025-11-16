-- 1) Tabela treinamento (corresponde à entidade Treinamento.java)
USE confisafe_db;

-- Cria a tabela treinamento (se já existir, apaga antes)
DROP TABLE IF EXISTS `treinamento`;

CREATE TABLE `treinamento` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `nome_funcionario` VARCHAR(255) NOT NULL,
  `cargo` VARCHAR(255) NOT NULL,
  `curso` VARCHAR(255) NOT NULL,
  `data_conclusao` DATE NOT NULL,
  `validade` DATE NOT NULL,
  `status` ENUM('VALIDO','VENCE_EM_BREVE','VENCIDO') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Adiciona alguns registros de exemplo
INSERT INTO `treinamento` 
(nome_funcionario, cargo, curso, data_conclusao, validade, status)
VALUES 
('João Silva', 'Operador', 'NR-33', '2024-01-10', '2025-01-10', 'VALIDO'),
('Maria Souza', 'Técnica', 'NR-35', '2023-12-15', '2024-12-15', 'VENCE_EM_BREVE'),
('Carlos Pereira', 'Supervisor', 'NR-10', '2022-11-20', '2023-11-20', 'VENCIDO');



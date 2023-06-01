-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE `pessoa` (
    `id` int  NOT NULL ,
    `name` varchar  NOT NULL ,
    `function` varchar  NOT NULL ,
    `email` varchar  NOT NULL ,
    `cellphone` varchar  NOT NULL ,
    `id_unidade` int  NOT NULL ,
    PRIMARY KEY (
        `id`
    )
);

CREATE TABLE `unidade` (
    `id` int  NOT NULL ,
    `name` varchar  NOT NULL ,
    `address` varchar  NOT NULL ,
    `city` varchar  NOT NULL ,
    `phone` varchar  NOT NULL ,
    PRIMARY KEY (
        `id`
    )
);

ALTER TABLE `pessoa` ADD CONSTRAINT `fk_pessoa_id_unidade` FOREIGN KEY(`id_unidade`)
REFERENCES `unidade` (`id`);


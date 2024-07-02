--
-- Скрипт сгенерирован Devart dbForge Studio 2020 for MySQL, Версия 9.0.567.0
-- Домашняя страница продукта: http://www.devart.com/ru/dbforge/mysql/studio
-- Дата скрипта: 22.06.2023 11:53:33
-- Версия сервера: 5.7.11
-- Версия клиента: 4.1
--

-- 
-- Отключение внешних ключей
-- 
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

-- 
-- Установить режим SQL (SQL mode)
-- 
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 
-- Установка кодировки, с использованием которой клиент будет посылать запросы на сервер
--
SET NAMES 'utf8';

--
-- Установка базы данных по умолчанию
--
USE goodsmanager;

--
-- Удалить представление `view_prodaja`
--
DROP VIEW IF EXISTS view_prodaja CASCADE;

--
-- Удалить таблицу `dogovor_o_prodaje`
--
DROP TABLE IF EXISTS dogovor_o_prodaje;

--
-- Удалить таблицу `car_color`
--
DROP TABLE IF EXISTS car_color;

--
-- Удалить представление `view_operation_goods_list`
--
DROP VIEW IF EXISTS view_operation_goods_list CASCADE;

--
-- Удалить таблицу `op_goods_list`
--
DROP TABLE IF EXISTS op_goods_list;

--
-- Удалить представление `view_goods_operations`
--
DROP VIEW IF EXISTS view_goods_operations CASCADE;

--
-- Удалить таблицу `operations`
--
DROP TABLE IF EXISTS operations;

--
-- Удалить представление `view_customers_list`
--
DROP VIEW IF EXISTS view_customers_list CASCADE;

--
-- Удалить таблицу `customers_list`
--
DROP TABLE IF EXISTS customers_list;

--
-- Удалить представление `view_selector_goods`
--
DROP VIEW IF EXISTS view_selector_goods CASCADE;

--
-- Удалить представление `view_storage`
--
DROP VIEW IF EXISTS view_storage CASCADE;

--
-- Удалить таблицу `storage`
--
DROP TABLE IF EXISTS storage;

--
-- Удалить представление `view_goods_catalog`
--
DROP VIEW IF EXISTS view_goods_catalog CASCADE;

--
-- Удалить таблицу `goods_catalog`
--
DROP TABLE IF EXISTS goods_catalog;

--
-- Удалить таблицу `brand_car`
--
DROP TABLE IF EXISTS brand_car;

--
-- Удалить таблицу `type_body`
--
DROP TABLE IF EXISTS type_body;

--
-- Удалить таблицу `type_engine`
--
DROP TABLE IF EXISTS type_engine;

--
-- Удалить таблицу `type_gear`
--
DROP TABLE IF EXISTS type_gear;

--
-- Удалить таблицу `type_privod`
--
DROP TABLE IF EXISTS type_privod;

--
-- Установка базы данных по умолчанию
--
USE goodsmanager;

--
-- Создать таблицу `type_privod`
--
CREATE TABLE type_privod (
  IDprivod int(11) NOT NULL,
  privodName varchar(30) NOT NULL,
  PRIMARY KEY (IDprivod)
)
ENGINE = INNODB,
AVG_ROW_LENGTH = 5461,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_general_ci;

--
-- Создать индекс `UK_type_privod_privodName` для объекта типа таблица `type_privod`
--
ALTER TABLE type_privod
ADD UNIQUE INDEX UK_type_privod_privodName (privodName);

--
-- Создать таблицу `type_gear`
--
CREATE TABLE type_gear (
  IDgear int(11) NOT NULL AUTO_INCREMENT,
  gearName varchar(30) NOT NULL,
  PRIMARY KEY (IDgear)
)
ENGINE = INNODB,
AUTO_INCREMENT = 5,
AVG_ROW_LENGTH = 4096,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_general_ci;

--
-- Создать индекс `UK_type_gear_gearName` для объекта типа таблица `type_gear`
--
ALTER TABLE type_gear
ADD UNIQUE INDEX UK_type_gear_gearName (gearName);

--
-- Создать таблицу `type_engine`
--
CREATE TABLE type_engine (
  IDte int(11) NOT NULL,
  teName varchar(30) NOT NULL,
  PRIMARY KEY (IDte)
)
ENGINE = INNODB,
AVG_ROW_LENGTH = 8192,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_general_ci;

--
-- Создать индекс `UK_type_engine_teName` для объекта типа таблица `type_engine`
--
ALTER TABLE type_engine
ADD UNIQUE INDEX UK_type_engine_teName (teName);

--
-- Создать таблицу `type_body`
--
CREATE TABLE type_body (
  IDtb int(11) NOT NULL COMMENT 'Код типа товара',
  tgName varchar(30) NOT NULL COMMENT 'Наименование типа товара',
  PRIMARY KEY (IDtb)
)
ENGINE = INNODB,
AVG_ROW_LENGTH = 5461,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_general_ci,
COMMENT = 'Перечень возможных типов товаров';

--
-- Создать индекс `UK_type_goods_tgName` для объекта типа таблица `type_body`
--
ALTER TABLE type_body
ADD UNIQUE INDEX UK_type_goods_tgName (tgName);

--
-- Создать таблицу `brand_car`
--
CREATE TABLE brand_car (
  IDbrand int(11) NOT NULL,
  brandName varchar(20) NOT NULL,
  PRIMARY KEY (IDbrand)
)
ENGINE = INNODB,
AVG_ROW_LENGTH = 481,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_general_ci;

--
-- Создать индекс `UK_model_car_modelName` для объекта типа таблица `brand_car`
--
ALTER TABLE brand_car
ADD UNIQUE INDEX UK_model_car_modelName (brandName);

--
-- Создать таблицу `goods_catalog`
--
CREATE TABLE goods_catalog (
  IDcc int(11) NOT NULL AUTO_INCREMENT COMMENT 'Код авто',
  IDbrand int(11) NOT NULL,
  modelName varchar(50) NOT NULL,
  IDtb int(11) NOT NULL COMMENT 'Код типа кузова',
  IDte int(11) NOT NULL,
  IDgear int(11) NOT NULL,
  IDprivod int(11) NOT NULL,
  ccCost decimal(10, 0) DEFAULT 1 COMMENT 'Стоимость авто',
  PRIMARY KEY (IDcc)
)
ENGINE = INNODB,
AUTO_INCREMENT = 36,
AVG_ROW_LENGTH = 2730,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_general_ci;

--
-- Создать индекс `IDX_goods_catalog` для объекта типа таблица `goods_catalog`
--
ALTER TABLE goods_catalog
ADD INDEX IDX_goods_catalog (IDtb);

--
-- Создать индекс `UK_goods_catalog_modelName` для объекта типа таблица `goods_catalog`
--
ALTER TABLE goods_catalog
ADD UNIQUE INDEX UK_goods_catalog_modelName (modelName);

--
-- Создать внешний ключ
--
ALTER TABLE goods_catalog
ADD CONSTRAINT FK_goods_catalog_IDbrand FOREIGN KEY (IDbrand)
REFERENCES brand_car (IDbrand) ON DELETE NO ACTION;

--
-- Создать внешний ключ
--
ALTER TABLE goods_catalog
ADD CONSTRAINT FK_goods_catalog_IDgear FOREIGN KEY (IDgear)
REFERENCES type_gear (IDgear) ON DELETE NO ACTION;

--
-- Создать внешний ключ
--
ALTER TABLE goods_catalog
ADD CONSTRAINT FK_goods_catalog_IDprivod FOREIGN KEY (IDprivod)
REFERENCES type_privod (IDprivod) ON DELETE NO ACTION;

--
-- Создать внешний ключ
--
ALTER TABLE goods_catalog
ADD CONSTRAINT FK_goods_catalog_IDtb FOREIGN KEY (IDtb)
REFERENCES type_body (IDtb) ON DELETE NO ACTION;

--
-- Создать внешний ключ
--
ALTER TABLE goods_catalog
ADD CONSTRAINT FK_goods_catalog_IDte FOREIGN KEY (IDte)
REFERENCES type_engine (IDte) ON DELETE NO ACTION;

--
-- Создать представление `view_goods_catalog`
--
CREATE
DEFINER = 'root'@'localhost'
VIEW view_goods_catalog
AS
SELECT
  `goods_catalog`.`IDcc` AS `IDcc`,
  `goods_catalog`.`IDbrand` AS `IDbrand`,
  `brand_car`.`brandName` AS `brandName`,
  `goods_catalog`.`modelName` AS `modelName`,
  `type_body`.`tgName` AS `tgName`,
  `type_engine`.`teName` AS `teName`,
  `type_privod`.`privodName` AS `privodName`,
  `type_gear`.`gearName` AS `gearName`,
  `goods_catalog`.`ccCost` AS `ccCost`
FROM (((((`goods_catalog`
  JOIN `brand_car`
    ON ((`goods_catalog`.`IDbrand` = `brand_car`.`IDbrand`)))
  JOIN `type_body`
    ON ((`goods_catalog`.`IDtb` = `type_body`.`IDtb`)))
  JOIN `type_engine`
    ON ((`goods_catalog`.`IDte` = `type_engine`.`IDte`)))
  JOIN `type_gear`
    ON ((`goods_catalog`.`IDgear` = `type_gear`.`IDgear`)))
  JOIN `type_privod`
    ON ((`goods_catalog`.`IDprivod` = `type_privod`.`IDprivod`)));

--
-- Создать таблицу `storage`
--
CREATE TABLE storage (
  IDstorage int(11) NOT NULL AUTO_INCREMENT COMMENT 'Код складской записи',
  IDcc int(11) NOT NULL COMMENT 'Код авто',
  sCount int(11) NOT NULL DEFAULT 0 COMMENT 'Количество товара',
  PRIMARY KEY (IDstorage)
)
ENGINE = INNODB,
AUTO_INCREMENT = 36,
AVG_ROW_LENGTH = 2730,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_general_ci,
COMMENT = 'Складские запасы';

--
-- Создать внешний ключ
--
ALTER TABLE storage
ADD CONSTRAINT FK_storage_IDcc FOREIGN KEY (IDcc)
REFERENCES goods_catalog (IDcc) ON DELETE NO ACTION;

--
-- Создать представление `view_storage`
--
CREATE
DEFINER = 'root'@'localhost'
VIEW view_storage
AS
SELECT
  `storage`.`IDstorage` AS `IDstorage`,
  `storage`.`IDcc` AS `IDcc`,
  `goods_catalog`.`IDbrand` AS `IDbrand`,
  `brand_car`.`brandName` AS `brandName`,
  `goods_catalog`.`modelName` AS `modelName`,
  `storage`.`sCount` AS `sCount`
FROM ((`goods_catalog`
  JOIN `brand_car`
    ON ((`goods_catalog`.`IDbrand` = `brand_car`.`IDbrand`)))
  JOIN `storage`
    ON ((`storage`.`IDcc` = `goods_catalog`.`IDcc`)));

--
-- Создать представление `view_selector_goods`
--
CREATE
DEFINER = 'root'@'localhost'
VIEW view_selector_goods
AS
SELECT
  `goods_catalog`.`IDcc` AS `IDcc`,
  CONCAT(`goods_catalog`.`modelName`, '[', `goods_catalog`.`ccCost`, 'руб].') AS `sNameCost`,
  `storage`.`sCount` AS `sCount`
FROM (`storage`
  JOIN `goods_catalog`
    ON ((`storage`.`IDcc` = `goods_catalog`.`IDcc`)));

--
-- Создать таблицу `customers_list`
--
CREATE TABLE customers_list (
  IDcl int(11) NOT NULL AUTO_INCREMENT COMMENT 'Код поставщика',
  clName varchar(50) NOT NULL COMMENT 'Название поставщика',
  clAddress varchar(100) NOT NULL COMMENT 'Адрес поставщика',
  clPhone varchar(15) NOT NULL COMMENT 'Телефон поставщика',
  clEmail varchar(50) NOT NULL COMMENT 'e-mail поставщика',
  Pasport varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (IDcl)
)
ENGINE = INNODB,
AUTO_INCREMENT = 21,
AVG_ROW_LENGTH = 8192,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_general_ci,
COMMENT = 'Перечень поставщиков';

--
-- Создать индекс `UK_suppliers_catalog_scEmail` для объекта типа таблица `customers_list`
--
ALTER TABLE customers_list
ADD UNIQUE INDEX UK_suppliers_catalog_scEmail (clEmail);

--
-- Создать индекс `UK_suppliers_catalog_scName` для объекта типа таблица `customers_list`
--
ALTER TABLE customers_list
ADD UNIQUE INDEX UK_suppliers_catalog_scName (clName);

--
-- Создать представление `view_customers_list`
--
CREATE
DEFINER = 'root'@'localhost'
VIEW view_customers_list
AS
SELECT
  `customers_list`.`IDcl` AS `IDcl`,
  `customers_list`.`clName` AS `clName`,
  `customers_list`.`clAddress` AS `clAddress`,
  `customers_list`.`clPhone` AS `clPhone`,
  `customers_list`.`clEmail` AS `clEmail`,
  `customers_list`.`Pasport` AS `Pasport`
FROM `customers_list`;

--
-- Создать таблицу `operations`
--
CREATE TABLE operations (
  IDoperation int(11) NOT NULL AUTO_INCREMENT,
  oDateTime datetime NOT NULL COMMENT 'Дата операции',
  PRIMARY KEY (IDoperation)
)
ENGINE = INNODB,
AUTO_INCREMENT = 21,
AVG_ROW_LENGTH = 5461,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_general_ci,
COMMENT = 'Операции с товарами (приход/уход)';

--
-- Создать индекс `IDX_operations_oDateTime` для объекта типа таблица `operations`
--
ALTER TABLE operations
ADD INDEX IDX_operations_oDateTime (oDateTime);

--
-- Создать представление `view_goods_operations`
--
CREATE
DEFINER = 'root'@'localhost'
VIEW view_goods_operations
AS
SELECT
  `operations`.`IDoperation` AS `IDoperation`,
  `operations`.`oDateTime` AS `oDateTime`
FROM `operations`;

--
-- Создать таблицу `op_goods_list`
--
CREATE TABLE op_goods_list (
  IDoperation int(11) NOT NULL COMMENT 'Код операции',
  IDcc int(11) NOT NULL COMMENT 'Код товара',
  ocCount int(11) NOT NULL DEFAULT 1 COMMENT 'Количество авто',
  PRIMARY KEY (IDoperation, IDcc)
)
ENGINE = INNODB,
AVG_ROW_LENGTH = 2730,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_general_ci,
COMMENT = 'Состав товаров в операции';

--
-- Создать внешний ключ
--
ALTER TABLE op_goods_list
ADD CONSTRAINT FK_op_goods_list_IDcc FOREIGN KEY (IDcc)
REFERENCES goods_catalog (IDcc) ON DELETE NO ACTION;

--
-- Создать внешний ключ
--
ALTER TABLE op_goods_list
ADD CONSTRAINT FK_op_goods_list_IDoperations FOREIGN KEY (IDoperation)
REFERENCES operations (IDoperation) ON DELETE NO ACTION;

--
-- Создать представление `view_operation_goods_list`
--
CREATE
DEFINER = 'root'@'localhost'
VIEW view_operation_goods_list
AS
SELECT
  `op_goods_list`.`IDoperation` AS `IDoperation`,
  `goods_catalog`.`IDcc` AS `IDcc`,
  `goods_catalog`.`IDbrand` AS `IDbrand`,
  `brand_car`.`brandName` AS `brandName`,
  `goods_catalog`.`modelName` AS `modelName`,
  `op_goods_list`.`ocCount` AS `ocCount`,
  `goods_catalog`.`ccCost` AS `ccCost`,
  (`op_goods_list`.`ocCount` * `goods_catalog`.`ccCost`) AS `ogcFCost`,
  `operations`.`oDateTime` AS `oDateTime`
FROM (((`goods_catalog`
  JOIN `brand_car`
    ON ((`goods_catalog`.`IDbrand` = `brand_car`.`IDbrand`)))
  JOIN `op_goods_list`
    ON ((`op_goods_list`.`IDcc` = `goods_catalog`.`IDcc`)))
  JOIN `operations`
    ON ((`op_goods_list`.`IDoperation` = `operations`.`IDoperation`)));

--
-- Создать таблицу `car_color`
--
CREATE TABLE car_color (
  IDcolor int(11) NOT NULL,
  colorName varchar(20) NOT NULL,
  PRIMARY KEY (IDcolor)
)
ENGINE = INNODB,
AVG_ROW_LENGTH = 1489,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_general_ci;

--
-- Создать индекс `UK_car_color_colorName` для объекта типа таблица `car_color`
--
ALTER TABLE car_color
ADD UNIQUE INDEX UK_car_color_colorName (colorName);

--
-- Создать таблицу `dogovor_o_prodaje`
--
CREATE TABLE dogovor_o_prodaje (
  IDdogovor int(11) NOT NULL AUTO_INCREMENT,
  IDcc int(11) NOT NULL,
  IDcl int(11) NOT NULL,
  IDcolor int(11) NOT NULL,
  Win_number varchar(17) NOT NULL,
  Date_buy datetime DEFAULT NULL,
  PRIMARY KEY (IDdogovor)
)
ENGINE = INNODB,
AUTO_INCREMENT = 21,
AVG_ROW_LENGTH = 1638,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_general_ci;

--
-- Создать индекс `UK_dogovor_o_prodaje_Win_number` для объекта типа таблица `dogovor_o_prodaje`
--
ALTER TABLE dogovor_o_prodaje
ADD UNIQUE INDEX UK_dogovor_o_prodaje_Win_number (Win_number);

--
-- Создать внешний ключ
--
ALTER TABLE dogovor_o_prodaje
ADD CONSTRAINT FK_dogovor_o_pokupke_IDcolor FOREIGN KEY (IDcolor)
REFERENCES car_color (IDcolor) ON DELETE NO ACTION;

--
-- Создать внешний ключ
--
ALTER TABLE dogovor_o_prodaje
ADD CONSTRAINT FK_dogovor_o_prodaje_IDcc FOREIGN KEY (IDcc)
REFERENCES goods_catalog (IDcc) ON DELETE NO ACTION;

--
-- Создать внешний ключ
--
ALTER TABLE dogovor_o_prodaje
ADD CONSTRAINT FK_dogovor_o_prodaje_IDcl FOREIGN KEY (IDcl)
REFERENCES customers_list (IDcl) ON DELETE NO ACTION;

--
-- Создать представление `view_prodaja`
--
CREATE
DEFINER = 'root'@'localhost'
VIEW view_prodaja
AS
SELECT
  `dogovor_o_prodaje`.`IDdogovor` AS `IDdogovor`,
  `goods_catalog`.`IDcc` AS `IDcc`,
  `goods_catalog`.`IDbrand` AS `IDbrand`,
  `brand_car`.`brandName` AS `brandName`,
  `goods_catalog`.`modelName` AS `modelName`,
  `type_body`.`tgName` AS `tgName`,
  `type_engine`.`teName` AS `teName`,
  `type_gear`.`gearName` AS `gearName`,
  `type_privod`.`privodName` AS `privodName`,
  `car_color`.`colorName` AS `colorName`,
  `dogovor_o_prodaje`.`Win_number` AS `Win_number`,
  `dogovor_o_prodaje`.`Date_buy` AS `Date_buy`,
  `customers_list`.`clAddress` AS `clAddress`,
  `customers_list`.`clName` AS `clName`,
  `customers_list`.`Pasport` AS `Pasport`,
  `goods_catalog`.`ccCost` AS `ccCost`
FROM ((((((((`dogovor_o_prodaje`
  JOIN `goods_catalog`
    ON ((`dogovor_o_prodaje`.`IDcc` = `goods_catalog`.`IDcc`)))
  JOIN `customers_list`
    ON ((`dogovor_o_prodaje`.`IDcl` = `customers_list`.`IDcl`)))
  JOIN `car_color`
    ON ((`dogovor_o_prodaje`.`IDcolor` = `car_color`.`IDcolor`)))
  JOIN `brand_car`
    ON ((`goods_catalog`.`IDbrand` = `brand_car`.`IDbrand`)))
  JOIN `type_body`
    ON ((`goods_catalog`.`IDtb` = `type_body`.`IDtb`)))
  JOIN `type_engine`
    ON ((`goods_catalog`.`IDte` = `type_engine`.`IDte`)))
  JOIN `type_gear`
    ON ((`goods_catalog`.`IDgear` = `type_gear`.`IDgear`)))
  JOIN `type_privod`
    ON ((`goods_catalog`.`IDprivod` = `type_privod`.`IDprivod`)));

-- 
-- Вывод данных для таблицы type_privod
--
INSERT INTO type_privod VALUES
(3, 'Задний'),
(1, 'Передний'),
(2, 'Полный');

-- 
-- Вывод данных для таблицы type_gear
--
INSERT INTO type_gear VALUES
(1, 'Автомат'),
(3, 'Вариатор'),
(2, 'Механика'),
(4, 'Робот');

-- 
-- Вывод данных для таблицы type_engine
--
INSERT INTO type_engine VALUES
(1, 'бензиновый'),
(3, 'гибридный'),
(2, 'дизельный');

-- 
-- Вывод данных для таблицы type_body
--
INSERT INTO type_body VALUES
(3, 'Внедорожник'),
(4, 'Минивэн'),
(5, 'Пикап'),
(1, 'Седан'),
(2, 'Хетчбек');

-- 
-- Вывод данных для таблицы brand_car
--
INSERT INTO brand_car VALUES
(2, 'bmw'),
(6, 'honda'),
(7, 'hyundai'),
(8, 'kia'),
(9, 'Lada'),
(5, 'mazda'),
(4, 'mercedes-benz'),
(10, 'Renault'),
(1, 'toyota'),
(3, 'volkswagen');

-- 
-- Вывод данных для таблицы operations
--
INSERT INTO operations VALUES
(1, '2022-09-06 16:54:25'),
(2, '2022-09-07 09:51:43'),
(3, '2022-09-08 18:12:56'),
(7, '2022-12-28 00:00:00'),
(15, '2023-01-13 00:00:00'),
(14, '2023-01-18 00:00:00'),
(16, '2023-01-20 00:00:00'),
(4, '2023-01-21 00:00:00'),
(19, '2023-01-22 00:00:00'),
(12, '2023-01-26 00:00:00'),
(11, '2023-01-27 00:00:00'),
(18, '2023-02-03 00:00:00'),
(17, '2023-02-04 00:00:00'),
(9, '2023-02-05 00:00:00'),
(13, '2023-02-05 00:00:00'),
(8, '2023-02-07 00:00:00'),
(10, '2023-02-18 00:00:00'),
(20, '2023-02-18 00:00:00'),
(5, '2023-03-02 00:00:00'),
(6, '2023-05-28 00:00:00');

-- 
-- Вывод данных для таблицы goods_catalog
--
INSERT INTO goods_catalog VALUES
(1, 1, 'corolla', 2, 1, 3, 3, 15000000),
(2, 1, 'camry', 2, 1, 4, 3, 3100000),
(3, 1, 'rav4', 3, 3, 4, 1, 3000000),
(4, 2, 'x5', 3, 2, 4, 2, 10000000),
(5, 2, 'x6', 3, 1, 3, 2, 12500000),
(6, 2, '5-series', 1, 3, 1, 3, 6200000),
(7, 3, 'polo', 1, 2, 4, 1, 1500000),
(8, 3, 'tiguan', 3, 2, 2, 2, 3000000),
(9, 3, 'touareg', 3, 2, 2, 1, 5200000),
(10, 1, 'hillux', 5, 3, 1, 2, 4900000),
(11, 4, 'v-class', 4, 2, 1, 2, 10700000),
(12, 4, 'e-class', 1, 2, 2, 2, 7000000),
(13, 4, 'gls-class', 3, 1, 3, 2, 14700000),
(14, 5, 'mazda6', 2, 1, 4, 3, 2700000),
(15, 5, 'cx-5', 3, 2, 4, 1, 3000000),
(16, 5, 'cx-4', 3, 1, 1, 1, 2500000),
(17, 6, 'cr-v', 3, 2, 3, 2, 4500000),
(18, 6, 'accord', 1, 3, 1, 3, 3650000),
(19, 6, 'civic', 2, 3, 3, 3, 2700000),
(20, 7, 'solaris', 2, 1, 2, 1, 1350000),
(21, 7, 'santa fe', 3, 1, 1, 2, 3900000),
(22, 7, 'tucson', 3, 1, 2, 2, 2700000),
(23, 8, 'rio', 1, 1, 2, 1, 1350000),
(24, 8, 'sorento', 3, 1, 1, 2, 3710000),
(25, 8, 'sportage', 3, 1, 1, 1, 2730000),
(26, 9, 'granta', 1, 1, 2, 1, 1000000),
(27, 9, 'vesta', 1, 1, 2, 1, 1250000),
(28, 9, 'niva legend', 3, 2, 2, 2, 790000),
(29, 10, 'logan', 1, 1, 2, 1, 1320000),
(30, 10, 'kaptur', 3, 1, 2, 1, 2020000),
(31, 10, 'duster', 3, 2, 2, 2, 2130000),
(32, 7, 'staria', 4, 1, 1, 1, 4900000),
(33, 1, 'tundra', 5, 1, 1, 2, 9500000),
(34, 1, 'tacoma', 5, 1, 1, 3, 5800000),
(35, 3, 'caravelle', 4, 2, 2, 1, 6600000);

-- 
-- Вывод данных для таблицы customers_list
--
INSERT INTO customers_list VALUES
(1, 'Фадеев Евгений Арсеньевич', 'Челябинская область, город Сергиев Посад, ул. Балканская, 06', '7416702629', 'karley52@yahoo.com', '0423456784'),
(2, 'Муравьёв Артур Макарович', 'Астраханская область, город Наро-Фоминск, проезд Чехова', '7322121303', 'elvis17@lynch.com', '0456556789'),
(3, 'Кабанов Ермак Дмитриевич', 'Тюменская область, город Одинцово, пр. Ленина', '7433115560', 'tnitzsche@yahoo.com', '0456734567'),
(4, 'Комаров Аскольд Рубенович', 'Читинская область, город Подольск, пер. Гагарина', '7957627899', 'pkautzer@hotmail.com', '0497579456'),
(5, 'Медведев Ипполит Ярославович', 'Тверская область, город Ногинск, спуск Бухарестская', '7930252383', 'qlebsack@dickinson.com', '0419636075'),
(6, 'Игнатов Кондрат Игнатьевич', 'Калужская область, город Серебряные Пруды, пер. Гоголя, 92', '7170492058', 'genesis50@yahoo.com', '0498065675'),
(7, 'Трофимов Любовь Лукьевич', 'Тамбовская область, город Щёлково, пр. Сталина', '7175948728', 'darwin.waelchi@heidenreich.com', '0496475795'),
(8, 'Носков Рудольф Антонинович', 'Пензенская область, город Чехов, въезд Гоголя, 28', '7080005244', 'zachary.barton@heaney.com', '0456794679'),
(9, 'Абрамов Герман Павлович', 'Рязанская область, город Зарайск, проезд Космонавтов, 91', '7163112318', 'trycia.dare@runolfsson.net', '0496575874'),
(10, 'Устинов Евгений Русланович', 'Иркутская область, город Дорохово, пр. Космонавтов, 72', '7200894776', 'khill@gmail.com', '0495753756'),
(11, 'Павлов Вячеслав Мартынович', 'Воронежская область, город Дорохово, спуск Чехова, 93', '7183388319', 'conroy.rodrick@yahoo.com', '0497958687'),
(12, 'Муравьёв Аскольд Геннадьевич', 'Пензенская область, город Ногинск, спуск Космонавтов, 18', '7564746725', 'willie05@effertz.com', '0487954680'),
(13, 'Ситников Альфред Юрьевич', 'Оренбургская область, город Талдом, спуск 1905 года, 07', '7212842731', 'zstehr@schaden.biz', '0495467486'),
(14, 'Фадеев Гавриил Натанович', 'Белгородская область, город Серебряные Пруды, бульвар Чехова, 99', '7327655596', 'melissa.koelpin@gmail.com', '0496478486'),
(15, 'Крылов Модест Вениаминович', 'Архангельская область, город Луховицы, бульвар Бухарестская, 62', '7621095677', 'umiller@murray.com', '0495548658'),
(16, 'Меркушев Мартин Михайлович', 'Псковская область, город Шатура, въезд Сталина, 73', '7403788952', 'johnston.vince@sporer.com', '0498647897'),
(17, 'Марков Прохор Никитевич', 'Костромская область, город Шаховская, проезд Ленина, 00', '7453129779', 'dedric67@kilback.com', '0495868475'),
(18, 'Шашков Овидий Богданович', 'Кировская область, город Балашиха, проезд Чехова, 67', '7267367934', 'qeffertz@jacobi.com', '0485945747'),
(19, 'Пахомов Лукьян Николаевич', 'Иркутская область, город Дмитров, бульвар Косиора, 03', '7597965851', 'dannie.hessel@gmail.com', '0496739075'),
(20, 'Фомин Игнатий Фролович', 'Калининградская область, город Можайск, въезд Косиора, 47', '7666089066', 'samanta44@gmail.com', '0494547673');

-- 
-- Вывод данных для таблицы car_color
--
INSERT INTO car_color VALUES
(2, 'Бежевый'),
(1, 'Белый'),
(8, 'Желтый'),
(11, 'Зеленый'),
(6, 'Коричневый'),
(10, 'Красный'),
(9, 'Оранжевый'),
(5, 'Серебряный'),
(4, 'Серый'),
(7, 'Синий'),
(3, 'Черный');

-- 
-- Вывод данных для таблицы storage
--
INSERT INTO storage VALUES
(1, 1, 25),
(2, 2, 18),
(3, 3, 29),
(4, 4, 21),
(5, 5, 23),
(6, 6, 27),
(7, 7, 24),
(8, 8, 16),
(9, 9, 18),
(10, 10, 14),
(11, 11, 20),
(12, 12, 18),
(13, 13, 17),
(14, 14, 19),
(15, 15, 29),
(16, 16, 23),
(17, 17, 25),
(18, 18, 18),
(19, 19, 20),
(20, 20, 16),
(21, 21, 25),
(22, 22, 21),
(23, 23, 13),
(24, 24, 12),
(25, 25, 11),
(26, 26, 19),
(27, 27, 11),
(28, 28, 13),
(29, 29, 9),
(30, 30, 14),
(31, 31, 13),
(32, 32, 8),
(33, 33, 14),
(34, 34, 31),
(35, 35, 19);

-- 
-- Вывод данных для таблицы op_goods_list
--
INSERT INTO op_goods_list VALUES
(1, 1, 5),
(1, 2, 6),
(2, 2, 6),
(2, 13, 12),
(3, 3, 7),
(3, 12, 10),
(4, 4, 5),
(4, 14, 7),
(4, 22, 6),
(5, 6, 5),
(5, 16, 12),
(6, 6, 7),
(6, 17, 6),
(6, 35, 5),
(7, 7, 5),
(7, 32, 5),
(8, 8, 7),
(8, 18, 5),
(8, 28, 5),
(9, 19, 6),
(10, 29, 5),
(11, 10, 11),
(11, 20, 6),
(12, 11, 8),
(12, 15, 5),
(13, 4, 5),
(14, 7, 7),
(14, 26, 7),
(15, 5, 6),
(15, 9, 8),
(16, 11, 6),
(16, 25, 10),
(17, 3, 5),
(17, 5, 7),
(18, 9, 5),
(18, 23, 5),
(19, 30, 7),
(19, 31, 8),
(20, 14, 5),
(20, 27, 5);

-- 
-- Вывод данных для таблицы dogovor_o_prodaje
--
INSERT INTO dogovor_o_prodaje VALUES
(1, 6, 1, 2, '1GNEK13Z15R120035', '2023-06-10 00:00:00'),
(2, 4, 2, 6, '3GTU2VEC8EG212258', '2023-06-13 00:00:00'),
(3, 10, 3, 1, '5FNRL387X4B022371', '2023-06-10 00:00:00'),
(4, 12, 4, 5, 'WDDLJ7GB0FA029645', '2023-06-10 00:00:00'),
(5, 14, 5, 3, '1FMCU9JD7AKD96321', '2023-06-10 00:00:00'),
(6, 20, 6, 4, '3VWJB7AT4DM378215', '2023-06-11 00:00:00'),
(7, 17, 7, 11, '2C4RDGBGXDR657703', '2023-06-12 00:00:00'),
(8, 25, 8, 7, '1FT7W2BT9BEB12788', '2023-06-12 00:00:00'),
(9, 18, 9, 10, 'JTHCE96S470010902', '2023-06-10 00:00:00'),
(10, 13, 10, 9, 'JM1BK32F981862921', '2023-06-13 00:00:00'),
(11, 2, 11, 9, '3VWCM31Y25M363610', '2023-06-10 00:00:00'),
(12, 1, 12, 1, 'JHLRD88859C020595', '2023-06-13 00:00:00'),
(13, 3, 13, 3, '1GNSKJKJ6FR295279', '2023-06-11 00:00:00'),
(14, 5, 14, 2, 'WBXPA93455WC19774', '2023-06-11 00:00:00'),
(15, 7, 15, 8, 'JM1BK123X41234567', '2023-06-11 00:00:00'),
(16, 8, 16, 7, 'WBAEE1419J2567297', '2023-06-11 00:00:00'),
(17, 9, 17, 5, '1GCEC14XX3Z341157', '2023-06-12 00:00:00'),
(18, 11, 18, 10, '1FTPW14V28FA13086', '2023-06-12 00:00:00'),
(19, 15, 19, 11, '1FAFP55U91A263449', '2023-06-12 00:00:00'),
(20, 30, 20, 6, '3D7TT2CT2BG143820', '2023-06-13 00:00:00');

--
-- Установка базы данных по умолчанию
--
USE goodsmanager;

--
-- Удалить триггер `tr_add_goods_in_catalog`
--
DROP TRIGGER IF EXISTS tr_add_goods_in_catalog;

--
-- Удалить триггер `tr_op_goods_list_add`
--
DROP TRIGGER IF EXISTS tr_op_goods_list_add;

--
-- Удалить триггер `tr_op_goods_list_edit`
--
DROP TRIGGER IF EXISTS tr_op_goods_list_edit;

--
-- Удалить триггер `tr_op_goods_list_remove`
--
DROP TRIGGER IF EXISTS tr_op_goods_list_remove;

--
-- Удалить триггер `tr_remove_goods_from_catalog`
--
DROP TRIGGER IF EXISTS tr_remove_goods_from_catalog;

--
-- Удалить триггер `tr_pole`
--
DROP TRIGGER IF EXISTS tr_pole;

--
-- Удалить триггер `tr_price`
--
DROP TRIGGER IF EXISTS tr_price;

--
-- Установка базы данных по умолчанию
--
USE goodsmanager;

DELIMITER $$

--
-- Создать триггер `tr_price`
--
CREATE
DEFINER = 'root'@'localhost'
TRIGGER tr_price
BEFORE INSERT
ON goods_catalog
FOR EACH ROW
BEGIN
  IF NEW.ccCost = 0 THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Cтоимость автомобиля не должна быть равна 0!';
  END IF;
END
$$

--
-- Создать триггер `tr_pole`
--
CREATE
DEFINER = 'root'@'localhost'
TRIGGER tr_pole
BEFORE INSERT
ON goods_catalog
FOR EACH ROW
FOLLOWS tr_price
BEGIN
  IF NEW.modelName IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Модель автомобиля не может быть пустой!';
  END IF;
END
$$

--
-- Создать триггер `tr_remove_goods_from_catalog`
--
CREATE
DEFINER = 'root'@'localhost'
TRIGGER tr_remove_goods_from_catalog
BEFORE DELETE
ON goods_catalog
FOR EACH ROW
BEGIN
  DELETE
    FROM storage
  WHERE (IDcc = OLD.IDcc)
    AND (sCount = 0);
END
$$

--
-- Создать триггер `tr_op_goods_list_remove`
--
CREATE
DEFINER = 'root'@'localhost'
TRIGGER tr_op_goods_list_remove
AFTER DELETE
ON op_goods_list
FOR EACH ROW
BEGIN
  UPDATE storage s
  SET s.sCount = s.sCount + OLD.ocCount
  WHERE s.IDcc = OLD.IDcc;
END
$$

--
-- Создать триггер `tr_op_goods_list_edit`
--
CREATE
DEFINER = 'root'@'localhost'
TRIGGER tr_op_goods_list_edit
AFTER UPDATE
ON op_goods_list
FOR EACH ROW
BEGIN
  UPDATE storage s
  SET s.sCount = s.sCount - OLD.ocCount
  WHERE s.IDcc = OLD.IDcc;
  UPDATE storage s
  SET s.sCount = s.sCount + NEW.ocCount
  WHERE s.IDcc = NEW.IDcc;
END
$$

--
-- Создать триггер `tr_op_goods_list_add`
--
CREATE
DEFINER = 'root'@'localhost'
TRIGGER tr_op_goods_list_add
AFTER INSERT
ON op_goods_list
FOR EACH ROW
BEGIN
  UPDATE storage s
  SET sCount = sCount + NEW.ocCount
  WHERE IDcc = NEW.IDcc;
END
$$

--
-- Создать триггер `tr_add_goods_in_catalog`
--
CREATE
DEFINER = 'root'@'localhost'
TRIGGER tr_add_goods_in_catalog
AFTER INSERT
ON goods_catalog
FOR EACH ROW
BEGIN
  INSERT INTO storage
  SET IDcc = NEW.IDcc,
      sCount = 0;
END
$$

DELIMITER ;

-- 
-- Восстановить предыдущий режим SQL (SQL mode)
--
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

-- 
-- Включение внешних ключей
-- 
/*!40014 SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS */;
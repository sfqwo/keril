--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1 (Debian 14.1-1.pgdg110+1)
-- Dumped by pg_dump version 14.1 (Debian 14.1-1.pgdg110+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: brand; Type: TABLE DATA; Schema: db-store; Owner: postgres
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: postgres; Owner: postgres
--

INSERT INTO postgres.users VALUES (2, 'user123', '$2b$05$o/IYuAw6BwPPHbf3vhf1OO4CRamS34QOnS0yPwTCWHyDRs4zTo.tW', 'USER', '2021-12-02 15:18:21.853+00', '2021-12-02 15:18:21.853+00');
INSERT INTO postgres.users VALUES (4, 'admin-site', '$2b$05$yUNQJYkJTN7GzbF4wS50QO9YRbVRQPByIEZH/Cww7JVyvk2gJrX6S', 'ADMIN', '2021-12-02 15:22:15.849+00', '2021-12-02 15:22:15.849+00');


--
-- Data for Name: baskets; Type: TABLE DATA; Schema: postgres; Owner: postgres
--

INSERT INTO postgres.baskets VALUES (1, '2021-12-02 15:18:21.857+00', '2021-12-02 15:18:21.857+00', 2);
INSERT INTO postgres.baskets VALUES (2, '2021-12-02 15:21:35.625+00', '2021-12-02 15:21:35.625+00', NULL);
INSERT INTO postgres.baskets VALUES (3, '2021-12-02 15:22:15.877+00', '2021-12-02 15:22:15.877+00', 4);


--
-- Data for Name: brands; Type: TABLE DATA; Schema: postgres; Owner: postgres
--

INSERT INTO postgres.brands VALUES (1, 'DJI', '2021-12-03 06:35:07.543+00', '2021-12-03 06:35:07.543+00');
INSERT INTO postgres.brands VALUES (2, 'SOUTH', '2021-12-03 08:43:24.977+00', '2021-12-03 08:43:24.977+00');
INSERT INTO postgres.brands VALUES (3, 'Intellab', '2021-12-03 08:54:18.444+00', '2021-12-03 08:54:18.444+00');


--
-- Data for Name: types; Type: TABLE DATA; Schema: postgres; Owner: postgres
--

INSERT INTO postgres.types VALUES (1, 'Операторы и промышленные', '2021-12-03 06:33:45.798+00', '2021-12-03 06:33:45.798+00');
INSERT INTO postgres.types VALUES (2, 'Операторы и хобби', '2021-12-03 06:34:06.361+00', '2021-12-03 06:34:06.361+00');
INSERT INTO postgres.types VALUES (3, 'Промышленные', '2021-12-03 06:34:19.48+00', '2021-12-03 06:34:19.48+00');
INSERT INTO postgres.types VALUES (4, 'Хобби', '2021-12-03 06:34:42.896+00', '2021-12-03 06:34:42.896+00');


--
-- Data for Name: devices; Type: TABLE DATA; Schema: postgres; Owner: postgres
--

INSERT INTO postgres.devices VALUES (1, 'Квадрокоптер DJI Mini 2 MT2PD', 45990, 1, '86298cd0-c052-4704-8b04-5bb9f127fab1.jpg', '2021-12-03 06:40:06.18+00', '2021-12-03 06:40:06.18+00', 2, 1);
INSERT INTO postgres.devices VALUES (8, 'DJI Matrice 100', 305900, 2, 'e4d52c8d-1744-44e1-939d-71e6cec30014.jpg', '2021-12-03 07:53:14.107+00', '2021-12-03 07:53:14.107+00', 2, 1);
INSERT INTO postgres.devices VALUES (9, 'DJI Tello', 9290, 2, '3bc2530c-36a5-40a4-a5f1-f72a4be91897.jpg', '2021-12-03 07:59:26.756+00', '2021-12-03 07:59:26.756+00', 4, 1);
INSERT INTO postgres.devices VALUES (10, 'DJI Agras MG-1', 843190, 3, 'ff03d632-ff0e-4527-86fc-d5e46ca3159a.jpg', '2021-12-03 08:25:40.784+00', '2021-12-03 08:25:40.784+00', 1, 1);
INSERT INTO postgres.devices VALUES (11, 'Квадрокоптер DJI Matrice 210 RTK', 1045390, 4, '249107a3-b2ba-4b8d-a374-ad8bc01d1ea8.jpg', '2021-12-03 08:30:24.54+00', '2021-12-03 08:30:24.54+00', 1, 1);
INSERT INTO postgres.devices VALUES (12, 'Квадрокоптер DJI Matrice 200', 410490, 4, 'd217803e-d687-429a-8536-cc1647500e16.jpg', '2021-12-03 08:38:42.918+00', '2021-12-03 08:38:42.918+00', 3, 1);
INSERT INTO postgres.devices VALUES (13, 'SkyCruiser A22/A22-Plus', 2512760, 3, '25d97b63-7ec1-4408-bd59-2089d8b1c0c2.jpg', '2021-12-03 08:52:00.411+00', '2021-12-03 08:52:00.411+00', 1, 2);
INSERT INTO postgres.devices VALUES (14, 'Дрон для тушения пожаров в высотных зданиях', 2690000, 4, '170ab028-2bcf-4dab-b5b1-2f8c18e48156.jpg', '2021-12-03 08:59:46.079+00', '2021-12-03 08:59:46.079+00', 3, 3);


--
-- Data for Name: basket_devices; Type: TABLE DATA; Schema: postgres; Owner: postgres
--

INSERT INTO postgres.basket_devices VALUES (1, '2021-12-03 08:01:58.547+00', '2021-12-03 08:01:58.547+00', 1, 1);


--
-- Data for Name: device_infos; Type: TABLE DATA; Schema: postgres; Owner: postgres
--

INSERT INTO postgres.device_infos VALUES (1, 'Количество моторов', '4', '2021-12-03 06:40:06.218+00', '2021-12-03 06:40:06.218+00', 1);
INSERT INTO postgres.device_infos VALUES (2, 'Количество пропеллеров', '4', '2021-12-03 06:40:06.218+00', '2021-12-03 06:40:06.218+00', 1);
INSERT INTO postgres.device_infos VALUES (3, 'Максимальная горизонтальная скорость', '16 метр/сек', '2021-12-03 06:40:06.218+00', '2021-12-03 06:40:06.218+00', 1);
INSERT INTO postgres.device_infos VALUES (4, 'Максимальная вертикальная скорость', '5 метр/с', '2021-12-03 06:40:06.218+00', '2021-12-03 06:40:06.218+00', 1);
INSERT INTO postgres.device_infos VALUES (5, 'Управление с мобильных устройств', 'поддерживается', '2021-12-03 06:40:06.218+00', '2021-12-03 06:40:06.218+00', 1);
INSERT INTO postgres.device_infos VALUES (6, 'Поддержка ОС', 'IOS и Android', '2021-12-03 06:40:06.218+00', '2021-12-03 06:40:06.218+00', 1);
INSERT INTO postgres.device_infos VALUES (7, 'Магнитометр', 'есть', '2021-12-03 06:40:06.218+00', '2021-12-03 06:40:06.218+00', 1);
INSERT INTO postgres.device_infos VALUES (8, 'Поддержка GPS', 'есть', '2021-12-03 06:40:06.218+00', '2021-12-03 06:40:06.218+00', 1);
INSERT INTO postgres.device_infos VALUES (9, 'Поддержка Wi-Fi', 'есть', '2021-12-03 06:40:06.219+00', '2021-12-03 06:40:06.219+00', 1);
INSERT INTO postgres.device_infos VALUES (10, 'Поддержка стандартов Wi-Fi', '802.11 b/g/n', '2021-12-03 06:40:06.219+00', '2021-12-03 06:40:06.219+00', 1);
INSERT INTO postgres.device_infos VALUES (11, 'Диапазон рабочих температур', 'От 0 C, до 40 C', '2021-12-03 06:40:06.219+00', '2021-12-03 06:40:06.219+00', 1);
INSERT INTO postgres.device_infos VALUES (13, 'Производство', 'Заводское DJI', '2021-12-03 07:53:14.141+00', '2021-12-03 07:53:14.141+00', 8);
INSERT INTO postgres.device_infos VALUES (14, 'Категория', 'Операторы и хобби', '2021-12-03 07:53:14.141+00', '2021-12-03 07:53:14.141+00', 8);
INSERT INTO postgres.device_infos VALUES (15, 'Готовность к полету "из коробки"', 'Нет', '2021-12-03 07:53:14.141+00', '2021-12-03 07:53:14.141+00', 8);
INSERT INTO postgres.device_infos VALUES (16, 'Оператор', '1', '2021-12-03 07:53:14.141+00', '2021-12-03 07:53:14.141+00', 8);
INSERT INTO postgres.device_infos VALUES (17, 'Летные характеристики', 'Отличные', '2021-12-03 07:53:14.141+00', '2021-12-03 07:53:14.141+00', 8);
INSERT INTO postgres.device_infos VALUES (18, 'Максимальная скорость', '79 км/ч', '2021-12-03 07:53:14.141+00', '2021-12-03 07:53:14.141+00', 8);
INSERT INTO postgres.device_infos VALUES (19, 'Скорость ветра', '8-10 м/с', '2021-12-03 07:53:14.141+00', '2021-12-03 07:53:14.141+00', 8);
INSERT INTO postgres.device_infos VALUES (20, 'Отсеки для навесного оборудования', 'есть', '2021-12-03 07:53:14.141+00', '2021-12-03 07:53:14.141+00', 8);
INSERT INTO postgres.device_infos VALUES (21, 'Универсальные порты питания и связи', 'есть', '2021-12-03 07:53:14.141+00', '2021-12-03 07:53:14.141+00', 8);
INSERT INTO postgres.device_infos VALUES (22, 'Двойные батарейные отсеки', 'есть', '2021-12-03 07:53:14.141+00', '2021-12-03 07:53:14.141+00', 8);
INSERT INTO postgres.device_infos VALUES (23, 'Настраиваемое крепление и балансировка', 'есть', '2021-12-03 07:53:14.141+00', '2021-12-03 07:53:14.141+00', 8);
INSERT INTO postgres.device_infos VALUES (24, 'Регулировка угла лучей', 'есть', '2021-12-03 07:53:14.141+00', '2021-12-03 07:53:14.141+00', 8);
INSERT INTO postgres.device_infos VALUES (25, 'Производство', 'Заводское DJI', '2021-12-03 07:59:26.825+00', '2021-12-03 07:59:26.825+00', 9);
INSERT INTO postgres.device_infos VALUES (26, 'Категория', 'Хобби', '2021-12-03 07:59:26.825+00', '2021-12-03 07:59:26.825+00', 9);
INSERT INTO postgres.device_infos VALUES (27, 'Готовность к полету "из коробки"', 'Да', '2021-12-03 07:59:26.826+00', '2021-12-03 07:59:26.826+00', 9);
INSERT INTO postgres.device_infos VALUES (28, 'Оператор', '1', '2021-12-03 07:59:26.826+00', '2021-12-03 07:59:26.826+00', 9);
INSERT INTO postgres.device_infos VALUES (29, 'Летные характеристики', 'Отличные', '2021-12-03 07:59:26.826+00', '2021-12-03 07:59:26.826+00', 9);
INSERT INTO postgres.device_infos VALUES (30, 'Максимальная скорость', '50 км/ч', '2021-12-03 07:59:26.826+00', '2021-12-03 07:59:26.826+00', 9);
INSERT INTO postgres.device_infos VALUES (31, 'Скорость ветра', '8-10 м/с', '2021-12-03 07:59:26.826+00', '2021-12-03 07:59:26.826+00', 9);
INSERT INTO postgres.device_infos VALUES (32, 'Запись скоординированных коротких видеороликов', 'есть', '2021-12-03 07:59:26.826+00', '2021-12-03 07:59:26.826+00', 9);
INSERT INTO postgres.device_infos VALUES (33, 'Последовательная съемка "чистых" снимков с электронной стабилизацией', 'есть', '2021-12-03 07:59:26.826+00', '2021-12-03 07:59:26.826+00', 9);
INSERT INTO postgres.device_infos VALUES (34, 'Профессиональная обработка благодаря процессору Intel', 'есть', '2021-12-03 07:59:26.826+00', '2021-12-03 07:59:26.826+00', 9);
INSERT INTO postgres.device_infos VALUES (35, 'Камера 5 МП', 'есть', '2021-12-03 07:59:26.826+00', '2021-12-03 07:59:26.826+00', 9);
INSERT INTO postgres.device_infos VALUES (36, 'Совместим с очками VR', 'есть', '2021-12-03 07:59:26.826+00', '2021-12-03 07:59:26.826+00', 9);
INSERT INTO postgres.device_infos VALUES (37, 'Производство	', 'Заводское DJI', '2021-12-03 08:25:40.854+00', '2021-12-03 08:25:40.854+00', 10);
INSERT INTO postgres.device_infos VALUES (38, 'Категория', 'Операторы и промышленные', '2021-12-03 08:25:40.854+00', '2021-12-03 08:25:40.854+00', 10);
INSERT INTO postgres.device_infos VALUES (39, 'Готовность к полету "из коробки"', 'Нет', '2021-12-03 08:25:40.854+00', '2021-12-03 08:25:40.854+00', 10);
INSERT INTO postgres.device_infos VALUES (40, 'Оператор', '2', '2021-12-03 08:25:40.854+00', '2021-12-03 08:25:40.854+00', 10);
INSERT INTO postgres.device_infos VALUES (41, 'Летные характеристики', 'Отличные', '2021-12-03 08:25:40.854+00', '2021-12-03 08:25:40.854+00', 10);
INSERT INTO postgres.device_infos VALUES (42, 'Максимальная скорость', '79 км/ч', '2021-12-03 08:25:40.854+00', '2021-12-03 08:25:40.854+00', 10);
INSERT INTO postgres.device_infos VALUES (43, 'Скорость ветра', '8-10 м/с', '2021-12-03 08:25:40.854+00', '2021-12-03 08:25:40.854+00', 10);
INSERT INTO postgres.device_infos VALUES (44, 'Превышает производительность труда человека в 40–60 раз;', 'есть', '2021-12-03 08:25:40.854+00', '2021-12-03 08:25:40.854+00', 10);
INSERT INTO postgres.device_infos VALUES (45, 'Сигнал о низком уровне жидкости', 'есть', '2021-12-03 08:25:40.854+00', '2021-12-03 08:25:40.854+00', 10);
INSERT INTO postgres.device_infos VALUES (46, 'Возобновление полетных заданий', 'есть', '2021-12-03 08:25:40.854+00', '2021-12-03 08:25:40.854+00', 10);
INSERT INTO postgres.device_infos VALUES (47, 'Система защиты данных', 'есть', '2021-12-03 08:25:40.854+00', '2021-12-03 08:25:40.854+00', 10);
INSERT INTO postgres.device_infos VALUES (48, 'Автоматический учет рельефа местности', 'есть', '2021-12-03 08:25:40.854+00', '2021-12-03 08:25:40.854+00', 10);
INSERT INTO postgres.device_infos VALUES (49, 'Производство', 'Заводское DJI', '2021-12-03 08:30:24.593+00', '2021-12-03 08:30:24.593+00', 11);
INSERT INTO postgres.device_infos VALUES (50, 'Категория', 'Операторы и промышленные', '2021-12-03 08:30:24.594+00', '2021-12-03 08:30:24.594+00', 11);
INSERT INTO postgres.device_infos VALUES (51, 'Готовность к полету "из коробки"', 'Нет', '2021-12-03 08:30:24.594+00', '2021-12-03 08:30:24.594+00', 11);
INSERT INTO postgres.device_infos VALUES (52, 'Оператор', '2', '2021-12-03 08:30:24.594+00', '2021-12-03 08:30:24.594+00', 11);
INSERT INTO postgres.device_infos VALUES (53, 'Летные характеристики', 'Отличные', '2021-12-03 08:30:24.594+00', '2021-12-03 08:30:24.594+00', 11);
INSERT INTO postgres.device_infos VALUES (54, 'Максимальная скорость', '79 км/ч', '2021-12-03 08:30:24.594+00', '2021-12-03 08:30:24.594+00', 11);
INSERT INTO postgres.device_infos VALUES (55, 'Скорость ветра', '15 м/с', '2021-12-03 08:30:24.594+00', '2021-12-03 08:30:24.594+00', 11);
INSERT INTO postgres.device_infos VALUES (56, 'Дальность/высота', 'До 7000 метров', '2021-12-03 08:30:24.594+00', '2021-12-03 08:30:24.594+00', 11);
INSERT INTO postgres.device_infos VALUES (57, 'Качество записи видео', '4K 30 к/с', '2021-12-03 08:30:24.594+00', '2021-12-03 08:30:24.594+00', 11);
INSERT INTO postgres.device_infos VALUES (58, 'Качество фотографий', '20 МП', '2021-12-03 08:30:24.594+00', '2021-12-03 08:30:24.594+00', 11);
INSERT INTO postgres.device_infos VALUES (59, 'Стабилизация камеры', '3-х осевая', '2021-12-03 08:30:24.594+00', '2021-12-03 08:30:24.594+00', 11);
INSERT INTO postgres.device_infos VALUES (60, 'Размер по диагонали (без пропеллеров)', '64 см', '2021-12-03 08:30:24.594+00', '2021-12-03 08:30:24.594+00', 11);
INSERT INTO postgres.device_infos VALUES (61, 'Время полета на одной АКБ', 'До 30 минут', '2021-12-03 08:30:24.594+00', '2021-12-03 08:30:24.594+00', 11);
INSERT INTO postgres.device_infos VALUES (62, 'Производство', 'Заводское DJI', '2021-12-03 08:38:42.975+00', '2021-12-03 08:38:42.975+00', 12);
INSERT INTO postgres.device_infos VALUES (63, 'Категория', 'Промышленные', '2021-12-03 08:38:42.975+00', '2021-12-03 08:38:42.975+00', 12);
INSERT INTO postgres.device_infos VALUES (64, 'Оператор', '1', '2021-12-03 08:38:42.975+00', '2021-12-03 08:38:42.975+00', 12);
INSERT INTO postgres.device_infos VALUES (65, 'Готовность к полету "из коробки"', 'Нет', '2021-12-03 08:38:42.975+00', '2021-12-03 08:38:42.975+00', 12);
INSERT INTO postgres.device_infos VALUES (66, 'Летные характеристики', 'Отличные', '2021-12-03 08:38:42.975+00', '2021-12-03 08:38:42.975+00', 12);
INSERT INTO postgres.device_infos VALUES (67, 'Максимальная скорость', '79 км/ч', '2021-12-03 08:38:42.975+00', '2021-12-03 08:38:42.975+00', 12);
INSERT INTO postgres.device_infos VALUES (68, 'Скорость ветра', '15 м/с', '2021-12-03 08:38:42.975+00', '2021-12-03 08:38:42.975+00', 12);
INSERT INTO postgres.device_infos VALUES (69, 'Дальность/высота', 'До 7000 метров', '2021-12-03 08:38:42.976+00', '2021-12-03 08:38:42.976+00', 12);
INSERT INTO postgres.device_infos VALUES (70, 'Качество записи видео', '4K 30 к/с', '2021-12-03 08:38:42.976+00', '2021-12-03 08:38:42.976+00', 12);
INSERT INTO postgres.device_infos VALUES (71, 'Качество фотографий', '20 МП', '2021-12-03 08:38:42.976+00', '2021-12-03 08:38:42.976+00', 12);
INSERT INTO postgres.device_infos VALUES (72, 'Стабилизация камеры', '3-х осевая', '2021-12-03 08:38:42.976+00', '2021-12-03 08:38:42.976+00', 12);
INSERT INTO postgres.device_infos VALUES (73, 'Размер по диагонали (без пропеллеров)', '64 см', '2021-12-03 08:38:42.976+00', '2021-12-03 08:38:42.976+00', 12);
INSERT INTO postgres.device_infos VALUES (74, 'Время полета на одной АКБ', 'До 30 минут', '2021-12-03 08:38:42.976+00', '2021-12-03 08:38:42.976+00', 12);
INSERT INTO postgres.device_infos VALUES (75, 'Производство', 'SOUTH', '2021-12-03 08:52:00.461+00', '2021-12-03 08:52:00.461+00', 13);
INSERT INTO postgres.device_infos VALUES (76, 'Категория', 'Операторы и промышленные', '2021-12-03 08:52:00.462+00', '2021-12-03 08:52:00.462+00', 13);
INSERT INTO postgres.device_infos VALUES (77, 'Максимальная скорость', 'до 20м/с', '2021-12-03 08:52:00.462+00', '2021-12-03 08:52:00.462+00', 13);
INSERT INTO postgres.device_infos VALUES (78, 'Скорость ветра', '10м/с', '2021-12-03 08:52:00.462+00', '2021-12-03 08:52:00.462+00', 13);
INSERT INTO postgres.device_infos VALUES (79, 'Рабочая температура', 'от -10°С до +45 °С', '2021-12-03 08:52:00.462+00', '2021-12-03 08:52:00.462+00', 13);
INSERT INTO postgres.device_infos VALUES (80, 'Скорость обновления данных', '20 Гц', '2021-12-03 08:52:00.462+00', '2021-12-03 08:52:00.462+00', 13);
INSERT INTO postgres.device_infos VALUES (81, 'Точность позиционирования', 'до 3 см', '2021-12-03 08:52:00.462+00', '2021-12-03 08:52:00.462+00', 13);
INSERT INTO postgres.device_infos VALUES (82, 'Память карты', 'micro-SD 8 ГБ', '2021-12-03 08:52:00.462+00', '2021-12-03 08:52:00.462+00', 13);
INSERT INTO postgres.device_infos VALUES (83, 'Разрешение камеры', '20.1 Мп', '2021-12-03 08:52:00.462+00', '2021-12-03 08:52:00.462+00', 13);
INSERT INTO postgres.device_infos VALUES (85, 'Высота полета', '4000 м', '2021-12-03 08:52:00.462+00', '2021-12-03 08:52:00.462+00', 13);
INSERT INTO postgres.device_infos VALUES (84, 'Дальность полета', 'до 90 км', '2021-12-03 08:52:00.462+00', '2021-12-03 08:52:00.462+00', 13);
INSERT INTO postgres.device_infos VALUES (86, 'Время полета', '60 мин', '2021-12-03 08:52:00.462+00', '2021-12-03 08:52:00.462+00', 13);
INSERT INTO postgres.device_infos VALUES (87, 'База', '2250мм', '2021-12-03 08:59:46.144+00', '2021-12-03 08:59:46.144+00', 14);
INSERT INTO postgres.device_infos VALUES (88, 'Схема ротора', 'Десять ротора (Неравномерная динамическая компоновка)', '2021-12-03 08:59:46.144+00', '2021-12-03 08:59:46.144+00', 14);
INSERT INTO postgres.device_infos VALUES (89, 'Динамическая система', 'Электропривод', '2021-12-03 08:59:46.144+00', '2021-12-03 08:59:46.144+00', 14);
INSERT INTO postgres.device_infos VALUES (90, 'Класс защиты от ветра', 'Не ниже 6 уровня', '2021-12-03 08:59:46.144+00', '2021-12-03 08:59:46.144+00', 14);
INSERT INTO postgres.device_infos VALUES (91, 'Максимальный взлетный вес', '90кг', '2021-12-03 08:59:46.144+00', '2021-12-03 08:59:46.144+00', 14);
INSERT INTO postgres.device_infos VALUES (92, 'Собственный вес', '45 кг (включая аккумулятор)', '2021-12-03 08:59:46.144+00', '2021-12-03 08:59:46.144+00', 14);
INSERT INTO postgres.device_infos VALUES (93, 'Максимальная выносливость', '20 минут (загрузка 31 кг)', '2021-12-03 08:59:46.144+00', '2021-12-03 08:59:46.144+00', 14);
INSERT INTO postgres.device_infos VALUES (94, 'Максимальная высота полета', '500м', '2021-12-03 08:59:46.144+00', '2021-12-03 08:59:46.144+00', 14);
INSERT INTO postgres.device_infos VALUES (95, 'Максимальная скорость полета', '8 м/с', '2021-12-03 08:59:46.144+00', '2021-12-03 08:59:46.144+00', 14);
INSERT INTO postgres.device_infos VALUES (96, 'Скорость набора', '5 м/с', '2021-12-03 08:59:46.144+00', '2021-12-03 08:59:46.144+00', 14);
INSERT INTO postgres.device_infos VALUES (97, 'Горизонтальная точность наведения', '±1м', '2021-12-03 08:59:46.144+00', '2021-12-03 08:59:46.144+00', 14);
INSERT INTO postgres.device_infos VALUES (98, 'Вертикальная точность наведения', '±1м', '2021-12-03 08:59:46.144+00', '2021-12-03 08:59:46.144+00', 14);


--
-- Data for Name: ratings; Type: TABLE DATA; Schema: postgres; Owner: postgres
--



--
-- Data for Name: table_name; Type: TABLE DATA; Schema: postgres; Owner: postgres
--



--
-- Data for Name: type_brands; Type: TABLE DATA; Schema: postgres; Owner: postgres
--

INSERT INTO postgres.type_brands VALUES (1, '2021-12-03 06:40:06.216+00', '2021-12-03 06:40:06.216+00', 2, 1);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users VALUES (1, 'admin-site', '$2b$05$43v/OM80bfkE6fniSASZYeaJUlXKCD8oU0toEJ0ilr/UzOcFITwCO', 'USER', '2021-12-02 13:27:17.888+00', '2021-12-02 13:27:17.888+00');


--
-- Data for Name: baskets; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.baskets VALUES (1, '2021-12-02 13:27:17.894+00', '2021-12-02 13:27:17.894+00', 1);


--
-- Data for Name: brands; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.brands VALUES (1, 'DJI', '2021-12-02 14:09:57.012+00', '2021-12-02 14:09:57.012+00');
INSERT INTO public.brands VALUES (2, 'SOUTH', '2021-12-02 14:12:05.759+00', '2021-12-02 14:12:05.759+00');
INSERT INTO public.brands VALUES (3, 'Intellab', '2021-12-02 14:13:51.947+00', '2021-12-02 14:13:51.947+00');
INSERT INTO public.brands VALUES (4, 'pooll', '2021-12-02 14:42:34.642+00', '2021-12-02 14:42:34.642+00');


--
-- Data for Name: types; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.types VALUES (1, 'Операторы и промышленные', '2021-12-02 14:08:08.392+00', '2021-12-02 14:08:08.392+00');
INSERT INTO public.types VALUES (2, 'Операторы и хобби', '2021-12-02 14:08:31.34+00', '2021-12-02 14:08:31.34+00');
INSERT INTO public.types VALUES (3, 'Промышленные', '2021-12-02 14:08:40.531+00', '2021-12-02 14:08:40.531+00');
INSERT INTO public.types VALUES (4, 'Хобби', '2021-12-02 14:09:10.269+00', '2021-12-02 14:09:10.269+00');


--
-- Data for Name: devices; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.devices VALUES (1, 'Квадрокоптер DJI Mini 2 MT2PD', 45990, 3, '42aa5cbc-6825-4aa7-b5be-4825eee7d088.jpg', '2021-12-02 14:20:15.555+00', '2021-12-02 14:20:15.555+00', 2, 1);
INSERT INTO public.devices VALUES (3, 'Mavic Mini 2 Fly More', 45990, 4, '5fd0cfe6-be0a-4259-bf03-e966b02c416f.jpg', '2021-12-02 14:25:14.53+00', '2021-12-02 14:25:14.53+00', 2, 1);


--
-- Data for Name: basket_devices; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: device_infos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.device_infos VALUES (1, 'Количество моторов', '4', '2021-12-02 14:20:15.593+00', '2021-12-02 14:20:15.593+00', 1);
INSERT INTO public.device_infos VALUES (2, 'Максимальная горизонтальная скорость', '16 метр/сек', '2021-12-02 14:20:15.593+00', '2021-12-02 14:20:15.593+00', 1);
INSERT INTO public.device_infos VALUES (3, 'Максимальное разрешение видео', '3840 х 2160', '2021-12-02 14:20:15.593+00', '2021-12-02 14:20:15.593+00', 1);
INSERT INTO public.device_infos VALUES (4, 'Управление с мобильных устройств', 'поддерживается', '2021-12-02 14:20:15.593+00', '2021-12-02 14:20:15.593+00', 1);
INSERT INTO public.device_infos VALUES (5, 'Поддержка ОС', 'IOS и Android', '2021-12-02 14:20:15.593+00', '2021-12-02 14:20:15.593+00', 1);
INSERT INTO public.device_infos VALUES (6, 'Магнитометр', 'есть', '2021-12-02 14:20:15.593+00', '2021-12-02 14:20:15.593+00', 1);
INSERT INTO public.device_infos VALUES (7, 'Поддержка GPS', 'есть', '2021-12-02 14:20:15.593+00', '2021-12-02 14:20:15.593+00', 1);
INSERT INTO public.device_infos VALUES (8, 'Поддержка стандартов Wi-Fi', '802.11 b/g/n', '2021-12-02 14:20:15.594+00', '2021-12-02 14:20:15.594+00', 1);


--
-- Data for Name: myStore; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- PostgreSQL database dump');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('-- Dumped from database version 14.1 (Debian 14.1-1.pgdg110+1)');
INSERT INTO public."myStore" VALUES ('-- Dumped by pg_dump version 14.1 (Debian 14.1-1.pgdg110+1)');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('SET statement_timeout = 0;');
INSERT INTO public."myStore" VALUES ('SET lock_timeout = 0;');
INSERT INTO public."myStore" VALUES ('SET idle_in_transaction_session_timeout = 0;');
INSERT INTO public."myStore" VALUES ('SET client_encoding = ''UTF8'';');
INSERT INTO public."myStore" VALUES ('SET standard_conforming_strings = on;');
INSERT INTO public."myStore" VALUES ('SELECT pg_catalog.set_config(''search_path'', '''', false);');
INSERT INTO public."myStore" VALUES ('SET check_function_bodies = false;');
INSERT INTO public."myStore" VALUES ('SET xmloption = content;');
INSERT INTO public."myStore" VALUES ('SET client_min_messages = warning;');
INSERT INTO public."myStore" VALUES ('SET row_security = off;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: postgres; Type: SCHEMA; Schema: -; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('CREATE SCHEMA postgres;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER SCHEMA postgres OWNER TO postgres;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('SET default_tablespace = '''';');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('SET default_table_access_method = heap;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: basket_devices; Type: TABLE; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('CREATE TABLE postgres.basket_devices (');
INSERT INTO public."myStore" VALUES ('    id integer NOT NULL,');
INSERT INTO public."myStore" VALUES ('    "createdAt" timestamp with time zone NOT NULL,');
INSERT INTO public."myStore" VALUES ('    "updatedAt" timestamp with time zone NOT NULL,');
INSERT INTO public."myStore" VALUES ('    "basketId" integer,');
INSERT INTO public."myStore" VALUES ('    "deviceId" integer');
INSERT INTO public."myStore" VALUES (');');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE postgres.basket_devices OWNER TO postgres;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: basket_devices_id_seq; Type: SEQUENCE; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('CREATE SEQUENCE postgres.basket_devices_id_seq');
INSERT INTO public."myStore" VALUES ('    AS integer');
INSERT INTO public."myStore" VALUES ('    START WITH 1');
INSERT INTO public."myStore" VALUES ('    INCREMENT BY 1');
INSERT INTO public."myStore" VALUES ('    NO MINVALUE');
INSERT INTO public."myStore" VALUES ('    NO MAXVALUE');
INSERT INTO public."myStore" VALUES ('    CACHE 1;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE postgres.basket_devices_id_seq OWNER TO postgres;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: basket_devices_id_seq; Type: SEQUENCE OWNED BY; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER SEQUENCE postgres.basket_devices_id_seq OWNED BY postgres.basket_devices.id;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: baskets; Type: TABLE; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('CREATE TABLE postgres.baskets (');
INSERT INTO public."myStore" VALUES ('    id integer NOT NULL,');
INSERT INTO public."myStore" VALUES ('    "createdAt" timestamp with time zone NOT NULL,');
INSERT INTO public."myStore" VALUES ('    "updatedAt" timestamp with time zone NOT NULL,');
INSERT INTO public."myStore" VALUES ('    "userId" integer');
INSERT INTO public."myStore" VALUES (');');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE postgres.baskets OWNER TO postgres;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: baskets_id_seq; Type: SEQUENCE; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('CREATE SEQUENCE postgres.baskets_id_seq');
INSERT INTO public."myStore" VALUES ('    AS integer');
INSERT INTO public."myStore" VALUES ('    START WITH 1');
INSERT INTO public."myStore" VALUES ('    INCREMENT BY 1');
INSERT INTO public."myStore" VALUES ('    NO MINVALUE');
INSERT INTO public."myStore" VALUES ('    NO MAXVALUE');
INSERT INTO public."myStore" VALUES ('    CACHE 1;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE postgres.baskets_id_seq OWNER TO postgres;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: baskets_id_seq; Type: SEQUENCE OWNED BY; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER SEQUENCE postgres.baskets_id_seq OWNED BY postgres.baskets.id;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: brands; Type: TABLE; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('CREATE TABLE postgres.brands (');
INSERT INTO public."myStore" VALUES ('    id integer NOT NULL,');
INSERT INTO public."myStore" VALUES ('    name character varying(255) NOT NULL,');
INSERT INTO public."myStore" VALUES ('    "createdAt" timestamp with time zone NOT NULL,');
INSERT INTO public."myStore" VALUES ('    "updatedAt" timestamp with time zone NOT NULL');
INSERT INTO public."myStore" VALUES (');');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE postgres.brands OWNER TO postgres;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: brands_id_seq; Type: SEQUENCE; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('CREATE SEQUENCE postgres.brands_id_seq');
INSERT INTO public."myStore" VALUES ('    AS integer');
INSERT INTO public."myStore" VALUES ('    START WITH 1');
INSERT INTO public."myStore" VALUES ('    INCREMENT BY 1');
INSERT INTO public."myStore" VALUES ('    NO MINVALUE');
INSERT INTO public."myStore" VALUES ('    NO MAXVALUE');
INSERT INTO public."myStore" VALUES ('    CACHE 1;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE postgres.brands_id_seq OWNER TO postgres;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: brands_id_seq; Type: SEQUENCE OWNED BY; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER SEQUENCE postgres.brands_id_seq OWNED BY postgres.brands.id;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: device_infos; Type: TABLE; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('CREATE TABLE postgres.device_infos (');
INSERT INTO public."myStore" VALUES ('    id integer NOT NULL,');
INSERT INTO public."myStore" VALUES ('    title character varying(255) NOT NULL,');
INSERT INTO public."myStore" VALUES ('    description character varying(255) NOT NULL,');
INSERT INTO public."myStore" VALUES ('    "createdAt" timestamp with time zone NOT NULL,');
INSERT INTO public."myStore" VALUES ('    "updatedAt" timestamp with time zone NOT NULL,');
INSERT INTO public."myStore" VALUES ('    "deviceId" integer');
INSERT INTO public."myStore" VALUES (');');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE postgres.device_infos OWNER TO postgres;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: device_infos_id_seq; Type: SEQUENCE; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('CREATE SEQUENCE postgres.device_infos_id_seq');
INSERT INTO public."myStore" VALUES ('    AS integer');
INSERT INTO public."myStore" VALUES ('    START WITH 1');
INSERT INTO public."myStore" VALUES ('    INCREMENT BY 1');
INSERT INTO public."myStore" VALUES ('    NO MINVALUE');
INSERT INTO public."myStore" VALUES ('    NO MAXVALUE');
INSERT INTO public."myStore" VALUES ('    CACHE 1;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE postgres.device_infos_id_seq OWNER TO postgres;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: device_infos_id_seq; Type: SEQUENCE OWNED BY; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER SEQUENCE postgres.device_infos_id_seq OWNED BY postgres.device_infos.id;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: devices; Type: TABLE; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('CREATE TABLE postgres.devices (');
INSERT INTO public."myStore" VALUES ('    id integer NOT NULL,');
INSERT INTO public."myStore" VALUES ('    name character varying(255) NOT NULL,');
INSERT INTO public."myStore" VALUES ('    price integer NOT NULL,');
INSERT INTO public."myStore" VALUES ('    rating integer DEFAULT 0,');
INSERT INTO public."myStore" VALUES ('    img character varying(255) NOT NULL,');
INSERT INTO public."myStore" VALUES ('    "createdAt" timestamp with time zone NOT NULL,');
INSERT INTO public."myStore" VALUES ('    "updatedAt" timestamp with time zone NOT NULL,');
INSERT INTO public."myStore" VALUES ('    "typeId" integer,');
INSERT INTO public."myStore" VALUES ('    "brandId" integer');
INSERT INTO public."myStore" VALUES (');');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE postgres.devices OWNER TO postgres;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: devices_id_seq; Type: SEQUENCE; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('CREATE SEQUENCE postgres.devices_id_seq');
INSERT INTO public."myStore" VALUES ('    AS integer');
INSERT INTO public."myStore" VALUES ('    START WITH 1');
INSERT INTO public."myStore" VALUES ('    INCREMENT BY 1');
INSERT INTO public."myStore" VALUES ('    NO MINVALUE');
INSERT INTO public."myStore" VALUES ('    NO MAXVALUE');
INSERT INTO public."myStore" VALUES ('    CACHE 1;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE postgres.devices_id_seq OWNER TO postgres;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: devices_id_seq; Type: SEQUENCE OWNED BY; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER SEQUENCE postgres.devices_id_seq OWNED BY postgres.devices.id;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: ratings; Type: TABLE; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('CREATE TABLE postgres.ratings (');
INSERT INTO public."myStore" VALUES ('    id integer NOT NULL,');
INSERT INTO public."myStore" VALUES ('    rate character varying(255) NOT NULL,');
INSERT INTO public."myStore" VALUES ('    "createdAt" timestamp with time zone NOT NULL,');
INSERT INTO public."myStore" VALUES ('    "updatedAt" timestamp with time zone NOT NULL,');
INSERT INTO public."myStore" VALUES ('    "userId" integer,');
INSERT INTO public."myStore" VALUES ('    "deviceId" integer');
INSERT INTO public."myStore" VALUES (');');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE postgres.ratings OWNER TO postgres;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: ratings_id_seq; Type: SEQUENCE; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('CREATE SEQUENCE postgres.ratings_id_seq');
INSERT INTO public."myStore" VALUES ('    AS integer');
INSERT INTO public."myStore" VALUES ('    START WITH 1');
INSERT INTO public."myStore" VALUES ('    INCREMENT BY 1');
INSERT INTO public."myStore" VALUES ('    NO MINVALUE');
INSERT INTO public."myStore" VALUES ('    NO MAXVALUE');
INSERT INTO public."myStore" VALUES ('    CACHE 1;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE postgres.ratings_id_seq OWNER TO postgres;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: ratings_id_seq; Type: SEQUENCE OWNED BY; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER SEQUENCE postgres.ratings_id_seq OWNED BY postgres.ratings.id;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: table_name; Type: TABLE; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('CREATE TABLE postgres.table_name (');
INSERT INTO public."myStore" VALUES ('    id integer NOT NULL,');
INSERT INTO public."myStore" VALUES ('    name character varying NOT NULL');
INSERT INTO public."myStore" VALUES (');');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE postgres.table_name OWNER TO postgres;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: table_name_id_seq; Type: SEQUENCE; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('CREATE SEQUENCE postgres.table_name_id_seq');
INSERT INTO public."myStore" VALUES ('    AS integer');
INSERT INTO public."myStore" VALUES ('    START WITH 1');
INSERT INTO public."myStore" VALUES ('    INCREMENT BY 1');
INSERT INTO public."myStore" VALUES ('    NO MINVALUE');
INSERT INTO public."myStore" VALUES ('    NO MAXVALUE');
INSERT INTO public."myStore" VALUES ('    CACHE 1;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE postgres.table_name_id_seq OWNER TO postgres;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: table_name_id_seq; Type: SEQUENCE OWNED BY; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER SEQUENCE postgres.table_name_id_seq OWNED BY postgres.table_name.id;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: type_brands; Type: TABLE; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('CREATE TABLE postgres.type_brands (');
INSERT INTO public."myStore" VALUES ('    id integer NOT NULL,');
INSERT INTO public."myStore" VALUES ('    "createdAt" timestamp with time zone NOT NULL,');
INSERT INTO public."myStore" VALUES ('    "updatedAt" timestamp with time zone NOT NULL,');
INSERT INTO public."myStore" VALUES ('    "typeId" integer,');
INSERT INTO public."myStore" VALUES ('    "brandId" integer');
INSERT INTO public."myStore" VALUES (');');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE postgres.type_brands OWNER TO postgres;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: type_brands_id_seq; Type: SEQUENCE; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('CREATE SEQUENCE postgres.type_brands_id_seq');
INSERT INTO public."myStore" VALUES ('    AS integer');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('    START WITH 1');
INSERT INTO public."myStore" VALUES ('    INCREMENT BY 1');
INSERT INTO public."myStore" VALUES ('    NO MINVALUE');
INSERT INTO public."myStore" VALUES ('    NO MAXVALUE');
INSERT INTO public."myStore" VALUES ('    CACHE 1;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE postgres.type_brands_id_seq OWNER TO postgres;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: type_brands_id_seq; Type: SEQUENCE OWNED BY; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER SEQUENCE postgres.type_brands_id_seq OWNED BY postgres.type_brands.id;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: types; Type: TABLE; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('CREATE TABLE postgres.types (');
INSERT INTO public."myStore" VALUES ('    id integer NOT NULL,');
INSERT INTO public."myStore" VALUES ('    name character varying(255) NOT NULL,');
INSERT INTO public."myStore" VALUES ('    "createdAt" timestamp with time zone NOT NULL,');
INSERT INTO public."myStore" VALUES ('    "updatedAt" timestamp with time zone NOT NULL');
INSERT INTO public."myStore" VALUES (');');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE postgres.types OWNER TO postgres;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: types_id_seq; Type: SEQUENCE; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('CREATE SEQUENCE postgres.types_id_seq');
INSERT INTO public."myStore" VALUES ('    AS integer');
INSERT INTO public."myStore" VALUES ('    START WITH 1');
INSERT INTO public."myStore" VALUES ('    INCREMENT BY 1');
INSERT INTO public."myStore" VALUES ('    NO MINVALUE');
INSERT INTO public."myStore" VALUES ('    NO MAXVALUE');
INSERT INTO public."myStore" VALUES ('    CACHE 1;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE postgres.types_id_seq OWNER TO postgres;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: types_id_seq; Type: SEQUENCE OWNED BY; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER SEQUENCE postgres.types_id_seq OWNED BY postgres.types.id;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: users; Type: TABLE; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('CREATE TABLE postgres.users (');
INSERT INTO public."myStore" VALUES ('    id integer NOT NULL,');
INSERT INTO public."myStore" VALUES ('    email character varying(255),');
INSERT INTO public."myStore" VALUES ('    password character varying(255),');
INSERT INTO public."myStore" VALUES ('    role character varying(255) DEFAULT ''USER''::character varying,');
INSERT INTO public."myStore" VALUES ('    "createdAt" timestamp with time zone NOT NULL,');
INSERT INTO public."myStore" VALUES ('    "updatedAt" timestamp with time zone NOT NULL');
INSERT INTO public."myStore" VALUES (');');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE postgres.users OWNER TO postgres;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: users_id_seq; Type: SEQUENCE; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('CREATE SEQUENCE postgres.users_id_seq');
INSERT INTO public."myStore" VALUES ('    AS integer');
INSERT INTO public."myStore" VALUES ('    START WITH 1');
INSERT INTO public."myStore" VALUES ('    INCREMENT BY 1');
INSERT INTO public."myStore" VALUES ('    NO MINVALUE');
INSERT INTO public."myStore" VALUES ('    NO MAXVALUE');
INSERT INTO public."myStore" VALUES ('    CACHE 1;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE postgres.users_id_seq OWNER TO postgres;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER SEQUENCE postgres.users_id_seq OWNED BY postgres.users.id;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: basket_devices; Type: TABLE; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('CREATE TABLE public.basket_devices (');
INSERT INTO public."myStore" VALUES ('    id integer NOT NULL,');
INSERT INTO public."myStore" VALUES ('    "createdAt" timestamp with time zone NOT NULL,');
INSERT INTO public."myStore" VALUES ('    "updatedAt" timestamp with time zone NOT NULL,');
INSERT INTO public."myStore" VALUES ('    "basketId" integer,');
INSERT INTO public."myStore" VALUES ('    "deviceId" integer');
INSERT INTO public."myStore" VALUES (');');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE public.basket_devices OWNER TO postgres;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: basket_devices_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('CREATE SEQUENCE public.basket_devices_id_seq');
INSERT INTO public."myStore" VALUES ('    AS integer');
INSERT INTO public."myStore" VALUES ('    START WITH 1');
INSERT INTO public."myStore" VALUES ('    INCREMENT BY 1');
INSERT INTO public."myStore" VALUES ('    NO MINVALUE');
INSERT INTO public."myStore" VALUES ('    NO MAXVALUE');
INSERT INTO public."myStore" VALUES ('    CACHE 1;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE public.basket_devices_id_seq OWNER TO postgres;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: basket_devices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER SEQUENCE public.basket_devices_id_seq OWNED BY public.basket_devices.id;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: baskets; Type: TABLE; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('CREATE TABLE public.baskets (');
INSERT INTO public."myStore" VALUES ('    id integer NOT NULL,');
INSERT INTO public."myStore" VALUES ('    "createdAt" timestamp with time zone NOT NULL,');
INSERT INTO public."myStore" VALUES ('    "updatedAt" timestamp with time zone NOT NULL,');
INSERT INTO public."myStore" VALUES ('    "userId" integer');
INSERT INTO public."myStore" VALUES (');');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE public.baskets OWNER TO postgres;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: baskets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('CREATE SEQUENCE public.baskets_id_seq');
INSERT INTO public."myStore" VALUES ('    AS integer');
INSERT INTO public."myStore" VALUES ('    START WITH 1');
INSERT INTO public."myStore" VALUES ('    INCREMENT BY 1');
INSERT INTO public."myStore" VALUES ('    NO MINVALUE');
INSERT INTO public."myStore" VALUES ('    NO MAXVALUE');
INSERT INTO public."myStore" VALUES ('    CACHE 1;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE public.baskets_id_seq OWNER TO postgres;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('ALTER SEQUENCE public.ratings_id_seq OWNED BY public.ratings.id;');
INSERT INTO public."myStore" VALUES ('-- Name: baskets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER SEQUENCE public.baskets_id_seq OWNED BY public.baskets.id;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: brands; Type: TABLE; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('CREATE TABLE public.brands (');
INSERT INTO public."myStore" VALUES ('    id integer NOT NULL,');
INSERT INTO public."myStore" VALUES ('    name character varying(255) NOT NULL,');
INSERT INTO public."myStore" VALUES ('    "createdAt" timestamp with time zone NOT NULL,');
INSERT INTO public."myStore" VALUES ('    "updatedAt" timestamp with time zone NOT NULL');
INSERT INTO public."myStore" VALUES (');');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE public.brands OWNER TO postgres;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: brands_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('CREATE SEQUENCE public.brands_id_seq');
INSERT INTO public."myStore" VALUES ('    AS integer');
INSERT INTO public."myStore" VALUES ('    START WITH 1');
INSERT INTO public."myStore" VALUES ('    INCREMENT BY 1');
INSERT INTO public."myStore" VALUES ('    NO MINVALUE');
INSERT INTO public."myStore" VALUES ('    NO MAXVALUE');
INSERT INTO public."myStore" VALUES ('    CACHE 1;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE public.brands_id_seq OWNER TO postgres;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: brands_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER SEQUENCE public.brands_id_seq OWNED BY public.brands.id;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: device_infos; Type: TABLE; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('CREATE TABLE public.device_infos (');
INSERT INTO public."myStore" VALUES ('    id integer NOT NULL,');
INSERT INTO public."myStore" VALUES ('    title character varying(255) NOT NULL,');
INSERT INTO public."myStore" VALUES ('    description character varying(255) NOT NULL,');
INSERT INTO public."myStore" VALUES ('    "createdAt" timestamp with time zone NOT NULL,');
INSERT INTO public."myStore" VALUES ('    "updatedAt" timestamp with time zone NOT NULL,');
INSERT INTO public."myStore" VALUES ('    "deviceId" integer');
INSERT INTO public."myStore" VALUES (');');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE public.device_infos OWNER TO postgres;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: device_infos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('CREATE SEQUENCE public.device_infos_id_seq');
INSERT INTO public."myStore" VALUES ('    AS integer');
INSERT INTO public."myStore" VALUES ('    START WITH 1');
INSERT INTO public."myStore" VALUES ('    INCREMENT BY 1');
INSERT INTO public."myStore" VALUES ('    NO MINVALUE');
INSERT INTO public."myStore" VALUES ('    NO MAXVALUE');
INSERT INTO public."myStore" VALUES ('    CACHE 1;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE public.device_infos_id_seq OWNER TO postgres;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: device_infos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER SEQUENCE public.device_infos_id_seq OWNED BY public.device_infos.id;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: devices; Type: TABLE; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('CREATE TABLE public.devices (');
INSERT INTO public."myStore" VALUES ('    id integer NOT NULL,');
INSERT INTO public."myStore" VALUES ('    name character varying(255) NOT NULL,');
INSERT INTO public."myStore" VALUES ('    price integer NOT NULL,');
INSERT INTO public."myStore" VALUES ('    rating integer DEFAULT 0,');
INSERT INTO public."myStore" VALUES ('    img character varying(255) NOT NULL,');
INSERT INTO public."myStore" VALUES ('    "createdAt" timestamp with time zone NOT NULL,');
INSERT INTO public."myStore" VALUES ('    "updatedAt" timestamp with time zone NOT NULL,');
INSERT INTO public."myStore" VALUES ('    "typeId" integer,');
INSERT INTO public."myStore" VALUES ('    "brandId" integer');
INSERT INTO public."myStore" VALUES (');');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE public.devices OWNER TO postgres;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: devices_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('CREATE SEQUENCE public.devices_id_seq');
INSERT INTO public."myStore" VALUES ('    AS integer');
INSERT INTO public."myStore" VALUES ('    START WITH 1');
INSERT INTO public."myStore" VALUES ('    INCREMENT BY 1');
INSERT INTO public."myStore" VALUES ('    NO MINVALUE');
INSERT INTO public."myStore" VALUES ('    NO MAXVALUE');
INSERT INTO public."myStore" VALUES ('    CACHE 1;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE public.devices_id_seq OWNER TO postgres;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: devices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER SEQUENCE public.devices_id_seq OWNED BY public.devices.id;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: ratings; Type: TABLE; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('CREATE TABLE public.ratings (');
INSERT INTO public."myStore" VALUES ('    id integer NOT NULL,');
INSERT INTO public."myStore" VALUES ('    rate character varying(255) NOT NULL,');
INSERT INTO public."myStore" VALUES ('    "createdAt" timestamp with time zone NOT NULL,');
INSERT INTO public."myStore" VALUES ('    "updatedAt" timestamp with time zone NOT NULL,');
INSERT INTO public."myStore" VALUES ('    "userId" integer,');
INSERT INTO public."myStore" VALUES ('    "deviceId" integer');
INSERT INTO public."myStore" VALUES (');');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE public.ratings OWNER TO postgres;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: ratings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('CREATE SEQUENCE public.ratings_id_seq');
INSERT INTO public."myStore" VALUES ('    AS integer');
INSERT INTO public."myStore" VALUES ('    START WITH 1');
INSERT INTO public."myStore" VALUES ('    INCREMENT BY 1');
INSERT INTO public."myStore" VALUES ('    NO MINVALUE');
INSERT INTO public."myStore" VALUES ('    NO MAXVALUE');
INSERT INTO public."myStore" VALUES ('    CACHE 1;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE public.ratings_id_seq OWNER TO postgres;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: ratings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: type_brands; Type: TABLE; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('CREATE TABLE public.type_brands (');
INSERT INTO public."myStore" VALUES ('    id integer NOT NULL,');
INSERT INTO public."myStore" VALUES ('    "createdAt" timestamp with time zone NOT NULL,');
INSERT INTO public."myStore" VALUES ('    "updatedAt" timestamp with time zone NOT NULL,');
INSERT INTO public."myStore" VALUES ('    "typeId" integer,');
INSERT INTO public."myStore" VALUES ('    "brandId" integer');
INSERT INTO public."myStore" VALUES (');');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE public.type_brands OWNER TO postgres;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: type_brands_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('CREATE SEQUENCE public.type_brands_id_seq');
INSERT INTO public."myStore" VALUES ('    AS integer');
INSERT INTO public."myStore" VALUES ('    START WITH 1');
INSERT INTO public."myStore" VALUES ('    INCREMENT BY 1');
INSERT INTO public."myStore" VALUES ('    NO MINVALUE');
INSERT INTO public."myStore" VALUES ('    NO MAXVALUE');
INSERT INTO public."myStore" VALUES ('    CACHE 1;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE public.type_brands_id_seq OWNER TO postgres;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: type_brands_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER SEQUENCE public.type_brands_id_seq OWNED BY public.type_brands.id;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: types; Type: TABLE; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('CREATE TABLE public.types (');
INSERT INTO public."myStore" VALUES ('    id integer NOT NULL,');
INSERT INTO public."myStore" VALUES ('    name character varying(255) NOT NULL,');
INSERT INTO public."myStore" VALUES ('    "createdAt" timestamp with time zone NOT NULL,');
INSERT INTO public."myStore" VALUES ('    "updatedAt" timestamp with time zone NOT NULL');
INSERT INTO public."myStore" VALUES (');');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE public.types OWNER TO postgres;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: types_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('CREATE SEQUENCE public.types_id_seq');
INSERT INTO public."myStore" VALUES ('    AS integer');
INSERT INTO public."myStore" VALUES ('    START WITH 1');
INSERT INTO public."myStore" VALUES ('    INCREMENT BY 1');
INSERT INTO public."myStore" VALUES ('    NO MINVALUE');
INSERT INTO public."myStore" VALUES ('    NO MAXVALUE');
INSERT INTO public."myStore" VALUES ('    CACHE 1;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE public.types_id_seq OWNER TO postgres;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER SEQUENCE public.types_id_seq OWNED BY public.types.id;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: users; Type: TABLE; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('CREATE TABLE public.users (');
INSERT INTO public."myStore" VALUES ('    id integer NOT NULL,');
INSERT INTO public."myStore" VALUES ('    email character varying(255),');
INSERT INTO public."myStore" VALUES ('    password character varying(255),');
INSERT INTO public."myStore" VALUES ('    role character varying(255) DEFAULT ''USER''::character varying,');
INSERT INTO public."myStore" VALUES ('    "createdAt" timestamp with time zone NOT NULL,');
INSERT INTO public."myStore" VALUES ('    "updatedAt" timestamp with time zone NOT NULL');
INSERT INTO public."myStore" VALUES (');');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE public.users OWNER TO postgres;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('CREATE SEQUENCE public.users_id_seq');
INSERT INTO public."myStore" VALUES ('    AS integer');
INSERT INTO public."myStore" VALUES ('    START WITH 1');
INSERT INTO public."myStore" VALUES ('    INCREMENT BY 1');
INSERT INTO public."myStore" VALUES ('    NO MINVALUE');
INSERT INTO public."myStore" VALUES ('    NO MAXVALUE');
INSERT INTO public."myStore" VALUES ('    CACHE 1;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE public.users_id_seq OWNER TO postgres;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: basket_devices id; Type: DEFAULT; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY postgres.basket_devices ALTER COLUMN id SET DEFAULT nextval(''postgres.basket_devices_id_seq''::regclass);');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: baskets id; Type: DEFAULT; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY postgres.baskets ALTER COLUMN id SET DEFAULT nextval(''postgres.baskets_id_seq''::regclass);');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: brands id; Type: DEFAULT; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY postgres.brands ALTER COLUMN id SET DEFAULT nextval(''postgres.brands_id_seq''::regclass);');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: device_infos id; Type: DEFAULT; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY postgres.device_infos ALTER COLUMN id SET DEFAULT nextval(''postgres.device_infos_id_seq''::regclass);');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: devices id; Type: DEFAULT; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY postgres.devices ALTER COLUMN id SET DEFAULT nextval(''postgres.devices_id_seq''::regclass);');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: ratings id; Type: DEFAULT; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY postgres.ratings ALTER COLUMN id SET DEFAULT nextval(''postgres.ratings_id_seq''::regclass);');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: table_name id; Type: DEFAULT; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY postgres.table_name ALTER COLUMN id SET DEFAULT nextval(''postgres.table_name_id_seq''::regclass);');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: type_brands id; Type: DEFAULT; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY postgres.type_brands ALTER COLUMN id SET DEFAULT nextval(''postgres.type_brands_id_seq''::regclass);');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: types id; Type: DEFAULT; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY postgres.types ALTER COLUMN id SET DEFAULT nextval(''postgres.types_id_seq''::regclass);');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: users id; Type: DEFAULT; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY postgres.users ALTER COLUMN id SET DEFAULT nextval(''postgres.users_id_seq''::regclass);');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: basket_devices id; Type: DEFAULT; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY public.basket_devices ALTER COLUMN id SET DEFAULT nextval(''public.basket_devices_id_seq''::regclass);');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: baskets id; Type: DEFAULT; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY public.baskets ALTER COLUMN id SET DEFAULT nextval(''public.baskets_id_seq''::regclass);');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: brands id; Type: DEFAULT; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY public.brands ALTER COLUMN id SET DEFAULT nextval(''public.brands_id_seq''::regclass);');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: device_infos id; Type: DEFAULT; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY public.device_infos ALTER COLUMN id SET DEFAULT nextval(''public.device_infos_id_seq''::regclass);');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: devices id; Type: DEFAULT; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY public.devices ALTER COLUMN id SET DEFAULT nextval(''public.devices_id_seq''::regclass);');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: ratings id; Type: DEFAULT; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY public.ratings ALTER COLUMN id SET DEFAULT nextval(''public.ratings_id_seq''::regclass);');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: type_brands id; Type: DEFAULT; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY public.type_brands ALTER COLUMN id SET DEFAULT nextval(''public.type_brands_id_seq''::regclass);');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: types id; Type: DEFAULT; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY public.types ALTER COLUMN id SET DEFAULT nextval(''public.types_id_seq''::regclass);');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval(''public.users_id_seq''::regclass);');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Data for Name: basket_devices; Type: TABLE DATA; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('COPY postgres.basket_devices (id, "createdAt", "updatedAt", "basketId", "deviceId") FROM stdin;');
INSERT INTO public."myStore" VALUES ('\.');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Data for Name: baskets; Type: TABLE DATA; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('COPY postgres.baskets (id, "createdAt", "updatedAt", "userId") FROM stdin;');
INSERT INTO public."myStore" VALUES ('\.');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Data for Name: brands; Type: TABLE DATA; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('COPY postgres.brands (id, name, "createdAt", "updatedAt") FROM stdin;');
INSERT INTO public."myStore" VALUES ('\.');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Data for Name: device_infos; Type: TABLE DATA; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('COPY postgres.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") FROM stdin;');
INSERT INTO public."myStore" VALUES ('\.');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Data for Name: devices; Type: TABLE DATA; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('COPY postgres.devices (id, name, price, rating, img, "createdAt", "updatedAt", "typeId", "brandId") FROM stdin;');
INSERT INTO public."myStore" VALUES ('\.');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Data for Name: ratings; Type: TABLE DATA; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('COPY postgres.ratings (id, rate, "createdAt", "updatedAt", "userId", "deviceId") FROM stdin;');
INSERT INTO public."myStore" VALUES ('\.');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Data for Name: table_name; Type: TABLE DATA; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('COPY postgres.table_name (id, name) FROM stdin;');
INSERT INTO public."myStore" VALUES ('\.');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Data for Name: type_brands; Type: TABLE DATA; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('COPY postgres.type_brands (id, "createdAt", "updatedAt", "typeId", "brandId") FROM stdin;');
INSERT INTO public."myStore" VALUES ('\.');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Data for Name: types; Type: TABLE DATA; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('COPY postgres.types (id, name, "createdAt", "updatedAt") FROM stdin;');
INSERT INTO public."myStore" VALUES ('\.');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Data for Name: users; Type: TABLE DATA; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('COPY postgres.users (id, email, password, role, "createdAt", "updatedAt") FROM stdin;');
INSERT INTO public."myStore" VALUES ('\.');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Data for Name: basket_devices; Type: TABLE DATA; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('COPY public.basket_devices (id, "createdAt", "updatedAt", "basketId", "deviceId") FROM stdin;');
INSERT INTO public."myStore" VALUES ('\.');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Data for Name: baskets; Type: TABLE DATA; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('COPY public.baskets (id, "createdAt", "updatedAt", "userId") FROM stdin;');
INSERT INTO public."myStore" VALUES ('\.');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Data for Name: brands; Type: TABLE DATA; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('COPY public.brands (id, name, "createdAt", "updatedAt") FROM stdin;');
INSERT INTO public."myStore" VALUES ('\.');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Data for Name: device_infos; Type: TABLE DATA; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('COPY public.device_infos (id, title, description, "createdAt", "updatedAt", "deviceId") FROM stdin;');
INSERT INTO public."myStore" VALUES ('\.');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Data for Name: devices; Type: TABLE DATA; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('COPY public.devices (id, name, price, rating, img, "createdAt", "updatedAt", "typeId", "brandId") FROM stdin;');
INSERT INTO public."myStore" VALUES ('\.');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Data for Name: ratings; Type: TABLE DATA; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('COPY public.ratings (id, rate, "createdAt", "updatedAt", "userId", "deviceId") FROM stdin;');
INSERT INTO public."myStore" VALUES ('\.');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Data for Name: type_brands; Type: TABLE DATA; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('COPY public.type_brands (id, "createdAt", "updatedAt", "typeId", "brandId") FROM stdin;');
INSERT INTO public."myStore" VALUES ('\.');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Data for Name: types; Type: TABLE DATA; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('COPY public.types (id, name, "createdAt", "updatedAt") FROM stdin;');
INSERT INTO public."myStore" VALUES ('\.');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('COPY public.users (id, email, password, role, "createdAt", "updatedAt") FROM stdin;');
INSERT INTO public."myStore" VALUES ('\.');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: basket_devices_id_seq; Type: SEQUENCE SET; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('SELECT pg_catalog.setval(''postgres.basket_devices_id_seq'', 1, true);');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: baskets_id_seq; Type: SEQUENCE SET; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('SELECT pg_catalog.setval(''postgres.baskets_id_seq'', 3, true);');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: brands_id_seq; Type: SEQUENCE SET; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('SELECT pg_catalog.setval(''postgres.brands_id_seq'', 3, true);');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: device_infos_id_seq; Type: SEQUENCE SET; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('SELECT pg_catalog.setval(''postgres.device_infos_id_seq'', 98, true);');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: devices_id_seq; Type: SEQUENCE SET; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('SELECT pg_catalog.setval(''postgres.devices_id_seq'', 14, true);');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: ratings_id_seq; Type: SEQUENCE SET; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('SELECT pg_catalog.setval(''postgres.ratings_id_seq'', 1, false);');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: table_name_id_seq; Type: SEQUENCE SET; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('SELECT pg_catalog.setval(''postgres.table_name_id_seq'', 1, false);');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: type_brands_id_seq; Type: SEQUENCE SET; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('SELECT pg_catalog.setval(''postgres.type_brands_id_seq'', 4, true);');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: types_id_seq; Type: SEQUENCE SET; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('SELECT pg_catalog.setval(''postgres.types_id_seq'', 4, true);');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: users_id_seq; Type: SEQUENCE SET; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('SELECT pg_catalog.setval(''postgres.users_id_seq'', 4, true);');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: basket_devices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('SELECT pg_catalog.setval(''public.basket_devices_id_seq'', 1, false);');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: baskets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('SELECT pg_catalog.setval(''public.baskets_id_seq'', 1, true);');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: brands_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('SELECT pg_catalog.setval(''public.brands_id_seq'', 4, true);');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: device_infos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('SELECT pg_catalog.setval(''public.device_infos_id_seq'', 8, true);');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: devices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('SELECT pg_catalog.setval(''public.devices_id_seq'', 3, true);');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: ratings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('SELECT pg_catalog.setval(''public.ratings_id_seq'', 1, false);');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: type_brands_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('SELECT pg_catalog.setval(''public.type_brands_id_seq'', 2, true);');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('SELECT pg_catalog.setval(''public.types_id_seq'', 4, true);');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('SELECT pg_catalog.setval(''public.users_id_seq'', 1, true);');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: basket_devices basket_devices_pkey; Type: CONSTRAINT; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY postgres.basket_devices');
INSERT INTO public."myStore" VALUES ('    ADD CONSTRAINT basket_devices_pkey PRIMARY KEY (id);');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: baskets baskets_pkey; Type: CONSTRAINT; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY postgres.baskets');
INSERT INTO public."myStore" VALUES ('    ADD CONSTRAINT baskets_pkey PRIMARY KEY (id);');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: brands brands_name_key; Type: CONSTRAINT; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY postgres.brands');
INSERT INTO public."myStore" VALUES ('    ADD CONSTRAINT brands_name_key UNIQUE (name);');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: brands brands_pkey; Type: CONSTRAINT; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY postgres.brands');
INSERT INTO public."myStore" VALUES ('    ADD CONSTRAINT brands_pkey PRIMARY KEY (id);');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: device_infos device_infos_pkey; Type: CONSTRAINT; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY postgres.device_infos');
INSERT INTO public."myStore" VALUES ('    ADD CONSTRAINT device_infos_pkey PRIMARY KEY (id);');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: devices devices_name_key; Type: CONSTRAINT; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY postgres.devices');
INSERT INTO public."myStore" VALUES ('    ADD CONSTRAINT devices_name_key UNIQUE (name);');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: devices devices_pkey; Type: CONSTRAINT; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY postgres.devices');
INSERT INTO public."myStore" VALUES ('    ADD CONSTRAINT devices_pkey PRIMARY KEY (id);');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: ratings ratings_pkey; Type: CONSTRAINT; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY postgres.ratings');
INSERT INTO public."myStore" VALUES ('    ADD CONSTRAINT ratings_pkey PRIMARY KEY (id);');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: table_name table_name_pk; Type: CONSTRAINT; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY postgres.table_name');
INSERT INTO public."myStore" VALUES ('    ADD CONSTRAINT table_name_pk PRIMARY KEY (id);');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: type_brands type_brands_pkey; Type: CONSTRAINT; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY postgres.type_brands');
INSERT INTO public."myStore" VALUES ('    ADD CONSTRAINT type_brands_pkey PRIMARY KEY (id);');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: type_brands type_brands_typeId_brandId_key; Type: CONSTRAINT; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY postgres.type_brands');
INSERT INTO public."myStore" VALUES ('    ADD CONSTRAINT "type_brands_typeId_brandId_key" UNIQUE ("typeId", "brandId");');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: types types_name_key; Type: CONSTRAINT; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY postgres.types');
INSERT INTO public."myStore" VALUES ('    ADD CONSTRAINT types_name_key UNIQUE (name);');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: types types_pkey; Type: CONSTRAINT; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY postgres.types');
INSERT INTO public."myStore" VALUES ('    ADD CONSTRAINT types_pkey PRIMARY KEY (id);');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: users users_email_key; Type: CONSTRAINT; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY postgres.users');
INSERT INTO public."myStore" VALUES ('    ADD CONSTRAINT users_email_key UNIQUE (email);');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: users users_pkey; Type: CONSTRAINT; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY postgres.users');
INSERT INTO public."myStore" VALUES ('    ADD CONSTRAINT users_pkey PRIMARY KEY (id);');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: basket_devices basket_devices_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY public.basket_devices');
INSERT INTO public."myStore" VALUES ('    ADD CONSTRAINT basket_devices_pkey PRIMARY KEY (id);');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: baskets baskets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY public.baskets');
INSERT INTO public."myStore" VALUES ('    ADD CONSTRAINT baskets_pkey PRIMARY KEY (id);');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: brands brands_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY public.brands');
INSERT INTO public."myStore" VALUES ('    ADD CONSTRAINT brands_name_key UNIQUE (name);');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: brands brands_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY public.brands');
INSERT INTO public."myStore" VALUES ('    ADD CONSTRAINT brands_pkey PRIMARY KEY (id);');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: device_infos device_infos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY public.device_infos');
INSERT INTO public."myStore" VALUES ('    ADD CONSTRAINT device_infos_pkey PRIMARY KEY (id);');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: devices devices_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY public.devices');
INSERT INTO public."myStore" VALUES ('    ADD CONSTRAINT devices_name_key UNIQUE (name);');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: devices devices_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY public.devices');
INSERT INTO public."myStore" VALUES ('    ADD CONSTRAINT devices_pkey PRIMARY KEY (id);');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: ratings ratings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY public.ratings');
INSERT INTO public."myStore" VALUES ('    ADD CONSTRAINT ratings_pkey PRIMARY KEY (id);');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: type_brands type_brands_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY public.type_brands');
INSERT INTO public."myStore" VALUES ('    ADD CONSTRAINT type_brands_pkey PRIMARY KEY (id);');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: type_brands type_brands_typeId_brandId_key; Type: CONSTRAINT; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY public.type_brands');
INSERT INTO public."myStore" VALUES ('    ADD CONSTRAINT "type_brands_typeId_brandId_key" UNIQUE ("typeId", "brandId");');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: types types_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY public.types');
INSERT INTO public."myStore" VALUES ('    ADD CONSTRAINT types_name_key UNIQUE (name);');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: types types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY public.types');
INSERT INTO public."myStore" VALUES ('    ADD CONSTRAINT types_pkey PRIMARY KEY (id);');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY public.users');
INSERT INTO public."myStore" VALUES ('    ADD CONSTRAINT users_email_key UNIQUE (email);');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY public.users');
INSERT INTO public."myStore" VALUES ('    ADD CONSTRAINT users_pkey PRIMARY KEY (id);');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: table_name_name_uindex; Type: INDEX; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('CREATE UNIQUE INDEX table_name_name_uindex ON postgres.table_name USING btree (name);');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: basket_devices basket_devices_basketId_fkey; Type: FK CONSTRAINT; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY postgres.basket_devices');
INSERT INTO public."myStore" VALUES ('    ADD CONSTRAINT "basket_devices_basketId_fkey" FOREIGN KEY ("basketId") REFERENCES postgres.baskets(id) ON UPDATE CASCADE ON DELETE SET NULL;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: basket_devices basket_devices_deviceId_fkey; Type: FK CONSTRAINT; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY postgres.basket_devices');
INSERT INTO public."myStore" VALUES ('    ADD CONSTRAINT "basket_devices_deviceId_fkey" FOREIGN KEY ("deviceId") REFERENCES postgres.devices(id) ON UPDATE CASCADE ON DELETE SET NULL;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: baskets baskets_userId_fkey; Type: FK CONSTRAINT; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY postgres.baskets');
INSERT INTO public."myStore" VALUES ('    ADD CONSTRAINT "baskets_userId_fkey" FOREIGN KEY ("userId") REFERENCES postgres.users(id) ON UPDATE CASCADE ON DELETE SET NULL;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: device_infos device_infos_deviceId_fkey; Type: FK CONSTRAINT; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY postgres.device_infos');
INSERT INTO public."myStore" VALUES ('    ADD CONSTRAINT "device_infos_deviceId_fkey" FOREIGN KEY ("deviceId") REFERENCES postgres.devices(id) ON UPDATE CASCADE ON DELETE SET NULL;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: devices devices_brandId_fkey; Type: FK CONSTRAINT; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY postgres.devices');
INSERT INTO public."myStore" VALUES ('    ADD CONSTRAINT "devices_brandId_fkey" FOREIGN KEY ("brandId") REFERENCES postgres.brands(id) ON UPDATE CASCADE ON DELETE SET NULL;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: devices devices_typeId_fkey; Type: FK CONSTRAINT; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY postgres.devices');
INSERT INTO public."myStore" VALUES ('    ADD CONSTRAINT "devices_typeId_fkey" FOREIGN KEY ("typeId") REFERENCES postgres.types(id) ON UPDATE CASCADE ON DELETE SET NULL;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: ratings ratings_deviceId_fkey; Type: FK CONSTRAINT; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY postgres.ratings');
INSERT INTO public."myStore" VALUES ('    ADD CONSTRAINT "ratings_deviceId_fkey" FOREIGN KEY ("deviceId") REFERENCES postgres.devices(id) ON UPDATE CASCADE ON DELETE SET NULL;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: ratings ratings_userId_fkey; Type: FK CONSTRAINT; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY postgres.ratings');
INSERT INTO public."myStore" VALUES ('    ADD CONSTRAINT "ratings_userId_fkey" FOREIGN KEY ("userId") REFERENCES postgres.users(id) ON UPDATE CASCADE ON DELETE SET NULL;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: type_brands type_brands_brandId_fkey; Type: FK CONSTRAINT; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY postgres.type_brands');
INSERT INTO public."myStore" VALUES ('    ADD CONSTRAINT "type_brands_brandId_fkey" FOREIGN KEY ("brandId") REFERENCES postgres.brands(id) ON UPDATE CASCADE ON DELETE CASCADE;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: type_brands type_brands_typeId_fkey; Type: FK CONSTRAINT; Schema: postgres; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY postgres.type_brands');
INSERT INTO public."myStore" VALUES ('    ADD CONSTRAINT "type_brands_typeId_fkey" FOREIGN KEY ("typeId") REFERENCES postgres.types(id) ON UPDATE CASCADE ON DELETE CASCADE;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: basket_devices basket_devices_basketId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY public.basket_devices');
INSERT INTO public."myStore" VALUES ('    ADD CONSTRAINT "basket_devices_basketId_fkey" FOREIGN KEY ("basketId") REFERENCES public.baskets(id) ON UPDATE CASCADE ON DELETE SET NULL;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: basket_devices basket_devices_deviceId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY public.basket_devices');
INSERT INTO public."myStore" VALUES ('    ADD CONSTRAINT "basket_devices_deviceId_fkey" FOREIGN KEY ("deviceId") REFERENCES public.devices(id) ON UPDATE CASCADE ON DELETE SET NULL;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: baskets baskets_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY public.baskets');
INSERT INTO public."myStore" VALUES ('    ADD CONSTRAINT "baskets_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: device_infos device_infos_deviceId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY public.device_infos');
INSERT INTO public."myStore" VALUES ('    ADD CONSTRAINT "device_infos_deviceId_fkey" FOREIGN KEY ("deviceId") REFERENCES public.devices(id) ON UPDATE CASCADE ON DELETE SET NULL;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: devices devices_brandId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY public.devices');
INSERT INTO public."myStore" VALUES ('    ADD CONSTRAINT "devices_brandId_fkey" FOREIGN KEY ("brandId") REFERENCES public.brands(id) ON UPDATE CASCADE ON DELETE SET NULL;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: devices devices_typeId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY public.devices');
INSERT INTO public."myStore" VALUES ('    ADD CONSTRAINT "devices_typeId_fkey" FOREIGN KEY ("typeId") REFERENCES public.types(id) ON UPDATE CASCADE ON DELETE SET NULL;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: ratings ratings_deviceId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY public.ratings');
INSERT INTO public."myStore" VALUES ('    ADD CONSTRAINT "ratings_deviceId_fkey" FOREIGN KEY ("deviceId") REFERENCES public.devices(id) ON UPDATE CASCADE ON DELETE SET NULL;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: ratings ratings_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY public.ratings');
INSERT INTO public."myStore" VALUES ('    ADD CONSTRAINT "ratings_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: type_brands type_brands_brandId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY public.type_brands');
INSERT INTO public."myStore" VALUES ('    ADD CONSTRAINT "type_brands_brandId_fkey" FOREIGN KEY ("brandId") REFERENCES public.brands(id) ON UPDATE CASCADE ON DELETE CASCADE;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- Name: type_brands type_brands_typeId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('ALTER TABLE ONLY public.type_brands');
INSERT INTO public."myStore" VALUES ('    ADD CONSTRAINT "type_brands_typeId_fkey" FOREIGN KEY ("typeId") REFERENCES public.types(id) ON UPDATE CASCADE ON DELETE CASCADE;');
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES (NULL);
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES ('-- PostgreSQL database dump complete');
INSERT INTO public."myStore" VALUES ('--');
INSERT INTO public."myStore" VALUES (NULL);


--
-- Data for Name: ratings; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: type_brands; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.type_brands VALUES (1, '2021-12-02 14:20:15.591+00', '2021-12-02 14:20:15.591+00', 2, 1);



--
-- Name: basket_devices_id_seq; Type: SEQUENCE SET; Schema: postgres; Owner: postgres
--

SELECT pg_catalog.setval('postgres.basket_devices_id_seq', 1, true);


--
-- Name: baskets_id_seq; Type: SEQUENCE SET; Schema: postgres; Owner: postgres
--

SELECT pg_catalog.setval('postgres.baskets_id_seq', 3, true);


--
-- Name: brands_id_seq; Type: SEQUENCE SET; Schema: postgres; Owner: postgres
--

SELECT pg_catalog.setval('postgres.brands_id_seq', 3, true);


--
-- Name: device_infos_id_seq; Type: SEQUENCE SET; Schema: postgres; Owner: postgres
--

SELECT pg_catalog.setval('postgres.device_infos_id_seq', 98, true);


--
-- Name: devices_id_seq; Type: SEQUENCE SET; Schema: postgres; Owner: postgres
--

SELECT pg_catalog.setval('postgres.devices_id_seq', 14, true);


--
-- Name: ratings_id_seq; Type: SEQUENCE SET; Schema: postgres; Owner: postgres
--

SELECT pg_catalog.setval('postgres.ratings_id_seq', 1, false);


--
-- Name: table_name_id_seq; Type: SEQUENCE SET; Schema: postgres; Owner: postgres
--

SELECT pg_catalog.setval('postgres.table_name_id_seq', 1, false);


--
-- Name: type_brands_id_seq; Type: SEQUENCE SET; Schema: postgres; Owner: postgres
--

SELECT pg_catalog.setval('postgres.type_brands_id_seq', 4, true);


--
-- Name: types_id_seq; Type: SEQUENCE SET; Schema: postgres; Owner: postgres
--

SELECT pg_catalog.setval('postgres.types_id_seq', 4, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: postgres; Owner: postgres
--

SELECT pg_catalog.setval('postgres.users_id_seq', 4, true);


--
-- Name: basket_devices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.basket_devices_id_seq', 1, false);


--
-- Name: baskets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.baskets_id_seq', 1, true);


--
-- Name: brands_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.brands_id_seq', 4, true);


--
-- Name: device_infos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.device_infos_id_seq', 8, true);


--
-- Name: devices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.devices_id_seq', 3, true);


--
-- Name: ratings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ratings_id_seq', 1, false);


--
-- Name: type_brands_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.type_brands_id_seq', 2, true);


--
-- Name: types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.types_id_seq', 4, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- PostgreSQL database dump complete
--


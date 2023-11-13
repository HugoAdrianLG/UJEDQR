-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-11-2023 a las 03:08:05
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdprueba`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `ID` int(4) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellido_paterno` varchar(20) NOT NULL,
  `Apellido_materno` varchar(20) NOT NULL,
  `CURP` varchar(18) NOT NULL,
  `Carrera` varchar(20) NOT NULL,
  `Contraseña` varchar(100) NOT NULL,
  `Matricula` varchar(50) NOT NULL,
  `Semestre` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`ID`, `Nombre`, `Apellido_paterno`, `Apellido_materno`, `CURP`, `Carrera`, `Contraseña`, `Matricula`, `Semestre`) VALUES
(1, 'Angela', 'Chairez', 'Martinez', 'ANCM12395018917192', 'Odontolofgia', 'SimonSiSoy', 'ACMOD2023124', 6),
(2, 'Pedro Enrique', 'Nieto', 'Estrada', 'PENE12395018917192', 'Veterinaria', 'NelsonNoSoy', 'PENEVN2023124', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clase`
--

CREATE TABLE `clase` (
  `ID` int(4) NOT NULL,
  `Clase` text NOT NULL,
  `Hora` timestamp NOT NULL DEFAULT current_timestamp(),
  `Profesor` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clase`
--

INSERT INTO `clase` (`ID`, `Clase`, `Hora`, `Profesor`) VALUES
(1, 'Introducción a odontología', '2023-10-18 14:56:13', 'Carmen Contreras');

--
-- Disparadores `clase`
--
DELIMITER $$
CREATE TRIGGER `registro` BEFORE UPDATE ON `clase` FOR EACH ROW SET NEW.Hora = NOW()
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-10-03 02:27:53.081039'),
(2, 'auth', '0001_initial', '2023-10-03 02:27:53.091887'),
(3, 'admin', '0001_initial', '2023-10-03 02:27:53.096300'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-10-03 02:27:53.103868'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-10-03 02:27:53.109870'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-10-03 02:27:53.114968'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-10-03 02:27:53.120378'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-10-03 02:27:53.125491'),
(9, 'auth', '0004_alter_user_username_opts', '2023-10-03 02:27:53.132496'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-10-03 02:27:53.138595'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-10-03 02:27:53.142244'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-10-03 02:27:53.150865'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-10-03 02:27:53.156931'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-10-03 02:27:53.162296'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-10-03 02:27:53.167705'),
(16, 'auth', '0011_update_proxy_permissions', '2023-10-03 02:27:53.173731'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-10-03 02:27:53.180366'),
(18, 'sessions', '0001_initial', '2023-10-03 02:27:53.186837');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('3aw6cc2mo1ag7etoteefu3zrtdk7un7r', 'eyJ1c3VhcmlvIHZlcmlmaWNhZG8iOnRydWV9:1r0kx4:y1cmudkIySAR88FyC77RJSmte5C96k16u6YvIs3RahM', '2023-11-08 16:28:46.361209'),
('mi6e1lawq8gxapzardmr3x75dq5d7rdn', 'eyJ1c3VhcmlvIHZlcmlmaWNhZG8iOnRydWV9:1qsZ10:mj3OXzois1eCq3WQUG1QS5DFqo9iVlx_3QvJq5u0nn8', '2023-10-31 01:36:58.702201'),
('s45qb2hh12yvegegs2qqk1a9ngy2j7p3', 'eyJ1c3VhcmlvIHZlcmlmaWNhZG8iOnRydWV9:1r0ucx:iW8yl4Fdt2IZqk2YozweTYlbUnm4y1g2CMxCipC73FQ', '2023-11-09 02:48:39.528409'),
('tzo4otp9oth4tx2wnoezcmvp1ae009rv', 'eyJ1c3VhcmlvIHZlcmlmaWNhZG8iOnRydWV9:1r16xF:UzwGqJ20oo7Gz7Ug6Uf2RaMJ_vRWZWku-7qUtu5UaOM', '2023-11-09 15:58:25.933807'),
('wlcoaev6sua1i67eredx3ebvaj8klnh2', 'eyJ1c3VhcmlvIHZlcmlmaWNhZG8iOnRydWV9:1r1Hxp:PAG7G-pxxvGxn9ytT9deLLUFyjLDL__8pk5MYY5HT_k', '2023-11-10 03:43:45.746738');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maestros`
--

CREATE TABLE `maestros` (
  `ID` int(4) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellido_paterno` varchar(20) NOT NULL,
  `Apellido_materno` varchar(20) NOT NULL,
  `CURP` varchar(18) NOT NULL,
  `Contraseña` varchar(100) NOT NULL,
  `Matricula` varchar(50) NOT NULL,
  `Registro` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `maestros`
--

INSERT INTO `maestros` (`ID`, `Nombre`, `Apellido_paterno`, `Apellido_materno`, `CURP`, `Contraseña`, `Matricula`, `Registro`) VALUES
(1, 'Carmen', 'Contreras', 'Carmino', 'CACC123522356415', '12334567', 'CACC12352785', '2023-10-18 09:36:35');

--
-- Disparadores `maestros`
--
DELIMITER $$
CREATE TRIGGER `hora` BEFORE UPDATE ON `maestros` FOR EACH ROW SET NEW.Registro = NOW()
$$
DELIMITER ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `clase`
--
ALTER TABLE `clase`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `expire_date` (`expire_date`);

--
-- Indices de la tabla `maestros`
--
ALTER TABLE `maestros`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `clase`
--
ALTER TABLE `clase`
  MODIFY `ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `maestros`
--
ALTER TABLE `maestros`
  MODIFY `ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

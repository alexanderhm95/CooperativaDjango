-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-02-2021 a las 23:44:43
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cooperativa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'gestion_clientes'),
(2, 'transacciones');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 11),
(12, 1, 12),
(13, 1, 13),
(14, 1, 14),
(15, 1, 15),
(16, 1, 16),
(17, 1, 17),
(18, 1, 18),
(19, 1, 19),
(20, 1, 20),
(21, 1, 21),
(22, 1, 22),
(23, 1, 23),
(24, 1, 24),
(25, 1, 25),
(26, 1, 26),
(27, 1, 27),
(28, 1, 28),
(29, 1, 29),
(30, 1, 30),
(31, 1, 31),
(32, 1, 32),
(33, 1, 33),
(34, 1, 34),
(35, 1, 35),
(36, 1, 36),
(37, 2, 1),
(38, 2, 2),
(39, 2, 3),
(40, 2, 4),
(41, 2, 5),
(42, 2, 6),
(43, 2, 7),
(44, 2, 8),
(45, 2, 9),
(46, 2, 10),
(47, 2, 11),
(48, 2, 12),
(49, 2, 13),
(50, 2, 14),
(51, 2, 15),
(52, 2, 16),
(53, 2, 17),
(54, 2, 18),
(55, 2, 19),
(56, 2, 20),
(57, 2, 21),
(58, 2, 22),
(59, 2, 23),
(60, 2, 24),
(61, 2, 25),
(62, 2, 26),
(63, 2, 27),
(64, 2, 28),
(65, 2, 29),
(66, 2, 30),
(67, 2, 31),
(68, 2, 32),
(69, 2, 33),
(70, 2, 34),
(71, 2, 35),
(72, 2, 36);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add cliente', 7, 'add_cliente'),
(26, 'Can change cliente', 7, 'change_cliente'),
(27, 'Can delete cliente', 7, 'delete_cliente'),
(28, 'Can view cliente', 7, 'view_cliente'),
(29, 'Can add cuenta', 8, 'add_cuenta'),
(30, 'Can change cuenta', 8, 'change_cuenta'),
(31, 'Can delete cuenta', 8, 'delete_cuenta'),
(32, 'Can view cuenta', 8, 'view_cuenta'),
(33, 'Can add transaccion', 9, 'add_transaccion'),
(34, 'Can change transaccion', 9, 'change_transaccion'),
(35, 'Can delete transaccion', 9, 'delete_transaccion'),
(36, 'Can view transaccion', 9, 'view_transaccion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$vuGLzemftkG3$2UFu39DeYFtsdFFwycEX4lp0CDV6JpSckyNLurNdKgw=', '2021-02-25 22:27:03.876728', 1, 'alex', '', '', 'sa@sdas.com', 1, 1, '2021-01-26 17:50:05.000000'),
(2, 'pbkdf2_sha256$216000$34KxSmpGZnp1$hlDu+i4QGEqVjy6MbeXpk7z/uGtmo4Cz4k31w6UVwFI=', NULL, 0, '0150106730', '', '', 'ddfgdfg@asdasd', 0, 1, '2021-01-26 17:53:32.317144'),
(3, 'pbkdf2_sha256$216000$FLEzyJ86aS07$QfenQTv0wzdnGQZl7aK46vJui7IqYvCu/HUQOkuls5M=', NULL, 0, '14444', 'Byron', 'Herrera', 'ddfgdfg@asdasd', 0, 1, '2021-01-26 17:56:01.432768');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_user_user_permissions`
--

INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 11),
(12, 1, 12),
(13, 1, 13),
(14, 1, 14),
(15, 1, 15),
(16, 1, 16),
(17, 1, 17),
(18, 1, 18),
(19, 1, 19),
(20, 1, 20),
(21, 1, 21),
(22, 1, 22),
(23, 1, 23),
(24, 1, 24),
(25, 1, 25),
(26, 1, 26),
(27, 1, 27),
(28, 1, 28),
(29, 1, 29),
(30, 1, 30),
(31, 1, 31),
(32, 1, 32),
(33, 1, 33),
(34, 1, 34),
(35, 1, 35),
(36, 1, 36);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-01-26 17:52:51.861971', '1', 'alex', 2, '[{\"changed\": {\"fields\": [\"User permissions\"]}}]', 4, 1),
(2, '2021-01-26 17:54:23.989213', '1', 'gestion_clientes', 1, '[{\"added\": {}}]', 3, 1),
(3, '2021-01-26 17:55:27.947743', '2', 'transacciones', 1, '[{\"added\": {}}]', 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'modelo', 'cliente'),
(8, 'modelo', 'cuenta'),
(9, 'modelo', 'transaccion'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-01-26 17:39:16.952292'),
(2, 'auth', '0001_initial', '2021-01-26 17:39:18.818466'),
(3, 'admin', '0001_initial', '2021-01-26 17:39:25.597470'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-01-26 17:39:26.955192'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-01-26 17:39:26.986172'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-01-26 17:39:27.873650'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-01-26 17:39:28.531194'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-01-26 17:39:28.642196'),
(9, 'auth', '0004_alter_user_username_opts', '2021-01-26 17:39:28.677173'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-01-26 17:39:29.716122'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-01-26 17:39:29.757239'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-01-26 17:39:29.801222'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-01-26 17:39:29.897447'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-01-26 17:39:29.991387'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-01-26 17:39:30.097441'),
(16, 'auth', '0011_update_proxy_permissions', '2021-01-26 17:39:30.142458'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-01-26 17:39:30.276374'),
(18, 'modelo', '0001_initial', '2021-01-26 17:39:30.926649'),
(19, 'modelo', '0002_auto_20201217_1144', '2021-01-26 17:39:32.932748'),
(20, 'modelo', '0003_auto_20210104_1808', '2021-01-26 17:39:37.572105'),
(21, 'modelo', '0004_auto_20210112_2041', '2021-01-26 17:39:37.722088'),
(22, 'sessions', '0001_initial', '2021-01-26 17:39:38.071186');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1j5y8xpmob2o1n8z7kbxomnmjpren8ru', '.eJxVjDkOwjAUBe_iGlk28YIp6TmD9f0XHECOFCcV4u4QKQW0b2beS2VYl5rXznMeSZ2VVYffrQA-uG2A7tBuk8apLfNY9KbonXZ9nYifl939O6jQ67dm4ZMzBtF460Rw8AmBYzIUyDlPxSEeTaQiMYgEHAxa9M6zgAVIpN4fBk05GA:1lFP68:-1dI4gBTK-_4IHY9PQNuj6MsZmeGe6fvRigNv_8FdFs', '2021-03-11 22:27:04.135184'),
('en824eka7qcxthptgiglpo1jlv7tamvk', '.eJxVjDkOwjAUBe_iGlk28YIp6TmD9f0XHECOFCcV4u4QKQW0b2beS2VYl5rXznMeSZ2VVYffrQA-uG2A7tBuk8apLfNY9KbonXZ9nYifl939O6jQ67dm4ZMzBtF460Rw8AmBYzIUyDlPxSEeTaQiMYgEHAxa9M6zgAVIpN4fBk05GA:1l4kSV:AYlMMg3G3BJOMXc5WMXi8n4CzuMKBnbx2o4QCuWimnM', '2021-02-10 13:02:07.504870');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modelo_cliente`
--

CREATE TABLE `modelo_cliente` (
  `cliente_id` int(11) NOT NULL,
  `cedula` varchar(10) NOT NULL,
  `nombres` varchar(70) NOT NULL,
  `apellidos` varchar(70) NOT NULL,
  `genero` varchar(20) NOT NULL,
  `estadoCivil` varchar(20) NOT NULL,
  `correo` varchar(105) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `celular` varchar(15) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `date_created` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modelo_cliente`
--

INSERT INTO `modelo_cliente` (`cliente_id`, `cedula`, `nombres`, `apellidos`, `genero`, `estadoCivil`, `correo`, `telefono`, `celular`, `direccion`, `date_created`) VALUES
(1, '0150106730', 'Byron', 'Herrera', 'masculino', 'soltero', 'ddfgdfg@asdasd', '1545454', '324324', '', '2021-01-26 17:53:32.271172'),
(2, '14444', 'Byron', 'Herrera', 'masculino', 'soltero', 'ddfgdfg@asdasd', '1545454', '324324', 'Catamayo', '2021-01-26 17:56:01.195873');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modelo_cuenta`
--

CREATE TABLE `modelo_cuenta` (
  `cuenta_id` int(11) NOT NULL,
  `numero` varchar(20) NOT NULL,
  `tipoCuenta` varchar(20) NOT NULL,
  `saldo` decimal(10,2) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `date_created` datetime(6) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `fechaApartura` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `modelo_cuenta`
--

INSERT INTO `modelo_cuenta` (`cuenta_id`, `numero`, `tipoCuenta`, `saldo`, `estado`, `date_created`, `cliente_id`, `fechaApartura`) VALUES
(1, '6456456', 'ahorros', '1500.00', 1, '2021-01-26 17:53:32.299158', 1, '2021-01-26 17:53:32.298156'),
(2, '222', 'ahorros', '1500.00', 1, '2021-01-26 17:56:01.273822', 2, '2021-01-26 17:56:01.273822');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modelo_transaccion`
--

CREATE TABLE `modelo_transaccion` (
  `transaccion_id` int(11) NOT NULL,
  `fecha` datetime(6) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `descripcion` longtext NOT NULL,
  `cuenta_id` int(11) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

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
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `modelo_cliente`
--
ALTER TABLE `modelo_cliente`
  ADD PRIMARY KEY (`cliente_id`),
  ADD UNIQUE KEY `cedula` (`cedula`);

--
-- Indices de la tabla `modelo_cuenta`
--
ALTER TABLE `modelo_cuenta`
  ADD PRIMARY KEY (`cuenta_id`),
  ADD UNIQUE KEY `numero` (`numero`),
  ADD KEY `modelo_cuenta_cliente_id_dcab0d68_fk_modelo_cliente_cliente_id` (`cliente_id`);

--
-- Indices de la tabla `modelo_transaccion`
--
ALTER TABLE `modelo_transaccion`
  ADD PRIMARY KEY (`transaccion_id`),
  ADD KEY `modelo_transaccion_cuenta_id_13e268f8_fk_modelo_cuenta_cuenta_id` (`cuenta_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `modelo_cliente`
--
ALTER TABLE `modelo_cliente`
  MODIFY `cliente_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `modelo_cuenta`
--
ALTER TABLE `modelo_cuenta`
  MODIFY `cuenta_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `modelo_transaccion`
--
ALTER TABLE `modelo_transaccion`
  MODIFY `transaccion_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `modelo_cuenta`
--
ALTER TABLE `modelo_cuenta`
  ADD CONSTRAINT `modelo_cuenta_cliente_id_dcab0d68_fk_modelo_cliente_cliente_id` FOREIGN KEY (`cliente_id`) REFERENCES `modelo_cliente` (`cliente_id`);

--
-- Filtros para la tabla `modelo_transaccion`
--
ALTER TABLE `modelo_transaccion`
  ADD CONSTRAINT `modelo_transaccion_cuenta_id_13e268f8_fk_modelo_cuenta_cuenta_id` FOREIGN KEY (`cuenta_id`) REFERENCES `modelo_cuenta` (`cuenta_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

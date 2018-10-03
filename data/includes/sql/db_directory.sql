-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 10-06-2017 a las 00:03:42
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `directorio_books`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `directorio`
--

CREATE TABLE `directorio` (
  `id` int(11) NOT NULL,
  `name` text,
  `last_nam` text,
  `cargo` text,
  `area` text,
  `tel` text,
  `tel_ext` text,
  `cel` text,
  `email` text,
  `email_sec` text,
  `city` text,
  `clave` text,
  `img_ruta` text,
  `img_nam` text,
  `img_form` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `directorio`
--

INSERT INTO `directorio` (`id`, `name`, `last_nam`, `cargo`, `area`, `tel`, `tel_ext`, `cel`, `email`, `email_sec`, `city`, `clave`, `img_ruta`, `img_nam`, `img_form`) VALUES
(1, 'Dark', 'Vader', 'lord', 'death star', '123 4567', '123456', '3334567890', 'darkvader@evilcorp.com', '', 'death star', '123456', 'assets/multimedia/images/perfiles/', 'nn', '.png'),
(2, 'Recepcion', '1 Recepcion', 'Recepcion', 'Gestion administrativa', '123 4567', '101', '3334567890', 'recepcion@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '1', '.png'),
(3, 'Viviana', 'Cabra', 'Auxiliar Contable', 'Financiera', '123 4567', '426', '3334567890', 'auxconta3@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '2', '.png'),
(4, 'Pilar', 'Sanchez', 'Facturacion EH', 'SAC', '123 4567', '303', '3334567890', 'servi_cliente@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '3', '.png'),
(5, 'Edwin', 'Gonzalez', 'Cartera', 'Financiera', '123 4567', '132', '3334567890', 'cartera@evilcorp.com.co', 'cartera@evilcorp.com.co', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '4', '.png'),
(6, 'Laura', 'Castro', 'Contador', 'Financiera', '123 4567', '144', '3334567890', 'contador@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '5', '.png'),
(7, 'Emanuel', 'Cortes', 'Gerente General', 'Gerencia', '123 4567', '110', '', 'gerencia@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '6', '.png'),
(8, 'Alejandra', 'Rodriguez', 'Tesoreria', 'Financiera', '123 4567', '155', '3334567890', 'tesoreria@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(9, 'Maria Paula', 'Barrera', 'Cartera', 'Financiera', '123 4567', '133', '3334567890', 'cartera2@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '8', '.png'),
(10, 'Andres', 'Gallego', 'Coordinado de Servicio al cliente', 'SAC', '123 4567', '109', '3334567890', 'pedidos@evilcorp.com.co', 'servi_cliente@evilcorp.com.co desarrolladorweb@evilcorp.com.co', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '10', '.png'),
(11, 'Doris', 'Mora', 'Cotizaciones', 'SAC', '123 4567', '107', '3334567890', 'cotizaschool@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '11', '.png'),
(12, 'Betty', 'Quintero', 'Facturacion Books', 'SAC', '123 4567', '127', '3334567890', 'facturacion@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '12', '.png'),
(13, 'Natalia', 'Granados', 'Cotizaciones', 'SAC', '123 4567', '125', '3334567890', 'cotizacioneselt@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '13', '.png'),
(14, 'Diana', 'Agudelo', 'Inventarios', 'SAC', '123 4567', '126', '3334567890', 'compras@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '14', '.png'),
(15, 'Recepcion', 'FAX', 'Recepcion', 'Gestion administrativa', '123 4567', '424', '3334567890', 'recepcion@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '15', '.png'),
(16, 'Monica', 'Cely', 'Ilustrador', 'Proyectos', '123 4567', '484', '3334567890', 'mcely@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '17', '.png'),
(17, 'Lorena', 'Godoy', 'Representante', 'Representante de Ventas', '123 4567', '432', '3334567890', 'lgodoy@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '18', '.png'),
(18, 'Luis', 'Rozo', 'Representante', 'Representante de Ventas', '123 4567', '470', '3334567890', 'lrozo@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '20', '.png'),
(19, 'Carol Bibiana', 'Blanco', 'Salud ocupacional', 'Gestion administrativa', '123 4567', '149', '3334567890', 'saludocupacional@evilcorp.com.co', 'copasst@evilcorp.com.co', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '21', '.png'),
(20, 'Pilar', 'Martinez', 'Representante', 'Representante de Ventas', '123 4567', '469', '3334567890', 'pmartinez@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(21, 'Ana', 'Rico', 'Ilustrador', 'Proyectos', '123 4567', '450', '3334567890', 'arico@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(22, 'Myriam', 'Fuentes', 'Consultor Tecnologico', 'Gestion administrativa', '123 4567', '347', '3334567890', 'consultor@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '24', '.png'),
(23, 'Diego', 'Gonzalez', 'Representante', 'Representante de Ventas', '123 4567', '453', '3334567890', 'dgonzalez@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '25', '.png'),
(24, 'Centro de datos', '2do Piso', 'Gestion administrativa', 'Gestion administrativa', '123 4567', '457', '3334567890', 'sistec@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '27', '.png'),
(25, 'Oscar', 'Rodriguez', 'Ilustrador', 'Proyectos', '123 4567', '474', '3334567890', 'orodriguez@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '29', '.png'),
(26, 'Fernando', 'Bohorquez', 'Coordinador Importaciones', 'SAC', '123 4567', '140', '3334567890', 'importaciones@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '30', '.png'),
(27, 'Alejandra', 'Muñoz', 'Diseñador 3D', 'Proyectos', '123 4567', '471', '3334567890', 'kmunoz@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(28, 'Miguel', 'Tinjaca', 'Auxiliar Inventario', 'SAC', '123 4567', '467', '3334567890', 'auxauditoria@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(29, 'Harley', 'Santos Garzón', 'Programador', 'Proyectos', '123 4567', '319', '3334567890', 'hgarzon@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(30, 'Juan', 'Rojas', 'Programador', 'Proyectos', '123 4567', '444', '3334567890', 'jrojas@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(31, 'Mauricio', 'Leon', 'Representante', 'Representante de Ventas', '123 4567', '473', '3334567890', 'mleon@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(32, 'Auditorio', 'Edificio', 'Gestion administrativa', 'Gestion administrativa', '123 4567', '213', '3334567890', 'eventos@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '37', '.png'),
(33, 'Terraza', '', 'Gestion administrativa', 'Gestion administrativa', '123 4567', '131', '', 'terraza@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '38', '.png'),
(34, 'Monitoreo', '', 'Gestion administrativa', 'Gestion administrativa', '123 4567', '251', '3334567890', 'recepcion@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '40', '.png'),
(35, 'Roberto', 'Novoa', 'Representante', 'Representante de Ventas', '123 4567', '481', '3334567890', 'repbogota02@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(36, 'Fernando', 'Cortes', 'Importaciones', 'Representante de Ventas', '123 4567', '315', '3334567890', 'fcortes@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '43', '.png'),
(37, 'mantenimiento', '', '', 'Gestion administrativa', '123 4567', '236', '', '', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(38, 'Fernando Mora', '', '', '', '123 4567', '486', '3334567890', '', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(39, 'David', 'Barrera', 'Oxford', 'Oxford', '123 4567', '487', '3334567890', 'david.barrera@evilcorp.com', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '46', '.png'),
(40, 'José', 'Bejarano', 'Representante', 'Representante de Ventas', '123 4567', '312', '3334567890', 'jbejarano@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(41, 'Yolanda', 'Pedraza', 'Representante', 'Representante de Ventas', '123 4567', '313', '3334567890', 'dpedraza@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '48', '.png'),
(42, 'Henry', 'Rodriguez', 'Representante', 'Representante de Ventas', '123 4567', '156', '3334567890', 'hrodriguez@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '49', '.png'),
(43, 'Andres', 'Cifuentes', 'Oxford', 'Oxford', '123 4567', '492', '3334567890', 'andres.cifuentes@evilcorp.com', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '50', '.png'),
(44, 'Katerine', 'Sanchez', 'Oxford', 'Oxford', '123 4567', '311', '3334567890', 'catherine.sanchez@evilcorp.com', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '51', '.png'),
(45, 'Andres', 'Riano', 'Inventarios', 'SAC', '123 4567', '428', '3334567890', 'auxsac@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '53', '.png'),
(46, 'Ivan', 'Romero', 'Facturacion Books', 'SAC', '123 4567', '250', '3334567890', 'facturacion1@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '55', '.png'),
(47, 'Daiana', 'Lopez', 'Representante', 'Representante de Ventas', '123 4567', '465', '3334567890', 'dlopez@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(48, 'Francisco', 'Tovar', 'Oxford', 'Oxford', '123 4567', '317', '3334567890', 'francisco.tovar@evilcorp.com', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '57', '.png'),
(49, 'Sara', 'Gonzalez', 'Oxford', 'Oxford', '123 4567', '322', '3334567890', 'sara.gonzalez@evilcorp.com', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '58', '.png'),
(50, 'Cesar', 'Porras', 'Programador', 'Proyectos', '2576350', '453', '3334567890', 'cporras@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '59', '.png'),
(51, 'Anderson', 'Mendez', 'Programador', 'Proyectos', '2284040', '230', '3334567890', 'amendez@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(52, 'Jhon', 'Aldana', 'Programador', 'Proyectos', '', '232', '3334567890', 'jaldana@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(53, 'Manuel', 'Fuentes', 'Animador 3D', 'Proyectos', '123 4567', '463', '3334567890', 'mfuentes@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(54, 'Liza', 'Arevalo', 'Gerente Administrativo', 'Gerencia', '123 4567', '136', '3334567890', 'gerenciaadministrativa@evilcorp.com.co', 'auditoria@evilcorp.com.co', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '64', '.png'),
(55, 'Diana', 'Vargas', 'Representante', 'Representante de Ventas', '123 4567', '152', '3334567890', 'dvargas@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '65', '.png'),
(56, 'Yimara', 'Caraballo', 'Coordinador RRHH', 'Gestion administrativa', '123 4567', '117', '3334567890', 'personal@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '66', '.png'),
(57, 'John', 'Rico', 'Asistente Administrativo', 'Gestion administrativa', '123 4567', '143', '3334567890', 'asistentegerencia@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '67', '.png'),
(58, 'Adriana', 'Sanchez', 'Auxiliar RRHH', 'Gestion administrativa', '123 4567', '329', '3334567890', 'asistenteRRHH@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '68', '.png'),
(59, 'Alejandra', 'Nova', 'Coordinador Pagina Web', 'SAC', '123 4567', '154', '3334567890', 'ventasweb@evilcorp.com.co', 'eventos@evilcorp.com.co webmaster@evilcorp.com.co', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '69', '.png'),
(60, 'Anggie', 'Quebrada', 'Auxiliar Contable', 'Financiera', '123 4567', '147', '3334567890', 'auxconta2@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '70', '.png'),
(61, 'Edilberto', 'Lee', 'Auditor Interno', 'Financiera', '123 4567', '122', '3334567890', 'revisoriafiscal@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '71', '.png'),
(62, 'Soraya', 'Cortes', 'Gerente Servicio al Cliente', 'Gerencia', '123 4567', '111', '3334567890', 'sorayac@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '72', '.png'),
(63, 'Caroline', 'Caviglia', 'Oxford', 'Oxford', '123 4567', '304', '3334567890', 'carolina.caviglia@evilcorp.com', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '73', '.png'),
(64, 'Yessica', 'Velasquez', 'Auxiliar Contable', 'Financiera', '123 4567', '123', '3334567890', 'auxconta@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '74', '.png'),
(65, 'Stella', 'Correa', 'Coordinador Editorial', 'Proyectos', '123 4567', '106', '3334567890', 'scorrea@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '75', '.png'),
(66, 'Sala de Juntas', 'Gerencia', 'Gestion administrativa', 'Gestion administrativa', '123 4567', '241', '', 'eventos@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '76', '.png'),
(67, 'Claudia', 'Gonzalez', 'Representante', 'Representante de Ventas', '123 4567', '306', '3334567890', 'cgonzalez@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '77', '.png'),
(68, 'Gustavo', 'Angel', 'Coordinador Digital', 'Proyectos', '123 4567', '468', '3334567890', 'gangel@evilcorp.com.co', 'gangel@evilcorp.com.co', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '78', '.png'),
(69, 'Aux Admin Libreria', 'Bogotá', 'Auxiliar Administrativo', 'sucursal Bogotá', '123 4567', '138', '3334567890', 'libreria@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '79', '.png'),
(70, 'Sarah', 'Cortes', 'Gerente de Producto', 'Gerencia', '123 4567', '227', '', 'scortes@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(71, 'Tienda Café', 'Bogotá', 'Servicios sucursal', 'sucursal Bogotá', '123 4567', '142', '3334567890', 'libreria@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '81', '.png'),
(72, 'Juliana', 'Cortes', 'Gerente de Producto', 'Gerencia', '123 4567', '134', '3334567890', 'jcortes@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(73, 'Rotonda', '1', 'Atencion al cliente', 'sucursal Bogotá', '123 4567', '130', '3334567890', 'callcenter1@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '83', '.png'),
(74, 'Rotonda', '2', 'Atencion al cliente', 'sucursal Bogotá', '123 4567', '129', '3334567890', 'callcenter1@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '84', '.png'),
(75, 'Call Center', '4', 'Atencion al cliente', 'sucursal Bogotá', '123 4567', '321', '3334567890', 'callcenter1@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '85', '.png'),
(76, 'Call Center', '5', 'Atencion al cliente', 'sucursal Bogotá', '123 4567', '370', '3334567890', 'callcenter1@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '86', '.png'),
(77, 'Sala de juntas', '2do Piso', 'Gestion administrativa', 'SAC', '123 4567', '323', '3334567890', 'eventos@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '87', '.png'),
(78, 'Call Center', '2', 'Atencion al cliente', 'sucursal Bogotá', '123 4567', '102', '3334567890', 'callcenter1@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '88', '.png'),
(79, 'Rontonda', '3', 'Atencion al cliente', 'sucursal Bogotá', '123 4567', '170', '3334567890', 'callcenter1@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '89', '.png'),
(80, 'Sala de Juntas', '2do Piso', 'Gestion administrativa', 'SAC', '123 4567', '324', '3334567890', 'eventos@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '90', '.png'),
(81, 'Auditorio', 'sucursal Bogotá', 'Gestion administrativa', 'SAC', '123 4567', '151', '3334567890', 'eventos@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '91', '.png'),
(82, 'Publicaciones', '', 'Atencion al cliente', 'SAC', '123 4567', '112', '3334567890', 'publicaciones@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '92', '.png'),
(83, 'Call Center3', '3', 'Atencion al cliente', 'sucursal Bogotá', '123 4567', '113', '3334567890', 'callcenter1@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '93', '.png'),
(84, 'sucursal', '2do Piso', 'Atencion al cliente', 'sucursal Bogotá', '123 4567', '135', '3334567890', 'callcenter1@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '94', '.png'),
(85, 'Call Center', '1', 'Atencion al cliente', 'SAC', '123 4567', '114', '3334567890', 'callcenter1@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '95', '.png'),
(86, 'Sadie', 'Huertas', 'Coordinador SGS', 'Gestion administrativa', '123 4567', '200', '3334567890', 'consultorsgs@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(87, 'Cateryn', 'Carvajal', 'Asistente Contador', 'Financiera', '123 4567', '121', '3334567890', 'asistentecontador@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '98', '.png'),
(88, 'Jair', 'Castro', 'Administrador sucursal Bogotá', 'sucursal Bogotá', '123 4567', '137', '3334567890', 'libreria@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '99', '.png'),
(89, 'Arleyn', 'Ramirez', 'Auxiliar de Bodega', 'Bodega Afinco', '123 4567', '485', '3334567890', 'almacen@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(90, 'Orlando', 'Rodriguez', 'Coordinador Bodega Afinco', 'Bodega Afinco', '123 4567', '332', '3334567890', 'inventario@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '101', '.png'),
(91, 'Sala de juntas', 'Piso 3', 'Gestion administrativa', 'SAC', '123 4567', '325', '3334567890', 'eventos@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '102', '.png'),
(92, 'Nidia', 'Casas', 'Correcion Editorial', 'Proyectos', '123 4567', '441', '3334567890', 'ncasas@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '103', '.png'),
(93, 'Ana Maria', 'Tobon', 'Gerente Punto de Venta', 'Libreria Medellin', '123 4567', '327', '3334567890', 'atobon@evilcorp.com.co', '', 'Medellin', '123456', 'assets/multimedia/images/perfiles/', '104', '.png'),
(94, 'Libreria Cali', '', 'sucursal Cali', 'Libreria Cali', '123 4567', '328', '3334567890', 'cali@evilcorp.com.co', '', 'Cali', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(95, 'John', 'Mozo', 'Auxiliar Administrativo EH', 'SAC', '123 4567', '301', '3334567890', 'asistente@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '106', '.png'),
(96, 'Pedro', 'Morera', 'Gerente Punto de Venta', 'Libreria Cali', '123 4567', '355', '3334567890', 'pmorera@evilcorp.com.co', '', 'Cali', '123456', 'assets/multimedia/images/perfiles/', '107', '.png'),
(97, 'Bodega Ediciones', '', 'Bodega Ediciones', 'Bodega Ediciones', '123 4567', '331', '3334567890', 'bodega@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '108', '.png'),
(98, 'Abraham', 'Sir', 'Representante', 'Representante de Ventas', '123 4567', '', '3334567890', 'a.sir@evilcorp.com.co', '', '', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(99, 'Adriana', 'Cortes', 'Auxiliar Inventario', 'Bodega Afinco', '123 4567', '332', '3334567890', 'auxinventario@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '110', '.png'),
(100, 'Brayan', 'Bejarano', 'Auxiliar Inventario', 'Bodega Afinco', '123 4567', '332', '3334567890', 'hmhmuestras@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(101, 'Carlos', 'Montagut', 'Gerente de Producto', 'Representante de Ventas', '123 4567', '', '3334567890', 'cmontagut@evilcorp.com.co', '', 'Norte de Santander', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(102, 'Cesar', 'Valdivieso', 'Gerente Punto de Venta', 'Representante de Ventas', '123 4567', '501', '3334567890', 'cvaldivieso@evilcorp.com.co', '', 'Barranquilla', '123456', 'assets/multimedia/images/perfiles/', '114', '.png'),
(103, 'Ciro', 'Ortiz', 'Representante', 'Representante de Ventas', '123 4567', '', '3334567890', 'cortiz@evilcorp.com.co', '', 'Pasto', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(104, 'Eliana', 'Osorio', 'Consultor Academico', 'Representante de Ventas', '123 4567', '223', '3334567890', 'eosorio@evilcorp.com.co', '', 'Inglaterra', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(105, 'Freddy', 'Cataño', 'Representante', 'Representante de Ventas', '123 4567', '327', '3334567890', 'fcatano@evilcorp.com.co', '', 'Medellin', '123456', 'assets/multimedia/images/perfiles/', '118', '.png'),
(106, 'Geovanny', 'Rodriguez', 'Representante', 'Representante de Ventas', '123 4567', '355', '3334567890', 'grodriguez@evilcorp.com.co', '', 'Cali', '123456', 'assets/multimedia/images/perfiles/', '119', '.png'),
(107, 'John', 'Torres', 'Auxiliar RRHH', 'Gestion administrativa', '123 4567', '438', '3334567890', 'auxiliarcalidadrh@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '120', '.png'),
(108, 'Jolman', 'Daza', 'Auxiliar de Sistemas', 'Gestion administrativa', '123 4567', '347', '3334567890', 'jdaza@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(109, 'sucursal Barranquilla', '', 'sucursal Barranquilla', 'sucursal Barranquilla', '123 4567', '501', '3334567890', 'barranquilla@evilcorp.com.co', '', 'Barranquilla', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(110, 'sucursal Medellin', '', 'sucursal Medellin', 'sucursal Medellin', '123 4567', '327', '3334567890', 'medellin@evilcorp.com.co', '', 'Medellin', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(111, 'Sebastian', 'Chocontá', 'Coordinador de Sistemas', 'Gestion administrativa', '123 4567', '347', '3334567890', 'schoconta@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(112, 'Sthepane', 'Bey', 'Consultor Academico', 'Representante de Ventas', '123 4567', '', '3334567890', 'sbey@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(113, 'Viviana María', 'Marín Sanchez', 'Programador', 'Proyectos', '123 4567', '461', '3334567890', 'vmain@evilcorp.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(114, 'Fabian', 'Ramirez', 'Practicante SENA', 'Proyectos', '123 4567', '440', '', '', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(115, 'Jharry', 'Rodriguez', 'Practicante SENA', 'Proyectos', '123 4567', '458', '', '', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(116, 'Edwar ', 'Cuellar ', 'Practicante SENA', 'Proyectos', '123 4567', '447', '', '', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(117, 'Julian ', 'Homen', 'Practicante SENA', 'Proyectos', '123 4567', '436', '', '', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(118, 'Jhonatan', 'Velasquez', 'Programador', 'Proyectos', '123 4567', '455', '', '', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(119, 'Oscar', 'Ramirez', 'Ilustrador', 'Proyectos', '123 4567', '454', '', '', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(120, 'David', 'Duque', 'Programador', 'Proyectos', '123 4567', '477', '', '', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(121, 'Jorge', 'Lumbaque', 'Animador 3D', 'Proyectos', '123 4567', '466', '', '', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(122, 'Laura Sofia', 'Muñoz Gamboa', 'Digitalizadora ', '', '123 4567', '479', '', '', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(123, 'Juan Carlos ', 'Gutierrez Cubilllos', 'Digitalizador', '', '123 4567', '434', '', '', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `directorio`
--
ALTER TABLE `directorio`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `directorio`
--
ALTER TABLE `directorio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

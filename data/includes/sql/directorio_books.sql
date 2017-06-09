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
(1, 'Administrador', '', 'Administrador', '', '6333300', '0', '', 'admin', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'nn', '.png'),
(2, 'Recepcion', '1 Recepcion', 'Recepcion', 'Gestion administrativa', '6333300', '101', '3176379753', 'recepcion@booksandbooks.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '1', '.png'),
(3, 'Viviana', 'Cabra', 'Auxiliar Contable', 'Financiera', '6333300', '426', '3176457649', 'auxconta3@booksandbooks.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '2', '.png'),
(4, 'Pilar', 'Sanchez', 'Facturacion EH', 'SAC', '6333300', '303', '3168740649', 'servi_cliente@edhispano.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '3', '.png'),
(5, 'Edwin', 'Gonzalez', 'Cartera', 'Financiera', '6333300', '132', '3176457649', 'cartera@booksandbooks.com.co', 'cartera@edhispano.com.co', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '4', '.png'),
(6, 'Laura', 'Castro', 'Contador', 'Financiera', '6333300', '144', '3176457649', 'contador@booksandbooks.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '5', '.png'),
(7, 'Victor', 'Cortes', 'Gerente General', 'Gerencia', '6333300', '110', '', 'gerencia@booksandbooks.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '6', '.png'),
(8, 'Alejandra', 'Rodriguez', 'Tesoreria', 'Financiera', '6333300', '155', '3176457649', 'tesoreria@booksandbooks.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(9, 'Maria Paula', 'Barrera', 'Cartera', 'Financiera', '6333300', '133', '3176457649', 'cartera2@booksandbooks.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '8', '.png'),
(10, 'Andres', 'Gallego', 'Coordinado de Servicio al cliente', 'SAC', '6333300', '109', '3182575332', 'pedidos@booksandbooks.com.co', 'servi_cliente@booksandbooks.com.co desarrolladorweb@booksandbooks.com.co', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '10', '.png'),
(11, 'Doris', 'Mora', 'Cotizaciones', 'SAC', '6333300', '107', '3182575332', 'cotizaschool@booksandbooks.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '11', '.png'),
(12, 'Betty', 'Quintero', 'Facturacion Books', 'SAC', '6333300', '127', '3182575332', 'facturacion@booksandbooks.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '12', '.png'),
(13, 'Natalia', 'Granados', 'Cotizaciones', 'SAC', '6333300', '125', '3182575332', 'cotizacioneselt@booksandbooks.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '13', '.png'),
(14, 'Diana', 'Agudelo', 'Inventarios', 'SAC', '6333300', '126', '3182575332', 'compras@booksandbooks.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '14', '.png'),
(15, 'Recepcion', 'FAX', 'Recepcion', 'Gestion administrativa', '6333300', '424', '3176379753', 'recepcion@booksandbooks.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '15', '.png'),
(16, 'Monica', 'Cely', 'Ilustrador', 'Proyectos', '6333300', '484', '3152575464', 'mcely@booksandbooksdigital.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '17', '.png'),
(17, 'Lorena', 'Godoy', 'Representante', 'Representante de Ventas', '6333300', '432', '3115980157', 'lgodoy@booksandbooks.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '18', '.png'),
(18, 'Luis', 'Rozo', 'Representante', 'Representante de Ventas', '6333300', '470', '3153660419', 'lrozo@booksandbooks.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '20', '.png'),
(19, 'Carol Bibiana', 'Blanco', 'Salud ocupacional', 'Gestion administrativa', '6333300', '149', '3182575332', 'saludocupacional@booksandbooks.com.co', 'copasst@booksandbooks.com.co', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '21', '.png'),
(20, 'Pilar', 'Martinez', 'Representante', 'Representante de Ventas', '6333300', '469', '3138600253', 'pmartinez@booksandbooks.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(21, 'Ana', 'Rico', 'Ilustrador', 'Proyectos', '6333300', '450', '3152575464', 'arico@booksandbooksdigital.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(22, 'Myriam', 'Fuentes', 'Consultor Tecnologico', 'Gestion administrativa', '6333300', '347', '3176678880', 'consultor@booksandbooks.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '24', '.png'),
(23, 'Diego', 'Gonzalez', 'Representante', 'Representante de Ventas', '6333300', '453', '3185605699', 'dgonzalez@booksandbooks.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '25', '.png'),
(24, 'Centro de datos', '2do Piso', 'Gestion administrativa', 'Gestion administrativa', '6333300', '457', '3176592687', 'sistec@booksandbooks.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '27', '.png'),
(25, 'Oscar', 'Rodriguez', 'Ilustrador', 'Proyectos', '6333300', '474', '3152575464', 'orodriguez@booksandbooksdigital.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '29', '.png'),
(26, 'Fernando', 'Bohorquez', 'Coordinador Importaciones', 'SAC', '6333300', '140', '3182575332', 'importaciones@booksandbooks.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '30', '.png'),
(27, 'Alejandra', 'Muñoz', 'Diseñador 3D', 'Proyectos', '6333300', '471', '3152575464', 'kmunoz@booksandbooksdigital.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(28, 'Miguel', 'Tinjaca', 'Auxiliar Inventario', 'SAC', '6333300', '467', '3182575332', 'auxauditoria@booksandbooks.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(29, 'Harley', 'Santos Garzón', 'Programador', 'Proyectos', '6333300', '319', '3152575464', 'hgarzon@booksandbooksdigital.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(30, 'Juan', 'Rojas', 'Programador', 'Proyectos', '6333300', '444', '3152575464', 'jrojas@booksandbooksdigital.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(31, 'Mauricio', 'Leon', 'Representante', 'Representante de Ventas', '6333300', '473', '3156836873', 'mleon@booksandbooks.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(32, 'Auditorio', 'Edificio', 'Gestion administrativa', 'Gestion administrativa', '6333300', '213', '3176592687', 'eventos@booksandbooks.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '37', '.png'),
(33, 'Terraza', '', 'Gestion administrativa', 'Gestion administrativa', '6333300', '131', '', 'terraza@booksandbooks.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '38', '.png'),
(34, 'Monitoreo', '', 'Gestion administrativa', 'Gestion administrativa', '6333300', '251', '3176379753', 'recepcion@booksandbooks.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '40', '.png'),
(35, 'Roberto', 'Novoa', 'Representante', 'Representante de Ventas', '6333300', '481', '3176413409', 'repbogota02@booksandbooks.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(36, 'Fernando', 'Cortes', 'Importaciones', 'Representante de Ventas', '6333300', '315', '3203926880', 'fcortes@edhispano.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '43', '.png'),
(37, 'Avanxo', '', '', 'Gestion administrativa', '6333300', '236', '', '', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(38, 'Fernando Mora', '', '', '', '6333300', '486', '', '', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(39, 'David', 'Barrera', 'Oxford', 'Oxford', '6333300', '487', '3108590092', 'david.barrera@oup.com', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '46', '.png'),
(40, 'José', 'Bejarano', 'Representante', 'Representante de Ventas', '6333300', '312', '3166944524', 'jbejarano@edhispano.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(41, 'Yolanda', 'Pedraza', 'Representante', 'Representante de Ventas', '6333300', '313', '3167404692', 'dpedraza@edhispano.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '48', '.png'),
(42, 'Henry', 'Rodriguez', 'Representante', 'Representante de Ventas', '6333300', '156', '3153649049', 'hrodriguez@booksandbooks.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '49', '.png'),
(43, 'Andres', 'Cifuentes', 'Oxford', 'Oxford', '6333300', '492', '3157271690', 'andres.cifuentes@oup.com', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '50', '.png'),
(44, 'Katerine', 'Sanchez', 'Oxford', 'Oxford', '6333300', '311', '3103334045', 'catherine.sanchez@oup.com', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '51', '.png'),
(45, 'Andres', 'Riano', 'Inventarios', 'SAC', '6333300', '428', '3182575332', 'auxsac@booksandbooks.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '53', '.png'),
(46, 'Ivan', 'Romero', 'Facturacion Books', 'SAC', '6333300', '250', '3182575332', 'facturacion1@booksandbooks.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '55', '.png'),
(47, 'Daiana', 'Lopez', 'Representante', 'Representante de Ventas', '6333300', '465', '3103126083', 'dlopez@booksandbooksdigital.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(48, 'Francisco', 'Tovar', 'Oxford', 'Oxford', '6333300', '317', '3157272201', 'francisco.tovar@oup.com', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '57', '.png'),
(49, 'Sara', 'Gonzalez', 'Oxford', 'Oxford', '6333300', '322', '3102583647', 'sara.gonzalez@oup.com', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '58', '.png'),
(50, 'Cesar', 'Porras', 'Programador', 'Proyectos', '2576350', '453', '3152575464', 'cporras@booksandbooksdigital.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '59', '.png'),
(51, 'Anderson', 'Mendez', 'Programador', 'Proyectos', '2284040', '230', '3152575464', 'amendez@booksandbooksdigital.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(52, 'Jhon', 'Aldana', 'Programador', 'Proyectos', '', '232', '3152575464', 'jaldana@booksandbooksdigital.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(53, 'Manuel', 'Fuentes', 'Animador 3D', 'Proyectos', '6333300', '463', '3152575464', 'mfuentes@booksandbooksdigital.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(54, 'Liza', 'Arevalo', 'Gerente Administrativo', 'Gerencia', '6333300', '136', '3164713393', 'gerenciaadministrativa@booksandbooks.com.co', 'auditoria@booksandbooks.com.co', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '64', '.png'),
(55, 'Diana', 'Vargas', 'Representante', 'Representante de Ventas', '6333300', '152', '3158500566', 'dvargas@booksandbooks.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '65', '.png'),
(56, 'Yimara', 'Caraballo', 'Coordinador RRHH', 'Gestion administrativa', '6333300', '117', '3174039789', 'personal@booksandbooks.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '66', '.png'),
(57, 'John', 'Rico', 'Asistente Administrativo', 'Gestion administrativa', '6333300', '143', '3166907015', 'asistentegerencia@booksandbooks.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '67', '.png'),
(58, 'Adriana', 'Sanchez', 'Auxiliar RRHH', 'Gestion administrativa', '6333300', '329', '3174039789', 'asistenteRRHH@booksandbooks.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '68', '.png'),
(59, 'Alejandra', 'Nova', 'Coordinador Pagina Web', 'SAC', '6333300', '154', '3182575332', 'ventasweb@booksandbooks.com.co', 'eventos@booksandbooks.com.co webmaster@booksandbooks.com.co', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '69', '.png'),
(60, 'Anggie', 'Quebrada', 'Auxiliar Contable', 'Financiera', '6333300', '147', '3176457649', 'auxconta2@booksandbooks.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '70', '.png'),
(61, 'Edilberto', 'Lee', 'Auditor Interno', 'Financiera', '6333300', '122', '3176457649', 'revisoriafiscal@booksandbooks.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '71', '.png'),
(62, 'Soraya', 'Cortes', 'Gerente Servicio al Cliente', 'Gerencia', '6333300', '111', '3162375610', 'sorayac@booksandbooks.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '72', '.png'),
(63, 'Caroline', 'Caviglia', 'Oxford', 'Oxford', '6333300', '304', '3157272715', 'carolina.caviglia@oup.com', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '73', '.png'),
(64, 'Yessica', 'Velasquez', 'Auxiliar Contable', 'Financiera', '6333300', '123', '3176457649', 'auxconta@booksandbooks.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '74', '.png'),
(65, 'Stella', 'Correa', 'Coordinador Editorial', 'Proyectos', '6333300', '106', '3152575464', 'scorrea@booksandbooks.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '75', '.png'),
(66, 'Sala de Juntas', 'Gerencia', 'Gestion administrativa', 'Gestion administrativa', '6333300', '241', '', 'eventos@booksandbooks.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '76', '.png'),
(67, 'Claudia', 'Gonzalez', 'Representante', 'Representante de Ventas', '6333300', '306', '3163080930', 'cgonzalez@edhispano.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '77', '.png'),
(68, 'Gustavo', 'Angel', 'Coordinador Digital', 'Proyectos', '6333300', '468', '3152575464', 'gangel@booksandbooks.com.co', 'gangel@booksandbooksdigital.com.co', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '78', '.png'),
(69, 'Aux Admin Libreria', 'Bogotá', 'Auxiliar Administrativo', 'Librería Bogotá', '6333300', '138', '3173312606', 'libreria@booksandbooks.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '79', '.png'),
(70, 'Sarah', 'Cortes', 'Gerente de Producto', 'Gerencia', '6333300', '227', '', 'sarahcortes@booksandbooks.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(71, 'Tienda Café', 'Bogotá', 'Servicios Librería', 'Librería Bogotá', '6333300', '142', '3173312606', 'libreria@booksandbooks.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '81', '.png'),
(72, 'Juliana', 'Cortes', 'Gerente de Producto', 'Gerencia', '6333300', '134', '', 'JCORTES@booksandbooks.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(73, 'Rotonda', '1', 'Atencion al cliente', 'Librería Bogotá', '6333300', '130', '3173312606', 'callcenter1@booksandbooks.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '83', '.png'),
(74, 'Rotonda', '2', 'Atencion al cliente', 'Librería Bogotá', '6333300', '129', '3173312606', 'callcenter1@booksandbooks.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '84', '.png'),
(75, 'Call Center', '4', 'Atencion al cliente', 'Librería Bogotá', '6333300', '321', '3173312606', 'callcenter1@booksandbooks.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '85', '.png'),
(76, 'Call Center', '5', 'Atencion al cliente', 'Librería Bogotá', '6333300', '370', '3173312606', 'callcenter1@booksandbooks.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '86', '.png'),
(77, 'Sala de juntas', '2do Piso', 'Gestion administrativa', 'SAC', '6333300', '323', '3182575332', 'eventos@booksandbooks.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '87', '.png'),
(78, 'Call Center', '2', 'Atencion al cliente', 'Librería Bogotá', '6333300', '102', '3173312606', 'callcenter1@booksandbooks.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '88', '.png'),
(79, 'Rontonda', '3', 'Atencion al cliente', 'Librería Bogotá', '6333300', '170', '3173312606', 'callcenter1@booksandbooks.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '89', '.png'),
(80, 'Sala de Juntas', '2do Piso', 'Gestion administrativa', 'SAC', '6333300', '324', '3182575332', 'eventos@booksandbooks.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '90', '.png'),
(81, 'Auditorio', 'Librería Bogotá', 'Gestion administrativa', 'SAC', '6333300', '151', '3182575332', 'eventos@booksandbooks.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '91', '.png'),
(82, 'Publicaciones', '', 'Atencion al cliente', 'SAC', '6333300', '112', '3182575332', 'PUBLICACIONES@booksandbooks.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '92', '.png'),
(83, 'Call Center3', '3', 'Atencion al cliente', 'Librería Bogotá', '6333300', '113', '3173312606', 'callcenter1@booksandbooks.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '93', '.png'),
(84, 'Librería', '2do Piso', 'Atencion al cliente', 'Librería Bogotá', '6333300', '135', '3173312606', 'callcenter1@booksandbooks.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '94', '.png'),
(85, 'Call Center', '1', 'Atencion al cliente', 'SAC', '6333300', '114', '3182575332', 'callcenter1@booksandbooks.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '95', '.png'),
(86, 'Sadie', 'Huertas', 'Coordinador SGS', 'Gestion administrativa', '6333300', '200', '3204811261', 'consultorsgs@booksandbooks.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(87, 'Cateryn', 'Carvajal', 'Asistente Contador', 'Financiera', '6333300', '121', '3176457649', 'asistentecontador@booksandbooks.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '98', '.png'),
(88, 'Jair', 'Castro', 'Administrador Librería Bogotá', 'Librería Bogotá', '6333300', '137', '3173312606', 'libreria@booksandbooks.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '99', '.png'),
(89, 'Arleyn', 'Ramirez', 'Auxiliar de Bodega', 'Bodega Afinco', '6333300', '485', '3164653450', 'almacen@booksandbooks.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(90, 'Orlando', 'Rodriguez', 'Coordinador Bodega Afinco', 'Bodega Afinco', '6333300', '332', '3164653450', 'inventario@booksandbooks.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '101', '.png'),
(91, 'Sala de juntas', 'Piso 3', 'Gestion administrativa', 'SAC', '6333300', '325', '3182575332', 'eventos@booksandbooks.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '102', '.png'),
(92, 'Nidia', 'Casas', 'Correcion Editorial', 'Proyectos', '6333300', '441', '3152575464', 'ncasas@booksandbooksdigital.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '103', '.png'),
(93, 'Ana Maria', 'Tobon', 'Gerente Punto de Venta', 'Libreria Medellin', '6333300', '327', '3158500765', 'atobon@booksandbooks.com.co', '', 'Medellin', '123456', 'assets/multimedia/images/perfiles/', '104', '.png'),
(94, 'Libreria Cali', '', 'Librería Cali', 'Libreria Cali', '6333300', '328', '3174032332', 'cali@booksandbooks.com.co', '', 'Cali', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(95, 'John', 'Mozo', 'Auxiliar Administrativo EH', 'SAC', '6333300', '301', '3168740649', 'asistente@edhispano.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '106', '.png'),
(96, 'Pedro', 'Morera', 'Gerente Punto de Venta', 'Libreria Cali', '6333300', '355', '3168778952', 'pmorera@booksandbooks.com.co', '', 'Cali', '123456', 'assets/multimedia/images/perfiles/', '107', '.png'),
(97, 'Bodega Ediciones', '', 'Bodega Ediciones', 'Bodega Ediciones', '6333300', '331', '3168740649', 'bodegaEDH@edhispano.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '108', '.png'),
(98, 'Abraham', 'Sir', 'Representante', 'Representante de Ventas', '6333300', '', '3143990091', 'a.sir@booksandbooks.com.co', '', '', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(99, 'Adriana', 'Cortes', 'Auxiliar Inventario', 'Bodega Afinco', '6333300', '332', '3164653450', 'auxinventario@booksandbooks.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '110', '.png'),
(100, 'Brayan', 'Bejarano', 'Auxiliar Inventario', 'Bodega Afinco', '6333300', '332', '3164653450', 'hmhmuestras@booksandbooks.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(101, 'Carlos', 'Montagut', 'Gerente de Producto', 'Representante de Ventas', '6333300', '', '3202944016', 'cmontagut@booksandbooks.com.co', '', 'Norte de Santander', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(102, 'Cesar', 'Valdivieso', 'Gerente Punto de Venta', 'Representante de Ventas', '6333300', '501', '3168318072', 'cvaldivieso@booksandbooks.com.co', '', 'Barranquilla', '123456', 'assets/multimedia/images/perfiles/', '114', '.png'),
(103, 'Ciro', 'Ortiz', 'Representante', 'Representante de Ventas', '6333300', '', '3176413432', 'cortiz@booksandbooks.com.co', '', 'Pasto', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(104, 'Eliana', 'Osorio', 'Consultor Academico', 'Representante de Ventas', '6333300', '223', '447958105869', 'eosorio@booksandbooks.com.co', '', 'Inglaterra', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(105, 'Freddy', 'Cataño', 'Representante', 'Representante de Ventas', '6333300', '327', '3153143611', 'fcatano@booksandbooks.com.co', '', 'Medellin', '123456', 'assets/multimedia/images/perfiles/', '118', '.png'),
(106, 'Geovanny', 'Rodriguez', 'Representante', 'Representante de Ventas', '6333300', '355', '3163080935', 'grodriguez@booksandbooks.com.co', '', 'Cali', '123456', 'assets/multimedia/images/perfiles/', '119', '.png'),
(107, 'John', 'Torres', 'Auxiliar RRHH', 'Gestion administrativa', '6333300', '438', '3174039789', 'auxiliarcalidadrh@booksandbooks.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', '120', '.png'),
(108, 'Jolman', 'Daza', 'Auxiliar de Sistemas', 'Gestion administrativa', '6333300', '347', '3176592687', 'jdaza@booksandbooks.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(109, 'Librería Barranquilla', '', 'Librería Barranquilla', 'Librería Barranquilla', '6333300', '501', '3182575313', 'barranquilla@booksandbooks.com.co', '', 'Barranquilla', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(110, 'Librería Medellin', '', 'Librería Medellin', 'Librería Medellin', '6333300', '327', '3167416625', 'medellin@booksandbooks.com.co', '', 'Medellin', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(111, 'Sebastian', 'Chocontá', 'Coordinador de Sistemas', 'Gestion administrativa', '6333300', '347', '3176592687', 'schoconta@booksandbooks.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(112, 'Sthepane', 'Bey', 'Consultor Academico', 'Representante de Ventas', '6333300', '', '3103138634', 'sbey@booksandbooks.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(113, 'Viviana María', 'Marín Sanchez', 'Programador', 'Proyectos', '6333300', '461', '3152575464', 'vmain@booksandbooksdigital.com.co', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(114, 'Fabian', 'Ramirez', 'Practicante SENA', 'Proyectos', '6333300', '440', '', '', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(115, 'Jharry', 'Rodriguez', 'Practicante SENA', 'Proyectos', '6333300', '458', '', '', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(116, 'Edwar ', 'Cuellar ', 'Practicante SENA', 'Proyectos', '6333300', '447', '', '', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(117, 'Julian ', 'Homen', 'Practicante SENA', 'Proyectos', '6333300', '436', '', '', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(118, 'Jhonatan', 'Velasquez', 'Programador', 'Proyectos', '6333300', '455', '', '', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(119, 'Oscar', 'Ramirez', 'Ilustrador', 'Proyectos', '6333300', '454', '', '', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(120, 'David', 'Duque', 'Programador', 'Proyectos', '6333300', '477', '', '', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(121, 'Jorge', 'Lumbaque', 'Animador 3D', 'Proyectos', '6333300', '466', '', '', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(122, 'Laura Sofia', 'Muñoz Gamboa', 'Digitalizadora ', '', '6333300', '479', '', '', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png'),
(123, 'Juan Carlos ', 'Gutierrez Cubilllos', 'Digitalizador', '', '6333300', '434', '', '', '', 'Bogotá', '123456', 'assets/multimedia/images/perfiles/', 'books_avatar', '.png');

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

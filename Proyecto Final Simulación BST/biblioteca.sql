-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-08-2024 a las 16:36:24
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `biblioteca`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`id`, `title`, `author`) VALUES
(1, 'El Quijote', 'Miguel de Cervantes'),
(2, 'Cien años de soledad', 'Gabriel García Márquez'),
(3, 'Don Juan Tenorio', 'José Zorrilla'),
(4, 'La casa de Bernarda Alba', 'Federico García Lorca'),
(5, 'El amor en los tiempos del cólera', 'Gabriel García Márquez'),
(6, 'Rayuela', 'Julio Cortázar'),
(8, 'El túnel', 'Ernesto Sabato'),
(9, 'Sobre héroes y tumbas', 'Ernesto Sabato'),
(10, 'Ficciones', 'Jorge Luis Borges'),
(11, 'Crónica de una muerte anunciada', 'Gabriel García Márquez'),
(12, 'La sombra del viento', 'Carlos Ruiz Zafón'),
(13, 'La tía Julia y el escribidor', 'Mario Vargas Llosa'),
(14, 'Pantaleón y las visitadoras', 'Mario Vargas Llosa'),
(15, 'La ciudad y los perros', 'Mario Vargas Llosa'),
(16, 'El Aleph', 'Jorge Luis Borges'),
(17, 'La tregua', 'Mario Benedetti'),
(18, 'El cartero de Neruda', 'Antonio Skármeta'),
(19, 'La fiesta del chivo', 'Mario Vargas Llosa'),
(20, 'Los pasos perdidos', 'Alejo Carpentier'),
(21, 'Ensayo sobre la ceguera', 'José Saramago'),
(22, 'El otoño del patriarca', 'Gabriel García Márquez'),
(23, 'Aura', 'Carlos Fuentes'),
(24, 'El coronel no tiene quien le escriba', 'Gabriel García Márquez'),
(25, 'Los de abajo', 'Mariano Azuela'),
(26, 'Santa', 'Federico Gamboa'),
(27, 'Doña Bárbara', 'Rómulo Gallegos'),
(28, 'María', 'Jorge Isaacs'),
(29, 'Huasipungo', 'Jorge Icaza'),
(30, 'La vorágine', 'José Eustasio Rivera'),
(31, 'La casa de los espíritus', 'Isabel Allende'),
(32, 'La muerte de Artemio Cruz', 'Carlos Fuentes'),
(33, 'Como agua para chocolate', 'Laura Esquivel'),
(34, 'El laberinto de la soledad', 'Octavio Paz'),
(35, 'La región más transparente', 'Carlos Fuentes'),
(36, 'La guerra del fin del mundo', 'Mario Vargas Llosa'),
(37, 'El espantapájaros', 'Oliverio Girondo'),
(38, 'La invención de Morel', 'Adolfo Bioy Casares'),
(39, 'Sobrevuelos', 'Héctor Germán Oesterheld'),
(40, 'El hombre que amaba a los perros', 'Leonardo Padura'),
(41, 'Borges y yo', 'Jorge Luis Borges'),
(42, 'El libro de arena', 'Jorge Luis Borges'),
(43, 'El oro de los tigres', 'Jorge Luis Borges'),
(44, 'El jardín de senderos que se bifurcan', 'Jorge Luis Borges'),
(45, 'Historia de una escalera', 'Antonio Buero Vallejo'),
(46, 'La fundación', 'Antonio Buero Vallejo'),
(47, 'La barraca', 'Vicente Blasco Ibáñez'),
(48, 'Cañas y barro', 'Vicente Blasco Ibáñez'),
(49, 'Los cuatro jinetes del Apocalipsis', 'Vicente Blasco Ibáñez'),
(50, 'La colmena', 'Camilo José Cela'),
(51, 'San Manuel Bueno, mártir', 'Miguel de Unamuno'),
(52, 'Niebla', 'Miguel de Unamuno'),
(53, 'El abuelo', 'Benito Pérez Galdós'),
(54, 'Fortunata y Jacinta', 'Benito Pérez Galdós'),
(55, 'Marianela', 'Benito Pérez Galdós'),
(56, 'La familia de Pascual Duarte', 'Camilo José Cela'),
(57, 'Tiempo de silencio', 'Luis Martín-Santos'),
(58, 'Nada', 'Carmen Laforet'),
(59, 'Entre visillos', 'Carmen Martín Gaite'),
(60, 'Los santos inocentes', 'Miguel Delibes'),
(61, 'El camino', 'Miguel Delibes'),
(62, 'Cinco horas con Mario', 'Miguel Delibes'),
(63, 'La sonrisa etrusca', 'José Luis Sampedro'),
(64, 'El hereje', 'Miguel Delibes'),
(65, 'La casa verde', 'Mario Vargas Llosa'),
(66, 'Conversación en La Catedral', 'Mario Vargas Llosa'),
(67, 'Lituma en los Andes', 'Mario Vargas Llosa'),
(68, 'Travesuras de la niña mala', 'Mario Vargas Llosa'),
(69, 'La guerra de los mundos', 'H. G. Wells'),
(70, 'El hombre invisible', 'H. G. Wells'),
(71, 'La máquina del tiempo', 'H. G. Wells'),
(72, 'La isla del doctor Moreau', 'H. G. Wells'),
(73, '1984', 'George Orwell'),
(74, 'Rebelión en la granja', 'George Orwell'),
(75, 'El señor de las moscas', 'William Golding'),
(76, 'El guardián entre el centeno', 'J. D. Salinger'),
(77, 'Matar a un ruiseñor', 'Harper Lee'),
(78, 'El gran Gatsby', 'F. Scott Fitzgerald'),
(79, 'En el camino', 'Jack Kerouac'),
(80, 'Lolita', 'Vladimir Nabokov'),
(81, 'Ulises', 'James Joyce'),
(82, 'Finnegans Wake', 'James Joyce'),
(83, 'Los hermanos Karamázov', 'Fiódor Dostoyevski'),
(84, 'Crimen y castigo', 'Fiódor Dostoyevski'),
(85, 'El idiota', 'Fiódor Dostoyevski'),
(86, 'Guerra y paz', 'León Tolstói'),
(87, 'Anna Karénina', 'León Tolstói'),
(88, 'Madame Bovary', 'Gustave Flaubert'),
(89, 'Rojo y negro', 'Stendhal'),
(90, 'Papá Goriot', 'Honoré de Balzac'),
(91, 'Los miserables', 'Victor Hugo'),
(92, 'El conde de Montecristo', 'Alexandre Dumas'),
(93, 'La dama de las camelias', 'Alexandre Dumas'),
(94, 'Mujercitas', 'Louisa May Alcott'),
(95, 'Orgullo y prejuicio', 'Jane Austen'),
(96, 'Emma', 'Jane Austen'),
(97, 'Cumbres borrascosas', 'Emily Brontë'),
(98, 'Jane Eyre', 'Charlotte Brontë'),
(99, 'Drácula', 'Bram Stoker'),
(100, 'Frankenstein', 'Mary Shelley'),
(101, 'Moby Dick', 'Herman Melville'),
(102, 'La letra escarlata', 'Nathaniel Hawthorne'),
(103, 'La cabaña del tío Tom', 'Harriet Beecher Stowe'),
(104, 'La vuelta al mundo en ochenta días', 'Julio Verne'),
(105, 'Veinte mil leguas de viaje submarino', 'Julio Verne'),
(106, 'Los viajes de Gulliver', 'Jonathan Swift'),
(107, 'Robinson Crusoe', 'Daniel Defoe'),
(108, 'Alicia en el país de las maravillas', 'Lewis Carroll'),
(109, 'El viento en los sauces', 'Kenneth Grahame'),
(110, 'Peter Pan', 'J. M. Barrie'),
(111, 'El libro de la selva', 'Rudyard Kipling'),
(112, 'El extraño caso del Dr. Jekyll y Mr. Hyde', 'Robert Louis Stevenson'),
(113, 'La isla del tesoro', 'Robert Louis Stevenson'),
(114, 'Ivanhoe', 'Walter Scott'),
(115, 'El retrato de Dorian Gray', 'Oscar Wilde'),
(116, 'La importancia de llamarse Ernesto', 'Oscar Wilde'),
(117, 'Los tres mosqueteros', 'Alexandre Dumas'),
(118, 'Hamlet', 'William Shakespeare'),
(119, 'Macbeth', 'William Shakespeare'),
(120, 'Romeo y Julieta', 'William Shakespeare'),
(121, 'El mercader de Venecia', 'William Shakespeare'),
(122, 'Mucho ruido y pocas nueces', 'William Shakespeare'),
(123, 'Sueño de una noche de verano', 'William Shakespeare'),
(124, 'Don Quijote de la Mancha', 'Miguel de Cervantes'),
(125, 'La Celestina', 'Fernando de Rojas'),
(126, 'La Regenta', 'Leopoldo Alas \"Clarín\"'),
(127, 'El Buscón', 'Francisco de Quevedo'),
(128, 'El Lazarillo de Tormes', 'Anónimo'),
(129, 'La vida es sueño', 'Calderón de la Barca'),
(130, 'El perro del hortelano', 'Lope de Vega'),
(131, 'Fuenteovejuna', 'Lope de Vega'),
(132, 'El alcalde de Zalamea', 'Pedro Calderón de la Barca'),
(133, 'El burlador de Sevilla', 'Tirso de Molina'),
(134, 'La casa de Bernarda Alba', 'Federico García Lorca'),
(135, 'Bodas de sangre', 'Federico García Lorca'),
(136, 'Yerma', 'Federico García Lorca'),
(137, 'El amor en los tiempos del cólera', 'Gabriel García Márquez'),
(138, 'Cien años de soledad', 'Gabriel García Márquez'),
(139, 'Crónica de una muerte anunciada', 'Gabriel García Márquez'),
(140, 'El otoño del patriarca', 'Gabriel García Márquez'),
(141, 'Relato de un náufrago', 'Gabriel García Márquez'),
(142, 'Los funerales de la Mamá Grande', 'Gabriel García Márquez'),
(143, 'Memoria de mis putas tristes', 'Gabriel García Márquez'),
(144, 'Doña Bárbara', 'Rómulo Gallegos'),
(145, 'Canaima', 'Rómulo Gallegos'),
(146, 'Marianela', 'Benito Pérez Galdós'),
(147, 'Fortunata y Jacinta', 'Benito Pérez Galdós'),
(148, 'Doña Perfecta', 'Benito Pérez Galdós'),
(149, 'Miau', 'Benito Pérez Galdós'),
(150, 'El amigo Manso', 'Benito Pérez Galdós'),
(151, 'Electra', 'Benito Pérez Galdós'),
(152, 'El abuelo', 'Benito Pérez Galdós'),
(153, 'La casa de Bernarda Alba', 'Federico García Lorca'),
(154, 'Bodas de sangre', 'Federico García Lorca'),
(155, 'Yerma', 'Federico García Lorca'),
(156, 'El amor en los tiempos del cólera', 'Gabriel García Márquez'),
(157, 'Cien años de soledad', 'Gabriel García Márquez'),
(158, 'Crónica de una muerte anunciada', 'Gabriel García Márquez'),
(159, 'El otoño del patriarca', 'Gabriel García Márquez'),
(160, 'Relato de un náufrago', 'Gabriel García Márquez'),
(161, 'Los funerales de la Mamá Grande', 'Gabriel García Márquez'),
(162, 'Memoria de mis putas tristes', 'Gabriel García Márquez'),
(163, 'La sombra del viento', 'Carlos Ruiz Zafón'),
(164, 'El juego del ángel', 'Carlos Ruiz Zafón'),
(165, 'El prisionero del cielo', 'Carlos Ruiz Zafón'),
(166, 'El laberinto de los espíritus', 'Carlos Ruiz Zafón'),
(167, 'La trilogía de la niebla', 'Carlos Ruiz Zafón'),
(168, 'Marina', 'Carlos Ruiz Zafón'),
(169, 'Pantaleón y las visitadoras', 'Mario Vargas Llosa'),
(170, 'La ciudad y los perros', 'Mario Vargas Llosa'),
(171, 'La casa verde', 'Mario Vargas Llosa'),
(172, 'Conversación en La Catedral', 'Mario Vargas Llosa'),
(173, 'La fiesta del chivo', 'Mario Vargas Llosa'),
(174, 'El pez en el agua', 'Mario Vargas Llosa'),
(175, 'La guerra del fin del mundo', 'Mario Vargas Llosa'),
(176, 'Travesuras de la niña mala', 'Mario Vargas Llosa'),
(177, 'Los de abajo', 'Mariano Azuela'),
(178, 'Santa', 'Federico Gamboa'),
(179, 'La sombra del caudillo', 'Martín Luis Guzmán'),
(180, 'Al filo del agua', 'Agustín Yáñez'),
(181, 'Pedro Páramo', 'Juan Rulfo'),
(182, 'El llano en llamas', 'Juan Rulfo'),
(183, 'Los pasos perdidos', 'Alejo Carpentier'),
(184, 'El siglo de las luces', 'Alejo Carpentier'),
(185, 'La consagración de la primavera', 'Alejo Carpentier'),
(186, 'Cuentos completos', 'Alejo Carpentier'),
(187, 'Ensayo sobre la ceguera', 'José Saramago'),
(188, 'La balsa de piedra', 'José Saramago'),
(189, 'El evangelio según Jesucristo', 'José Saramago'),
(190, 'Todos los nombres', 'José Saramago'),
(191, 'El hombre duplicado', 'José Saramago'),
(192, 'El viaje del elefante', 'José Saramago'),
(193, 'La caverna', 'José Saramago'),
(194, 'Las intermitencias de la muerte', 'José Saramago'),
(195, 'Memorial del convento', 'José Saramago'),
(196, 'El año de la muerte de Ricardo Reis', 'José Saramago'),
(197, 'Manual de pintura y caligrafía', 'José Saramago'),
(198, 'Historia del cerco de Lisboa', 'José Saramago'),
(199, 'Las pequeñas memorias', 'José Saramago'),
(200, 'Caín', 'José Saramago'),
(201, 'Claraboya', 'José Saramago'),
(202, 'La isla desconocida', 'José Saramago'),
(203, 'La muerte de Artemio Cruz', 'Carlos Fuentes'),
(204, 'La región más transparente', 'Carlos Fuentes'),
(205, 'Cambio de piel', 'Carlos Fuentes'),
(206, 'Terra nostra', 'Carlos Fuentes'),
(207, 'Cristóbal Nonato', 'Carlos Fuentes'),
(208, 'Gringo viejo', 'Carlos Fuentes'),
(209, 'El espejo enterrado', 'Carlos Fuentes'),
(210, 'La silla del águila', 'Carlos Fuentes'),
(211, 'El naranjo', 'Carlos Fuentes'),
(212, 'Aura', 'Carlos Fuentes'),
(213, 'El amor en los tiempos del cólera', 'Gabriel García Márquez'),
(214, 'Cien años de soledad', 'Gabriel García Márquez'),
(215, 'Crónica de una muerte anunciada', 'Gabriel García Márquez'),
(216, 'El otoño del patriarca', 'Gabriel García Márquez'),
(217, 'Relato de un náufrago', 'Gabriel García Márquez'),
(218, 'Los funerales de la Mamá Grande', 'Gabriel García Márquez'),
(219, 'Memoria de mis putas tristes', 'Gabriel García Márquez'),
(220, 'Los pasos perdidos', 'Alejo Carpentier'),
(221, 'El siglo de las luces', 'Alejo Carpentier'),
(222, 'La consagración de la primavera', 'Alejo Carpentier'),
(223, 'Cuentos completos', 'Alejo Carpentier'),
(224, 'Pantaleón y las visitadoras', 'Mario Vargas Llosa'),
(225, 'La ciudad y los perros', 'Mario Vargas Llosa'),
(226, 'La casa verde', 'Mario Vargas Llosa'),
(227, 'Conversación en La Catedral', 'Mario Vargas Llosa'),
(228, 'La fiesta del chivo', 'Mario Vargas Llosa'),
(229, 'El pez en el agua', 'Mario Vargas Llosa'),
(230, 'La guerra del fin del mundo', 'Mario Vargas Llosa'),
(231, 'Travesuras de la niña mala', 'Mario Vargas Llosa'),
(232, 'La casa de los espíritus', 'Isabel Allende'),
(233, 'De amor y de sombra', 'Isabel Allende'),
(234, 'Eva Luna', 'Isabel Allende'),
(235, 'Cuentos de Eva Luna', 'Isabel Allende'),
(236, 'El plan infinito', 'Isabel Allende'),
(237, 'Paula', 'Isabel Allende'),
(238, 'Afrodita', 'Isabel Allende'),
(239, 'Hija de la fortuna', 'Isabel Allende'),
(240, 'Retrato en sepia', 'Isabel Allende'),
(241, 'La suma de los días', 'Isabel Allende'),
(242, 'El cuaderno de Maya', 'Isabel Allende'),
(243, 'El amante japonés', 'Isabel Allende'),
(244, 'Más allá del invierno', 'Isabel Allende'),
(245, 'Largo pétalo de mar', 'Isabel Allende'),
(246, 'Mujeres del alma mía', 'Isabel Allende'),
(247, 'Violeta', 'Isabel Allende'),
(248, 'Ensayo sobre la ceguera', 'José Saramago'),
(249, 'La balsa de piedra', 'José Saramago'),
(250, 'El evangelio según Jesucristo', 'José Saramago'),
(251, 'Todos los nombres', 'José Saramago'),
(252, 'El hombre duplicado', 'José Saramago'),
(253, 'El viaje del elefante', 'José Saramago'),
(254, 'La caverna', 'José Saramago'),
(255, 'Las intermitencias de la muerte', 'José Saramago'),
(256, 'Memorial del convento', 'José Saramago'),
(257, 'El año de la muerte de Ricardo Reis', 'José Saramago'),
(258, 'Manual de pintura y caligrafía', 'José Saramago'),
(259, 'Historia del cerco de Lisboa', 'José Saramago'),
(260, 'Las pequeñas memorias', 'José Saramago'),
(261, 'Caín', 'José Saramago'),
(262, 'Claraboya', 'José Saramago'),
(263, 'La isla desconocida', 'José Saramago'),
(264, 'Crimen y castigo', 'Fiódor Dostoyevski'),
(265, 'Los hermanos Karamázov', 'Fiódor Dostoyevski'),
(266, 'El idiota', 'Fiódor Dostoyevski'),
(267, 'Los demonios', 'Fiódor Dostoyevski'),
(268, 'El jugador', 'Fiódor Dostoyevski'),
(269, 'Guerra y paz', 'León Tolstói'),
(270, 'Anna Karénina', 'León Tolstói'),
(271, 'La muerte de Iván Ilich', 'León Tolstói'),
(272, 'Resurrección', 'León Tolstói'),
(273, 'Infancia', 'León Tolstói'),
(274, 'Adolescencia', 'León Tolstói'),
(275, 'Juventud', 'León Tolstói'),
(276, 'La sonata a Kreutzer', 'León Tolstói'),
(277, 'La guerra del fin del mundo', 'Mario Vargas Llosa'),
(278, 'La fiesta del chivo', 'Mario Vargas Llosa'),
(279, 'Conversación en La Catedral', 'Mario Vargas Llosa'),
(280, 'La ciudad y los perros', 'Mario Vargas Llosa'),
(281, 'La casa verde', 'Mario Vargas Llosa'),
(282, 'Los pasos perdidos', 'Alejo Carpentier'),
(283, 'El siglo de las luces', 'Alejo Carpentier'),
(284, 'La consagración de la primavera', 'Alejo Carpentier'),
(285, 'El túnel', 'Ernesto Sabato'),
(286, 'Sobre héroes y tumbas', 'Ernesto Sabato'),
(287, 'Abaddón el exterminador', 'Ernesto Sabato'),
(288, 'La casa de los espíritus', 'Isabel Allende'),
(289, 'De amor y de sombra', 'Isabel Allende'),
(290, 'Eva Luna', 'Isabel Allende'),
(291, 'Cuentos de Eva Luna', 'Isabel Allende'),
(292, 'El plan infinito', 'Isabel Allende'),
(293, 'Paula', 'Isabel Allende'),
(294, 'Afrodita', 'Isabel Allende'),
(295, 'Hija de la fortuna', 'Isabel Allende'),
(296, 'Retrato en sepia', 'Isabel Allende'),
(297, 'La suma de los días', 'Isabel Allende'),
(298, 'El cuaderno de Maya', 'Isabel Allende'),
(299, 'El amante japonés', 'Isabel Allende'),
(300, 'Más allá del invierno', 'Isabel Allende'),
(301, 'Largo pétalo de mar', 'Isabel Allende'),
(302, 'Mujeres del alma mía', 'Isabel Allende'),
(303, 'Violeta', 'Isabel Allende'),
(304, 'Ensayo sobre la ceguera', 'José Saramago'),
(305, 'La balsa de piedra', 'José Saramago'),
(306, 'El evangelio según Jesucristo', 'José Saramago'),
(307, 'Todos los nombres', 'José Saramago'),
(308, 'El hombre duplicado', 'José Saramago'),
(309, 'El viaje del elefante', 'José Saramago'),
(310, 'La caverna', 'José Saramago'),
(311, 'Las intermitencias de la muerte', 'José Saramago'),
(312, 'Memorial del convento', 'José Saramago'),
(313, 'El año de la muerte de Ricardo Reis', 'José Saramago'),
(314, 'Manual de pintura y caligrafía', 'José Saramago'),
(315, 'Historia del cerco de Lisboa', 'José Saramago'),
(316, 'Las pequeñas memorias', 'José Saramago'),
(317, 'Caín', 'José Saramago'),
(318, 'Claraboya', 'José Saramago'),
(319, 'La isla desconocida', 'José Saramago'),
(320, 'Crimen y castigo', 'Fiódor Dostoyevski'),
(321, 'Los hermanos Karamázov', 'Fiódor Dostoyevski'),
(322, 'El idiota', 'Fiódor Dostoyevski'),
(323, 'Los demonios', 'Fiódor Dostoyevski'),
(324, 'El jugador', 'Fiódor Dostoyevski'),
(325, 'Guerra y paz', 'León Tolstói'),
(326, 'Anna Karénina', 'León Tolstói'),
(327, 'La muerte de Iván Ilich', 'León Tolstói'),
(328, 'Resurrección', 'León Tolstói'),
(329, 'Infancia', 'León Tolstói'),
(330, 'Adolescencia', 'León Tolstói'),
(331, 'Juventud', 'León Tolstói'),
(332, 'La sonata a Kreutzer', 'León Tolstói');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=333;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-04-2036 a las 17:23:41
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
-- Base de datos: `pueblozonazo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `comentario_id` int(11) NOT NULL,
  `pub_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `texto` varchar(300) NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`comentario_id`, `pub_id`, `usuario_id`, `texto`, `fecha`) VALUES
(3, 6, 3, 'vivan los pibbles', '2036-04-16 16:59:44'),
(4, 7, 5, 'Vas solo en esta pequeño hermanito😭🙏', '2025-10-23 07:59:44'),
(5, 8, 1, '😈: foca lista y feliz', '2026-03-07 08:02:21'),
(6, 9, 2, 'no', '2026-04-20 08:02:21'),
(7, 10, 4, 'cacahuate eres mi fan pídeme un saludo', '2026-01-07 08:02:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hashtags`
--

CREATE TABLE `hashtags` (
  `hashtags_id` int(11) NOT NULL,
  `etiqueta` varchar(60) NOT NULL,
  `creado_en` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `hashtags`
--

INSERT INTO `hashtags` (`hashtags_id`, `etiqueta`, `creado_en`) VALUES
(1, '#MLP', '2016-07-09'),
(2, '#vivalacuartaterraformacion', '2025-11-05'),
(3, '#FNAF', '2015-10-31'),
(4, '#LARGO', '2020-08-20'),
(5, '#VIDEO', '2017-04-11'),
(6, '#JUEGO', '2036-05-02'),
(7, '#MEME', '2019-06-12'),
(8, '#SOLDADOCAIDO', '2023-11-16'),
(9, '#PAPEADA', '2020-03-10'),
(10, '#TERMINAMAL', '2026-04-09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicaciones`
--

CREATE TABLE `publicaciones` (
  `pub_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `contenido` text NOT NULL,
  `imagen_url` varchar(256) NOT NULL,
  `fecha_pub` date NOT NULL,
  `likes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `publicaciones`
--

INSERT INTO `publicaciones` (`pub_id`, `usuario_id`, `contenido`, `imagen_url`, `fecha_pub`, `likes`) VALUES
(6, 1, 'la vida los miercoles', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaWoYZJxoJ8pGbKj2YYqLi19mJ20DmJXZJ_Q&s', '2026-04-10', 10),
(7, 2, 'porque se burlan de alguien que es como TODOS nosotros?', 'https://upload.wikimedia.org/wikipedia/commons/1/10/Charlie_Kirk_%2853952923573%29_%28headshot_cropped%29.jpg', '2025-09-20', -1),
(8, 3, 'foca tonta y triste', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxbTUz2fwnGawXoqTvKztnTG4_lhnhAkhbaQ&s', '2026-03-05', 1987),
(9, 4, 'neta traigo hambre ya denme dinero', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPyzPCKGLpio_H-r0OopaPfD4SxwOajFZGlg&s', '2026-04-15', 999),
(10, 5, 'mi experiencia durante la caída del cacahuatazo (nadie supo que era yo)', 'https://images.milenio.com/M4J_ChW5pCv40H9-a-GNe0fmaJk=/345x194/uploads/media/2025/04/30/el-cacahuatazo-cumple-anos.jpg', '2026-01-01', 999999);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `usuario_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `bio` varchar(200) NOT NULL,
  `fecha_reg` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usuario_id`, `username`, `email`, `bio`, `fecha_reg`) VALUES
(1, 'freezinguppy', 'chris@gmail.com ', 'Parte de los rayados/fulanos de maza', '2017-04-21'),
(2, 'Jars', 'arturo@gmail.com', 'me encantan lo perros tontos', '2020-06-05'),
(3, 'Rodrihacks', 'jacobo@gmail.com', 'RIP 2009-2026🔥', '2018-03-14'),
(4, 'horseradish', 'ian@gmail.com', 'Libero nintendo swiches comprenme porfavor tengo hambre we', '2020-07-23'),
(5, 'carlos kirk ', 'carlos@gmail.com', 'Desarrollador de roblox y organizador de las triple T parties', '2020-03-27');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`comentario_id`),
  ADD KEY `pub_id` (`pub_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `hashtags`
--
ALTER TABLE `hashtags`
  ADD PRIMARY KEY (`hashtags_id`),
  ADD UNIQUE KEY `etiqueta` (`etiqueta`);

--
-- Indices de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD PRIMARY KEY (`pub_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuario_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `comentario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `hashtags`
--
ALTER TABLE `hashtags`
  MODIFY `hashtags_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  MODIFY `pub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `usuario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`pub_id`) REFERENCES `publicaciones` (`pub_id`),
  ADD CONSTRAINT `comentarios_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`);

--
-- Filtros para la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD CONSTRAINT `publicaciones_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

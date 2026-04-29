-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-04-2026 a las 17:11:35
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
-- Base de datos: `aprendizaje`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `id_genero` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripción` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`id_genero`, `nombre`, `descripción`) VALUES
(1, 'Simulación', 'Diseñados para replicar actividades de la vida real '),
(2, 'Acción-Aventura', 'Combina combates de acción con la exploración y resolución de acertijos de las aventuras'),
(3, 'Rol (RPG)', 'Juegos basados en la evolución de personajes, toma de decisiones y ambientaciones fantásticas'),
(4, 'Battle Royale', 'Supervivencia multijugador masiva donde el último jugador en pie gana '),
(5, 'Sandbox (Mundo Abierto', 'Ofrecen gran libertad para explorar e interactuar con el entorno'),
(6, 'carrera', 'Carreras');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plataforma`
--

CREATE TABLE `plataforma` (
  `id_plataforma` int(11) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `fabricante` varchar(80) NOT NULL,
  `anio_lanzamiento` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `plataforma`
--

INSERT INTO `plataforma` (`id_plataforma`, `nombre`, `fabricante`, `anio_lanzamiento`) VALUES
(1, 'Switch', 'Nintendo', '2017'),
(2, 'PlayStation', 'SONY (SIE)', '1994'),
(3, 'Xbox', 'Microsoft', '2001'),
(4, 'Steam', 'Valve Corporation', '2003');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videojuego`
--

CREATE TABLE `videojuego` (
  `id_juego` int(11) NOT NULL,
  `titulo` varchar(120) NOT NULL,
  `desarrolladora` varchar(100) NOT NULL,
  `anio_lanzamiento` year(4) NOT NULL,
  `precio` decimal(6,2) NOT NULL,
  `id_genero` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `videojuego`
--

INSERT INTO `videojuego` (`id_juego`, `titulo`, `desarrolladora`, `anio_lanzamiento`, `precio`, `id_genero`) VALUES
(1, 'Resident Evil: Requiem (RE9)', 'Capcom Co.', '2026', 1579.00, 2),
(2, 'Minecraft', 'Mojang Studios', '2009', 562.00, 5),
(5, 'Fornite', 'Epic Games', '2017', 0.00, 4),
(6, 'Super Smash Bros. Ultimate', 'Bandai Namco Studios, Sora Ltd., Nintendo', '2018', 1399.00, 2),
(7, 'Tomodachi life: Living the dream', 'Nintendo', '2026', 1299.00, 1),
(8, 'Mario Kart 8 Deluxe', 'Nintendo (EPD)', '2017', 1199.00, 6),
(9, 'The Last of Us Pt II', 'Naughty Dog (SONY)', '2020', 1100.00, 2),
(10, 'Animal Crossing: New Horizons', 'Nintendo', '2020', 1199.00, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videojuego_plataforma`
--

CREATE TABLE `videojuego_plataforma` (
  `id_juego` int(11) NOT NULL,
  `id_plataforma` int(11) NOT NULL,
  `fecha_disponible` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `videojuego_plataforma`
--

INSERT INTO `videojuego_plataforma` (`id_juego`, `id_plataforma`, `fecha_disponible`) VALUES
(1, 4, '2026-02-27'),
(10, 1, '2020-03-19'),
(6, 1, '2020-05-18'),
(7, 1, '2026-04-17'),
(9, 4, '2020-01-21'),
(8, 1, '2017-12-12'),
(2, 1, '2017-04-14'),
(2, 4, '2017-04-22'),
(5, 4, '2017-08-05'),
(5, 1, '2017-02-08');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id_genero`);

--
-- Indices de la tabla `plataforma`
--
ALTER TABLE `plataforma`
  ADD PRIMARY KEY (`id_plataforma`);

--
-- Indices de la tabla `videojuego`
--
ALTER TABLE `videojuego`
  ADD PRIMARY KEY (`id_juego`),
  ADD KEY `id_genero` (`id_genero`);

--
-- Indices de la tabla `videojuego_plataforma`
--
ALTER TABLE `videojuego_plataforma`
  ADD KEY `id_juego` (`id_juego`),
  ADD KEY `id_plataforma` (`id_plataforma`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `id_genero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `plataforma`
--
ALTER TABLE `plataforma`
  MODIFY `id_plataforma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `videojuego`
--
ALTER TABLE `videojuego`
  MODIFY `id_juego` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `videojuego`
--
ALTER TABLE `videojuego`
  ADD CONSTRAINT `videojuego_ibfk_1` FOREIGN KEY (`id_genero`) REFERENCES `genero` (`id_genero`);

--
-- Filtros para la tabla `videojuego_plataforma`
--
ALTER TABLE `videojuego_plataforma`
  ADD CONSTRAINT `videojuego_plataforma_ibfk_1` FOREIGN KEY (`id_juego`) REFERENCES `videojuego` (`id_juego`),
  ADD CONSTRAINT `videojuego_plataforma_ibfk_2` FOREIGN KEY (`id_plataforma`) REFERENCES `plataforma` (`id_plataforma`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

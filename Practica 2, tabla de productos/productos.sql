-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-02-2026 a las 16:21:40
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
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(200) NOT NULL,
  `Precio` double NOT NULL,
  `Marca` varchar(50) NOT NULL,
  `Descripción` varchar(500) NOT NULL,
  `Cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`ID`, `Nombre`, `Precio`, `Marca`, `Descripción`, `Cantidad`) VALUES
(1, 'Foca guatona', 137, 'Apujent', 'Juguetes De Peluche De Foca, Peluche De Foca Gorda, Linda Almohada De Felpa De Focas, Muñeca Realista De Peluche Con Forma De Foca Oceánica, Regalo.', 50),
(2, 'HIRONO Living Wild', 1259, 'POP MART', 'Pop Mart HIRONO Living Wild - Luchando por la Alegría Muñeco de Peluche Muñeca de Peluche Fight for Joy 16 cm, Juguetes Coleccionables para Decoración del Hogar, Regalos.', 16),
(3, 'Juguete de Oso Pardo', 374, 'Keenso', 'Juguete de Oso Pardo, Animal de Peluche Suave, Juguete de Simulación de Oso de Peluche de 60 Cm con Decoración del Hogar y Cumpleaños para Niños (Marrón)', 20),
(4, 'Smiski', 457, 'Dreams inc', '- Accesorio de Correa - Serie 1, Accesorio de Dije que Brilla en la Oscuridad (1) Caja Ciega Sellada Surtida Figura Mini Original', 9),
(5, 'Crocs-Lightning Mcqueen', 1499, 'Crocs', 'Crocs Disney and Pixar Cars Lightning Mcqueen - Zuecos para Adultos Obstrucción para Unisex Adulto', 30),
(6, 'Sylvanian Families Familia Nutria', 849, 'EPOCH', 'Sylvanian Families Epoch FS-62 ST Mark Certificado, para Edades de 3 años en adelante, Juguete, casa de muñecas, época.', 1),
(7, 'Pañales para perro macho', 251, 'Petco', 'Pañales para perro macho, paquete de 30, tamaño pequeño, envoltura desechable ultraabsorbente con ajuste seguro, a prueba de fugas y cómodo.', 16),
(8, 'Sandwichera Eléctrica Mickey Mouse', 597, 'Disney', 'Sandwichera Eléctrica con Placas de Cocina Antiadherentes y Tapa con Cierre - Aparato de Cocina con Luces Indicadoras', 19),
(9, 'Camión De Juguete para Niños Cybertruck', 369, 'Tesla', 'Camioneta RC de Juguete con Luces — Control Remoto Incluido，Regalos de Navidad y Cumpleaños para Niños y Niñas.', 4),
(10, 'Tarjeta ROBUX', 200, 'Roblox', 'Tarjeta ROBUX 200 MXN - (CÓDIGO Digital)', 50);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-07-2020 a las 22:11:39
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `academico`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `identificador`
--

CREATE TABLE `identificador` (
  `CI` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `paterno` varchar(30) NOT NULL,
  `materno` varchar(30) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `lugar_residencia` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `identificador`
--

INSERT INTO `identificador` (`CI`, `nombre`, `paterno`, `materno`, `fecha_nacimiento`, `lugar_residencia`) VALUES
(111, 'LAURA', 'GOMEZ', 'PEREZ', '1999-03-02', '02'),
(123, 'JUAN', 'PEREZ', 'PEREZ', '1999-03-02', '02'),
(222, 'MONICA', 'ORELLANA', 'ORELLANA', '1999-01-21', '03'),
(333, 'PAMELA', 'ARIAS', 'ORELLANA', '1999-01-21', '03'),
(444, 'MONICA', 'PEREZ', 'SARABIA', '1999-01-21', '02'),
(555, 'RICARDO', 'SOLIS', 'SOLIS', '1999-03-02', '01'),
(6011293, 'ISMAEL', 'ALI', 'CANAVIRI', '1985-06-03', '01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `id` int(11) NOT NULL,
  `CI` int(11) NOT NULL,
  `nmateria` varchar(30) NOT NULL,
  `NOTA1` int(11) NOT NULL,
  `NOTA2` int(11) NOT NULL,
  `NOTA3` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`id`, `CI`, `nmateria`, `NOTA1`, `NOTA2`, `NOTA3`) VALUES
(1, 6011293, 'INF311', 51, 62, 41),
(2, 6011293, 'INF251', 55, 62, 76),
(3, 111, 'INF351', 55, 13, 76),
(4, 111, 'INF324', 5, 43, 76),
(5, 222, 'INF324', 43, 1, 36),
(6, 222, 'INF351', 65, 79, 54),
(7, 333, 'INF351', 32, 79, 54),
(8, 333, 'INF324', 65, 56, 65),
(9, 444, 'INF333', 66, 7, 77),
(10, 444, 'INF351', 51, 51, 51),
(11, 555, 'INF351', 65, 12, 65),
(12, 555, 'INF324', 55, 13, 66),
(13, 555, 'INF323', 7, 43, 77),
(14, 6011293, 'INF321', 67, 62, 41),
(15, 444, 'INF366', 65, 67, 76),
(16, 6011293, 'INF356', 76, 76, 76);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `ci` int(11) NOT NULL,
  `clave` varchar(30) NOT NULL,
  `imagen` varchar(30) NOT NULL,
  `color` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`ci`, `clave`, `imagen`, `color`) VALUES
(111, '111', 'imagen3.jpg', 'blanco'),
(123, '123', 'imagen1.png', 'verde'),
(222, '222', 'imagen4.png', 'rojo'),
(333, '333', 'imagen5.png', 'blanco'),
(444, '444', 'imagen1.png', 'rojo'),
(555, '555', 'imagen2.png', 'rojo'),
(6011293, '6011293', 'imagen2.png', 'blanco');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `identificador`
--
ALTER TABLE `identificador`
  ADD PRIMARY KEY (`CI`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`ci`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `materia`
--
ALTER TABLE `materia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

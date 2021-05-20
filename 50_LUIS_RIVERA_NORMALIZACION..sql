-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-05-2021 a las 01:12:02
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_restaurante`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_direcciones`
--

CREATE TABLE `tbl_direcciones` (
  `ID_DIRECCIONES` int(11) NOT NULL,
  `DIRECCION` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_direcciones`
--

INSERT INTO `tbl_direcciones` (`ID_DIRECCIONES`, `DIRECCION`) VALUES
(301, 'BRISAS DE ALTAMIRA'),
(302, 'BARRIO ARRIBA'),
(303, 'COL. TRES CAMINOS'),
(304, 'CASA BLANCA'),
(305, 'FUERZAS ARMADAS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_envios`
--

CREATE TABLE `tbl_envios` (
  `ID_ENVIO` int(11) NOT NULL,
  `DESCRIPCION_ENVIO` varchar(300) NOT NULL,
  `FECHA` date NOT NULL,
  `ID_DIRRECIONES` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_envios`
--

INSERT INTO `tbl_envios` (`ID_ENVIO`, `DESCRIPCION_ENVIO`, `FECHA`, `ID_DIRRECIONES`) VALUES
(1, 'PORCIÓN DE POLLO CON TAJADAS', '2021-05-20', 303),
(2, 'ORDEN DE TACOS CON PAPAS', '2021-05-21', 305),
(3, '12 BALEADAS CON POLLO, 12 JUGOS DE NARANJA.', '2021-05-20', 304),
(4, 'UN PLATO DE CARNE ASADA MIXTO.', '2021-05-21', 302),
(5, 'SOPA DE RES, CON TODO.', '2021-05-23', 301);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_facturas`
--

CREATE TABLE `tbl_facturas` (
  `ID_FACTURA` int(11) NOT NULL,
  `DESCRIPCION_FACTURA` varchar(200) NOT NULL,
  `FECHA` date NOT NULL,
  `ID_DIRRECIONES` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_facturas`
--

INSERT INTO `tbl_facturas` (`ID_FACTURA`, `DESCRIPCION_FACTURA`, `FECHA`, `ID_DIRRECIONES`) VALUES
(1111, 'PORCION DE POLLO CON TAJADAS   LPS:80.00\r\nENVIO   LPS:30\r\nISV:  LPS:06.00\r\nTOTAL: LPS:126.00', '2021-05-20', 303),
(2222, 'ORDEN DE TACOS CON PAPAS  LPS:100.00\r\nENVIO   LPS:30\r\nISV:  LPS:06.00\r\nTOTAL:  LPS:136.00', '2021-05-21', 305),
(3333, '12 BALEADAS CON POLLO Y 12 JUGOS LPS:276.00\r\nENVIO   LPS:30\r\nISV:  LPS:06.00\r\nTOTAL:  LPS:312.00', '2021-05-20', 304),
(4444, 'UN PLATO DE CARNE ASADA MIXTA LPS:120.00\r\nENVIO   LPS:30\r\nISV:  LPS:06.00\r\nTOTAL:  LPS:150.00', '2021-05-21', 302),
(5555, 'SOPA DE RES CON TODO  LPS:130.00\r\nENVIO   LPS:30\r\nISV:  LPS:06.00\r\nTOTAL:  LPS:166.00', '2021-05-23', 301);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_inventario`
--

CREATE TABLE `tbl_inventario` (
  `ID_PRODUCTO` int(11) NOT NULL,
  `PRODUCTO` varchar(100) NOT NULL,
  `PRECIO` double NOT NULL,
  `ID_DIRRECIONES` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_inventario`
--

INSERT INTO `tbl_inventario` (`ID_PRODUCTO`, `PRODUCTO`, `PRECIO`, `ID_DIRRECIONES`) VALUES
(1212, 'PORCIÓN DE POLLO CON TAJADAS', 80, 303),
(1313, 'ORDEN DE TACOS CON PAPAS', 120, 305),
(1414, '12 BALEADAS DE POLLO\r\n12 JUGOS DE NARANJA', 256, 304),
(1515, 'PLATO DE CARNE ASADA MIXTO', 130, 302),
(1616, 'SOPA DE RES', 130, 301);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_pedidos`
--

CREATE TABLE `tbl_pedidos` (
  `ID_PEDIDO` int(11) NOT NULL,
  `DESCRIPCION_PEDIDO` varchar(200) NOT NULL,
  `FECHA` date NOT NULL,
  `ID_DIRRECIONES` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_pedidos`
--

INSERT INTO `tbl_pedidos` (`ID_PEDIDO`, `DESCRIPCION_PEDIDO`, `FECHA`, `ID_DIRRECIONES`) VALUES
(15, 'PORCIÓN DE POLLO CON TAJADAS', '2021-05-20', 303),
(16, 'ORDEN DE TACOS CON PAPAS', '2021-05-21', 305),
(17, '12 BALEADAS CON POLLO, 12 JUGOS DE NARANJA.', '2021-05-20', 304),
(18, 'UN PLATO DE CARNE ASADA MIXTO.', '2021-05-21', 302),
(19, 'SOPA DE RES, CON TODO.', '2021-05-23', 301);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_direcciones`
--
ALTER TABLE `tbl_direcciones`
  ADD PRIMARY KEY (`ID_DIRECCIONES`);

--
-- Indices de la tabla `tbl_envios`
--
ALTER TABLE `tbl_envios`
  ADD PRIMARY KEY (`ID_ENVIO`),
  ADD KEY `FK_DIRRECCION_ENVIOS` (`ID_DIRRECIONES`);

--
-- Indices de la tabla `tbl_facturas`
--
ALTER TABLE `tbl_facturas`
  ADD PRIMARY KEY (`ID_FACTURA`),
  ADD KEY `FK-DIRRECIONES_FACTURAS` (`ID_DIRRECIONES`);

--
-- Indices de la tabla `tbl_inventario`
--
ALTER TABLE `tbl_inventario`
  ADD PRIMARY KEY (`ID_PRODUCTO`),
  ADD KEY `FK_DIRRECIONES_INVENTARIO` (`ID_DIRRECIONES`);

--
-- Indices de la tabla `tbl_pedidos`
--
ALTER TABLE `tbl_pedidos`
  ADD PRIMARY KEY (`ID_PEDIDO`),
  ADD KEY `FK_DIRRECIONES_PEDIDOS` (`ID_DIRRECIONES`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_direcciones`
--
ALTER TABLE `tbl_direcciones`
  MODIFY `ID_DIRECCIONES` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=306;

--
-- AUTO_INCREMENT de la tabla `tbl_envios`
--
ALTER TABLE `tbl_envios`
  MODIFY `ID_ENVIO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tbl_facturas`
--
ALTER TABLE `tbl_facturas`
  MODIFY `ID_FACTURA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5556;

--
-- AUTO_INCREMENT de la tabla `tbl_inventario`
--
ALTER TABLE `tbl_inventario`
  MODIFY `ID_PRODUCTO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1617;

--
-- AUTO_INCREMENT de la tabla `tbl_pedidos`
--
ALTER TABLE `tbl_pedidos`
  MODIFY `ID_PEDIDO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_envios`
--
ALTER TABLE `tbl_envios`
  ADD CONSTRAINT `tbl_envios_ibfk_1` FOREIGN KEY (`ID_DIRRECIONES`) REFERENCES `tbl_direcciones` (`ID_DIRECCIONES`);

--
-- Filtros para la tabla `tbl_facturas`
--
ALTER TABLE `tbl_facturas`
  ADD CONSTRAINT `tbl_facturas_ibfk_1` FOREIGN KEY (`ID_DIRRECIONES`) REFERENCES `tbl_direcciones` (`ID_DIRECCIONES`);

--
-- Filtros para la tabla `tbl_inventario`
--
ALTER TABLE `tbl_inventario`
  ADD CONSTRAINT `tbl_inventario_ibfk_1` FOREIGN KEY (`ID_DIRRECIONES`) REFERENCES `tbl_direcciones` (`ID_DIRECCIONES`);

--
-- Filtros para la tabla `tbl_pedidos`
--
ALTER TABLE `tbl_pedidos`
  ADD CONSTRAINT `tbl_pedidos_ibfk_1` FOREIGN KEY (`ID_DIRRECIONES`) REFERENCES `tbl_direcciones` (`ID_DIRECCIONES`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

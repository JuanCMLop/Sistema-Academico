-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-11-2022 a las 20:51:11
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdsismatricula`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `idAdministrador` int(11) NOT NULL,
  `nombres` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `apellidos` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `celular` varchar(9) COLLATE utf8_spanish_ci DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `fechaNac` date DEFAULT NULL,
  `dni` varchar(8) COLLATE utf8_spanish_ci DEFAULT NULL,
  `emailPersonal` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `direccion` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fechaIng` date DEFAULT NULL,
  `idUsuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`idAdministrador`, `nombres`, `apellidos`, `celular`, `edad`, `fechaNac`, `dni`, `emailPersonal`, `direccion`, `fechaIng`, `idUsuario`) VALUES
(1, 'Juan Carlos', 'Montenegro Lopez', '992294595', 30, '1992-08-10', '47312897', 'juancmlopez@outlook.com', 'Av. Andres Aramburu 720, Surquillo', '2022-10-31', 1),
(3, 'Rosa Flor', 'Amilcar Reategui', '925025600', 47, '1975-03-28', '43871503', 'reategui.amilcar_rosa@hotmail.com', 'Av. Belaunde Oeste 1123', '2022-10-31', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aula`
--

CREATE TABLE `aula` (
  `idAula` int(11) NOT NULL,
  `numAula` varchar(3) COLLATE utf8_spanish_ci DEFAULT NULL,
  `capacidad` int(11) DEFAULT NULL,
  `estado` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `aula`
--

INSERT INTO `aula` (`idAula`, `numAula`, `capacidad`, `estado`) VALUES
(1, '100', 30, b'1'),
(2, '101', 30, b'1'),
(3, '102', 30, b'1'),
(4, '103', 30, b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo`
--

CREATE TABLE `cargo` (
  `idCargo` int(11) NOT NULL,
  `nombreCargo` varchar(25) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cargo`
--

INSERT INTO `cargo` (`idCargo`, `nombreCargo`, `estado`) VALUES
(1, 'Administrador', b'1'),
(2, 'Personal Administrativo', b'1'),
(3, 'Docente', b'1'),
(4, 'Estudiante', b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `idCurso` int(11) NOT NULL,
  `nombreCurso` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `estado` bit(1) NOT NULL,
  `idEspecialidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `curso`
--

INSERT INTO `curso` (`idCurso`, `nombreCurso`, `estado`, `idEspecialidad`) VALUES
(1, 'Aritmetica', b'1', 1),
(2, 'Algebra', b'1', 1),
(3, 'Geometria', b'1', 1),
(4, 'Trigonometria', b'1', 1),
(5, 'Razonamiento Matematico', b'1', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente`
--

CREATE TABLE `docente` (
  `idDocente` int(11) NOT NULL,
  `nombres` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `apellidos` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `celular` char(9) COLLATE utf8_spanish_ci DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `fechaNac` date DEFAULT NULL,
  `dni` varchar(8) COLLATE utf8_spanish_ci DEFAULT NULL,
  `emailPersonal` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `direccion` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fechaIng` date DEFAULT NULL,
  `idUsuario` int(11) DEFAULT NULL,
  `idEspecialidad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `docente`
--

INSERT INTO `docente` (`idDocente`, `nombres`, `apellidos`, `celular`, `edad`, `fechaNac`, `dni`, `emailPersonal`, `direccion`, `fechaIng`, `idUsuario`, `idEspecialidad`) VALUES
(1, 'Fabiola Araceli', 'Aguirre Albarran', '995959956', 47, '1975-06-21', '43999679', 'aguire.alba.fab75@gmail.com', 'Av Carlos Izaguirre 780, San Martin de Porres', '2022-11-02', 10, 1),
(2, 'Pedro Luis', 'Cerna Crubillero', '967877398', 45, '1977-08-26', '42730432', 'cerna.cpl@outlook.com', 'Av Intisuyo 987, Independencia', '2022-11-04', 11, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidad`
--

CREATE TABLE `especialidad` (
  `idEspecialidad` int(11) NOT NULL,
  `nombreEspecialidad` varchar(25) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `especialidad`
--

INSERT INTO `especialidad` (`idEspecialidad`, `nombreEspecialidad`, `estado`) VALUES
(1, 'Matematicas', b'1'),
(2, 'Letras', b'1'),
(3, 'Ciencias Sociales', b'1'),
(4, 'Ciencias', b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `idEstudiante` int(11) NOT NULL,
  `nombres` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `apellidos` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `celular` varchar(9) COLLATE utf8_spanish_ci DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `fechaNac` date DEFAULT NULL,
  `dni` varchar(8) COLLATE utf8_spanish_ci DEFAULT NULL,
  `emailPersonal` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `direccion` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fechaIng` date DEFAULT NULL,
  `idUsuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`idEstudiante`, `nombres`, `apellidos`, `celular`, `edad`, `fechaNac`, `dni`, `emailPersonal`, `direccion`, `fechaIng`, `idUsuario`) VALUES
(1, 'Rodolfo Alfonso', 'Lizano Alarcon', '993614028', 13, '2009-06-21', '36262992', 'lizard009@outlook.com', 'Av. República De Argentina 600, San Martin de Porres\r\n', '2022-11-02', 5),
(2, 'Keyla Xiomara', 'Montalvan Pilco', '945414940', 13, '2009-08-26', '76345839', 'montavan_pilco26@gmail.com', 'Calle San Martin De Porres 1214, Los Olivos\r\n', '2022-11-19', 6),
(3, 'Edith Vanessa', 'Durand Quinones', '954018751', 13, '2009-02-13', '46429046', 'edithzhita_quinones@outlook.com', 'Calle El Mariscal 116, Callao', '2022-11-01', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grado`
--

CREATE TABLE `grado` (
  `idGrado` int(11) NOT NULL,
  `nombreGrado` varchar(25) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` bit(1) DEFAULT NULL,
  `idSeccion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `grado`
--

INSERT INTO `grado` (`idGrado`, `nombreGrado`, `estado`, `idSeccion`) VALUES
(1, '1ro Secundaria', b'1', 1),
(2, '2do Secundaria', b'1', 1),
(3, '3ro Secundaria', b'1', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matricula`
--

CREATE TABLE `matricula` (
  `idMatricula` int(11) NOT NULL,
  `idEstudiante` int(11) DEFAULT NULL,
  `idAula` int(11) DEFAULT NULL,
  `idGrado` int(11) DEFAULT NULL,
  `idSeccion` int(11) DEFAULT NULL,
  `idPeriodo` int(11) DEFAULT NULL,
  `fechaMatricula` date DEFAULT NULL,
  `estado` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `matricula`
--

INSERT INTO `matricula` (`idMatricula`, `idEstudiante`, `idAula`, `idGrado`, `idSeccion`, `idPeriodo`, `fechaMatricula`, `estado`) VALUES
(1, 1, 1, 1, 1, 1, '2022-03-01', b'1'),
(3, 2, 1, 1, 1, 1, '2022-01-01', b'1'),
(5, 3, 1, 1, 1, 1, '2022-01-05', b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas`
--

CREATE TABLE `notas` (
  `idNota` int(11) NOT NULL,
  `idEstudiante` int(11) DEFAULT NULL,
  `idPeriodo` int(11) DEFAULT NULL,
  `idGrado` int(11) DEFAULT NULL,
  `idSeccion` int(11) DEFAULT NULL,
  `idCurso` int(11) DEFAULT NULL,
  `nota1` decimal(4,2) DEFAULT NULL,
  `nota2` decimal(4,2) DEFAULT NULL,
  `nota3` decimal(4,2) DEFAULT NULL,
  `examenFinal` decimal(4,2) DEFAULT NULL,
  `promedio` decimal(4,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `notas`
--

INSERT INTO `notas` (`idNota`, `idEstudiante`, `idPeriodo`, `idGrado`, `idSeccion`, `idCurso`, `nota1`, `nota2`, `nota3`, `examenFinal`, `promedio`) VALUES
(1, 1, 1, 1, 1, 1, '16.00', '16.00', '16.00', '16.00', '16.00'),
(2, 2, 1, 1, 1, 1, '16.00', '16.00', '16.00', '16.00', '16.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periodo`
--

CREATE TABLE `periodo` (
  `idPeriodo` int(11) NOT NULL,
  `fecInicio` varchar(4) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `periodo`
--

INSERT INTO `periodo` (`idPeriodo`, `fecInicio`, `estado`) VALUES
(1, '2022', b'1'),
(2, '2023', b'1'),
(3, '2024', b'1'),
(4, '2025', b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal`
--

CREATE TABLE `personal` (
  `idPersonal` int(11) NOT NULL,
  `nombres` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `apellidos` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `celular` varchar(9) COLLATE utf8_spanish_ci DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `fechaNac` date DEFAULT NULL,
  `dni` varchar(8) COLLATE utf8_spanish_ci DEFAULT NULL,
  `emailPersonal` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `direccion` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fechaIng` date DEFAULT NULL,
  `idUsuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `personal`
--

INSERT INTO `personal` (`idPersonal`, `nombres`, `apellidos`, `celular`, `edad`, `fechaNac`, `dni`, `emailPersonal`, `direccion`, `fechaIng`, `idUsuario`) VALUES
(1, 'Candida Vinze', 'Mamani Manzano', '995142902', 37, '1985-04-20', '41816923', 'candida.viz85@outlook.com', 'Av Arenales 2676, Lince', '2022-11-01', 9),
(2, 'Jesus Alvaro', 'Rojas Gomez', '929335099', 36, '1986-06-15', '74058120', 'rojgom_ja_86@hotmail.com', 'Jr. Arica 856, Miraflores', '2022-11-05', 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seccion`
--

CREATE TABLE `seccion` (
  `idSeccion` int(11) NOT NULL,
  `nombreSeccion` varchar(1) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `seccion`
--

INSERT INTO `seccion` (`idSeccion`, `nombreSeccion`, `estado`) VALUES
(1, 'A', b'1'),
(2, 'B', b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL,
  `emailColegio` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `password` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` bit(1) DEFAULT NULL,
  `idCargo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `emailColegio`, `password`, `estado`, `idCargo`) VALUES
(1, 'C47312897@school.edu.pe', 'admin123', b'1', 1),
(2, 'C43871503@school.edu.pe', 'person123', b'1', 1),
(5, 'C36262992@school.edu.pe', 'est123', b'1', 4),
(6, 'C76345839@school.edu.pe', 'keyla123', b'1', 4),
(7, 'C46429046@school.edu.pe', 'edith123', b'1', 4),
(8, 'C19709613@school.edu.pe', 'raul123', b'1', 4),
(9, 'C41816923@school.edu.pe', 'candida123', b'1', 2),
(10, 'C43999679@school.edu.pe', 'fabiola123', b'1', 3),
(11, 'C42730432@school.edu.pe', 'cerna123', b'1', 3),
(12, 'C74058120@school.edu.pe', 'rojas123', b'1', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`idAdministrador`),
  ADD KEY `FK_ADMINISTRADOR_USUARIO` (`idUsuario`);

--
-- Indices de la tabla `aula`
--
ALTER TABLE `aula`
  ADD PRIMARY KEY (`idAula`);

--
-- Indices de la tabla `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`idCargo`);

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`idCurso`),
  ADD KEY `FK_CURSO_ESPECIALIDAD` (`idEspecialidad`);

--
-- Indices de la tabla `docente`
--
ALTER TABLE `docente`
  ADD PRIMARY KEY (`idDocente`),
  ADD KEY `FK_DOCENTE_ESPECIALIDAD` (`idEspecialidad`),
  ADD KEY `FK_DOCENTE_USUARIO` (`idUsuario`);

--
-- Indices de la tabla `especialidad`
--
ALTER TABLE `especialidad`
  ADD PRIMARY KEY (`idEspecialidad`);

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`idEstudiante`),
  ADD KEY `FK_ESTUDIANTE_USUARIO` (`idUsuario`);

--
-- Indices de la tabla `grado`
--
ALTER TABLE `grado`
  ADD PRIMARY KEY (`idGrado`),
  ADD KEY `FK_GRADO_SECCION` (`idSeccion`);

--
-- Indices de la tabla `matricula`
--
ALTER TABLE `matricula`
  ADD PRIMARY KEY (`idMatricula`),
  ADD KEY `FK_MATRICULA_AULA` (`idAula`),
  ADD KEY `FK_MATRICULA_GRADO` (`idGrado`),
  ADD KEY `FK_MATRICULA_SECCION` (`idSeccion`),
  ADD KEY `FK_MATRICULA_PERIODO` (`idPeriodo`),
  ADD KEY `FK_MATRICULA_ESTUDIANTE` (`idEstudiante`);

--
-- Indices de la tabla `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`idNota`),
  ADD KEY `FK_NOTAS_ESTUDIANTE` (`idEstudiante`),
  ADD KEY `FK_NOTAS_PERIODO` (`idPeriodo`),
  ADD KEY `FK_NOTAS_GRADO` (`idGrado`),
  ADD KEY `FK_NOTAS_SECCION` (`idSeccion`),
  ADD KEY `FK_NOTAS_CURSO` (`idCurso`);

--
-- Indices de la tabla `periodo`
--
ALTER TABLE `periodo`
  ADD PRIMARY KEY (`idPeriodo`);

--
-- Indices de la tabla `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`idPersonal`),
  ADD KEY `FK_PERSONAL_USUARIO` (`idUsuario`);

--
-- Indices de la tabla `seccion`
--
ALTER TABLE `seccion`
  ADD PRIMARY KEY (`idSeccion`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`),
  ADD KEY `FK_USUARIO_CARGO` (`idCargo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrador`
--
ALTER TABLE `administrador`
  MODIFY `idAdministrador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `aula`
--
ALTER TABLE `aula`
  MODIFY `idAula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `cargo`
--
ALTER TABLE `cargo`
  MODIFY `idCargo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `curso`
--
ALTER TABLE `curso`
  MODIFY `idCurso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `docente`
--
ALTER TABLE `docente`
  MODIFY `idDocente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `especialidad`
--
ALTER TABLE `especialidad`
  MODIFY `idEspecialidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  MODIFY `idEstudiante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `grado`
--
ALTER TABLE `grado`
  MODIFY `idGrado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `matricula`
--
ALTER TABLE `matricula`
  MODIFY `idMatricula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `notas`
--
ALTER TABLE `notas`
  MODIFY `idNota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `periodo`
--
ALTER TABLE `periodo`
  MODIFY `idPeriodo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `personal`
--
ALTER TABLE `personal`
  MODIFY `idPersonal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `seccion`
--
ALTER TABLE `seccion`
  MODIFY `idSeccion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD CONSTRAINT `FK_ADMINISTRADOR_USUARIO` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`);

--
-- Filtros para la tabla `curso`
--
ALTER TABLE `curso`
  ADD CONSTRAINT `FK_CURSO_ESPECIALIDAD` FOREIGN KEY (`idEspecialidad`) REFERENCES `especialidad` (`idEspecialidad`);

--
-- Filtros para la tabla `docente`
--
ALTER TABLE `docente`
  ADD CONSTRAINT `FK_DOCENTE_ESPECIALIDAD` FOREIGN KEY (`idEspecialidad`) REFERENCES `especialidad` (`idEspecialidad`),
  ADD CONSTRAINT `FK_DOCENTE_USUARIO` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`);

--
-- Filtros para la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD CONSTRAINT `FK_ESTUDIANTE_USUARIO` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`);

--
-- Filtros para la tabla `grado`
--
ALTER TABLE `grado`
  ADD CONSTRAINT `FK_GRADO_SECCION` FOREIGN KEY (`idSeccion`) REFERENCES `seccion` (`idSeccion`);

--
-- Filtros para la tabla `matricula`
--
ALTER TABLE `matricula`
  ADD CONSTRAINT `FK_MATRICULA_AULA` FOREIGN KEY (`idAula`) REFERENCES `aula` (`idAula`),
  ADD CONSTRAINT `FK_MATRICULA_ESTUDIANTE` FOREIGN KEY (`idEstudiante`) REFERENCES `estudiante` (`idEstudiante`),
  ADD CONSTRAINT `FK_MATRICULA_GRADO` FOREIGN KEY (`idGrado`) REFERENCES `grado` (`idGrado`),
  ADD CONSTRAINT `FK_MATRICULA_PERIODO` FOREIGN KEY (`idPeriodo`) REFERENCES `periodo` (`idPeriodo`),
  ADD CONSTRAINT `FK_MATRICULA_SECCION` FOREIGN KEY (`idSeccion`) REFERENCES `seccion` (`idSeccion`);

--
-- Filtros para la tabla `notas`
--
ALTER TABLE `notas`
  ADD CONSTRAINT `FK_NOTAS_CURSO` FOREIGN KEY (`idCurso`) REFERENCES `curso` (`idCurso`),
  ADD CONSTRAINT `FK_NOTAS_ESTUDIANTE` FOREIGN KEY (`idEstudiante`) REFERENCES `estudiante` (`idEstudiante`),
  ADD CONSTRAINT `FK_NOTAS_GRADO` FOREIGN KEY (`idGrado`) REFERENCES `grado` (`idGrado`),
  ADD CONSTRAINT `FK_NOTAS_PERIODO` FOREIGN KEY (`idPeriodo`) REFERENCES `periodo` (`idPeriodo`),
  ADD CONSTRAINT `FK_NOTAS_SECCION` FOREIGN KEY (`idSeccion`) REFERENCES `seccion` (`idSeccion`);

--
-- Filtros para la tabla `personal`
--
ALTER TABLE `personal`
  ADD CONSTRAINT `FK_PERSONAL_USUARIO` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `FK_USUARIO_CARGO` FOREIGN KEY (`idCargo`) REFERENCES `cargo` (`idCargo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

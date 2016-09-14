-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-09-2016 a las 08:30:16
-- Versión del servidor: 5.6.26-log
-- Versión de PHP: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pokemon`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pokemon`
--

CREATE TABLE IF NOT EXISTS `pokemon` (
  `pokemonID` int(11) NOT NULL,
  `nombre` varchar(15) NOT NULL,
  `peso` double NOT NULL,
  `altura` double NOT NULL,
  `ataque` int(11) NOT NULL,
  `polvos` int(11) NOT NULL,
  `foto` varchar(65) NOT NULL,
  `descripcion` varchar(300) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pokemon`
--

INSERT INTO `pokemon` (`pokemonID`, `nombre`, `peso`, `altura`, `ataque`, `polvos`, `foto`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 'Bulbasaur', 6.9, 0.7, 0, 0, '001-Bulbasaur.png', 'A Bulbasaur es fácil verle echándose una siesta al sol. La semilla que tiene en el lomo va creciendo cada vez más a medida que absorbe los rayos del sol.', '2016-09-14 01:39:24', '0000-00-00 00:00:00'),
(2, 'Ivysaur', 13, 1, 0, 0, '002-Ivysaur.png', 'Este Pokémon lleva un bulbo en el lomo y, para poder con su peso, tiene unas patas y un tronco gruesos y fuertes. Si empieza a pasar más tiempo al sol, será porque el bulbo está a punto de hacerse una flor grande.', '2016-09-14 04:12:17', '0000-00-00 00:00:00'),
(3, 'Venusaur', 100, 2, 0, 0, '003-Venusaur.png', 'Venusaur tiene una flor enorme en el lomo que, según parece, adquiere unos colores muy vivos si está bien nutrido y le da mucho el sol. El aroma delicado de la flor tiene un efecto relajante en el ánimo de las personas.', '2016-09-14 04:14:50', '0000-00-00 00:00:00'),
(4, 'Charmander', 8.5, 0.6, 0, 0, '004-Charmander.png', 'La llama que tiene en la punta de la cola arde según sus sentimientos. Llamea levemente cuando está alegre y arde vigorosamente cuando está enfadado.', '2016-09-14 02:11:38', '0000-00-00 00:00:00'),
(5, 'Charmeleon', 19, 1.1, 0, 0, '005-Charmeleon.png', 'Charmeleon no tiene reparo en acabar con su rival usando las afiladas garras que tiene. Si su enemigo es fuerte, se vuelve agresivo, y la llama que tiene en el extremo de la cola empieza a arder con mayor intensidad tornándose azulada.', '2016-09-14 04:18:56', '0000-00-00 00:00:00'),
(6, 'Charizard', 90.5, 1.7, 0, 0, '006-Charizard.png', 'Charizard se dedica a volar por los cielos en busca de oponentes fuertes. Echa fuego por la boca y es capaz de derretir cualquier cosa. No obstante, si su rival es más débil que él, no usará este ataque.', '2016-09-14 04:20:56', '0000-00-00 00:00:00'),
(7, 'Squirtle', 9, 0.5, 0, 0, '007-Squirtle.png', 'El caparazón de Squirtle no le sirve de protección únicamente. Su forma redondeada y las hendiduras que tiene le ayudan a deslizarse en el agua y le permiten nadar a gran velocidad.', '2016-09-14 02:15:09', '0000-00-00 00:00:00'),
(8, 'Wartortle', 22.5, 1, 0, 0, '008-Wartortle.png', 'Tiene una cola larga y cubierta de un pelo abundante y grueso que se torna más oscuro a medida que crece. Los arañazos que tiene en el caparazón dan fe de lo buen guerrero que es.', '2016-09-14 04:26:00', '0000-00-00 00:00:00'),
(9, 'Blastoise', 85.5, 1.6, 0, 0, '009-Blastoise.png', 'Blastoise lanza chorros de agua con gran precisión por los tubos que le salen del caparazón que tiene en la espalda. Puede disparar chorros de agua con tanta puntería que no fallaría al tirar contra una lata pequeña a 50 m.', '2016-09-14 04:45:16', '0000-00-00 00:00:00'),
(10, 'Caterpie', 2.9, 0.3, 0, 0, '010-Caterpie.png', 'Caterpie tiene un apetito voraz. Es capaz de devorar hojas que superen su tamaño en un abrir y cerrar de ojos. Atención a la antena que tiene: libera un hedor realmente fuerte.', '2016-09-14 04:10:01', '0000-00-00 00:00:00'),
(11, 'Metapod', 9.9, 0.7, 0, 0, '011-Metapod.png', 'La capa que recubre el cuerpo de este Pokémon es tan dura como una plancha de hierro. Metapod apenas se mueve. Permanece inmóvil para que las vísceras evolucionen dentro de la coraza que le rodea.', '2016-09-14 04:49:56', '0000-00-00 00:00:00'),
(12, 'Butterfree', 32, 1.1, 0, 0, '012-Butterfree.png', 'Butterfree tiene una habilidad especial para encontrar delicioso polen en las flores. Puede localizar, extraer y transportar polen de flores que estén floreciendo a 10 km de distancia de su nido.', '2016-09-14 04:51:59', '0000-00-00 00:00:00'),
(13, 'Weedle', 3.2, 0.3, 0, 0, '013-Weedle.png', 'Weedle tiene un finísimo sentido del olfato. Es capaz de distinguir las hojas que le gustan de las que no le gustan olisqueando un poco con la gran nariz que tiene.', '2016-09-14 04:02:11', '0000-00-00 00:00:00'),
(14, 'Kakuna', 10, 0.6, 0, 0, '014-Kakuna.png', 'Kakuna permanece prácticamente inmóvil al encaramarse a los árboles, aunque la actividad interna de su organismo tiene un ritmo frenético, pues se prepara para su evolución. Prueba de esto es la alta temperatura de su caparazón.', '2016-09-14 04:54:54', '0000-00-00 00:00:00'),
(15, 'Beedrill', 29.5, 1, 0, 0, '015-Beedrill.png', 'Los Beedrill defienden su territorio a toda costa. No es conveniente acercarse a su colmena, por seguridad. Si se les molesta, todo un enjambre atacará ferozmente.', '2016-09-14 04:57:21', '0000-00-00 00:00:00'),
(16, 'Pidgey', 1.8, 0.3, 0, 0, '016-Pidgey.png', 'Pidgey tiene un sentido de la orientación muy desarrollado. Es capaz de regresar a su nido, por lejos que se encuentre de las zonas que le resultan familiares.', '2016-09-14 05:08:40', '0000-00-00 00:00:00'),
(17, 'Pidgeotto', 30, 1.1, 0, 0, '017-Pidgeotto.png', 'Pidgeotto se apodera de una zona muy vasta como su territorio y la sobrevuela para controlarla. Si alguien invade su espacio vital, no tendrá ningún reparo en castigarlo con sus afiladas garras.', '2016-09-14 05:10:44', '0000-00-00 00:00:00'),
(18, 'Pidgeot', 39.5, 1.5, 0, 0, '018-Pidgeot.png', 'El plumaje de este Pokémon es bonito e hipnótico. Muchos Entrenadores se quedan embobados ante la belleza impactante de las plumas que tiene en la cabeza; lo que les lleva a elegir a Pidgeot como su Pokémon.', '2016-09-14 05:15:42', '0000-00-00 00:00:00'),
(19, 'Rattata', 3.5, 0.3, 0, 0, '019-Rattata.png', 'Rattata es cauto como él solo. Hasta cuando duerme mueve las orejas para oír todos los ruidos. No es nada delicado a la hora de elegir su hábitat. Cualquier sitio es bueno para cavar su madriguera.', '2016-09-14 05:19:25', '0000-00-00 00:00:00'),
(20, 'Raticate', 18.5, 0.7, 0, 0, '020-Raticate.png', 'A Raticate le crecen los incisivos firmes y fuertes. Para mantenerlos afilados roe troncos y rocas, e incluso las paredes de las casas.', '2016-09-14 05:21:26', '0000-00-00 00:00:00'),
(21, 'Spearow', 2, 0.3, 0, 0, '021-Spearow.png', 'Spearow pía con tanta fuerza que se le puede oír a 1 km de distancia. Si al agudo chillido le sigue una especie de eco, estaremos oyendo la respuesta de otros Spearow que contestan ante el aviso de peligro.', '2016-09-14 05:24:05', '0000-00-00 00:00:00'),
(22, 'Fearow', 38, 1.2, 0, 0, '022-Fearow.png', 'A Fearow se le reconoce por tener un pescuezo y un pico largos que le permiten cazar en tierra y agua. Tiene una gran habilidad moviendo el fino pico para atrapar a sus presas.', '2016-09-14 05:26:37', '0000-00-00 00:00:00'),
(23, 'Ekans', 6.9, 2, 0, 0, '023-Ekans.png', 'Ekans se enrosca para descansar. Adoptando esta posición puede responder rápidamente a cualquier amenaza que le aceche desde cualquier lugar, levantando la cabeza con una feroz mirada.', '2016-09-14 05:29:01', '0000-00-00 00:00:00'),
(24, 'Arbok', 65, 3.5, 0, 0, '024-Arbok.png', 'Este Pokémon es tremendamente fuerte, puede oprimir cualquier cosa con su cuerpo y hasta es capaz de estrujar un barril de acero. Una vez que Arbok se enrosca a su víctima, no hay forma de escapar de su asfixiante abrazo.', '2016-09-14 05:33:57', '0000-00-00 00:00:00'),
(25, 'Pikachu', 6, 0.4, 0, 0, '025-Pikachu.png', 'Cada vez que un Pikachu se encuentra con algo nuevo, le lanza una descarga eléctrica. Cuando se ve alguna baya chamuscada, es muy probable que sea obra de un Pikachu, ya que a veces no controlan la intensidad de la descarga.', '2016-09-14 05:35:21', '0000-00-00 00:00:00'),
(26, 'Raichu', 30, 0.8, 0, 0, '026-Raichu.png', 'Si las bolsas de los mofletes se le cargan demasiado, Raichu planta la cola en el suelo para liberar electricidad. Es común encontrar zonas chamuscadas cerca de la madriguera de este Pokémon.', '2016-09-14 05:38:07', '0000-00-00 00:00:00'),
(27, 'Sandshrew', 12, 0.6, 0, 0, '027-Sandshrew.png', 'Sandshrew es capaz de absorber agua y no perder ni una gota, algo que le permite sobrevivir en el desierto. Este Pokémon se enrosca para defenderse de los enemigos.', '2016-09-14 05:41:46', '0000-00-00 00:00:00'),
(28, 'Sandslash', 29.5, 1, 0, 0, '028-Sandslash.png', 'Sandslash está recubierto de duras púas que son partes endurecidas de la piel. Suele mudarlas una vez al año; debajo de las viejas púas crecen unas nuevas que las sustituyen.', '2016-09-14 05:44:20', '0000-00-00 00:00:00'),
(29, 'Nidoran♀', 7, 0.4, 0, 0, '029-Nidoran♀.png', 'Nidoran? tiene púas que segregan un veneno muy potente. Se piensa que las desarrolló como protección del cuerpo tan pequeño que tiene. Cuando se enfada, libera una horrible sustancia tóxica por el cuerno.', '2016-09-14 05:48:08', '0000-00-00 00:00:00'),
(30, 'Nidorina', 20, 0.8, 0, 0, '030-Nidorina.png', 'Cuando están en familia o con sus amigos, esconden las púas para evitar accidentes. Según parece, se alteran bastante si se separan del grupo.', '2016-09-14 05:50:11', '0000-00-00 00:00:00'),
(31, 'Nidoqueen', 60, 1.3, 0, 0, '031-Nidoqueen.png', 'Nidoqueen tiene el cuerpo totalmente recubierto de escamas durísimas. Suele lanzar por los aires a sus rivales de los violentos golpes que les propina. Cuando se trata de defender a sus crías, alcanza su nivel máximo de fuerza.', '2016-09-14 05:51:50', '0000-00-00 00:00:00'),
(32, 'Nidoran♂', 9, 0.5, 0, 0, '032-Nidoran♂.png', 'Nidoran? ha desarrollado músculos para mover las orejas y orientarlas en cualquier dirección. De este modo, es capaz de captar hasta el sonido más leve.', '2016-09-14 05:54:50', '0000-00-00 00:00:00'),
(33, 'Nidorino', 19.5, 0.9, 0, 0, '033-Nidorino.png', 'Nidorino tiene un cuerno de dureza superior a la del diamante. Si siente una presencia hostil, se le erizan las púas del lomo enseguida y carga contra el enemigo con todas sus fuerzas.', '2016-09-14 05:56:26', '0000-00-00 00:00:00'),
(34, 'Nidoking', 62, 1.4, 0, 0, '034-Nidoking.png', 'La gruesa cola de Nidoking encierra una fuerza realmente destructora. Con una vez que la agite, es capaz de tumbar una torre metálica de transmisión. Una vez que este Pokémon se desboca, no hay quien lo pare.', '2016-09-14 05:58:17', '0000-00-00 00:00:00'),
(35, 'Clefairy', 7.5, 0.6, 0, 0, '035-Clefairy.png', 'Siempre que hay luna llena, salen en grupo para jugar. Al amanecer, los Clefairy, agotados, regresan a sus refugios de montaña para dormir acurrucados unos con otros.', '2016-09-14 06:01:53', '0000-00-00 00:00:00'),
(36, 'Clefable', 40, 1.3, 0, 0, '036-Clefable.png', 'Clefable se mueve dando saltitos como si fuera haciendo uso de las alas. Estos pequeños brincos le permiten caminar por el agua. De todos es sabido que le encanta darse paseos por los lagos en tranquilas noches de luna llena.', '2016-09-14 06:04:35', '0000-00-00 00:00:00'),
(37, 'Vulpix', 9.9, 0.6, 0, 0, '037-Vulpix.png', 'Al nacer, Vulpix tiene una cola blanca que se divide en seis si recibe cariño por parte de su Entrenador. Las seis colas se le rizan de forma majestuosa.', '2016-09-14 06:05:59', '0000-00-00 00:00:00'),
(38, 'Ninetales', 19.9, 1.1, 0, 0, '038-Ninetales.png', 'Ninetales emite una siniestra luz a través de los brillantes ojos rojos que tiene, para conseguir controlar del todo la mente de su rival. Dicen que este Pokémon llega a vivir mil años.', '2016-09-14 06:07:31', '0000-00-00 00:00:00'),
(39, 'Jigglypuff', 5.5, 0.5, 0, 0, '039-Jigglypuff.png', 'Jigglypuff tiene unas cuerdas vocales que ajustan sin problema la longitud de onda de su voz. Este Pokémon usa la habilidad que tiene para cantar con la longitud de onda necesaria para adormecer a su rival.', '2016-09-14 06:09:29', '0000-00-00 00:00:00'),
(40, 'Wigglytuff', 12, 1, 0, 0, '040-Wigglytuff.png', 'Wigglytuff tiene unos ojos enormes con forma de platillo, que siempre están cubiertos de lágrimas. Si se le metiera algo en el ojo, enseguida se le saldría solo.', '2016-09-14 06:11:52', '0000-00-00 00:00:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pokemon`
--
ALTER TABLE `pokemon`
  ADD PRIMARY KEY (`pokemonID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

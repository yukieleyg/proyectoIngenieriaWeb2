-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-10-2016 a las 04:30:13
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
  `id` int(11) NOT NULL,
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

INSERT INTO `pokemon` (`id`, `nombre`, `peso`, `altura`, `ataque`, `polvos`, `foto`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 'Bulbasaur', 6.9, 0.7, 3, 0, '001-Bulbasaur.png', 'A Bulbasaur es fácil verle echándose una siesta al sol. La semilla que tiene en el lomo va creciendo cada vez más a medida que absorbe los rayos del sol.', '2016-10-06 05:09:32', '2016-10-06 11:09:32'),
(2, 'Ivysaur', 13, 1, 1, 0, '002-Ivysaur.png', 'Este Pokémon lleva un bulbo en el lomo y, para poder con su peso, tiene unas patas y un tronco gruesos y fuertes. Si empieza a pasar más tiempo al sol, será porque el bulbo está a punto de hacerse una flor grande.', '2016-10-06 05:11:36', '2016-10-06 11:11:36'),
(3, 'Venusaur', 100, 2, 1, 0, '003-Venusaur.png', 'Venusaur tiene una flor enorme en el lomo que, según parece, adquiere unos colores muy vivos si está bien nutrido y le da mucho el sol. El aroma delicado de la flor tiene un efecto relajante en el ánimo de las personas.', '2016-10-06 05:16:43', '2016-10-06 11:16:43'),
(4, 'Charmander', 8.5, 0.6, 0, 0, '004-Charmander.png', 'La llama que tiene en la punta de la cola arde según sus sentimientos. Llamea levemente cuando está alegre y arde vigorosamente cuando está enfadado.', '2016-09-14 02:11:38', '0000-00-00 00:00:00'),
(5, 'Charmeleon', 19, 1.1, 0, 0, '005-Charmeleon.png', 'Charmeleon no tiene reparo en acabar con su rival usando las afiladas garras que tiene. Si su enemigo es fuerte, se vuelve agresivo, y la llama que tiene en el extremo de la cola empieza a arder con mayor intensidad tornándose azulada.', '2016-09-14 04:18:56', '0000-00-00 00:00:00'),
(6, 'Charizard', 90.5, 1.7, 3, 0, '006-Charizard.png', 'Charizard se dedica a volar por los cielos en busca de oponentes fuertes. Echa fuego por la boca y es capaz de derretir cualquier cosa. No obstante, si su rival es más débil que él, no usará este ataque.', '2016-10-09 02:22:22', '2016-10-09 08:22:22'),
(7, 'Squirtle', 9, 0.5, 1, 0, '007-Squirtle.png', 'El caparazón de Squirtle no le sirve de protección únicamente. Su forma redondeada y las hendiduras que tiene le ayudan a deslizarse en el agua y le permiten nadar a gran velocidad.', '2016-10-06 05:17:05', '2016-10-06 11:17:05'),
(8, 'Wartortle', 22.5, 1, 1, 0, '008-Wartortle.png', 'Tiene una cola larga y cubierta de un pelo abundante y grueso que se torna más oscuro a medida que crece. Los arañazos que tiene en el caparazón dan fe de lo buen guerrero que es.', '2016-10-06 05:23:57', '2016-10-06 11:23:57'),
(9, 'Blastoise', 85.5, 1.6, 0, 0, '009-Blastoise.png', 'Blastoise lanza chorros de agua con gran precisión por los tubos que le salen del caparazón que tiene en la espalda. Puede disparar chorros de agua con tanta puntería que no fallaría al tirar contra una lata pequeña a 50 m.', '2016-09-14 04:45:16', '0000-00-00 00:00:00'),
(10, 'Caterpie', 2.9, 0.3, 0, 0, '010-Caterpie.png', 'Caterpie tiene un apetito voraz. Es capaz de devorar hojas que superen su tamaño en un abrir y cerrar de ojos. Atención a la antena que tiene: libera un hedor realmente fuerte.', '2016-09-14 04:10:01', '0000-00-00 00:00:00'),
(11, 'Metapod', 9.9, 0.7, 0, 0, '011-Metapod.png', 'La capa que recubre el cuerpo de este Pokémon es tan dura como una plancha de hierro. Metapod apenas se mueve. Permanece inmóvil para que las vísceras evolucionen dentro de la coraza que le rodea.', '2016-09-14 04:49:56', '0000-00-00 00:00:00'),
(12, 'Butterfree', 32, 1.1, 0, 0, '012-Butterfree.png', 'Butterfree tiene una habilidad especial para encontrar delicioso polen en las flores. Puede localizar, extraer y transportar polen de flores que estén floreciendo a 10 km de distancia de su nido.', '2016-09-14 04:51:59', '0000-00-00 00:00:00'),
(13, 'Weedle', 3.2, 0.3, 2, 0, '013-Weedle.png', 'Weedle tiene un finísimo sentido del olfato. Es capaz de distinguir las hojas que le gustan de las que no le gustan olisqueando un poco con la gran nariz que tiene.', '2016-10-09 02:25:02', '2016-10-09 08:25:02'),
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
(24, 'Arbok', 65, 3.5, 1, 0, '024-Arbok.png', 'Este Pokémon es tremendamente fuerte, puede oprimir cualquier cosa con su cuerpo y hasta es capaz de estrujar un barril de acero. Una vez que Arbok se enrosca a su víctima, no hay forma de escapar de su asfixiante abrazo.', '2016-10-09 02:25:04', '2016-10-09 08:25:04'),
(25, 'Pikachu', 6, 0.4, 4, 0, '025-Pikachu.png', 'Cada vez que un Pikachu se encuentra con algo nuevo, le lanza una descarga eléctrica. Cuando se ve alguna baya chamuscada, es muy probable que sea obra de un Pikachu, ya que a veces no controlan la intensidad de la descarga.', '2016-10-09 02:27:04', '2016-10-09 08:27:04'),
(26, 'Raichu', 30, 0.8, 0, 0, '026-Raichu.png', 'Si las bolsas de los mofletes se le cargan demasiado, Raichu planta la cola en el suelo para liberar electricidad. Es común encontrar zonas chamuscadas cerca de la madriguera de este Pokémon.', '2016-09-14 05:38:07', '0000-00-00 00:00:00'),
(27, 'Sandshrew', 12, 0.6, 0, 0, '027-Sandshrew.png', 'Sandshrew es capaz de absorber agua y no perder ni una gota, algo que le permite sobrevivir en el desierto. Este Pokémon se enrosca para defenderse de los enemigos.', '2016-09-14 05:41:46', '0000-00-00 00:00:00'),
(28, 'Sandslash', 29.5, 1, 0, 0, '028-Sandslash.png', 'Sandslash está recubierto de duras púas que son partes endurecidas de la piel. Suele mudarlas una vez al año; debajo de las viejas púas crecen unas nuevas que las sustituyen.', '2016-09-14 05:44:20', '0000-00-00 00:00:00'),
(29, 'Nidoran♀', 7, 0.4, 0, 0, '029-Nidoran♀.png', 'Nidoran? tiene púas que segregan un veneno muy potente. Se piensa que las desarrolló como protección del cuerpo tan pequeño que tiene. Cuando se enfada, libera una horrible sustancia tóxica por el cuerno.', '2016-09-14 05:48:08', '0000-00-00 00:00:00'),
(30, 'Nidorina', 20, 0.8, 0, 0, '030-Nidorina.png', 'Cuando están en familia o con sus amigos, esconden las púas para evitar accidentes. Según parece, se alteran bastante si se separan del grupo.', '2016-09-14 05:50:11', '0000-00-00 00:00:00'),
(31, 'Nidoqueen', 60, 1.3, 0, 0, '031-Nidoqueen.png', 'Nidoqueen tiene el cuerpo totalmente recubierto de escamas durísimas. Suele lanzar por los aires a sus rivales de los violentos golpes que les propina. Cuando se trata de defender a sus crías, alcanza su nivel máximo de fuerza.', '2016-09-14 05:51:50', '0000-00-00 00:00:00'),
(32, 'Nidoran♂', 9, 0.5, 1, 0, '032-Nidoran♂.png', 'Nidoran? ha desarrollado músculos para mover las orejas y orientarlas en cualquier dirección. De este modo, es capaz de captar hasta el sonido más leve.', '2016-10-06 05:19:25', '2016-10-06 11:19:25'),
(33, 'Nidorino', 19.5, 0.9, 1, 0, '033-Nidorino.png', 'Nidorino tiene un cuerno de dureza superior a la del diamante. Si siente una presencia hostil, se le erizan las púas del lomo enseguida y carga contra el enemigo con todas sus fuerzas.', '2016-10-06 05:17:42', '2016-10-06 11:17:42'),
(34, 'Nidoking', 62, 1.4, 1, 0, '034-Nidoking.png', 'La gruesa cola de Nidoking encierra una fuerza realmente destructora. Con una vez que la agite, es capaz de tumbar una torre metálica de transmisión. Una vez que este Pokémon se desboca, no hay quien lo pare.', '2016-10-06 05:16:51', '2016-10-06 11:16:51'),
(35, 'Clefairy', 7.5, 0.6, 0, 0, '035-Clefairy.png', 'Siempre que hay luna llena, salen en grupo para jugar. Al amanecer, los Clefairy, agotados, regresan a sus refugios de montaña para dormir acurrucados unos con otros.', '2016-09-14 06:01:53', '0000-00-00 00:00:00'),
(36, 'Clefable', 40, 1.3, 0, 0, '036-Clefable.png', 'Clefable se mueve dando saltitos como si fuera haciendo uso de las alas. Estos pequeños brincos le permiten caminar por el agua. De todos es sabido que le encanta darse paseos por los lagos en tranquilas noches de luna llena.', '2016-09-14 06:04:35', '0000-00-00 00:00:00'),
(37, 'Vulpix', 9.9, 0.6, 0, 0, '037-Vulpix.png', 'Al nacer, Vulpix tiene una cola blanca que se divide en seis si recibe cariño por parte de su Entrenador. Las seis colas se le rizan de forma majestuosa.', '2016-09-14 06:05:59', '0000-00-00 00:00:00'),
(38, 'Ninetales', 19.9, 1.1, 0, 0, '038-Ninetales.png', 'Ninetales emite una siniestra luz a través de los brillantes ojos rojos que tiene, para conseguir controlar del todo la mente de su rival. Dicen que este Pokémon llega a vivir mil años.', '2016-09-14 06:07:31', '0000-00-00 00:00:00'),
(39, 'Jigglypuff', 5.5, 0.5, 0, 0, '039-Jigglypuff.png', 'Jigglypuff tiene unas cuerdas vocales que ajustan sin problema la longitud de onda de su voz. Este Pokémon usa la habilidad que tiene para cantar con la longitud de onda necesaria para adormecer a su rival.', '2016-09-14 06:09:29', '0000-00-00 00:00:00'),
(40, 'Wigglytuff', 12, 1, 0, 0, '040-Wigglytuff.png', 'Wigglytuff tiene unos ojos enormes con forma de platillo, que siempre están cubiertos de lágrimas. Si se le metiera algo en el ojo, enseguida se le saldría solo.', '2016-09-14 06:11:52', '0000-00-00 00:00:00'),
(41, 'Zubat', 7.5, 0.8, 0, 0, '041-Zubat.png', 'Durante el día, Zubat permanece inmóvil y a oscuras. Si este Pokémon pasara mucho tiempo expuesto al sol, correría el peligro de sufrir quemaduras.', '2016-10-07 03:53:29', '0000-00-00 00:00:00'),
(42, 'Golbat', 55, 1.6, 0, 0, '042-Golbat.png', 'A Golbat le encanta chuparles la sangre a los seres vivos. Este Pokémon es más activo en la oscuridad de la noche. Es al caer la noche cuando sale a revolotear y a buscar sangre fresca.', '2016-10-07 03:56:08', '0000-00-00 00:00:00'),
(43, 'Oddish', 5.4, 0.5, 0, 0, '043-Oddish.png', 'Durante el día, Oddish se entierra en el suelo para absorber nutrientes valiéndose de todo el cuerpo. Cuanto más fértil sea el suelo, mayor brillo tendrá en las hojas.', '2016-10-07 04:04:09', '0000-00-00 00:00:00'),
(44, 'Gloom', 8.6, 0.8, 0, 0, '044-Gloom.png', 'Gloom libera un fétido olor por el pistilo de la flor. Cuando está en peligro, el hedor se intensifica. Si este Pokémon está tranquilo y no se siente amenazado, no libera el desagradable olor.', '2016-10-07 04:08:42', '0000-00-00 00:00:00'),
(45, 'Vileplume', 18.6, 1.2, 0, 0, '045-Vileplume.png', 'El polen que contienen las esporas tóxicas de Vileplume causa unos ataques de alergia muy agudos. Por eso, no es aconsejable acercarse a ninguna flor selvática, por muy bonita que sea.', '2016-10-07 04:15:40', '0000-00-00 00:00:00'),
(46, 'Paras', 5.4, 0.3, 0, 0, '046-Paras.png', 'Paras lleva dos setas parásitas a cuestas llamadas tochukaso. Estas crecen alimentándose de los nutrientes de este Pokémon de tipo Bicho y Planta que les sirve de huésped. Las setas se usan como elixir de vida.', '2016-10-07 04:19:43', '0000-00-00 00:00:00'),
(47, 'Parasect', 29.5, 1, 0, 0, '047-Parasect.png', 'Parasect es conocido por destruir en plaga grandes árboles, absorbiendo los nutrientes que tienen en la parte baja del tronco y las raíces. Cuando un árbol azotado por la plaga muere, los Parasect van a por el siguiente al instante.', '2016-10-07 04:21:40', '0000-00-00 00:00:00'),
(48, 'Venonat', 30, 1, 0, 0, '048-Venonat.png', 'Dicen que durante su evolución Venonat desarrolló una fina capa de espeso pelo alrededor de todo el cuerpo para protegerse. Tiene unos ojos tan grandes que no hay presa que le pase desapercibida.', '2016-10-07 04:25:51', '0000-00-00 00:00:00'),
(49, 'Venomoth', 12.5, 1.5, 0, 0, '049-Venomoth.png', 'Venomoth es nocturno, solo actúa en la oscuridad. Su alimento preferido son los pequeños insectos que se concentran cerca de los focos de luz en la oscuridad de la noche.', '2016-10-07 04:27:25', '0000-00-00 00:00:00'),
(50, 'Diglett', 0.8, 0.2, 0, 0, '050-Diglett.png', 'En la mayoría de las granjas se suelen criar Diglett por la sencilla razón de que, excaven donde excaven, dejan la tierra perfectamente labrada para sembrar. El terreno queda listo para plantar ricas verduras.', '2016-10-07 04:30:01', '0000-00-00 00:00:00'),
(51, 'Dugtrio', 33.3, 0.7, 0, 0, '051-Dugtrio.png', 'Los Dugtrio son trillizos que se originaron a partir de un solo cuerpo, por eso piensan de la misma forma. A la hora de excavar, trabajan en equipo y sin descanso.', '2016-10-07 04:31:51', '0000-00-00 00:00:00'),
(52, 'Meowth', 4.2, 0.4, 0, 0, '052-Meowth.png', 'Meowth retrae las afiladas uñas de sus zarpas para caminar a hurtadillas, dando sigilosos pasos para pasar inadvertido. No se sabe muy bien por qué, pero este Pokémon adora las monedas brillantes que resplandecen con la luz.', '2016-10-07 04:37:01', '0000-00-00 00:00:00'),
(53, 'Persian', 32, 1, 0, 0, '053-Persian.png', 'Persian tiene seis llamativos bigotes que le dan un aspecto feroz. Además, le sirven para detectar el movimiento del aire, delator de la presencia cercana de algún Pokémon. Si se le agarra por los bigotes, se vuelve dócil.', '2016-10-07 04:41:50', '0000-00-00 00:00:00'),
(54, 'Psyduck', 19.6, 0.8, 1, 0, '054-Psyduck.png', 'Psyduck tiene un extraño poder, que consiste en generar ondas cerebrales iguales a las que se generan cuando se está dormido. Este descubrimiento levantó una gran polémica entre eruditos.', '2016-10-09 02:19:49', '2016-10-09 08:19:49'),
(55, 'Golduck', 76.6, 1.7, 0, 0, '055-Golduck.png', 'Golduck alcanza una velocidad de vértigo gracias a las aletas palmípedas de las extremidades y a la forma aerodinámica de su cuerpo. Realmente, la velocidad de este Pokémon supera la de cualquier nadador.', '2016-10-07 04:47:26', '0000-00-00 00:00:00'),
(56, 'Mankey', 28, 0.5, 2, 0, '056-Mankey.png', 'Cuando Mankey empieza a temblar y a respirar con más intensidad, seguro que va a enfadarse. Aunque prever su enfado no sirve de nada porque alcanza un estado de rabia tan rápido que no hay escapatoria.', '2016-10-09 02:27:25', '2016-10-09 08:27:25'),
(57, 'Primeape', 32, 1, 0, 0, '057-Primeape.png', 'Cuando Primeape se enfada, se le acelera el ritmo cardíaco y se le fortalecen los músculos. Con todo, pierde en inteligencia.', '2016-10-07 04:54:16', '0000-00-00 00:00:00'),
(58, 'Growlithe', 19, 0.7, 0, 0, '058-Growlithe.png', 'Growlithe tiene un sentido del olfato excepcional y una memoria sensitiva tremenda, nunca olvida una esencia. Este Pokémon saca provecho de este don para identificar las sensaciones que tienen otros seres vivos.', '2016-10-07 04:57:49', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pokemon_tipos`
--

CREATE TABLE IF NOT EXISTS `pokemon_tipos` (
  `id` int(11) NOT NULL,
  `id_pokemon` int(11) NOT NULL,
  `id_tipo` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pokemon_tipos`
--

INSERT INTO `pokemon_tipos` (`id`, `id_pokemon`, `id_tipo`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2016-09-28 03:08:26', '0000-00-00 00:00:00'),
(2, 1, 2, '2016-09-28 03:08:41', '0000-00-00 00:00:00'),
(3, 2, 1, '2016-09-28 03:09:13', '0000-00-00 00:00:00'),
(4, 2, 2, '2016-09-28 03:09:33', '0000-00-00 00:00:00'),
(5, 3, 1, '2016-09-28 03:09:38', '0000-00-00 00:00:00'),
(6, 3, 2, '2016-09-28 03:09:43', '0000-00-00 00:00:00'),
(7, 4, 3, '2016-09-28 03:10:10', '0000-00-00 00:00:00'),
(8, 5, 3, '2016-09-28 03:10:32', '0000-00-00 00:00:00'),
(9, 6, 3, '2016-09-28 03:10:38', '0000-00-00 00:00:00'),
(10, 6, 4, '2016-09-28 03:10:48', '0000-00-00 00:00:00'),
(11, 7, 5, '2016-09-28 03:11:10', '0000-00-00 00:00:00'),
(12, 8, 5, '2016-09-28 03:11:17', '0000-00-00 00:00:00'),
(13, 9, 5, '2016-09-28 03:11:23', '0000-00-00 00:00:00'),
(14, 10, 6, '2016-09-28 03:11:39', '0000-00-00 00:00:00'),
(15, 11, 6, '2016-09-28 03:11:46', '0000-00-00 00:00:00'),
(16, 12, 6, '2016-09-28 03:12:03', '0000-00-00 00:00:00'),
(17, 12, 4, '2016-09-28 03:12:11', '0000-00-00 00:00:00'),
(18, 13, 6, '2016-09-28 03:12:46', '0000-00-00 00:00:00'),
(19, 13, 2, '2016-09-28 03:13:07', '0000-00-00 00:00:00'),
(20, 14, 6, '2016-09-28 03:13:29', '0000-00-00 00:00:00'),
(21, 14, 2, '2016-09-28 03:13:40', '0000-00-00 00:00:00'),
(22, 15, 6, '2016-09-28 03:14:21', '0000-00-00 00:00:00'),
(23, 15, 2, '2016-09-28 03:14:30', '0000-00-00 00:00:00'),
(24, 16, 7, '2016-09-28 03:14:50', '0000-00-00 00:00:00'),
(25, 16, 4, '2016-09-28 03:15:01', '0000-00-00 00:00:00'),
(26, 17, 7, '2016-09-28 03:15:19', '0000-00-00 00:00:00'),
(27, 17, 4, '2016-09-28 03:15:26', '0000-00-00 00:00:00'),
(28, 18, 7, '2016-09-28 03:16:08', '0000-00-00 00:00:00'),
(29, 18, 4, '2016-09-28 03:16:14', '0000-00-00 00:00:00'),
(30, 19, 7, '2016-09-28 03:17:40', '0000-00-00 00:00:00'),
(31, 20, 7, '2016-09-28 03:17:53', '0000-00-00 00:00:00'),
(32, 21, 7, '2016-09-28 03:18:08', '0000-00-00 00:00:00'),
(33, 21, 4, '2016-09-28 03:18:17', '0000-00-00 00:00:00'),
(34, 22, 7, '2016-09-28 03:18:34', '0000-00-00 00:00:00'),
(35, 22, 4, '2016-09-28 03:18:41', '0000-00-00 00:00:00'),
(36, 23, 2, '2016-09-28 03:18:55', '0000-00-00 00:00:00'),
(37, 24, 2, '2016-09-28 03:19:10', '0000-00-00 00:00:00'),
(38, 25, 8, '2016-09-28 03:19:29', '0000-00-00 00:00:00'),
(39, 26, 8, '2016-09-28 03:19:43', '0000-00-00 00:00:00'),
(40, 27, 9, '2016-09-28 03:19:59', '0000-00-00 00:00:00'),
(41, 28, 9, '2016-09-28 03:20:14', '0000-00-00 00:00:00'),
(42, 29, 2, '2016-09-28 03:21:22', '0000-00-00 00:00:00'),
(43, 30, 2, '2016-09-28 03:21:34', '0000-00-00 00:00:00'),
(44, 31, 2, '2016-09-28 03:21:51', '0000-00-00 00:00:00'),
(45, 31, 9, '2016-09-28 03:22:00', '0000-00-00 00:00:00'),
(46, 32, 2, '2016-09-28 03:22:23', '0000-00-00 00:00:00'),
(47, 33, 2, '2016-09-28 03:22:35', '0000-00-00 00:00:00'),
(48, 34, 2, '2016-09-28 03:22:48', '0000-00-00 00:00:00'),
(49, 34, 9, '2016-09-28 03:23:01', '0000-00-00 00:00:00'),
(50, 35, 10, '2016-09-28 03:23:17', '0000-00-00 00:00:00'),
(51, 36, 10, '2016-09-28 03:23:32', '0000-00-00 00:00:00'),
(52, 37, 3, '2016-09-28 03:23:45', '0000-00-00 00:00:00'),
(53, 38, 3, '2016-09-28 03:23:59', '0000-00-00 00:00:00'),
(54, 39, 7, '2016-09-28 03:24:18', '0000-00-00 00:00:00'),
(55, 39, 10, '2016-09-28 03:24:25', '0000-00-00 00:00:00'),
(56, 40, 7, '2016-09-28 03:24:39', '0000-00-00 00:00:00'),
(57, 40, 10, '2016-09-28 03:24:47', '0000-00-00 00:00:00'),
(58, 41, 2, '2016-10-07 03:54:37', '0000-00-00 00:00:00'),
(59, 41, 4, '2016-10-07 03:54:51', '0000-00-00 00:00:00'),
(60, 42, 2, '2016-10-07 03:56:26', '0000-00-00 00:00:00'),
(61, 42, 4, '2016-10-07 03:56:33', '0000-00-00 00:00:00'),
(62, 43, 1, '2016-10-07 04:04:31', '0000-00-00 00:00:00'),
(63, 43, 2, '2016-10-07 04:04:38', '0000-00-00 00:00:00'),
(64, 44, 1, '2016-10-07 04:09:00', '0000-00-00 00:00:00'),
(65, 44, 2, '2016-10-07 04:09:12', '0000-00-00 00:00:00'),
(66, 45, 1, '2016-10-07 04:15:51', '0000-00-00 00:00:00'),
(67, 45, 2, '2016-10-07 04:15:57', '0000-00-00 00:00:00'),
(68, 46, 6, '2016-10-07 04:20:02', '0000-00-00 00:00:00'),
(69, 46, 1, '2016-10-07 04:20:09', '0000-00-00 00:00:00'),
(70, 47, 6, '2016-10-07 04:21:52', '0000-00-00 00:00:00'),
(71, 47, 1, '2016-10-07 04:21:59', '0000-00-00 00:00:00'),
(72, 48, 6, '2016-10-07 04:26:05', '0000-00-00 00:00:00'),
(73, 48, 2, '2016-10-07 04:26:14', '0000-00-00 00:00:00'),
(74, 49, 6, '2016-10-07 04:27:39', '0000-00-00 00:00:00'),
(75, 49, 2, '2016-10-07 04:27:46', '0000-00-00 00:00:00'),
(76, 50, 9, '2016-10-07 04:30:19', '0000-00-00 00:00:00'),
(77, 51, 9, '2016-10-07 04:32:04', '0000-00-00 00:00:00'),
(78, 52, 7, '2016-10-07 04:38:23', '0000-00-00 00:00:00'),
(79, 53, 7, '2016-10-07 04:42:10', '0000-00-00 00:00:00'),
(80, 54, 5, '2016-10-07 04:45:05', '0000-00-00 00:00:00'),
(81, 55, 5, '2016-10-07 04:47:50', '0000-00-00 00:00:00'),
(82, 56, 11, '2016-10-07 04:51:31', '0000-00-00 00:00:00'),
(83, 57, 11, '2016-10-07 04:54:52', '0000-00-00 00:00:00'),
(84, 58, 3, '2016-10-07 04:58:11', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos`
--

CREATE TABLE IF NOT EXISTS `tipos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(15) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipos`
--

INSERT INTO `tipos` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Planta', '2016-09-21 17:47:30', '0000-00-00 00:00:00'),
(2, 'Veneno', '2016-09-21 17:47:30', '0000-00-00 00:00:00'),
(3, 'Fuego', '2016-09-21 17:47:30', '0000-00-00 00:00:00'),
(4, 'Volador', '2016-09-21 17:47:30', '0000-00-00 00:00:00'),
(5, 'Agua', '2016-09-21 17:47:30', '0000-00-00 00:00:00'),
(6, 'Bicho', '2016-09-21 17:47:30', '0000-00-00 00:00:00'),
(7, 'Normal', '2016-09-21 17:47:30', '0000-00-00 00:00:00'),
(8, 'Eléctrico', '2016-09-21 17:47:30', '0000-00-00 00:00:00'),
(9, 'Tierra', '2016-09-21 17:47:30', '0000-00-00 00:00:00'),
(10, 'Hada', '2016-09-21 17:47:30', '0000-00-00 00:00:00'),
(11, 'Lucha', '2016-10-07 04:51:13', '0000-00-00 00:00:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pokemon`
--
ALTER TABLE `pokemon`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pokemon_tipos`
--
ALTER TABLE `pokemon_tipos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipos`
--
ALTER TABLE `tipos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pokemon_tipos`
--
ALTER TABLE `pokemon_tipos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=85;
--
-- AUTO_INCREMENT de la tabla `tipos`
--
ALTER TABLE `tipos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

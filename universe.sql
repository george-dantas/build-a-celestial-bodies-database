-- psql --username=freecodecamp --dbname=postgres

-- sql -U postgres < universe.sql

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    age_in_billions_of_years numeric(10,2),
    distance_from_earth_in_ly numeric(10,2),
    galaxy_type_id integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: galaxy_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_type (
    name character varying(30) NOT NULL,
    galaxy_type_id integer NOT NULL,
    description text
);


ALTER TABLE public.galaxy_type OWNER TO freecodecamp;

--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_type_galaxy_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_type_galaxy_type_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_type_galaxy_type_id_seq OWNED BY public.galaxy_type.galaxy_type_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    has_life boolean,
    age_in_billions_of_years numeric(10,2),
    distance_from_planet_orbits_in_km numeric(10,2),
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    has_life boolean,
    age_in_billions_of_years numeric(10,2),
    how_many_moons_orbits integer,
    star_id integer,
    planet_type_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: planet_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_type (
    name character varying(30) NOT NULL,
    planet_type_id integer NOT NULL,
    description text
);


ALTER TABLE public.planet_type OWNER TO freecodecamp;

--
-- Name: planet_type_planet_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_type_planet_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_type_planet_type_id_seq OWNER TO freecodecamp;

--
-- Name: planet_type_planet_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_type_planet_type_id_seq OWNED BY public.planet_type.planet_type_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    age_in_billions_of_years numeric(10,2),
    how_many_planets_orbits integer,
    distance_from_earth_in_ly numeric(10,2),
    galaxy_id integer,
    star_type_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: star_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star_type (
    name character varying(30) NOT NULL,
    star_type_id integer NOT NULL,
    description text
);


ALTER TABLE public.star_type OWNER TO freecodecamp;

--
-- Name: star_type_star_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_type_star_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_type_star_type_id_seq OWNER TO freecodecamp;

--
-- Name: star_type_star_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_type_star_type_id_seq OWNED BY public.star_type.star_type_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy_type galaxy_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type ALTER COLUMN galaxy_type_id SET DEFAULT nextval('public.galaxy_type_galaxy_type_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet_type planet_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type ALTER COLUMN planet_type_id SET DEFAULT nextval('public.planet_type_planet_type_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star_type star_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_type ALTER COLUMN star_type_id SET DEFAULT nextval('public.star_type_star_type_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our home galaxy, a barred spiral galaxy.', 13.51, 0.00, 2);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'The closest spiral galaxy to the Milky Way.', 10.00, 2537000.00, 2);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'A member of the Local Group of galaxies, located in the constellation Triangulum.', 12.32, 3000000.00, 2);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool Galaxy', 'A spiral galaxy with a well-defined structure, interacting with a companion galaxy.', 13.00, 23000000.00, 2);
INSERT INTO public.galaxy VALUES (5, 'Messier 87', 'A giant elliptical galaxy with a supermassive black hole at its core.', 13.25, 53000000.00, 1);
INSERT INTO public.galaxy VALUES (6, 'Large Magellanic Cloud', 'A irregular galaxy and a satellite galaxy of the Milky Way.', 14.00, 163000.00, 3);


--
-- Data for Name: galaxy_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_type VALUES ('Elliptical', 1, 'Galaxies are shaped like elongated spheres or ellipsoids. They range from nearly spherical to more elongated shapes.');
INSERT INTO public.galaxy_type VALUES ('Spiral', 2, 'Falaxies have a distinct, flat, rotating disk structure with spiral arms that wind outward from a central bulge.');
INSERT INTO public.galaxy_type VALUES ('Irregular', 3, 'Galaxies lack a distinct shape or structure, and they do not fit into the traditional categories of spiral or elliptical galaxies.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Earth only natural satellite, known for its phases and surface features.', false, 4.50, 384400.00, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 'One of Mars two moons, characterized by its irregular shape and rapid orbit.', false, 0.20, 9377.00, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 'The smaller of Mars two moons, known for its low density and smooth appearance.', false, 0.10, 23460.00, 2);
INSERT INTO public.moon VALUES (4, 'Io', 'One of Jupiter largest moons, famous for its intense volcanic activity.', false, 4.50, 421700.00, 3);
INSERT INTO public.moon VALUES (5, 'Europa', 'A moon of Jupiter with a smooth ice-covered surface and potential subsurface ocean.', false, 4.50, 671100.00, 3);
INSERT INTO public.moon VALUES (6, 'Ganymede', 'The largest moon in the Solar System, with a magnetic field and a rocky core.', false, 4.50, 1070400.00, 3);
INSERT INTO public.moon VALUES (7, 'Callisto', 'A heavily cratered moon of Jupiter with a large, ancient surface.', false, 4.50, 1882700.00, 3);
INSERT INTO public.moon VALUES (8, 'Titan', 'Largest moon of Saturn, known for its thick atmosphere and lakes of liquid methane.', false, 4.50, 1221900.00, 4);
INSERT INTO public.moon VALUES (9, 'Rhea', 'A major moon of Saturn with a thin atmosphere and surface features such as craters.', false, 4.00, 527040.00, 4);
INSERT INTO public.moon VALUES (10, 'Iapetus', 'A moon of Saturn known for its distinct color dichotomy and large equatorial ridge.', false, 4.00, 3561300.00, 4);
INSERT INTO public.moon VALUES (11, 'Enceladus', 'A small moon of Saturn with geysers of water vapor erupting from its icy surface.', false, 0.10, 238000.00, 4);
INSERT INTO public.moon VALUES (12, 'Charon', 'The largest moon of Pluto, sharing a close relationship with its parent dwarf planet.', false, 4.60, 19500.00, 5);
INSERT INTO public.moon VALUES (13, 'Haumea I', 'One of the moons of Haumea, known for its elongated shape due to the rapid rotation of the planet.', false, 1.00, 49000.00, 6);
INSERT INTO public.moon VALUES (14, 'Makemake I', 'One of the moons of Makemake, noted for its small size and irregular shape.', false, 0.50, 60000.00, 7);
INSERT INTO public.moon VALUES (15, 'Ceres I', 'A small moon orbiting the dwarf planet Ceres, with a cratered surface.', false, 0.40, 17000.00, 8);
INSERT INTO public.moon VALUES (16, 'Psyche I', 'A moon of the asteroid 16 Psyche, known for its metallic composition.', false, 1.00, 12000.00, 9);
INSERT INTO public.moon VALUES (17, 'Nereid', 'A moon of Neptune with a highly eccentric orbit and irregular shape.', false, 0.30, 1176470.00, 10);
INSERT INTO public.moon VALUES (18, 'Triton', 'Largest moon of Neptune, known for its retrograde orbit and geysers.', false, 0.70, 354800.00, 10);
INSERT INTO public.moon VALUES (19, 'Ganymedes', 'A moon of Jupiter with an extensive magnetosphere and a highly differentiated interior.', false, 4.60, 1070400.00, 3);
INSERT INTO public.moon VALUES (20, 'Mimas', 'A small moon of Saturn, heavily cratered and with a prominent impact crater, Herschel.', false, 4.00, 185539.00, 4);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'The only known planet with life, located in the Solar System.', true, 4.50, 1, 1, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 'The Red Planet, known for its potential to support life in the past.', false, 4.60, 2, 1, 1);
INSERT INTO public.planet VALUES (3, 'Jupiter', 'The largest planet in the Solar System, known for its Great Red Spot and many moons.', false, 4.60, 79, 1, 2);
INSERT INTO public.planet VALUES (4, 'Proxima Centauri b', 'An exoplanet orbiting Proxima Centauri, within the habitable zone.', NULL, 4.20, 0, 3, 1);
INSERT INTO public.planet VALUES (5, 'Uranus', 'An ice giant with a unique tilt and faint rings.', false, 4.50, 27, 1, 2);
INSERT INTO public.planet VALUES (6, 'Kepler-22b', 'An exoplanet in the habitable zone of the star Kepler-22, with conditions that might support life.', NULL, 2.50, 0, 2, 3);
INSERT INTO public.planet VALUES (7, 'Saturn', 'A gas giant known for its stunning ring system and numerous moons.', false, 4.50, 83, 1, 2);
INSERT INTO public.planet VALUES (8, 'Venus', 'The second planet from the Sun, known for its extreme surface temperatures and thick atmosphere.', false, 4.60, 0, 1, 1);
INSERT INTO public.planet VALUES (9, 'Gliese 581g', 'An exoplanet located in the habitable zone of the red dwarf star Gliese 581, potentially capable of supporting life.', NULL, 0.50, 0, 2, 3);
INSERT INTO public.planet VALUES (10, 'HD 209458 b', 'An exoplanet known for its “hot Jupiter” characteristics, with high temperatures and a thick atmosphere.', false, 0.80, 0, 2, 2);
INSERT INTO public.planet VALUES (11, 'Ceres', 'The largest object in the asteroid belt between Mars and Jupiter, classified as a dwarf planet.', false, 4.60, 0, 1, 4);
INSERT INTO public.planet VALUES (12, 'Eris', 'A dwarf planet located in the scattered disc, one of the largest known dwarf planets in the Solar System.', false, 4.60, 1, 1, 4);


--
-- Data for Name: planet_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_type VALUES ('Rocky Planets', 1, 'Rocky planets, also known as terrestrial planets, have solid, rocky surfaces.');
INSERT INTO public.planet_type VALUES ('Gas Giants', 2, 'Gas giants are large planets composed mostly of hydrogen and helium, with thick atmospheres and no well-defined solid surface.');
INSERT INTO public.planet_type VALUES ('Ice Giants', 3, ' Ice giants are similar to gas giants but contain a higher proportion of “ices” such as water, ammonia, and methane.');
INSERT INTO public.planet_type VALUES ('Dwarf Planets', 4, 'Dwarf planets are celestial bodies that orbit the Sun and are similar to planets but do not meet all the criteria required for full planet status.');
INSERT INTO public.planet_type VALUES ('Othes Types', 5, 'A type of planet that is not defined.');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'The star at the center of the Solar System.', 4.60, 8, 0.00, 1, 1);
INSERT INTO public.star VALUES (2, 'Alpha Centauri A', 'The closest sun-like star to Earth, part of the Alpha Centauri star system.', 5.00, 0, 4.37, 1, 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 'A red supergiant star in the constellation Orion.', 10.00, 0, 640.00, 1, 2);
INSERT INTO public.star VALUES (4, 'Sirius A', 'The brightest star in the night sky, part of the Sirius binary star system.', 0.20, 1, 8.60, 1, 1);
INSERT INTO public.star VALUES (5, 'Vega', 'A bright star in the constellation Lyra, a main-sequence A-type star.', 0.60, 1, 25.00, 1, 1);
INSERT INTO public.star VALUES (6, 'Proxima Centauri', 'The closest known star to the Sun, part of the Alpha Centauri system.', 4.85, 2, 4.24, 1, 5);


--
-- Data for Name: star_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star_type VALUES ('Main Sequence Stars', 1, 'Main sequence stars are in the most stable and longest-lasting phase of their stellar evolution.');
INSERT INTO public.star_type VALUES ('Red Giants', 2, 'Red giants are stars that have exhausted the hydrogen fuel in their cores and have expanded and cooled.');
INSERT INTO public.star_type VALUES ('White Dwarfs', 3, 'White dwarfs are the remnants of medium to low-mass stars that have shed their outer layers after the red giant phase.');
INSERT INTO public.star_type VALUES ('Neutron Stars', 4, 'Neutron stars are the remnants of supernova explosions of massive stars.');
INSERT INTO public.star_type VALUES ('Red Dwarfs', 5, 'Red dwarfs are small, cool stars with low mass.');
INSERT INTO public.star_type VALUES ('Brown Dwarfs', 6, 'Brown dwarfs are objects that are too massive to be classified as planets but not massive enough to sustain hydrogen fusion like stars.');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_type_galaxy_type_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: planet_type_planet_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_type_planet_type_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: star_type_star_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_type_star_type_id_seq', 1, false);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy_type galaxy_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type
    ADD CONSTRAINT galaxy_type_pkey PRIMARY KEY (galaxy_type_id);


--
-- Name: galaxy_type galxy_type_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type
    ADD CONSTRAINT galxy_type_type_key UNIQUE (name);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet_type planet_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type
    ADD CONSTRAINT planet_type_pkey PRIMARY KEY (planet_type_id);


--
-- Name: planet_type planet_type_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type
    ADD CONSTRAINT planet_type_type_key UNIQUE (name);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star_type star_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_type
    ADD CONSTRAINT star_type_pkey PRIMARY KEY (star_type_id);


--
-- Name: star_type star_type_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_type
    ADD CONSTRAINT star_type_type_key UNIQUE (name);


--
-- Name: star galaxy_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_fk FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: galaxy galaxy_type_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_type_fk FOREIGN KEY (galaxy_type_id) REFERENCES public.galaxy_type(galaxy_type_id);


--
-- Name: moon planet_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_fk FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_type_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_type_fk FOREIGN KEY (planet_type_id) REFERENCES public.planet_type(planet_type_id);


--
-- Name: planet star_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_fk FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_type_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_type_fk FOREIGN KEY (star_type_id) REFERENCES public.star_type(star_type_id);


--
-- PostgreSQL database dump complete
--

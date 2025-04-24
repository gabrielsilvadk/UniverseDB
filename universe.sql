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
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth_in_light_years integer,
    cincunference_in_km numeric,
    galaxy_types text
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth_in_light_years integer,
    circunference_in_km numeric,
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
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth_in_light_years integer,
    circunference_in_km numeric,
    planet_types text,
    has_life boolean,
    is_spherical boolean,
    star_id integer
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
-- Name: solar_system; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.solar_system (
    solar_system_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description character varying(30)
);


ALTER TABLE public.solar_system OWNER TO freecodecamp;

--
-- Name: solar_system_solar_system_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.solar_system_solar_system_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.solar_system_solar_system_id_seq OWNER TO freecodecamp;

--
-- Name: solar_system_solar_system_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.solar_system_solar_system_id_seq OWNED BY public.solar_system.solar_system_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth_in_light_years integer,
    circunference_in_km numeric,
    galaxy_id integer
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: solar_system solar_system_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system ALTER COLUMN solar_system_id SET DEFAULT nextval('public.solar_system_solar_system_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Via Láctea', 13600, 0, 937000000000000000, 'Espiral');
INSERT INTO public.galaxy VALUES (2, 'Andrômeda', 10000, 2537, 1230000000000000000, 'Espiral');
INSERT INTO public.galaxy VALUES (3, 'Galáxia do Triângulo', 6000, 3000, 523000000000000000, 'Espiral');
INSERT INTO public.galaxy VALUES (4, 'Galáxia do Sombrero', 13200, 29000, 845000000000000000, 'Espiral');
INSERT INTO public.galaxy VALUES (5, 'Galáxia de Bode', 11700, 12000, 789000000000000000, 'Espiral');
INSERT INTO public.galaxy VALUES (6, 'Galáxia do Redemoinho', 8500, 23000, 612000000000000000, 'Espiral');
INSERT INTO public.galaxy VALUES (7, 'Galáxia do Cigarro', 10000, 12000, 650000000000000000, 'Espiral');
INSERT INTO public.galaxy VALUES (8, 'Galáxia de Cartwheel', 8000, 50000, 1200000000000000000, 'Anel');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Lua', 4500, 0, 10921, 1);
INSERT INTO public.moon VALUES (2, 'Fobos', 4500, 0, 70, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 4500, 0, 39, 2);
INSERT INTO public.moon VALUES (4, 'Ganimedes', 4500, 0, 16533, 3);
INSERT INTO public.moon VALUES (5, 'Calisto', 4500, 0, 15146, 3);
INSERT INTO public.moon VALUES (6, 'Io', 4500, 0, 11445, 3);
INSERT INTO public.moon VALUES (7, 'Europa', 4500, 0, 9807, 3);
INSERT INTO public.moon VALUES (8, 'Titã', 4500, 0, 16180, 4);
INSERT INTO public.moon VALUES (9, 'Reia', 4500, 0, 4800, 4);
INSERT INTO public.moon VALUES (10, 'Jápeto', 4500, 0, 4618, 4);
INSERT INTO public.moon VALUES (11, 'Amalteia', 4500, 0, 820, 3);
INSERT INTO public.moon VALUES (12, 'Himalia', 4500, 0, 360, 3);
INSERT INTO public.moon VALUES (13, 'Elara', 4500, 0, 290, 3);
INSERT INTO public.moon VALUES (14, 'Tétis', 4500, 0, 3300, 4);
INSERT INTO public.moon VALUES (15, 'Dione', 4500, 0, 3500, 4);
INSERT INTO public.moon VALUES (16, 'Encélado', 4500, 0, 1600, 4);
INSERT INTO public.moon VALUES (17, 'Mimas', 4500, 0, 1300, 4);
INSERT INTO public.moon VALUES (18, 'Titânia', 4500, 0, 4700, 8);
INSERT INTO public.moon VALUES (19, 'Oberon', 4500, 0, 4500, 8);
INSERT INTO public.moon VALUES (20, 'Umbriel', 4500, 0, 3400, 8);
INSERT INTO public.moon VALUES (21, 'Ariel', 4500, 0, 3800, 8);
INSERT INTO public.moon VALUES (22, 'Tritão', 4500, 0, 8100, 9);
INSERT INTO public.moon VALUES (23, 'Nereida', 4500, 0, 1000, 9);
INSERT INTO public.moon VALUES (24, 'Caronte', 4500, 0, 4000, 10);
INSERT INTO public.moon VALUES (25, 'Nix', 4500, 0, 160, 10);
INSERT INTO public.moon VALUES (26, 'Hidra', 4500, 0, 140, 10);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Terra', 4500, 0, 40075, 'Terrestre', true, true, 1);
INSERT INTO public.planet VALUES (2, 'Marte', 4600, 0, 21344, 'Terrestre', false, true, 1);
INSERT INTO public.planet VALUES (3, 'Júpiter', 4600, 0, 439264, 'Gasoso', false, true, 1);
INSERT INTO public.planet VALUES (4, 'Saturno', 4500, 0, 365882, 'Gasoso', false, true, 1);
INSERT INTO public.planet VALUES (5, 'Pegasi b', 6000, 50, 142984, 'Gasoso', false, true, 6);
INSERT INTO public.planet VALUES (6, 'Andromedae c', 5500, 2537, 120536, 'Gasoso', false, true, 7);
INSERT INTO public.planet VALUES (7, 'Vênus', 4500, 0, 38025, 'Terrestre', false, true, 1);
INSERT INTO public.planet VALUES (8, 'Mercúrio', 4500, 0, 15329, 'Terrestre', false, true, 1);
INSERT INTO public.planet VALUES (9, 'Urano', 4500, 0, 159354, 'Gigante de Gelo', false, true, 1);
INSERT INTO public.planet VALUES (10, 'Netuno', 4500, 0, 155600, 'Gigante de Gelo', false, true, 1);
INSERT INTO public.planet VALUES (11, 'Plutão', 4500, 0, 7232, 'Planeta Anão', false, true, 1);
INSERT INTO public.planet VALUES (12, 'Kepler-442b', 5000, 1200, 30200, 'Super-Terra', true, true, 2);
INSERT INTO public.planet VALUES (13, 'HD 209458 b', 7000, 150, 439264, 'Júpiter Quente', false, true, 3);
INSERT INTO public.planet VALUES (14, 'TRAPPIST-1e', 3000, 40, 15100, 'Terrestre', true, true, 4);
INSERT INTO public.planet VALUES (15, 'PSR B1257+12 A', 2000, 2300, 7540, 'Planeta de Pulsar', false, true, 5);
INSERT INTO public.planet VALUES (16, '55 Cancri e', 8000, 41, 40200, 'Super-Terra', false, true, 6);


--
-- Data for Name: solar_system; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.solar_system VALUES (1, 'SOLAR SYSTEM', 'default solar system');
INSERT INTO public.solar_system VALUES (2, 'SOLAR SYSTEM 2', 'second solar system');
INSERT INTO public.solar_system VALUES (3, 'EXTRA SYSTEM', 'random solar system');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (2, 'Sirius', NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (4, 'Alpha Centauri', NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (5, 'Vega', NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (6, 'Alpheratz', NULL, NULL, NULL, 2);
INSERT INTO public.star VALUES (7, 'Mirach', NULL, NULL, NULL, 2);
INSERT INTO public.star VALUES (8, 'Almach', NULL, NULL, NULL, 2);
INSERT INTO public.star VALUES (9, 'Mothallah', NULL, NULL, NULL, 3);
INSERT INTO public.star VALUES (10, 'Proxima Centauri', NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (11, 'Rigel', NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (12, 'Antares', NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (13, 'Canopus', NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (14, 'Altair', NULL, NULL, NULL, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 26, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 16, true);


--
-- Name: solar_system_solar_system_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.solar_system_solar_system_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 14, true);


--
-- Name: galaxy galaxy_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id_unique UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_unique UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_unique UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: solar_system solar_system_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT solar_system_id_unique UNIQUE (solar_system_id);


--
-- Name: solar_system solar_system_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT solar_system_pkey PRIMARY KEY (solar_system_id);


--
-- Name: star star_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_unique UNIQUE (star_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--
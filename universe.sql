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
    name character varying(30),
    size integer NOT NULL,
    age integer,
    description text
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
-- Name: human; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.human (
    human_id integer NOT NULL,
    name character varying(30),
    planet_id integer NOT NULL
);


ALTER TABLE public.human OWNER TO freecodecamp;

--
-- Name: human_human_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.human_human_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.human_human_id_seq OWNER TO freecodecamp;

--
-- Name: human_human_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.human_human_id_seq OWNED BY public.human.human_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    planet_id integer NOT NULL,
    age integer,
    size integer,
    num_holes integer,
    appx_planets_around numeric(10,2),
    landed_on boolean
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
    name character varying(30),
    star_id integer NOT NULL,
    age integer,
    size integer,
    has_moons boolean NOT NULL
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    galaxy_id integer NOT NULL,
    age integer,
    size integer
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
-- Name: human human_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.human ALTER COLUMN human_id SET DEFAULT nextval('public.human_human_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy1', 1030284, 19923, 'it''s huge');
INSERT INTO public.galaxy VALUES (2, 'galaxy2', 2039485, 32145, 'a beautiful spiral');
INSERT INTO public.galaxy VALUES (3, 'galaxy3', 3048576, 45678, 'full of stars');
INSERT INTO public.galaxy VALUES (4, 'galaxy4', 4059687, 78901, 'contains many mysteries');
INSERT INTO public.galaxy VALUES (5, 'galaxy5', 5060798, 11223, 'a vibrant cluster');
INSERT INTO public.galaxy VALUES (6, 'galaxy6', 6071909, 44556, 'a cosmic wonder');


--
-- Data for Name: human; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.human VALUES (1, 'jsilos1', 2);
INSERT INTO public.human VALUES (2, 'jsilos2', 3);
INSERT INTO public.human VALUES (3, 'jsilos3', 5);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 3, 234, 2387, 38, 38.50, true);
INSERT INTO public.moon VALUES (2, 'moon2', 7, 456, 1456, 22, 23.50, false);
INSERT INTO public.moon VALUES (3, 'moon3', 1, 678, 9876, 40, 41.50, true);
INSERT INTO public.moon VALUES (4, 'moon4', 5, 890, 5432, 30, 31.20, false);
INSERT INTO public.moon VALUES (5, 'moon5', 12, 123, 3456, 12, 13.40, true);
INSERT INTO public.moon VALUES (6, 'moon6', 4, 234, 5678, 50, 51.10, false);
INSERT INTO public.moon VALUES (7, 'moon7', 9, 345, 7890, 25, 26.30, true);
INSERT INTO public.moon VALUES (8, 'moon8', 2, 456, 1112, 14, 15.80, false);
INSERT INTO public.moon VALUES (9, 'moon9', 11, 567, 1314, 20, 21.60, true);
INSERT INTO public.moon VALUES (10, 'moon10', 6, 678, 1516, 36, 37.90, false);
INSERT INTO public.moon VALUES (11, 'moon11', 10, 789, 1718, 28, 29.40, true);
INSERT INTO public.moon VALUES (12, 'moon12', 8, 890, 1910, 33, 34.80, false);
INSERT INTO public.moon VALUES (13, 'moon13', 12, 101, 2021, 41, 42.50, true);
INSERT INTO public.moon VALUES (14, 'moon14', 3, 202, 2122, 27, 28.60, false);
INSERT INTO public.moon VALUES (15, 'moon15', 6, 303, 2223, 39, 40.10, true);
INSERT INTO public.moon VALUES (16, 'moon16', 4, 404, 2324, 24, 25.80, false);
INSERT INTO public.moon VALUES (17, 'moon17', 5, 505, 2425, 32, 33.40, true);
INSERT INTO public.moon VALUES (18, 'moon18', 1, 606, 2526, 19, 20.20, false);
INSERT INTO public.moon VALUES (19, 'moon19', 9, 707, 2627, 15, 16.50, true);
INSERT INTO public.moon VALUES (20, 'moon20', 11, 808, 2728, 29, 30.80, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet1', 1, 2802, 30788, true);
INSERT INTO public.planet VALUES (2, 'planet2', 2, 4523, 30899, false);
INSERT INTO public.planet VALUES (3, 'planet3', 3, 1098, 30900, true);
INSERT INTO public.planet VALUES (4, 'planet4', 4, 6754, 31001, false);
INSERT INTO public.planet VALUES (5, 'planet5', 5, 8932, 31102, true);
INSERT INTO public.planet VALUES (6, 'planet6', 6, 3210, 31203, false);
INSERT INTO public.planet VALUES (7, 'planet7', 1, 4567, 31304, true);
INSERT INTO public.planet VALUES (8, 'planet8', 2, 1234, 31405, false);
INSERT INTO public.planet VALUES (9, 'planet9', 3, 9876, 31506, true);
INSERT INTO public.planet VALUES (10, 'planet10', 4, 5432, 31607, false);
INSERT INTO public.planet VALUES (11, 'planet11', 5, 8765, 31708, true);
INSERT INTO public.planet VALUES (12, 'planet12', 6, 2345, 31809, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', 1, 19923, 10604606);
INSERT INTO public.star VALUES (2, 'star2', 2, 32145, 10604607);
INSERT INTO public.star VALUES (3, 'star3', 3, 45678, 10604608);
INSERT INTO public.star VALUES (4, 'star4', 4, 78901, 10604609);
INSERT INTO public.star VALUES (5, 'star5', 5, 11223, 10604610);
INSERT INTO public.star VALUES (6, 'star6', 6, 44556, 10604611);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: human_human_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.human_human_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: human human_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.human
    ADD CONSTRAINT human_name_key UNIQUE (name);


--
-- Name: human human_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.human
    ADD CONSTRAINT human_pkey PRIMARY KEY (human_id);


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
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: human fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.human
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--


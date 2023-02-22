--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: category; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.category (
    category_id integer NOT NULL,
    designer_id integer,
    category_name character varying(200) NOT NULL,
    name character varying(20),
    film character varying(40) NOT NULL
);


ALTER TABLE public.category OWNER TO freecodecamp;

--
-- Name: category_category_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.category_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.category_category_id_seq OWNER TO freecodecamp;

--
-- Name: category_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.category_category_id_seq OWNED BY public.category.category_id;


--
-- Name: city; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.city (
    city_id integer NOT NULL,
    name character varying(40) NOT NULL,
    population numeric,
    emp_or_rep text
);


ALTER TABLE public.city OWNER TO freecodecamp;

--
-- Name: city_city_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.city_city_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.city_city_id_seq OWNER TO freecodecamp;

--
-- Name: city_city_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.city_city_id_seq OWNED BY public.city.city_id;


--
-- Name: designer; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.designer (
    designer_id integer NOT NULL,
    designer_name character varying(50) NOT NULL,
    name character varying(40) NOT NULL,
    film character varying(40) NOT NULL
);


ALTER TABLE public.designer OWNER TO freecodecamp;

--
-- Name: designer_designer_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.designer_designer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.designer_designer_id_seq OWNER TO freecodecamp;

--
-- Name: designer_designer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.designer_designer_id_seq OWNED BY public.designer.designer_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age integer NOT NULL,
    pop_in_mil integer,
    emp_or_rep character varying(8)
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
    name character varying(20) NOT NULL,
    surface integer NOT NULL,
    data text NOT NULL,
    is_habitated boolean
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
    name character varying(20) NOT NULL,
    surface integer NOT NULL,
    emp_or_rep character varying(8),
    is_habitated boolean
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
    name character varying(20) NOT NULL,
    lumen_in_mil integer,
    is_habitated boolean,
    emp_or_rep character varying(8)
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
-- Name: category category_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.category ALTER COLUMN category_id SET DEFAULT nextval('public.category_category_id_seq'::regclass);


--
-- Name: city city_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.city ALTER COLUMN city_id SET DEFAULT nextval('public.city_city_id_seq'::regclass);


--
-- Name: designer designer_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.designer ALTER COLUMN designer_id SET DEFAULT nextval('public.designer_designer_id_seq'::regclass);


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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: category; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.category VALUES (1, 1, 'Marketing', 'Billy Gibbons', 'Solo');
INSERT INTO public.category VALUES (2, 2, 'Special effects', 'Dawn D´Ambrosio', 'Star Wars VII');
INSERT INTO public.category VALUES (3, 3, 'Catering', 'Mike Krasisky', 'RRogue One');


--
-- Data for Name: city; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.city VALUES (1, 'Abandoned Village', 0, 'rep');
INSERT INTO public.city VALUES (2, 'Allyuen spaceport', 5432, 'emp');
INSERT INTO public.city VALUES (3, 'Ambaril', 355, 'free');


--
-- Data for Name: designer; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.designer VALUES (1, 'Codix artifex', 'Imanol Asolo', 'A new beginning');
INSERT INTO public.designer VALUES (2, 'The artist', 'George Lucas', 'Star Wars Saga');
INSERT INTO public.designer VALUES (3, 'The director', 'Robert Rodriguez', 'TheB obba Fett book');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 5, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Antennae', 0, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Backward', 0, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Black Eye', 0, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Bode Galaxy', 5, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Butterfly', 2, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Alakatha', 1, 'from Kvath', NULL);
INSERT INTO public.moon VALUES (2, 'Alaris Prime', 1, 'free moon', NULL);
INSERT INTO public.moon VALUES (3, 'Antar 4', 1, 'from Antar', NULL);
INSERT INTO public.moon VALUES (4, 'Brentaal IV', 2, 'from Brentaal', NULL);
INSERT INTO public.moon VALUES (5, 'Cybloc', 4, 'from Cybloc', NULL);
INSERT INTO public.moon VALUES (6, 'Daa Soocha V', 2, 'from Daa Soocha', NULL);
INSERT INTO public.moon VALUES (7, 'Doruma', 3, 'from Almas', NULL);
INSERT INTO public.moon VALUES (8, 'Dun', 3, 'from Onderon', NULL);
INSERT INTO public.moon VALUES (9, 'Ebaq 9', 1, 'from Ebaq', NULL);
INSERT INTO public.moon VALUES (10, 'Forestmoon of Endor', 8, 'Endor Moon', NULL);
INSERT INTO public.moon VALUES (11, 'Gall', 1, 'from Zhar', NULL);
INSERT INTO public.moon VALUES (12, 'Gerrard V', 2, 'from Gerrard', NULL);
INSERT INTO public.moon VALUES (13, 'Jade Moon', 3, 'from Loronar', NULL);
INSERT INTO public.moon VALUES (14, 'Kethor', 2, 'from Kothis', NULL);
INSERT INTO public.moon VALUES (15, 'Kohlma', 2, 'from Bogden', NULL);
INSERT INTO public.moon VALUES (16, 'Kr', 1, 'Ooribu', NULL);
INSERT INTO public.moon VALUES (17, 'Lenico Belt', 3, 'from Cairn', NULL);
INSERT INTO public.moon VALUES (18, 'Lodos', 3, 'from Elrood', NULL);
INSERT INTO public.moon VALUES (19, 'Nar Shadaa', 6, 'from Nal Hutta', NULL);
INSERT INTO public.moon VALUES (20, 'Ohma Dun', 2, 'from Naboo', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Abafar', 2, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'Agamar', 4, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'Ahch-To', 5, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'Ajan Kloss', 12, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'Akiva', 7, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'Alderaan', 23, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'Aaleen', 2, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'Alzoc III', 4, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'Anaxes', 2, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'Ando', 8, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'Anoat', 2, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'Atollon', 5, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Lynx', NULL, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Eridanus', NULL, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Cassiopeia', NULL, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Scorpius', NULL, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Crux', NULL, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Canceer', NULL, NULL, NULL);


--
-- Name: category_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.category_category_id_seq', 3, true);


--
-- Name: city_city_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.city_city_id_seq', 3, true);


--
-- Name: designer_designer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.designer_designer_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


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
-- Name: category category_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_name_key UNIQUE (name);


--
-- Name: category category_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (category_id);


--
-- Name: city city_emp_or_rep_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_emp_or_rep_key UNIQUE (emp_or_rep);


--
-- Name: city city_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_pkey PRIMARY KEY (city_id);


--
-- Name: designer designer_film_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.designer
    ADD CONSTRAINT designer_film_key UNIQUE (film);


--
-- Name: designer designer_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.designer
    ADD CONSTRAINT designer_pkey PRIMARY KEY (designer_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_pop_in_mil_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pop_in_mil_key UNIQUE (pop_in_mil);


--
-- Name: moon moon_data_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_data_key UNIQUE (data);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_is_habitated_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_is_habitated_key UNIQUE (is_habitated);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_lumen_in_mil_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_lumen_in_mil_key UNIQUE (lumen_in_mil);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: category category_designer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_designer_id_fkey FOREIGN KEY (designer_id) REFERENCES public.designer(designer_id);


--
-- PostgreSQL database dump complete
--


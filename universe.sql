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
    description text NOT NULL,
    number_habitants integer,
    has_life boolean,
    distance_from_earth numeric
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_galaxy_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_galaxy_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_galaxy_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_galaxy_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_galaxy_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL,
    number_habitants integer,
    has_life boolean,
    distance_from_earth numeric,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_moon_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_moon_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_moon_seq OWNER TO freecodecamp;

--
-- Name: moon_id_moon_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_moon_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL,
    number_habitants integer,
    has_life boolean,
    distance_from_earth numeric,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_planet_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_planet_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_planet_seq OWNER TO freecodecamp;

--
-- Name: planet_id_planet_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_planet_seq OWNED BY public.planet.planet_id;


--
-- Name: species; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.species (
    species_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description character varying(50) NOT NULL
);


ALTER TABLE public.species OWNER TO freecodecamp;

--
-- Name: species_id_species_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.species_id_species_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.species_id_species_seq OWNER TO freecodecamp;

--
-- Name: species_id_species_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.species_id_species_seq OWNED BY public.species.species_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL,
    number_habitants integer,
    has_life boolean,
    distance_from_earth numeric,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_star_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_star_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_star_seq OWNER TO freecodecamp;

--
-- Name: star_id_star_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_star_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_galaxy_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_moon_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_planet_seq'::regclass);


--
-- Name: species species_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.species ALTER COLUMN species_id SET DEFAULT nextval('public.species_id_species_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_star_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Galaxy1', 'Galaxy1 desc', 30000000, true, 0);
INSERT INTO public.galaxy VALUES (2, 'Galaxy2', 'Galaxy2 desc', 847184719, true, 31703170);
INSERT INTO public.galaxy VALUES (3, 'Galaxy3', 'Galaxy3 desc', 0, false, 98031290132983980);
INSERT INTO public.galaxy VALUES (4, 'Galaxy4', 'Galaxy4 desc', 91731873, true, 98031290132983980);
INSERT INTO public.galaxy VALUES (5, 'Galaxy5', 'Galaxy5 desc', 91731874, true, 9803131);
INSERT INTO public.galaxy VALUES (6, 'Galaxy6', 'Galaxy6 desc', 91731875, true, 14214124);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 'moon1 desc', 2, true, 0, 1);
INSERT INTO public.moon VALUES (4, 'moon2', 'moon2 desc', 2, true, 0, 1);
INSERT INTO public.moon VALUES (5, 'moon3', 'moon3 desc', 3, true, 0, 1);
INSERT INTO public.moon VALUES (6, 'moon4', 'moon4 desc', 4, true, 0, 1);
INSERT INTO public.moon VALUES (7, 'moon5', 'moon5 desc', 5, true, 0, 1);
INSERT INTO public.moon VALUES (8, 'moon6', 'moon6 desc', 6, true, 0, 1);
INSERT INTO public.moon VALUES (9, 'moon7', 'moon7 desc', 7, true, 0, 1);
INSERT INTO public.moon VALUES (10, 'moon8', 'moon8 desc', 8, true, 0, 1);
INSERT INTO public.moon VALUES (11, 'moon9', 'moon9 desc', 9, true, 0, 1);
INSERT INTO public.moon VALUES (12, 'moon10', 'moon10 desc', 10, true, 0, 1);
INSERT INTO public.moon VALUES (13, 'moon11', 'moon11 desc', 11, true, 0, 1);
INSERT INTO public.moon VALUES (14, 'moon12', 'moon12 desc', 12, true, 0, 1);
INSERT INTO public.moon VALUES (15, 'moon13', 'moon13 desc', 13, true, 0, 1);
INSERT INTO public.moon VALUES (16, 'moon14', 'moon14 desc', 14, true, 0, 1);
INSERT INTO public.moon VALUES (17, 'moon15', 'moon15 desc', 15, true, 0, 1);
INSERT INTO public.moon VALUES (18, 'moon16', 'moon16 desc', 16, true, 0, 1);
INSERT INTO public.moon VALUES (19, 'moon17', 'moon17 desc', 17, true, 0, 1);
INSERT INTO public.moon VALUES (20, 'moon18', 'moon18 desc', 18, true, 0, 1);
INSERT INTO public.moon VALUES (21, 'moon19', 'moon19 desc', 19, true, 0, 1);
INSERT INTO public.moon VALUES (22, 'moon20', 'moon20 desc', 20, true, 0, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet1', 'planet1 desc', 2, true, 0, 1);
INSERT INTO public.planet VALUES (2, 'planet2', 'planet2 desc', 2, true, 0, 1);
INSERT INTO public.planet VALUES (3, 'planet3', 'planet3 desc', 2, true, 0, 1);
INSERT INTO public.planet VALUES (4, 'planet4', 'planet4 desc', 2, true, 0, 1);
INSERT INTO public.planet VALUES (5, 'planet5', 'planet5 desc', 2, true, 0, 1);
INSERT INTO public.planet VALUES (6, 'planet6', 'planet6 desc', 2, true, 0, 1);
INSERT INTO public.planet VALUES (7, 'planet7', 'planet7 desc', 2, true, 0, 1);
INSERT INTO public.planet VALUES (8, 'planet8', 'planet8 desc', 2, true, 0, 1);
INSERT INTO public.planet VALUES (9, 'planet9', 'planet9 desc', 2, true, 0, 1);
INSERT INTO public.planet VALUES (10, 'planet10', 'planet10 desc', 2, true, 0, 1);
INSERT INTO public.planet VALUES (11, 'planet11', 'planet11 desc', 2, true, 0, 1);
INSERT INTO public.planet VALUES (12, 'planet12', 'planet12 desc', 2, true, 0, 1);


--
-- Data for Name: species; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.species VALUES (1, 'sp1', 'sp1 desc');
INSERT INTO public.species VALUES (2, 'sp2', 'sp2 desc');
INSERT INTO public.species VALUES (3, 'sp3', 'sp3 desc');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', 'star1 desc', 0, false, 312313123, 1);
INSERT INTO public.star VALUES (2, 'star2', 'star2 desc', 1, true, 312312, 2);
INSERT INTO public.star VALUES (3, 'star3', 'star3 desc', 3982137, true, 32131223, 3);
INSERT INTO public.star VALUES (4, 'star4', 'star4 desc', 10000, true, 3123, 4);
INSERT INTO public.star VALUES (5, 'star5', 'star5 desc', 1000, true, 312342432423242242342342423432, 5);
INSERT INTO public.star VALUES (6, 'star6', 'star6 desc', 2, true, 3123213123, 6);


--
-- Name: galaxy_id_galaxy_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_galaxy_seq', 6, true);


--
-- Name: moon_id_moon_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_moon_seq', 22, true);


--
-- Name: planet_id_planet_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_planet_seq', 12, true);


--
-- Name: species_id_species_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.species_id_species_seq', 3, true);


--
-- Name: star_id_star_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_star_seq', 6, true);


--
-- Name: moon id_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT id_moon PRIMARY KEY (moon_id);


--
-- Name: galaxy pk_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT pk_galaxy PRIMARY KEY (galaxy_id);


--
-- Name: planet pk_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT pk_planet PRIMARY KEY (planet_id);


--
-- Name: species pk_species; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.species
    ADD CONSTRAINT pk_species PRIMARY KEY (species_id);


--
-- Name: star pk_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT pk_star PRIMARY KEY (star_id);


--
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: species unique_species_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.species
    ADD CONSTRAINT unique_species_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


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


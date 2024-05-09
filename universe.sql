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
    name character varying(20) NOT NULL,
    galaxy_id integer NOT NULL,
    description text NOT NULL,
    age_in_millions_of_years integer,
    galaxy_types integer,
    distance_from_earth numeric(4,2),
    has_life boolean,
    is_spherical boolean
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
    name character varying(20) NOT NULL,
    moon_id integer NOT NULL,
    description text NOT NULL,
    age_in_millions_of_years integer,
    galaxy_types integer,
    distance_from_earth numeric(4,2),
    has_life boolean,
    is_spherical boolean,
    planet_id integer NOT NULL
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
-- Name: moon_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_planet_id_seq OWNER TO freecodecamp;

--
-- Name: moon_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_planet_id_seq OWNED BY public.moon.planet_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(20) NOT NULL,
    planet_id integer NOT NULL,
    description text NOT NULL,
    age_in_millions_of_years integer,
    galaxy_types integer,
    distance_from_earth numeric(4,2),
    has_life boolean,
    is_spherical boolean,
    star_id integer NOT NULL
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
-- Name: planet_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_star_id_seq OWNER TO freecodecamp;

--
-- Name: planet_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_star_id_seq OWNED BY public.planet.star_id;


--
-- Name: relation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.relation (
    galaxy_id integer NOT NULL,
    star_id integer NOT NULL,
    planet_id integer NOT NULL,
    moon_id integer NOT NULL,
    relation_id integer NOT NULL,
    name character varying(21)
);


ALTER TABLE public.relation OWNER TO freecodecamp;

--
-- Name: relation_p_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.relation_p_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.relation_p_seq OWNER TO freecodecamp;

--
-- Name: relation_p_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.relation_p_seq OWNED BY public.relation.relation_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(20) NOT NULL,
    star_id integer NOT NULL,
    description text NOT NULL,
    age_in_millions_of_years integer,
    galaxy_types integer,
    distance_from_earth numeric(4,2),
    has_life boolean,
    is_spherical boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.star_id;


--
-- Name: star_galaxy_id_seq1; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq1 OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq1 OWNED BY public.star.galaxy_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN planet_id SET DEFAULT nextval('public.moon_planet_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN star_id SET DEFAULT nextval('public.planet_star_id_seq'::regclass);


--
-- Name: relation relation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.relation ALTER COLUMN relation_id SET DEFAULT nextval('public.relation_p_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq1'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('galaxy1', 1, 'good good very good', 123, 5, 14.20, false, true);
INSERT INTO public.galaxy VALUES ('galaxy2', 2, 'good good very good bad', 1223, 52, 14.20, false, true);
INSERT INTO public.galaxy VALUES ('galaxy23', 3, 'good good very good bad', 1223, 52, 14.20, false, true);
INSERT INTO public.galaxy VALUES ('galaxy234', 4, 'good good very good bad', 1223, 52, 14.20, false, true);
INSERT INTO public.galaxy VALUES ('galaxy5', 5, 'good good very good bad', 1223, 52, 14.20, false, true);
INSERT INTO public.galaxy VALUES ('galaxy6', 6, 'good good very good bad', 1223, 52, 14.20, false, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('moon1', 1, 'good moon', 3, 2, 2.43, true, false, 2);
INSERT INTO public.moon VALUES ('moon2', 2, 'good moon', 3, 2, 2.43, true, false, 3);
INSERT INTO public.moon VALUES ('moon43225', 4, 'good moon', 3, 2, 2.43, true, false, 3);
INSERT INTO public.moon VALUES ('moon23', 5, 'good moon', 3, 2, 2.43, true, false, 4);
INSERT INTO public.moon VALUES ('moon25', 6, 'good moon', 3, 2, 2.43, true, false, 5);
INSERT INTO public.moon VALUES ('moon43', 7, 'good moon', 3, 2, 2.43, true, false, 3);
INSERT INTO public.moon VALUES ('moon2432', 8, 'good mmmoon', 33, 23, 23.43, true, false, 8);
INSERT INTO public.moon VALUES ('mo5on43225', 19, 'good moon', 3, 2, 2.43, true, false, 3);
INSERT INTO public.moon VALUES ('moon253', 20, 'good moon', 3, 2, 2.43, true, false, 4);
INSERT INTO public.moon VALUES ('moon255', 21, 'good moon', 3, 2, 2.43, true, false, 5);
INSERT INTO public.moon VALUES ('moon453', 22, 'good moon', 3, 2, 2.43, true, false, 3);
INSERT INTO public.moon VALUES ('moon24352', 23, 'good mmmoon', 33, 23, 23.43, true, false, 8);
INSERT INTO public.moon VALUES ('moon24342', 24, 'good mmmoon', 33, 23, 23.43, true, true, 7);
INSERT INTO public.moon VALUES ('mnnoon24342', 25, 'good mmmoon', 33, 23, 23.43, true, true, 2);
INSERT INTO public.moon VALUES ('moon2er4342', 26, 'good mmmoon', 33, 23, 23.43, true, true, 5);
INSERT INTO public.moon VALUES ('moon2434p2', 27, 'good mmmoon', 33, 23, 23.43, true, true, 8);
INSERT INTO public.moon VALUES ('m3oon43225', 28, 'good moon', 3, 2, 2.43, true, false, 3);
INSERT INTO public.moon VALUES ('moon233', 29, 'good moon', 3, 2, 2.43, true, false, 4);
INSERT INTO public.moon VALUES ('moon325', 30, 'good moon', 3, 2, 2.43, true, false, 5);
INSERT INTO public.moon VALUES ('moon433', 31, 'good moon', 3, 2, 2.43, true, false, 3);
INSERT INTO public.moon VALUES ('moon24323', 32, 'good mmmoon', 33, 23, 23.43, true, false, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('planet1', 1, 'well well e...', 83, 4, 38.36, true, false, 1);
INSERT INTO public.planet VALUES ('planet21', 2, 'well well e...', 83, 4, 38.36, true, false, 2);
INSERT INTO public.planet VALUES ('planet3', 3, 'well well e...', 83, 4, 38.36, true, false, 3);
INSERT INTO public.planet VALUES ('planet4', 4, 'well well e...', 83, 4, 38.36, true, false, 4);
INSERT INTO public.planet VALUES ('planet5', 5, 'well bad well', 3, 2, 9.20, false, true, 5);
INSERT INTO public.planet VALUES ('planet6', 6, 'well bad well', 3, 2, 9.20, false, true, 6);
INSERT INTO public.planet VALUES ('planet7', 7, 'well bad well', 3, 2, 9.20, false, true, 2);
INSERT INTO public.planet VALUES ('planet8', 8, 'well bad well', 3, 2, 9.20, false, true, 1);
INSERT INTO public.planet VALUES ('planet9', 9, 'well bad well', 3, 2, 9.20, false, true, 5);
INSERT INTO public.planet VALUES ('planet10', 10, 'well bad well', 3, 2, 9.20, false, true, 3);
INSERT INTO public.planet VALUES ('planet11', 11, 'well bad well', 3, 2, 9.20, false, true, 6);
INSERT INTO public.planet VALUES ('planet12', 12, 'well bad well', 3, 2, 9.20, false, true, 5);
INSERT INTO public.planet VALUES ('planet13', 13, 'well bad well', 3, 2, 9.20, false, true, 4);
INSERT INTO public.planet VALUES ('planet14', 14, 'well bad well', 3, 2, 9.20, false, true, 6);


--
-- Data for Name: relation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.relation VALUES (1, 2, 3, 4, 1, NULL);
INSERT INTO public.relation VALUES (2, 3, 4, 5, 2, NULL);
INSERT INTO public.relation VALUES (3, 4, 5, 6, 3, NULL);
INSERT INTO public.relation VALUES (1, 2, 3, 32, 18, 'b');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sirius', 1, 'well well ...', 893, 34, 8.60, true, true, 1);
INSERT INTO public.star VALUES ('Star2', 2, 'well well e...', 83, 4, 38.36, true, false, 2);
INSERT INTO public.star VALUES ('Star3', 3, 'well well e...', 83, 4, 38.36, true, false, 3);
INSERT INTO public.star VALUES ('Star4', 4, 'well well e...', 83, 4, 38.36, true, false, 4);
INSERT INTO public.star VALUES ('Star5', 5, 'well well e...', 83, 4, 38.36, true, false, 5);
INSERT INTO public.star VALUES ('Star6', 6, 'well well e...', 83, 4, 38.36, true, false, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 32, true);


--
-- Name: moon_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_planet_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: planet_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_star_id_seq', 1, false);


--
-- Name: relation_p_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.relation_p_seq', 18, true);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 6, true);


--
-- Name: star_galaxy_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq1', 1, false);


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
-- Name: relation relation_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.relation
    ADD CONSTRAINT relation_moon_id_key UNIQUE (moon_id);


--
-- Name: relation relation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.relation
    ADD CONSTRAINT relation_pkey PRIMARY KEY (relation_id);


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
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: relation relation_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.relation
    ADD CONSTRAINT relation_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: relation relation_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.relation
    ADD CONSTRAINT relation_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: relation relation_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.relation
    ADD CONSTRAINT relation_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: relation relation_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.relation
    ADD CONSTRAINT relation_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--


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
-- Name: astroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.astroid (
    astroid_id integer NOT NULL,
    name character varying(30),
    diameter_km numeric NOT NULL
);


ALTER TABLE public.astroid OWNER TO freecodecamp;

--
-- Name: astroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.astroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.astroid_id_seq OWNER TO freecodecamp;

--
-- Name: astroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.astroid_id_seq OWNED BY public.astroid.astroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_million_years numeric,
    discovered_ad integer,
    constellation text
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
    name character varying(30),
    planet_id integer,
    has_atmosphere boolean NOT NULL,
    discovered_ad integer
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
    star_id integer,
    has_moon boolean NOT NULL,
    planet_type character varying(30)
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
    distance_light_years numeric,
    galaxy_id integer,
    has_planet boolean NOT NULL
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
-- Name: astroid astroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astroid ALTER COLUMN astroid_id SET DEFAULT nextval('public.astroid_id_seq'::regclass);


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
-- Data for Name: astroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.astroid VALUES (1, 'Vesta', 525.4);
INSERT INTO public.astroid VALUES (2, 'Pallas', 511);
INSERT INTO public.astroid VALUES (3, 'Hygiea', 433);
INSERT INTO public.astroid VALUES (4, 'Interamnia', 332);
INSERT INTO public.astroid VALUES (5, 'Europa', 319);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'Milky Way', 13.61, 1610, 'Sagittarius, Orion, Scorpius, Carion, Ara, Auriga');
INSERT INTO public.galaxy VALUES (3, 'Andromeda Galaxy', 10.01, 1924, 'Andromeda');
INSERT INTO public.galaxy VALUES (4, 'Orion Nebula', 0.003, 1610, 'Orion');
INSERT INTO public.galaxy VALUES (5, 'Sombrero Galaxy', 13.25, 1781, 'Virgo');
INSERT INTO public.galaxy VALUES (1, 'Cygnus A', NULL, 1946, 'Cygnus');
INSERT INTO public.galaxy VALUES (6, 'Canis Major Dwarf Galaxy', 215, 2003, 'Canis Major');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (23, 'Triton', 9, true, 1846);
INSERT INTO public.moon VALUES (1, 'Moon', 3, false, 1609);
INSERT INTO public.moon VALUES (3, 'Deimos', 4, false, 1877);
INSERT INTO public.moon VALUES (2, 'Phobos', 4, false, 1877);
INSERT INTO public.moon VALUES (4, 'Io', 6, true, 1610);
INSERT INTO public.moon VALUES (5, 'Europa', 6, false, 1610);
INSERT INTO public.moon VALUES (7, 'Callisto', 6, true, 1610);
INSERT INTO public.moon VALUES (6, 'Ganymede', 6, false, 1610);
INSERT INTO public.moon VALUES (22, 'Titan', 7, true, 1655);
INSERT INTO public.moon VALUES (8, 'Amalthea', 6, false, 1892);
INSERT INTO public.moon VALUES (9, 'Himalia', 6, false, 1904);
INSERT INTO public.moon VALUES (10, 'Elara', 6, false, 1905);
INSERT INTO public.moon VALUES (11, 'Pasiphae', 6, false, 1908);
INSERT INTO public.moon VALUES (12, 'Sinope', 6, false, 1914);
INSERT INTO public.moon VALUES (13, 'Lysithea', 6, false, 1938);
INSERT INTO public.moon VALUES (14, 'Carme', 6, false, 1938);
INSERT INTO public.moon VALUES (15, 'Ananke', 6, false, 1951);
INSERT INTO public.moon VALUES (16, 'Leda', 6, false, 1974);
INSERT INTO public.moon VALUES (17, 'Thebe', 6, false, 1979);
INSERT INTO public.moon VALUES (18, 'Adrastea', 6, false, 1979);
INSERT INTO public.moon VALUES (19, 'Metis', 6, false, 1979);
INSERT INTO public.moon VALUES (20, 'Callirrhoe', 6, false, 1999);
INSERT INTO public.moon VALUES (21, 'Enceladus', 7, false, 1789);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 6, false, 'Terrestrial');
INSERT INTO public.planet VALUES (2, 'Venus', 6, false, 'Terrestrial');
INSERT INTO public.planet VALUES (3, 'Earth', 6, true, 'Terrestrial');
INSERT INTO public.planet VALUES (4, 'Mars', 6, true, 'Terrestrial');
INSERT INTO public.planet VALUES (5, 'Ceres', 6, false, 'Dwarf Planet');
INSERT INTO public.planet VALUES (6, 'Jupiter', 6, true, 'Gas Giant');
INSERT INTO public.planet VALUES (7, 'Saturn', 6, true, 'Gas Giant');
INSERT INTO public.planet VALUES (8, 'Uranus', 6, true, 'Ice Gaint');
INSERT INTO public.planet VALUES (9, 'Neptune', 6, true, 'Ice Giant');
INSERT INTO public.planet VALUES (10, 'Pluto', 6, true, 'Dwarf Planet');
INSERT INTO public.planet VALUES (11, 'Haumea', 6, true, 'Dwarf Planet');
INSERT INTO public.planet VALUES (12, 'Eris', 6, true, 'Dwarf Planet');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (6, 'Sun', 0.000015827, 2, true);
INSERT INTO public.star VALUES (1, 'Polaris', 323, 2, false);
INSERT INTO public.star VALUES (2, 'Castor', 50.88, 2, false);
INSERT INTO public.star VALUES (4, 'Sirius', 8.611, 2, false);
INSERT INTO public.star VALUES (3, 'Pollux', 33.72, 2, true);
INSERT INTO public.star VALUES (5, 'Altair', 16.73, 2, false);


--
-- Name: astroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.astroid_id_seq', 5, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: astroid astroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astroid
    ADD CONSTRAINT astroid_name_key UNIQUE (name);


--
-- Name: astroid astroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astroid
    ADD CONSTRAINT astroid_pkey PRIMARY KEY (astroid_id);


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
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--


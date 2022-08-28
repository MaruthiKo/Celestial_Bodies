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
-- Name: bridge; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.bridge (
    name character varying(20) NOT NULL,
    bridge_id integer NOT NULL,
    sno integer NOT NULL
);


ALTER TABLE public.bridge OWNER TO freecodecamp;

--
-- Name: bridge_bridge_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.bridge_bridge_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bridge_bridge_id_seq OWNER TO freecodecamp;

--
-- Name: bridge_bridge_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.bridge_bridge_id_seq OWNED BY public.bridge.bridge_id;


--
-- Name: bridge_sno_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.bridge_sno_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bridge_sno_seq OWNER TO freecodecamp;

--
-- Name: bridge_sno_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.bridge_sno_seq OWNED BY public.bridge.sno;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(20) NOT NULL,
    types_of_galaxies text,
    percentage integer,
    ingredients character varying(20),
    galaxy_id integer NOT NULL,
    sno integer NOT NULL
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
-- Name: galaxy_sno_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_sno_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_sno_seq OWNER TO freecodecamp;

--
-- Name: galaxy_sno_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_sno_seq OWNED BY public.galaxy.sno;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(20) NOT NULL,
    moon_id integer NOT NULL,
    sno integer NOT NULL,
    planet_moon character varying(20),
    size integer
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
-- Name: moon_sno_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_sno_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_sno_seq OWNER TO freecodecamp;

--
-- Name: moon_sno_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_sno_seq OWNED BY public.moon.sno;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(20) NOT NULL,
    planet_id integer NOT NULL,
    distance_in_mkm numeric(2,1),
    sno integer NOT NULL,
    largest_planet boolean
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
-- Name: planet_sno_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_sno_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_sno_seq OWNER TO freecodecamp;

--
-- Name: planet_sno_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_sno_seq OWNED BY public.planet.sno;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(20) NOT NULL,
    star_id integer NOT NULL,
    big_star boolean,
    origin character varying(20),
    sno integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_sno_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_sno_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_sno_seq OWNER TO freecodecamp;

--
-- Name: star_sno_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_sno_seq OWNED BY public.star.sno;


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
-- Name: bridge bridge_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.bridge ALTER COLUMN bridge_id SET DEFAULT nextval('public.bridge_bridge_id_seq'::regclass);


--
-- Name: bridge sno; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.bridge ALTER COLUMN sno SET DEFAULT nextval('public.bridge_sno_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy sno; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN sno SET DEFAULT nextval('public.galaxy_sno_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon sno; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN sno SET DEFAULT nextval('public.moon_sno_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet sno; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN sno SET DEFAULT nextval('public.planet_sno_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star sno; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN sno SET DEFAULT nextval('public.star_sno_seq'::regclass);


--
-- Data for Name: bridge; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.bridge VALUES ('one', 1, 1);
INSERT INTO public.bridge VALUES ('two', 2, 2);
INSERT INTO public.bridge VALUES ('three', 3, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milkyway', 'Spiral', 60, 'Gas & Dust', 1, 1);
INSERT INTO public.galaxy VALUES ('Old Stars', 'Elliptical', 15, 'little dust', 2, 2);
INSERT INTO public.galaxy VALUES ('Bright', 'Irregular', 15, 'young star', 3, 3);
INSERT INTO public.galaxy VALUES ('Center', 'Quasar', 4, 'energy', 4, 4);
INSERT INTO public.galaxy VALUES ('NGC', 'SG0', 3, 'bridge', 5, 5);
INSERT INTO public.galaxy VALUES ('Sombrero', 'Sa', 3, 'ormal', 6, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('one', 1, 1, NULL, NULL);
INSERT INTO public.moon VALUES ('two', 2, 2, NULL, NULL);
INSERT INTO public.moon VALUES ('three', 3, 3, NULL, NULL);
INSERT INTO public.moon VALUES ('four', 4, 4, NULL, NULL);
INSERT INTO public.moon VALUES ('five', 5, 5, NULL, NULL);
INSERT INTO public.moon VALUES ('six', 6, 6, NULL, NULL);
INSERT INTO public.moon VALUES ('seven', 7, 7, NULL, NULL);
INSERT INTO public.moon VALUES ('eight', 8, 8, NULL, NULL);
INSERT INTO public.moon VALUES ('nine', 9, 9, NULL, NULL);
INSERT INTO public.moon VALUES ('ten', 10, 10, NULL, NULL);
INSERT INTO public.moon VALUES ('eleven', 11, 11, NULL, NULL);
INSERT INTO public.moon VALUES ('twelve', 12, 12, NULL, NULL);
INSERT INTO public.moon VALUES ('thirteen', 13, 13, NULL, NULL);
INSERT INTO public.moon VALUES ('fourteen', 14, 14, NULL, NULL);
INSERT INTO public.moon VALUES ('fifteen', 15, 15, NULL, NULL);
INSERT INTO public.moon VALUES ('sixteen', 16, 16, NULL, NULL);
INSERT INTO public.moon VALUES ('seventeen', 17, 17, NULL, NULL);
INSERT INTO public.moon VALUES ('eighteen', 18, 18, NULL, NULL);
INSERT INTO public.moon VALUES ('nineteen', 19, 19, NULL, NULL);
INSERT INTO public.moon VALUES ('twenty', 20, 20, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Mercury', 3, 7.3, 3, false);
INSERT INTO public.planet VALUES ('Venus', 4, 4.1, 4, false);
INSERT INTO public.planet VALUES ('Earth', 5, 1.1, 5, true);
INSERT INTO public.planet VALUES ('Mars', 6, 2.2, 6, true);
INSERT INTO public.planet VALUES ('Jupiter', 7, 2.3, 7, true);
INSERT INTO public.planet VALUES ('Saturn', 8, 4.5, 8, true);
INSERT INTO public.planet VALUES ('Uranus', 9, 6.4, 9, true);
INSERT INTO public.planet VALUES ('Neptune', 10, 1.4, 10, true);
INSERT INTO public.planet VALUES ('Pluto', 11, 9.4, 11, false);
INSERT INTO public.planet VALUES ('Zec', 12, 2.3, 12, false);
INSERT INTO public.planet VALUES ('Imaginary', 13, 3.1, 13, true);
INSERT INTO public.planet VALUES ('finale', 14, 4.5, 14, false);
INSERT INTO public.planet VALUES ('one', 15, NULL, 15, NULL);
INSERT INTO public.planet VALUES ('two', 16, NULL, 16, NULL);
INSERT INTO public.planet VALUES ('three', 17, NULL, 17, NULL);
INSERT INTO public.planet VALUES ('four', 18, NULL, 18, NULL);
INSERT INTO public.planet VALUES ('five', 19, NULL, 19, NULL);
INSERT INTO public.planet VALUES ('six', 20, NULL, 20, NULL);
INSERT INTO public.planet VALUES ('seven', 21, NULL, 21, NULL);
INSERT INTO public.planet VALUES ('eight', 22, NULL, 22, NULL);
INSERT INTO public.planet VALUES ('nine', 23, NULL, 23, NULL);
INSERT INTO public.planet VALUES ('ten', 24, NULL, 24, NULL);
INSERT INTO public.planet VALUES ('eleven', 25, NULL, 25, NULL);
INSERT INTO public.planet VALUES ('twelve', 26, NULL, 26, NULL);
INSERT INTO public.planet VALUES ('thirteen', 27, NULL, 27, NULL);
INSERT INTO public.planet VALUES ('fourteen', 28, NULL, 28, NULL);
INSERT INTO public.planet VALUES ('fifteen', 29, NULL, 29, NULL);
INSERT INTO public.planet VALUES ('sixteen', 30, NULL, 30, NULL);
INSERT INTO public.planet VALUES ('seventeen', 31, NULL, 31, NULL);
INSERT INTO public.planet VALUES ('eighteen', 32, NULL, 32, NULL);
INSERT INTO public.planet VALUES ('nineteen', 33, NULL, 33, NULL);
INSERT INTO public.planet VALUES ('twenty', 34, NULL, 34, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sirius', 1, true, 'Greek', 1);
INSERT INTO public.star VALUES ('Canopus', 2, true, 'Egypt', 2);
INSERT INTO public.star VALUES ('Rigel', 3, true, 'Arabic', 3);
INSERT INTO public.star VALUES ('Arcturus', 4, false, 'Greek', 4);
INSERT INTO public.star VALUES ('Vega', 5, false, 'Stargazers', 5);
INSERT INTO public.star VALUES ('Capella', 6, false, 'Egypt', 6);


--
-- Name: bridge_bridge_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.bridge_bridge_id_seq', 3, true);


--
-- Name: bridge_sno_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.bridge_sno_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: galaxy_sno_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_sno_seq', 33, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: moon_sno_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_sno_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 34, true);


--
-- Name: planet_sno_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_sno_seq', 34, true);


--
-- Name: star_sno_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_sno_seq', 6, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: bridge bridge_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.bridge
    ADD CONSTRAINT bridge_name_key UNIQUE (name);


--
-- Name: bridge bridge_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.bridge
    ADD CONSTRAINT bridge_pkey PRIMARY KEY (bridge_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_sno_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_sno_key UNIQUE (sno);


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
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_sno_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_sno_key UNIQUE (sno);


--
-- Name: star star_sno_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_sno_fkey FOREIGN KEY (sno) REFERENCES public.galaxy(sno);


--
-- PostgreSQL database dump complete
--


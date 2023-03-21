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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(40) NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric(10,2),
    num_of_stars integer,
    no_of_black_holes integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    planet_id integer NOT NULL,
    no_of_hrs_per_revolution integer,
    no_of_hrs_per_rotation integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    star_id integer NOT NULL,
    description character varying(30),
    no_of_moons integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    description text,
    is_alive boolean,
    galaxy_id integer NOT NULL,
    no_of_planets integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'asteroid-1', 1);
INSERT INTO public.asteroid VALUES (2, 'asteroid-2', 2);
INSERT INTO public.asteroid VALUES (3, 'asteroid-3', 2);
INSERT INTO public.asteroid VALUES (4, 'asteroid-4', 2);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky way', 'this galaxy has life', true, true, 256.00, 100, NULL);
INSERT INTO public.galaxy VALUES (2, 'galaxy A', 'this is galaxy A', false, false, 2134.00, 1347, NULL);
INSERT INTO public.galaxy VALUES (3, 'galaxy B', 'this is galaxy B', false, true, 342.00, 1343, NULL);
INSERT INTO public.galaxy VALUES (36, 'galaxy D', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (37, 'galaxy E', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (38, 'galaxy F', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (39, 'galaxy G', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'galaxy C', NULL, NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 3, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'ring1', 6, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'ring2', 6, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'ring3', 6, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'ring4', 6, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'ring5', 6, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'ring6', 6, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'ring7', 6, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'ring8', 6, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'u_ring1', 7, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'u_ring2', 7, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'u_ring3', 7, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'u_ring4', 7, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'u_ring5', 7, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'u_ring6', 7, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'u_ring7', 7, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'u_ring8', 7, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'u_ring9', 7, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'u_ring10', 7, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'u_ring11', 7, NULL, NULL);
INSERT INTO public.moon VALUES (22, 'u_ring12', 7, NULL, NULL);
INSERT INTO public.moon VALUES (23, 'u_ring13', 7, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'mercury', 1, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'venus', 1, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'earth', 1, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'mars', 1, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'jupiter', 1, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'saturn', 1, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'uranus', 1, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'neptune', 1, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'pluto', 1, NULL, NULL);
INSERT INTO public.planet VALUES (10, NULL, 2, NULL, NULL);
INSERT INTO public.planet VALUES (11, NULL, 2, NULL, NULL);
INSERT INTO public.planet VALUES (12, NULL, 3, NULL, NULL);
INSERT INTO public.planet VALUES (13, NULL, 3, NULL, NULL);
INSERT INTO public.planet VALUES (14, NULL, 3, NULL, NULL);
INSERT INTO public.planet VALUES (15, NULL, 5, NULL, NULL);
INSERT INTO public.planet VALUES (16, NULL, 5, NULL, NULL);
INSERT INTO public.planet VALUES (17, NULL, 5, NULL, NULL);
INSERT INTO public.planet VALUES (18, NULL, 5, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', NULL, NULL, 1, NULL);
INSERT INTO public.star VALUES (2, 'star2', NULL, NULL, 1, NULL);
INSERT INTO public.star VALUES (3, 'star3', NULL, NULL, 1, NULL);
INSERT INTO public.star VALUES (4, 'star7', NULL, NULL, 1, NULL);
INSERT INTO public.star VALUES (7, 'star7', NULL, NULL, 1, NULL);
INSERT INTO public.star VALUES (8, 'star8', NULL, NULL, 1, NULL);
INSERT INTO public.star VALUES (6, 'star6', NULL, NULL, 1, NULL);
INSERT INTO public.star VALUES (9, 'star9', NULL, NULL, 1, NULL);


--
-- Name: asteroid asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_key UNIQUE (name);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


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
-- Name: star star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_key UNIQUE (star_id);


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
-- PostgreSQL database dump complete
--


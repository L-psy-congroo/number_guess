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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    number_guesses integer NOT NULL,
    user_id integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(20) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 796, 5);
INSERT INTO public.games VALUES (2, 886, 5);
INSERT INTO public.games VALUES (3, 413, 6);
INSERT INTO public.games VALUES (4, 593, 6);
INSERT INTO public.games VALUES (5, 823, 5);
INSERT INTO public.games VALUES (6, 389, 5);
INSERT INTO public.games VALUES (7, 669, 5);
INSERT INTO public.games VALUES (8, 460, 7);
INSERT INTO public.games VALUES (9, 1000, 7);
INSERT INTO public.games VALUES (10, 473, 8);
INSERT INTO public.games VALUES (11, 659, 8);
INSERT INTO public.games VALUES (12, 707, 7);
INSERT INTO public.games VALUES (13, 871, 7);
INSERT INTO public.games VALUES (14, 343, 7);
INSERT INTO public.games VALUES (15, 548, 9);
INSERT INTO public.games VALUES (16, 467, 9);
INSERT INTO public.games VALUES (17, 706, 10);
INSERT INTO public.games VALUES (18, 308, 10);
INSERT INTO public.games VALUES (19, 139, 9);
INSERT INTO public.games VALUES (20, 592, 9);
INSERT INTO public.games VALUES (21, 791, 9);
INSERT INTO public.games VALUES (22, 339, 11);
INSERT INTO public.games VALUES (23, 280, 11);
INSERT INTO public.games VALUES (24, 778, 12);
INSERT INTO public.games VALUES (25, 89, 12);
INSERT INTO public.games VALUES (26, 321, 11);
INSERT INTO public.games VALUES (27, 293, 11);
INSERT INTO public.games VALUES (28, 319, 11);
INSERT INTO public.games VALUES (29, 613, 13);
INSERT INTO public.games VALUES (30, 737, 13);
INSERT INTO public.games VALUES (31, 511, 14);
INSERT INTO public.games VALUES (32, 22, 14);
INSERT INTO public.games VALUES (33, 126, 13);
INSERT INTO public.games VALUES (34, 888, 13);
INSERT INTO public.games VALUES (35, 596, 13);
INSERT INTO public.games VALUES (36, 249, 15);
INSERT INTO public.games VALUES (37, 95, 15);
INSERT INTO public.games VALUES (38, 477, 16);
INSERT INTO public.games VALUES (39, 831, 16);
INSERT INTO public.games VALUES (40, 296, 15);
INSERT INTO public.games VALUES (41, 795, 15);
INSERT INTO public.games VALUES (42, 232, 15);
INSERT INTO public.games VALUES (43, 208, 17);
INSERT INTO public.games VALUES (44, 303, 17);
INSERT INTO public.games VALUES (45, 976, 18);
INSERT INTO public.games VALUES (46, 801, 18);
INSERT INTO public.games VALUES (47, 901, 17);
INSERT INTO public.games VALUES (48, 767, 17);
INSERT INTO public.games VALUES (49, 128, 17);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1739277472235');
INSERT INTO public.users VALUES (2, 'user_1739277472234');
INSERT INTO public.users VALUES (3, 'user_1739277480747');
INSERT INTO public.users VALUES (4, 'user_1739277480746');
INSERT INTO public.users VALUES (5, 'user_1739277527362');
INSERT INTO public.users VALUES (6, 'user_1739277527361');
INSERT INTO public.users VALUES (7, 'user_1739277761413');
INSERT INTO public.users VALUES (8, 'user_1739277761412');
INSERT INTO public.users VALUES (9, 'user_1739278032465');
INSERT INTO public.users VALUES (10, 'user_1739278032464');
INSERT INTO public.users VALUES (11, 'user_1739278047337');
INSERT INTO public.users VALUES (12, 'user_1739278047336');
INSERT INTO public.users VALUES (13, 'user_1739278109759');
INSERT INTO public.users VALUES (14, 'user_1739278109757');
INSERT INTO public.users VALUES (15, 'user_1739278133187');
INSERT INTO public.users VALUES (16, 'user_1739278133186');
INSERT INTO public.users VALUES (17, 'user_1739278191606');
INSERT INTO public.users VALUES (18, 'user_1739278191605');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 49, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 18, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--


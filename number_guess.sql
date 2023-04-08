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
    user_id integer NOT NULL,
    number_of_guess integer NOT NULL
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
    username character varying(40) NOT NULL
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

INSERT INTO public.games VALUES (47, 18, 8);
INSERT INTO public.games VALUES (48, 18, 14);
INSERT INTO public.games VALUES (49, 19, 389);
INSERT INTO public.games VALUES (50, 19, 502);
INSERT INTO public.games VALUES (51, 20, 527);
INSERT INTO public.games VALUES (52, 20, 379);
INSERT INTO public.games VALUES (53, 19, 580);
INSERT INTO public.games VALUES (54, 19, 202);
INSERT INTO public.games VALUES (55, 19, 645);
INSERT INTO public.games VALUES (56, 18, 8);
INSERT INTO public.games VALUES (57, 21, 337);
INSERT INTO public.games VALUES (58, 21, 711);
INSERT INTO public.games VALUES (59, 22, 320);
INSERT INTO public.games VALUES (60, 22, 5);
INSERT INTO public.games VALUES (61, 21, 412);
INSERT INTO public.games VALUES (62, 21, 600);
INSERT INTO public.games VALUES (63, 21, 524);
INSERT INTO public.games VALUES (64, 23, 41);
INSERT INTO public.games VALUES (65, 23, 180);
INSERT INTO public.games VALUES (66, 24, 332);
INSERT INTO public.games VALUES (67, 23, 584);
INSERT INTO public.games VALUES (68, 23, 776);
INSERT INTO public.games VALUES (69, 23, 663);
INSERT INTO public.games VALUES (70, 25, 938);
INSERT INTO public.games VALUES (71, 25, 705);
INSERT INTO public.games VALUES (72, 26, 146);
INSERT INTO public.games VALUES (73, 26, 153);
INSERT INTO public.games VALUES (74, 25, 565);
INSERT INTO public.games VALUES (75, 25, 871);
INSERT INTO public.games VALUES (76, 25, 211);
INSERT INTO public.games VALUES (77, 27, 583);
INSERT INTO public.games VALUES (78, 27, 923);
INSERT INTO public.games VALUES (79, 28, 692);
INSERT INTO public.games VALUES (80, 28, 300);
INSERT INTO public.games VALUES (81, 27, 471);
INSERT INTO public.games VALUES (82, 27, 130);
INSERT INTO public.games VALUES (83, 27, 860);
INSERT INTO public.games VALUES (84, 29, 921);
INSERT INTO public.games VALUES (85, 30, 898);
INSERT INTO public.games VALUES (86, 30, 396);
INSERT INTO public.games VALUES (87, 29, 688);
INSERT INTO public.games VALUES (88, 29, 802);
INSERT INTO public.games VALUES (89, 29, 580);
INSERT INTO public.games VALUES (90, 31, 22);
INSERT INTO public.games VALUES (91, 31, 486);
INSERT INTO public.games VALUES (92, 32, 650);
INSERT INTO public.games VALUES (93, 32, 877);
INSERT INTO public.games VALUES (94, 31, 62);
INSERT INTO public.games VALUES (95, 31, 411);
INSERT INTO public.games VALUES (96, 31, 182);
INSERT INTO public.games VALUES (97, 33, 461);
INSERT INTO public.games VALUES (98, 34, 500);
INSERT INTO public.games VALUES (99, 34, 82);
INSERT INTO public.games VALUES (100, 33, 486);
INSERT INTO public.games VALUES (101, 33, 172);
INSERT INTO public.games VALUES (102, 33, 830);
INSERT INTO public.games VALUES (103, 35, 210);
INSERT INTO public.games VALUES (104, 35, 113);
INSERT INTO public.games VALUES (105, 36, 593);
INSERT INTO public.games VALUES (106, 36, 505);
INSERT INTO public.games VALUES (107, 35, 651);
INSERT INTO public.games VALUES (108, 35, 115);
INSERT INTO public.games VALUES (109, 35, 563);
INSERT INTO public.games VALUES (110, 37, 341);
INSERT INTO public.games VALUES (111, 38, 992);
INSERT INTO public.games VALUES (112, 38, 619);
INSERT INTO public.games VALUES (113, 37, 313);
INSERT INTO public.games VALUES (114, 37, 17);
INSERT INTO public.games VALUES (115, 37, 664);
INSERT INTO public.games VALUES (116, 39, 398);
INSERT INTO public.games VALUES (117, 39, 288);
INSERT INTO public.games VALUES (118, 40, 762);
INSERT INTO public.games VALUES (119, 39, 627);
INSERT INTO public.games VALUES (120, 39, 466);
INSERT INTO public.games VALUES (121, 39, 782);
INSERT INTO public.games VALUES (122, 41, 809);
INSERT INTO public.games VALUES (123, 41, 515);
INSERT INTO public.games VALUES (124, 42, 521);
INSERT INTO public.games VALUES (125, 42, 859);
INSERT INTO public.games VALUES (126, 41, 449);
INSERT INTO public.games VALUES (127, 41, 368);
INSERT INTO public.games VALUES (128, 41, 616);
INSERT INTO public.games VALUES (129, 43, 868);
INSERT INTO public.games VALUES (130, 44, 816);
INSERT INTO public.games VALUES (131, 44, 224);
INSERT INTO public.games VALUES (132, 43, 188);
INSERT INTO public.games VALUES (133, 43, 156);
INSERT INTO public.games VALUES (134, 43, 873);
INSERT INTO public.games VALUES (135, 45, 662);
INSERT INTO public.games VALUES (136, 45, 812);
INSERT INTO public.games VALUES (137, 46, 113);
INSERT INTO public.games VALUES (138, 46, 755);
INSERT INTO public.games VALUES (139, 45, 363);
INSERT INTO public.games VALUES (140, 45, 264);
INSERT INTO public.games VALUES (141, 45, 130);
INSERT INTO public.games VALUES (142, 47, 7);
INSERT INTO public.games VALUES (143, 48, 804);
INSERT INTO public.games VALUES (144, 48, 543);
INSERT INTO public.games VALUES (145, 49, 294);
INSERT INTO public.games VALUES (146, 49, 142);
INSERT INTO public.games VALUES (147, 48, 665);
INSERT INTO public.games VALUES (148, 48, 435);
INSERT INTO public.games VALUES (149, 48, 71);
INSERT INTO public.games VALUES (150, 50, 156);
INSERT INTO public.games VALUES (151, 50, 231);
INSERT INTO public.games VALUES (152, 51, 761);
INSERT INTO public.games VALUES (153, 51, 47);
INSERT INTO public.games VALUES (154, 50, 263);
INSERT INTO public.games VALUES (155, 50, 281);
INSERT INTO public.games VALUES (156, 50, 802);
INSERT INTO public.games VALUES (157, 52, 289);
INSERT INTO public.games VALUES (158, 52, 531);
INSERT INTO public.games VALUES (159, 53, 355);
INSERT INTO public.games VALUES (160, 53, 703);
INSERT INTO public.games VALUES (161, 52, 62);
INSERT INTO public.games VALUES (162, 52, 884);
INSERT INTO public.games VALUES (163, 52, 223);
INSERT INTO public.games VALUES (164, 54, 406);
INSERT INTO public.games VALUES (165, 54, 208);
INSERT INTO public.games VALUES (166, 55, 433);
INSERT INTO public.games VALUES (167, 55, 513);
INSERT INTO public.games VALUES (168, 54, 530);
INSERT INTO public.games VALUES (169, 54, 654);
INSERT INTO public.games VALUES (170, 54, 210);
INSERT INTO public.games VALUES (171, 56, 351);
INSERT INTO public.games VALUES (172, 56, 260);
INSERT INTO public.games VALUES (173, 57, 701);
INSERT INTO public.games VALUES (174, 57, 323);
INSERT INTO public.games VALUES (175, 56, 639);
INSERT INTO public.games VALUES (176, 56, 19);
INSERT INTO public.games VALUES (177, 56, 776);
INSERT INTO public.games VALUES (178, 58, 172);
INSERT INTO public.games VALUES (179, 58, 523);
INSERT INTO public.games VALUES (180, 59, 381);
INSERT INTO public.games VALUES (181, 59, 177);
INSERT INTO public.games VALUES (182, 58, 910);
INSERT INTO public.games VALUES (183, 58, 164);
INSERT INTO public.games VALUES (184, 58, 234);
INSERT INTO public.games VALUES (185, 60, 961);
INSERT INTO public.games VALUES (186, 61, 699);
INSERT INTO public.games VALUES (187, 61, 704);
INSERT INTO public.games VALUES (188, 60, 94);
INSERT INTO public.games VALUES (189, 60, 234);
INSERT INTO public.games VALUES (190, 60, 590);
INSERT INTO public.games VALUES (191, 62, 840);
INSERT INTO public.games VALUES (192, 62, 474);
INSERT INTO public.games VALUES (193, 63, 447);
INSERT INTO public.games VALUES (194, 63, 167);
INSERT INTO public.games VALUES (195, 62, 758);
INSERT INTO public.games VALUES (196, 62, 781);
INSERT INTO public.games VALUES (197, 62, 295);
INSERT INTO public.games VALUES (198, 64, 514);
INSERT INTO public.games VALUES (199, 64, 995);
INSERT INTO public.games VALUES (200, 65, 494);
INSERT INTO public.games VALUES (201, 65, 28);
INSERT INTO public.games VALUES (202, 64, 260);
INSERT INTO public.games VALUES (203, 64, 597);
INSERT INTO public.games VALUES (204, 64, 707);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (18, 'pepe');
INSERT INTO public.users VALUES (19, 'user_1680972317517');
INSERT INTO public.users VALUES (20, 'user_1680972317516');
INSERT INTO public.users VALUES (21, 'user_1680972787947');
INSERT INTO public.users VALUES (22, 'user_1680972787946');
INSERT INTO public.users VALUES (23, 'user_1680972866161');
INSERT INTO public.users VALUES (24, 'user_1680972866160');
INSERT INTO public.users VALUES (25, 'user_1680972929785');
INSERT INTO public.users VALUES (26, 'user_1680972929784');
INSERT INTO public.users VALUES (27, 'user_1680973020893');
INSERT INTO public.users VALUES (28, 'user_1680973020892');
INSERT INTO public.users VALUES (29, 'user_1680973063750');
INSERT INTO public.users VALUES (30, 'user_1680973063749');
INSERT INTO public.users VALUES (31, 'user_1680973186569');
INSERT INTO public.users VALUES (32, 'user_1680973186568');
INSERT INTO public.users VALUES (33, 'user_1680973203207');
INSERT INTO public.users VALUES (34, 'user_1680973203206');
INSERT INTO public.users VALUES (35, 'user_1680973212175');
INSERT INTO public.users VALUES (36, 'user_1680973212174');
INSERT INTO public.users VALUES (37, 'user_1680973222538');
INSERT INTO public.users VALUES (38, 'user_1680973222537');
INSERT INTO public.users VALUES (39, 'user_1680973236477');
INSERT INTO public.users VALUES (40, 'user_1680973236476');
INSERT INTO public.users VALUES (41, 'user_1680973250582');
INSERT INTO public.users VALUES (42, 'user_1680973250581');
INSERT INTO public.users VALUES (43, 'user_1680973269688');
INSERT INTO public.users VALUES (44, 'user_1680973269687');
INSERT INTO public.users VALUES (45, 'user_1680973281680');
INSERT INTO public.users VALUES (46, 'user_1680973281679');
INSERT INTO public.users VALUES (47, 'carlos');
INSERT INTO public.users VALUES (48, 'user_1680973521617');
INSERT INTO public.users VALUES (49, 'user_1680973521616');
INSERT INTO public.users VALUES (50, 'user_1680973538391');
INSERT INTO public.users VALUES (51, 'user_1680973538390');
INSERT INTO public.users VALUES (52, 'user_1680973552308');
INSERT INTO public.users VALUES (53, 'user_1680973552307');
INSERT INTO public.users VALUES (54, 'user_1680973932680');
INSERT INTO public.users VALUES (55, 'user_1680973932679');
INSERT INTO public.users VALUES (56, 'user_1680973951072');
INSERT INTO public.users VALUES (57, 'user_1680973951071');
INSERT INTO public.users VALUES (58, 'user_1680973985172');
INSERT INTO public.users VALUES (59, 'user_1680973985171');
INSERT INTO public.users VALUES (60, 'user_1680974006062');
INSERT INTO public.users VALUES (61, 'user_1680974006061');
INSERT INTO public.users VALUES (62, 'user_1680974037125');
INSERT INTO public.users VALUES (63, 'user_1680974037124');
INSERT INTO public.users VALUES (64, 'user_1680974100838');
INSERT INTO public.users VALUES (65, 'user_1680974100837');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 204, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 65, true);


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


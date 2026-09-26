--
-- PostgreSQL database dump
--

\restrict IhZZ3D4DormjaxJz84Wh6gnt0NuOYs4QiUE6XIqTovQwWgFbD8CLzrcVklIBChS

-- Dumped from database version 16.15
-- Dumped by pg_dump version 16.15

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
-- Name: hits; Type: TABLE; Schema: public; Owner: hitcounter
--

CREATE TABLE public.hits (
    id integer NOT NULL,
    at timestamp with time zone DEFAULT now()
);


ALTER TABLE public.hits OWNER TO hitcounter;

--
-- Name: hits_id_seq; Type: SEQUENCE; Schema: public; Owner: hitcounter
--

CREATE SEQUENCE public.hits_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.hits_id_seq OWNER TO hitcounter;

--
-- Name: hits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hitcounter
--

ALTER SEQUENCE public.hits_id_seq OWNED BY public.hits.id;


--
-- Name: hits id; Type: DEFAULT; Schema: public; Owner: hitcounter
--

ALTER TABLE ONLY public.hits ALTER COLUMN id SET DEFAULT nextval('public.hits_id_seq'::regclass);


--
-- Data for Name: hits; Type: TABLE DATA; Schema: public; Owner: hitcounter
--

COPY public.hits (id, at) FROM stdin;
1	2026-09-26 16:10:22.529682+00
2	2026-09-26 16:10:44.025795+00
3	2026-09-26 16:13:15.328894+00
4	2026-09-26 16:13:18.445933+00
5	2026-09-26 16:14:37.90663+00
6	2026-09-26 16:19:12.146959+00
\.


--
-- Name: hits_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hitcounter
--

SELECT pg_catalog.setval('public.hits_id_seq', 6, true);


--
-- Name: hits hits_pkey; Type: CONSTRAINT; Schema: public; Owner: hitcounter
--

ALTER TABLE ONLY public.hits
    ADD CONSTRAINT hits_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

\unrestrict IhZZ3D4DormjaxJz84Wh6gnt0NuOYs4QiUE6XIqTovQwWgFbD8CLzrcVklIBChS


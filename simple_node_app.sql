--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2 (Debian 17.2-1.pgdg120+1)
-- Dumped by pg_dump version 17.2 (Debian 17.2-1.pgdg120+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: simple_node_app; Type: DATABASE; Schema: -; Owner: -
--

CREATE DATABASE simple_node_app WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


\connect simple_node_app

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: your_table_name; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.your_table_name (
    name text,
    address text
);


--
-- Data for Name: your_table_name; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.your_table_name (name, address) FROM stdin;
ridho	cilegon
\.


--
-- PostgreSQL database dump complete
--


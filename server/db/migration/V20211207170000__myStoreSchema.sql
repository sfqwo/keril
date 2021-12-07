--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1 (Debian 14.1-1.pgdg110+1)
-- Dumped by pg_dump version 14.1 (Debian 14.1-1.pgdg110+1)

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

--
-- Name: db-store; Type: SCHEMA; Schema: -; Owner: postgres
--

-- CREATE SCHEMA "db-store";
--
--
-- ALTER SCHEMA "db-store" OWNER TO postgres;
--
-- --
-- -- Name: postgres; Type: SCHEMA; Schema: -; Owner: postgres
-- --
--
-- CREATE SCHEMA postgres;
--
--
-- ALTER SCHEMA postgres OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: brand; Type: TABLE; Schema: db-store; Owner: postgres
--

CREATE TABLE "db-store".brand (
    id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE "db-store".brand OWNER TO postgres;

--
-- Name: brand_id_seq; Type: SEQUENCE; Schema: db-store; Owner: postgres
--

CREATE SEQUENCE "db-store".brand_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "db-store".brand_id_seq OWNER TO postgres;

--
-- Name: brand_id_seq; Type: SEQUENCE OWNED BY; Schema: db-store; Owner: postgres
--

ALTER SEQUENCE "db-store".brand_id_seq OWNED BY "db-store".brand.id;


--
-- Name: basket_devices; Type: TABLE; Schema: postgres; Owner: postgres
--

CREATE TABLE postgres.basket_devices (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "basketId" integer,
    "deviceId" integer
);


ALTER TABLE postgres.basket_devices OWNER TO postgres;

--
-- Name: basket_devices_id_seq; Type: SEQUENCE; Schema: postgres; Owner: postgres
--

CREATE SEQUENCE postgres.basket_devices_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE postgres.basket_devices_id_seq OWNER TO postgres;

--
-- Name: basket_devices_id_seq; Type: SEQUENCE OWNED BY; Schema: postgres; Owner: postgres
--

ALTER SEQUENCE postgres.basket_devices_id_seq OWNED BY postgres.basket_devices.id;


--
-- Name: baskets; Type: TABLE; Schema: postgres; Owner: postgres
--

CREATE TABLE postgres.baskets (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" integer
);


ALTER TABLE postgres.baskets OWNER TO postgres;

--
-- Name: baskets_id_seq; Type: SEQUENCE; Schema: postgres; Owner: postgres
--

CREATE SEQUENCE postgres.baskets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE postgres.baskets_id_seq OWNER TO postgres;

--
-- Name: baskets_id_seq; Type: SEQUENCE OWNED BY; Schema: postgres; Owner: postgres
--

ALTER SEQUENCE postgres.baskets_id_seq OWNED BY postgres.baskets.id;


--
-- Name: brands; Type: TABLE; Schema: postgres; Owner: postgres
--

CREATE TABLE postgres.brands (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE postgres.brands OWNER TO postgres;

--
-- Name: brands_id_seq; Type: SEQUENCE; Schema: postgres; Owner: postgres
--

CREATE SEQUENCE postgres.brands_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE postgres.brands_id_seq OWNER TO postgres;

--
-- Name: brands_id_seq; Type: SEQUENCE OWNED BY; Schema: postgres; Owner: postgres
--

ALTER SEQUENCE postgres.brands_id_seq OWNED BY postgres.brands.id;


--
-- Name: device_infos; Type: TABLE; Schema: postgres; Owner: postgres
--

CREATE TABLE postgres.device_infos (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    description character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "deviceId" integer
);


ALTER TABLE postgres.device_infos OWNER TO postgres;

--
-- Name: device_infos_id_seq; Type: SEQUENCE; Schema: postgres; Owner: postgres
--

CREATE SEQUENCE postgres.device_infos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE postgres.device_infos_id_seq OWNER TO postgres;

--
-- Name: device_infos_id_seq; Type: SEQUENCE OWNED BY; Schema: postgres; Owner: postgres
--

ALTER SEQUENCE postgres.device_infos_id_seq OWNED BY postgres.device_infos.id;


--
-- Name: devices; Type: TABLE; Schema: postgres; Owner: postgres
--

CREATE TABLE postgres.devices (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    price integer NOT NULL,
    rating integer DEFAULT 0,
    img character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "typeId" integer,
    "brandId" integer
);


ALTER TABLE postgres.devices OWNER TO postgres;

--
-- Name: devices_id_seq; Type: SEQUENCE; Schema: postgres; Owner: postgres
--

CREATE SEQUENCE postgres.devices_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE postgres.devices_id_seq OWNER TO postgres;

--
-- Name: devices_id_seq; Type: SEQUENCE OWNED BY; Schema: postgres; Owner: postgres
--

ALTER SEQUENCE postgres.devices_id_seq OWNED BY postgres.devices.id;


--
-- Name: ratings; Type: TABLE; Schema: postgres; Owner: postgres
--

CREATE TABLE postgres.ratings (
    id integer NOT NULL,
    rate character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" integer,
    "deviceId" integer
);


ALTER TABLE postgres.ratings OWNER TO postgres;

--
-- Name: ratings_id_seq; Type: SEQUENCE; Schema: postgres; Owner: postgres
--

CREATE SEQUENCE postgres.ratings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE postgres.ratings_id_seq OWNER TO postgres;

--
-- Name: ratings_id_seq; Type: SEQUENCE OWNED BY; Schema: postgres; Owner: postgres
--

ALTER SEQUENCE postgres.ratings_id_seq OWNED BY postgres.ratings.id;


--
-- Name: table_name; Type: TABLE; Schema: postgres; Owner: postgres
--

CREATE TABLE postgres.table_name (
    id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE postgres.table_name OWNER TO postgres;

--
-- Name: table_name_id_seq; Type: SEQUENCE; Schema: postgres; Owner: postgres
--

CREATE SEQUENCE postgres.table_name_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE postgres.table_name_id_seq OWNER TO postgres;

--
-- Name: table_name_id_seq; Type: SEQUENCE OWNED BY; Schema: postgres; Owner: postgres
--

ALTER SEQUENCE postgres.table_name_id_seq OWNED BY postgres.table_name.id;


--
-- Name: type_brands; Type: TABLE; Schema: postgres; Owner: postgres
--

CREATE TABLE postgres.type_brands (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "typeId" integer,
    "brandId" integer
);


ALTER TABLE postgres.type_brands OWNER TO postgres;

--
-- Name: type_brands_id_seq; Type: SEQUENCE; Schema: postgres; Owner: postgres
--

CREATE SEQUENCE postgres.type_brands_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE postgres.type_brands_id_seq OWNER TO postgres;

--
-- Name: type_brands_id_seq; Type: SEQUENCE OWNED BY; Schema: postgres; Owner: postgres
--

ALTER SEQUENCE postgres.type_brands_id_seq OWNED BY postgres.type_brands.id;


--
-- Name: types; Type: TABLE; Schema: postgres; Owner: postgres
--

CREATE TABLE postgres.types (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE postgres.types OWNER TO postgres;

--
-- Name: types_id_seq; Type: SEQUENCE; Schema: postgres; Owner: postgres
--

CREATE SEQUENCE postgres.types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE postgres.types_id_seq OWNER TO postgres;

--
-- Name: types_id_seq; Type: SEQUENCE OWNED BY; Schema: postgres; Owner: postgres
--

ALTER SEQUENCE postgres.types_id_seq OWNED BY postgres.types.id;


--
-- Name: users; Type: TABLE; Schema: postgres; Owner: postgres
--

CREATE TABLE postgres.users (
    id integer NOT NULL,
    email character varying(255),
    password character varying(255),
    role character varying(255) DEFAULT 'USER'::character varying,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE postgres.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: postgres; Owner: postgres
--

CREATE SEQUENCE postgres.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE postgres.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: postgres; Owner: postgres
--

ALTER SEQUENCE postgres.users_id_seq OWNED BY postgres.users.id;


--
-- Name: basket_devices; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.basket_devices (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "basketId" integer,
    "deviceId" integer
);


ALTER TABLE public.basket_devices OWNER TO postgres;

--
-- Name: basket_devices_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.basket_devices_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.basket_devices_id_seq OWNER TO postgres;

--
-- Name: basket_devices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.basket_devices_id_seq OWNED BY public.basket_devices.id;


--
-- Name: baskets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.baskets (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" integer
);


ALTER TABLE public.baskets OWNER TO postgres;

--
-- Name: baskets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.baskets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.baskets_id_seq OWNER TO postgres;

--
-- Name: baskets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.baskets_id_seq OWNED BY public.baskets.id;


--
-- Name: brands; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.brands (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.brands OWNER TO postgres;

--
-- Name: brands_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.brands_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.brands_id_seq OWNER TO postgres;

--
-- Name: brands_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.brands_id_seq OWNED BY public.brands.id;


--
-- Name: device_infos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.device_infos (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    description character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "deviceId" integer
);


ALTER TABLE public.device_infos OWNER TO postgres;

--
-- Name: device_infos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.device_infos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.device_infos_id_seq OWNER TO postgres;

--
-- Name: device_infos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.device_infos_id_seq OWNED BY public.device_infos.id;


--
-- Name: devices; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.devices (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    price integer NOT NULL,
    rating integer DEFAULT 0,
    img character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "typeId" integer,
    "brandId" integer
);


ALTER TABLE public.devices OWNER TO postgres;

--
-- Name: devices_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.devices_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.devices_id_seq OWNER TO postgres;

--
-- Name: devices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.devices_id_seq OWNED BY public.devices.id;


--
-- Name: myStore; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."myStore" (
    c1 text
);


ALTER TABLE public."myStore" OWNER TO postgres;

--
-- Name: ratings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ratings (
    id integer NOT NULL,
    rate character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" integer,
    "deviceId" integer
);


ALTER TABLE public.ratings OWNER TO postgres;

--
-- Name: ratings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ratings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ratings_id_seq OWNER TO postgres;

--
-- Name: ratings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ratings_id_seq OWNED BY public.ratings.id;


--
-- Name: type_brands; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.type_brands (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "typeId" integer,
    "brandId" integer
);


ALTER TABLE public.type_brands OWNER TO postgres;

--
-- Name: type_brands_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.type_brands_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.type_brands_id_seq OWNER TO postgres;

--
-- Name: type_brands_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.type_brands_id_seq OWNED BY public.type_brands.id;


--
-- Name: types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.types (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.types OWNER TO postgres;

--
-- Name: types_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.types_id_seq OWNER TO postgres;

--
-- Name: types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.types_id_seq OWNED BY public.types.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    email character varying(255),
    password character varying(255),
    role character varying(255) DEFAULT 'USER'::character varying,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: brand id; Type: DEFAULT; Schema: db-store; Owner: postgres
--

ALTER TABLE ONLY "db-store".brand ALTER COLUMN id SET DEFAULT nextval('"db-store".brand_id_seq'::regclass);


--
-- Name: basket_devices id; Type: DEFAULT; Schema: postgres; Owner: postgres
--

ALTER TABLE ONLY postgres.basket_devices ALTER COLUMN id SET DEFAULT nextval('postgres.basket_devices_id_seq'::regclass);


--
-- Name: baskets id; Type: DEFAULT; Schema: postgres; Owner: postgres
--

ALTER TABLE ONLY postgres.baskets ALTER COLUMN id SET DEFAULT nextval('postgres.baskets_id_seq'::regclass);


--
-- Name: brands id; Type: DEFAULT; Schema: postgres; Owner: postgres
--

ALTER TABLE ONLY postgres.brands ALTER COLUMN id SET DEFAULT nextval('postgres.brands_id_seq'::regclass);


--
-- Name: device_infos id; Type: DEFAULT; Schema: postgres; Owner: postgres
--

ALTER TABLE ONLY postgres.device_infos ALTER COLUMN id SET DEFAULT nextval('postgres.device_infos_id_seq'::regclass);


--
-- Name: devices id; Type: DEFAULT; Schema: postgres; Owner: postgres
--

ALTER TABLE ONLY postgres.devices ALTER COLUMN id SET DEFAULT nextval('postgres.devices_id_seq'::regclass);


--
-- Name: ratings id; Type: DEFAULT; Schema: postgres; Owner: postgres
--

ALTER TABLE ONLY postgres.ratings ALTER COLUMN id SET DEFAULT nextval('postgres.ratings_id_seq'::regclass);


--
-- Name: table_name id; Type: DEFAULT; Schema: postgres; Owner: postgres
--

ALTER TABLE ONLY postgres.table_name ALTER COLUMN id SET DEFAULT nextval('postgres.table_name_id_seq'::regclass);


--
-- Name: type_brands id; Type: DEFAULT; Schema: postgres; Owner: postgres
--

ALTER TABLE ONLY postgres.type_brands ALTER COLUMN id SET DEFAULT nextval('postgres.type_brands_id_seq'::regclass);


--
-- Name: types id; Type: DEFAULT; Schema: postgres; Owner: postgres
--

ALTER TABLE ONLY postgres.types ALTER COLUMN id SET DEFAULT nextval('postgres.types_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: postgres; Owner: postgres
--

ALTER TABLE ONLY postgres.users ALTER COLUMN id SET DEFAULT nextval('postgres.users_id_seq'::regclass);


--
-- Name: basket_devices id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basket_devices ALTER COLUMN id SET DEFAULT nextval('public.basket_devices_id_seq'::regclass);


--
-- Name: baskets id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.baskets ALTER COLUMN id SET DEFAULT nextval('public.baskets_id_seq'::regclass);


--
-- Name: brands id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brands ALTER COLUMN id SET DEFAULT nextval('public.brands_id_seq'::regclass);


--
-- Name: device_infos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.device_infos ALTER COLUMN id SET DEFAULT nextval('public.device_infos_id_seq'::regclass);


--
-- Name: devices id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.devices ALTER COLUMN id SET DEFAULT nextval('public.devices_id_seq'::regclass);


--
-- Name: ratings id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ratings ALTER COLUMN id SET DEFAULT nextval('public.ratings_id_seq'::regclass);


--
-- Name: type_brands id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.type_brands ALTER COLUMN id SET DEFAULT nextval('public.type_brands_id_seq'::regclass);


--
-- Name: types id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.types ALTER COLUMN id SET DEFAULT nextval('public.types_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Name: brand brand_pk; Type: CONSTRAINT; Schema: db-store; Owner: postgres
--

ALTER TABLE ONLY "db-store".brand
    ADD CONSTRAINT brand_pk PRIMARY KEY (id);


--
-- Name: basket_devices basket_devices_pkey; Type: CONSTRAINT; Schema: postgres; Owner: postgres
--

ALTER TABLE ONLY postgres.basket_devices
    ADD CONSTRAINT basket_devices_pkey PRIMARY KEY (id);


--
-- Name: baskets baskets_pkey; Type: CONSTRAINT; Schema: postgres; Owner: postgres
--

ALTER TABLE ONLY postgres.baskets
    ADD CONSTRAINT baskets_pkey PRIMARY KEY (id);


--
-- Name: brands brands_name_key; Type: CONSTRAINT; Schema: postgres; Owner: postgres
--

ALTER TABLE ONLY postgres.brands
    ADD CONSTRAINT brands_name_key UNIQUE (name);


--
-- Name: brands brands_pkey; Type: CONSTRAINT; Schema: postgres; Owner: postgres
--

ALTER TABLE ONLY postgres.brands
    ADD CONSTRAINT brands_pkey PRIMARY KEY (id);


--
-- Name: device_infos device_infos_pkey; Type: CONSTRAINT; Schema: postgres; Owner: postgres
--

ALTER TABLE ONLY postgres.device_infos
    ADD CONSTRAINT device_infos_pkey PRIMARY KEY (id);


--
-- Name: devices devices_name_key; Type: CONSTRAINT; Schema: postgres; Owner: postgres
--

ALTER TABLE ONLY postgres.devices
    ADD CONSTRAINT devices_name_key UNIQUE (name);


--
-- Name: devices devices_pkey; Type: CONSTRAINT; Schema: postgres; Owner: postgres
--

ALTER TABLE ONLY postgres.devices
    ADD CONSTRAINT devices_pkey PRIMARY KEY (id);


--
-- Name: ratings ratings_pkey; Type: CONSTRAINT; Schema: postgres; Owner: postgres
--

ALTER TABLE ONLY postgres.ratings
    ADD CONSTRAINT ratings_pkey PRIMARY KEY (id);


--
-- Name: table_name table_name_pk; Type: CONSTRAINT; Schema: postgres; Owner: postgres
--

ALTER TABLE ONLY postgres.table_name
    ADD CONSTRAINT table_name_pk PRIMARY KEY (id);


--
-- Name: type_brands type_brands_pkey; Type: CONSTRAINT; Schema: postgres; Owner: postgres
--

ALTER TABLE ONLY postgres.type_brands
    ADD CONSTRAINT type_brands_pkey PRIMARY KEY (id);


--
-- Name: type_brands type_brands_typeId_brandId_key; Type: CONSTRAINT; Schema: postgres; Owner: postgres
--

ALTER TABLE ONLY postgres.type_brands
    ADD CONSTRAINT "type_brands_typeId_brandId_key" UNIQUE ("typeId", "brandId");


--
-- Name: types types_name_key; Type: CONSTRAINT; Schema: postgres; Owner: postgres
--

ALTER TABLE ONLY postgres.types
    ADD CONSTRAINT types_name_key UNIQUE (name);


--
-- Name: types types_pkey; Type: CONSTRAINT; Schema: postgres; Owner: postgres
--

ALTER TABLE ONLY postgres.types
    ADD CONSTRAINT types_pkey PRIMARY KEY (id);


--
-- Name: users users_email_key; Type: CONSTRAINT; Schema: postgres; Owner: postgres
--

ALTER TABLE ONLY postgres.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: postgres; Owner: postgres
--

ALTER TABLE ONLY postgres.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: basket_devices basket_devices_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basket_devices
    ADD CONSTRAINT basket_devices_pkey PRIMARY KEY (id);


--
-- Name: baskets baskets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.baskets
    ADD CONSTRAINT baskets_pkey PRIMARY KEY (id);


--
-- Name: brands brands_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brands
    ADD CONSTRAINT brands_name_key UNIQUE (name);


--
-- Name: brands brands_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brands
    ADD CONSTRAINT brands_pkey PRIMARY KEY (id);


--
-- Name: device_infos device_infos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.device_infos
    ADD CONSTRAINT device_infos_pkey PRIMARY KEY (id);


--
-- Name: devices devices_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.devices
    ADD CONSTRAINT devices_name_key UNIQUE (name);


--
-- Name: devices devices_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.devices
    ADD CONSTRAINT devices_pkey PRIMARY KEY (id);


--
-- Name: ratings ratings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_pkey PRIMARY KEY (id);


--
-- Name: type_brands type_brands_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.type_brands
    ADD CONSTRAINT type_brands_pkey PRIMARY KEY (id);


--
-- Name: type_brands type_brands_typeId_brandId_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.type_brands
    ADD CONSTRAINT "type_brands_typeId_brandId_key" UNIQUE ("typeId", "brandId");


--
-- Name: types types_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.types
    ADD CONSTRAINT types_name_key UNIQUE (name);


--
-- Name: types types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.types
    ADD CONSTRAINT types_pkey PRIMARY KEY (id);


--
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: brand_name_uindex; Type: INDEX; Schema: db-store; Owner: postgres
--

CREATE UNIQUE INDEX brand_name_uindex ON "db-store".brand USING btree (name);


--
-- Name: table_name_name_uindex; Type: INDEX; Schema: postgres; Owner: postgres
--

CREATE UNIQUE INDEX table_name_name_uindex ON postgres.table_name USING btree (name);


--
-- Name: basket_devices basket_devices_basketId_fkey; Type: FK CONSTRAINT; Schema: postgres; Owner: postgres
--

ALTER TABLE ONLY postgres.basket_devices
    ADD CONSTRAINT "basket_devices_basketId_fkey" FOREIGN KEY ("basketId") REFERENCES postgres.baskets(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: basket_devices basket_devices_deviceId_fkey; Type: FK CONSTRAINT; Schema: postgres; Owner: postgres
--

ALTER TABLE ONLY postgres.basket_devices
    ADD CONSTRAINT "basket_devices_deviceId_fkey" FOREIGN KEY ("deviceId") REFERENCES postgres.devices(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: baskets baskets_userId_fkey; Type: FK CONSTRAINT; Schema: postgres; Owner: postgres
--

ALTER TABLE ONLY postgres.baskets
    ADD CONSTRAINT "baskets_userId_fkey" FOREIGN KEY ("userId") REFERENCES postgres.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: device_infos device_infos_deviceId_fkey; Type: FK CONSTRAINT; Schema: postgres; Owner: postgres
--

ALTER TABLE ONLY postgres.device_infos
    ADD CONSTRAINT "device_infos_deviceId_fkey" FOREIGN KEY ("deviceId") REFERENCES postgres.devices(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: devices devices_brandId_fkey; Type: FK CONSTRAINT; Schema: postgres; Owner: postgres
--

ALTER TABLE ONLY postgres.devices
    ADD CONSTRAINT "devices_brandId_fkey" FOREIGN KEY ("brandId") REFERENCES postgres.brands(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: devices devices_typeId_fkey; Type: FK CONSTRAINT; Schema: postgres; Owner: postgres
--

ALTER TABLE ONLY postgres.devices
    ADD CONSTRAINT "devices_typeId_fkey" FOREIGN KEY ("typeId") REFERENCES postgres.types(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: ratings ratings_deviceId_fkey; Type: FK CONSTRAINT; Schema: postgres; Owner: postgres
--

ALTER TABLE ONLY postgres.ratings
    ADD CONSTRAINT "ratings_deviceId_fkey" FOREIGN KEY ("deviceId") REFERENCES postgres.devices(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: ratings ratings_userId_fkey; Type: FK CONSTRAINT; Schema: postgres; Owner: postgres
--

ALTER TABLE ONLY postgres.ratings
    ADD CONSTRAINT "ratings_userId_fkey" FOREIGN KEY ("userId") REFERENCES postgres.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: type_brands type_brands_brandId_fkey; Type: FK CONSTRAINT; Schema: postgres; Owner: postgres
--

ALTER TABLE ONLY postgres.type_brands
    ADD CONSTRAINT "type_brands_brandId_fkey" FOREIGN KEY ("brandId") REFERENCES postgres.brands(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: type_brands type_brands_typeId_fkey; Type: FK CONSTRAINT; Schema: postgres; Owner: postgres
--

ALTER TABLE ONLY postgres.type_brands
    ADD CONSTRAINT "type_brands_typeId_fkey" FOREIGN KEY ("typeId") REFERENCES postgres.types(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: basket_devices basket_devices_basketId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basket_devices
    ADD CONSTRAINT "basket_devices_basketId_fkey" FOREIGN KEY ("basketId") REFERENCES public.baskets(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: basket_devices basket_devices_deviceId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basket_devices
    ADD CONSTRAINT "basket_devices_deviceId_fkey" FOREIGN KEY ("deviceId") REFERENCES public.devices(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: baskets baskets_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.baskets
    ADD CONSTRAINT "baskets_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: device_infos device_infos_deviceId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.device_infos
    ADD CONSTRAINT "device_infos_deviceId_fkey" FOREIGN KEY ("deviceId") REFERENCES public.devices(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: devices devices_brandId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.devices
    ADD CONSTRAINT "devices_brandId_fkey" FOREIGN KEY ("brandId") REFERENCES public.brands(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: devices devices_typeId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.devices
    ADD CONSTRAINT "devices_typeId_fkey" FOREIGN KEY ("typeId") REFERENCES public.types(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: ratings ratings_deviceId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT "ratings_deviceId_fkey" FOREIGN KEY ("deviceId") REFERENCES public.devices(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: ratings ratings_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT "ratings_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: type_brands type_brands_brandId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.type_brands
    ADD CONSTRAINT "type_brands_brandId_fkey" FOREIGN KEY ("brandId") REFERENCES public.brands(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: type_brands type_brands_typeId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.type_brands
    ADD CONSTRAINT "type_brands_typeId_fkey" FOREIGN KEY ("typeId") REFERENCES public.types(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--


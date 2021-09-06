--
-- PostgreSQL database dump
--

-- Dumped from database version 13.4
-- Dumped by pg_dump version 13.4

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
-- Name: accounts_accounts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.accounts_accounts (
    id bigint NOT NULL,
    password character varying(128) NOT NULL,
    email character varying(60) NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(255) NOT NULL,
    last_name character varying(255) NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    last_login timestamp with time zone NOT NULL,
    is_admin boolean NOT NULL,
    is_active boolean NOT NULL,
    is_staff boolean NOT NULL,
    is_superuser boolean NOT NULL,
    profile_image character varying(255),
    address text NOT NULL,
    phone character varying(50) NOT NULL
);


ALTER TABLE public.accounts_accounts OWNER TO postgres;

--
-- Name: accounts_accounts_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.accounts_accounts_groups (
    id bigint NOT NULL,
    accounts_id bigint NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.accounts_accounts_groups OWNER TO postgres;

--
-- Name: accounts_accounts_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.accounts_accounts_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.accounts_accounts_groups_id_seq OWNER TO postgres;

--
-- Name: accounts_accounts_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.accounts_accounts_groups_id_seq OWNED BY public.accounts_accounts_groups.id;


--
-- Name: accounts_accounts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.accounts_accounts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.accounts_accounts_id_seq OWNER TO postgres;

--
-- Name: accounts_accounts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.accounts_accounts_id_seq OWNED BY public.accounts_accounts.id;


--
-- Name: accounts_accounts_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.accounts_accounts_user_permissions (
    id bigint NOT NULL,
    accounts_id bigint NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.accounts_accounts_user_permissions OWNER TO postgres;

--
-- Name: accounts_accounts_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.accounts_accounts_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.accounts_accounts_user_permissions_id_seq OWNER TO postgres;

--
-- Name: accounts_accounts_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.accounts_accounts_user_permissions_id_seq OWNED BY public.accounts_accounts_user_permissions.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: clientApp_article; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."clientApp_article" (
    id bigint NOT NULL,
    article character varying(255),
    headline character varying(255),
    accounts_id bigint
);


ALTER TABLE public."clientApp_article" OWNER TO postgres;

--
-- Name: clientApp_article_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."clientApp_article_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."clientApp_article_id_seq" OWNER TO postgres;

--
-- Name: clientApp_article_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."clientApp_article_id_seq" OWNED BY public."clientApp_article".id;


--
-- Name: clientApp_education; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."clientApp_education" (
    id bigint NOT NULL,
    school character varying(200),
    degree character varying(200),
    start_date character varying(200),
    end_date character varying(200),
    city character varying(200),
    personaldetails_id bigint
);


ALTER TABLE public."clientApp_education" OWNER TO postgres;

--
-- Name: clientApp_education_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."clientApp_education_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."clientApp_education_id_seq" OWNER TO postgres;

--
-- Name: clientApp_education_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."clientApp_education_id_seq" OWNED BY public."clientApp_education".id;


--
-- Name: clientApp_employmenthistory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."clientApp_employmenthistory" (
    id bigint NOT NULL,
    "JobTitle" character varying(200),
    start_date character varying(200),
    end_date character varying(200),
    employer character varying(200),
    city character varying(200),
    description text,
    personaldetails_id bigint
);


ALTER TABLE public."clientApp_employmenthistory" OWNER TO postgres;

--
-- Name: clientApp_employmenthistory_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."clientApp_employmenthistory_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."clientApp_employmenthistory_id_seq" OWNER TO postgres;

--
-- Name: clientApp_employmenthistory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."clientApp_employmenthistory_id_seq" OWNED BY public."clientApp_employmenthistory".id;


--
-- Name: clientApp_link; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."clientApp_link" (
    id bigint NOT NULL,
    link text,
    personaldetails_id bigint
);


ALTER TABLE public."clientApp_link" OWNER TO postgres;

--
-- Name: clientApp_link_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."clientApp_link_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."clientApp_link_id_seq" OWNER TO postgres;

--
-- Name: clientApp_link_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."clientApp_link_id_seq" OWNED BY public."clientApp_link".id;


--
-- Name: clientApp_personaldetails; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."clientApp_personaldetails" (
    id bigint NOT NULL,
    profile_image character varying(255),
    "jobTitle" character varying(200),
    fname character varying(200),
    lname character varying(200),
    email character varying(200),
    phone character varying(200),
    country character varying(200),
    city character varying(200),
    address character varying(200),
    birthplace character varying(200),
    birthdate character varying(200),
    nationality character varying(200),
    "profSummary" text,
    postalcode integer,
    accounts_id bigint,
    CONSTRAINT "clientApp_personaldetails_postalcode_check" CHECK ((postalcode >= 0))
);


ALTER TABLE public."clientApp_personaldetails" OWNER TO postgres;

--
-- Name: clientApp_personaldetails_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."clientApp_personaldetails_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."clientApp_personaldetails_id_seq" OWNER TO postgres;

--
-- Name: clientApp_personaldetails_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."clientApp_personaldetails_id_seq" OWNED BY public."clientApp_personaldetails".id;


--
-- Name: clientApp_reference; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."clientApp_reference" (
    id bigint NOT NULL,
    name character varying(200),
    company character varying(200),
    phone character varying(200),
    email character varying(200),
    personaldetails_id bigint
);


ALTER TABLE public."clientApp_reference" OWNER TO postgres;

--
-- Name: clientApp_reference_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."clientApp_reference_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."clientApp_reference_id_seq" OWNER TO postgres;

--
-- Name: clientApp_reference_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."clientApp_reference_id_seq" OWNED BY public."clientApp_reference".id;


--
-- Name: clientApp_skill; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."clientApp_skill" (
    id bigint NOT NULL,
    skill text,
    personaldetails_id bigint
);


ALTER TABLE public."clientApp_skill" OWNER TO postgres;

--
-- Name: clientApp_skill_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."clientApp_skill_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."clientApp_skill_id_seq" OWNER TO postgres;

--
-- Name: clientApp_skill_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."clientApp_skill_id_seq" OWNED BY public."clientApp_skill".id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id bigint NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: accounts_accounts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts_accounts ALTER COLUMN id SET DEFAULT nextval('public.accounts_accounts_id_seq'::regclass);


--
-- Name: accounts_accounts_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts_accounts_groups ALTER COLUMN id SET DEFAULT nextval('public.accounts_accounts_groups_id_seq'::regclass);


--
-- Name: accounts_accounts_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts_accounts_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.accounts_accounts_user_permissions_id_seq'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: clientApp_article id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."clientApp_article" ALTER COLUMN id SET DEFAULT nextval('public."clientApp_article_id_seq"'::regclass);


--
-- Name: clientApp_education id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."clientApp_education" ALTER COLUMN id SET DEFAULT nextval('public."clientApp_education_id_seq"'::regclass);


--
-- Name: clientApp_employmenthistory id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."clientApp_employmenthistory" ALTER COLUMN id SET DEFAULT nextval('public."clientApp_employmenthistory_id_seq"'::regclass);


--
-- Name: clientApp_link id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."clientApp_link" ALTER COLUMN id SET DEFAULT nextval('public."clientApp_link_id_seq"'::regclass);


--
-- Name: clientApp_personaldetails id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."clientApp_personaldetails" ALTER COLUMN id SET DEFAULT nextval('public."clientApp_personaldetails_id_seq"'::regclass);


--
-- Name: clientApp_reference id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."clientApp_reference" ALTER COLUMN id SET DEFAULT nextval('public."clientApp_reference_id_seq"'::regclass);


--
-- Name: clientApp_skill id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."clientApp_skill" ALTER COLUMN id SET DEFAULT nextval('public."clientApp_skill_id_seq"'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Data for Name: accounts_accounts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.accounts_accounts (id, password, email, username, first_name, last_name, date_joined, last_login, is_admin, is_active, is_staff, is_superuser, profile_image, address, phone) FROM stdin;
15	pbkdf2_sha256$260000$B7ONRYyqcOcIQ1rkqIu4Vv$IKamvN64QmpVMwGCM1s0m2AybmastBcc8J5OgJYX8nw=	erolpasion12@yahoo.com	Ddollz	karlerol	pasion	2021-09-06 21:16:25.13454+08	2021-09-06 21:16:48.911625+08	f	t	f	f	writeamImage/profile_image.png		
1	pbkdf2_sha256$260000$OtJkNlNUmk92qlHd5cXWX9$9II44V0LOjdP1w9XOvlb4108+p02WsGjFY5MtaXOgQU=	admin@a.com	admin	admin		2021-09-03 15:31:37.865925+08	2021-09-06 21:20:29.757596+08	t	t	t	t	profile_images/1/profile_image_o4FC282.png	Lakandula	09286120906
\.


--
-- Data for Name: accounts_accounts_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.accounts_accounts_groups (id, accounts_id, group_id) FROM stdin;
1	1	2
12	15	1
\.


--
-- Data for Name: accounts_accounts_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.accounts_accounts_user_permissions (id, accounts_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
1	Clients
2	HR Manager
3	HR Staff
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add content type	4	add_contenttype
14	Can change content type	4	change_contenttype
15	Can delete content type	4	delete_contenttype
16	Can view content type	4	view_contenttype
17	Can add session	5	add_session
18	Can change session	5	change_session
19	Can delete session	5	delete_session
20	Can view session	5	view_session
21	Can add accounts	6	add_accounts
22	Can change accounts	6	change_accounts
23	Can delete accounts	6	delete_accounts
24	Can view accounts	6	view_accounts
25	Can add education	7	add_education
26	Can change education	7	change_education
27	Can delete education	7	delete_education
28	Can view education	7	view_education
29	Can add link	8	add_link
30	Can change link	8	change_link
31	Can delete link	8	delete_link
32	Can view link	8	view_link
33	Can add personal details	9	add_personaldetails
34	Can change personal details	9	change_personaldetails
35	Can delete personal details	9	delete_personaldetails
36	Can view personal details	9	view_personaldetails
37	Can add employment history	10	add_employmenthistory
38	Can change employment history	10	change_employmenthistory
39	Can delete employment history	10	delete_employmenthistory
40	Can view employment history	10	view_employmenthistory
41	Can add reference	11	add_reference
42	Can change reference	11	change_reference
43	Can delete reference	11	delete_reference
44	Can view reference	11	view_reference
45	Can add skill	12	add_skill
46	Can change skill	12	change_skill
47	Can delete skill	12	delete_skill
48	Can view skill	12	view_skill
49	Can add article	13	add_article
50	Can change article	13	change_article
51	Can delete article	13	delete_article
52	Can view article	13	view_article
\.


--
-- Data for Name: clientApp_article; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."clientApp_article" (id, article, headline, accounts_id) FROM stdin;
27	article/1/IT0005-Laboratory-Exercise-9_-_Assess_Risk_with_DREAD.docx	School	1
28	article/15/CONFIDENTIALITY-UNDERTAKING-STUDENT_2.pdf	faefawfwae	15
\.


--
-- Data for Name: clientApp_education; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."clientApp_education" (id, school, degree, start_date, end_date, city, personaldetails_id) FROM stdin;
4	Gymnazo	NGANGAAAAA!!	September 2021	September 2021	Tondo	1
7	Feu Tech	BSIT SMBA	September 2021	September 2021	MANILA	1
12	a	a	September 2021	September 2021	a	9
\.


--
-- Data for Name: clientApp_employmenthistory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."clientApp_employmenthistory" (id, "JobTitle", start_date, end_date, employer, city, description, personaldetails_id) FROM stdin;
99	karl	September 2021	September 2021	Labajo	manila	aawefwaefaweg	1
100	erol	September 2021	September 2021	test	test	b	1
101	Pasion	September 2021	September 2021	writeam	City of phillipines	hahahahhaa	1
104	a	September 2021	September 2021	a	a	a	9
\.


--
-- Data for Name: clientApp_link; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."clientApp_link" (id, link, personaldetails_id) FROM stdin;
1	google.com	1
2	facebook.com	1
5	adawf	9
\.


--
-- Data for Name: clientApp_personaldetails; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."clientApp_personaldetails" (id, profile_image, "jobTitle", fname, lname, email, phone, country, city, address, birthplace, birthdate, nationality, "profSummary", postalcode, accounts_id) FROM stdin;
1	profile_images/1/profile_image.png	Admin	Admin	Admin	admin@a.com	09286120906	Philippines	Manila	Lakandula	manila	september 2000	Filipino	To finish this project karlerol	1112	1
9	profile_images/9/profile_image.png	Front-End	Karl Erol	Pasion	erolpasion12@yahoo.com	09286120906	Philippines	Manila	307D Lakandula	Manila	September 2011	filipino	NGANGA	1112	15
\.


--
-- Data for Name: clientApp_reference; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."clientApp_reference" (id, name, company, phone, email, personaldetails_id) FROM stdin;
1	Renato	Vendor	09286120906	test@yahoo.com	1
2	ericka	writeam	09286120906	ericka@yahoo.com	1
\.


--
-- Data for Name: clientApp_skill; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."clientApp_skill" (id, skill, personaldetails_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2021-09-03 15:32:10.168857+08	1	Clients	1	[{"added": {}}]	3	1
2	2021-09-03 15:32:14.011391+08	2	HR Manager	1	[{"added": {}}]	3	1
3	2021-09-03 15:32:16.046626+08	3	HR Staff	1	[{"added": {}}]	3	1
4	2021-09-03 15:32:31.029825+08	1	admin	2	[{"changed": {"fields": ["Groups", "Profile image"]}}]	6	1
5	2021-09-03 16:40:09.724865+08	1	admin	2	[{"changed": {"fields": ["First name", "Last name", "Profile image"]}}]	6	1
6	2021-09-03 21:30:27.537007+08	1	admin	2	[{"changed": {"fields": ["Profile image", "Address"]}}]	6	1
7	2021-09-03 21:31:40.624502+08	1	admin	2	[{"changed": {"fields": ["Profile image", "Phone"]}}]	6	1
9	2021-09-03 23:01:23.863181+08	1	admin	2	[{"changed": {"fields": ["Profile image"]}}]	6	1
10	2021-09-03 23:11:10.573643+08	1	admin	2	[{"changed": {"fields": ["Profile image"]}}]	6	1
11	2021-09-03 23:12:34.372102+08	1	admin	2	[{"changed": {"fields": ["Profile image"]}}]	6	1
12	2021-09-03 23:14:19.178464+08	1	admin	2	[{"changed": {"fields": ["Profile image"]}}]	6	1
13	2021-09-04 22:34:55.810889+08	2	dawd	1	[{"added": {}}]	9	1
14	2021-09-05 11:05:22.96194+08	1	test	1	[{"added": {}}]	10	1
15	2021-09-05 13:14:05.85013+08	2	erol	3		6	1
16	2021-09-05 14:41:49.904363+08	2	b	3		10	1
17	2021-09-05 14:41:53.629309+08	3	b	3		10	1
18	2021-09-05 15:13:09.265004+08	4	a	3		10	1
19	2021-09-05 15:13:13.312457+08	1	test	3		10	1
20	2021-09-05 15:25:48.254074+08	1	Admin	1	[{"added": {}}]	9	1
21	2021-09-05 15:30:08.344595+08	1	test	1	[{"added": {}}]	10	1
22	2021-09-05 15:49:04.808485+08	3	c	3		10	1
23	2021-09-05 15:49:04.813485+08	2	b	3		10	1
24	2021-09-05 16:04:36.070145+08	1	test	3		10	1
25	2021-09-05 16:07:24.367165+08	7	c	3		10	1
26	2021-09-05 16:07:24.370166+08	6	b	3		10	1
27	2021-09-05 16:07:24.371166+08	5	a	3		10	1
28	2021-09-05 16:08:58.980072+08	10	c	3		10	1
29	2021-09-05 16:08:58.984073+08	9	b	3		10	1
30	2021-09-05 16:08:58.985074+08	8	a	3		10	1
31	2021-09-05 16:08:58.985074+08	4	a	3		10	1
32	2021-09-05 16:13:17.31016+08	11	a	3		10	1
33	2021-09-05 16:18:48.224784+08	13	asfawef	3		10	1
34	2021-09-05 16:18:48.228782+08	12	a	3		10	1
35	2021-09-05 16:25:19.326388+08	17	a	3		10	1
36	2021-09-05 16:25:19.331386+08	16	b	3		10	1
37	2021-09-05 16:25:19.332088+08	15	a	3		10	1
38	2021-09-05 16:25:19.332637+08	14	a	3		10	1
39	2021-09-05 16:28:36.17505+08	19	bfawef	3		10	1
40	2021-09-05 16:28:36.181049+08	18	a	3		10	1
41	2021-09-05 16:30:19.911394+08	22	fawefaw	3		10	1
42	2021-09-05 16:30:19.914397+08	21	a	3		10	1
43	2021-09-05 16:30:19.915395+08	20	a	3		10	1
44	2021-09-05 16:51:51.073337+08	27	 	3		10	1
45	2021-09-05 16:51:51.077335+08	26	 	3		10	1
46	2021-09-05 16:51:51.077335+08	25	a	3		10	1
47	2021-09-05 17:03:24.057671+08	33	 	3		10	1
48	2021-09-05 17:03:24.059671+08	32	 	3		10	1
49	2021-09-05 17:03:24.060672+08	31	a	3		10	1
50	2021-09-05 17:31:13.395641+08	42	fawef	3		10	1
51	2021-09-05 17:31:13.398641+08	41	aafwefwaef	3		10	1
52	2021-09-05 17:31:13.399398+08	40	fawef	3		10	1
53	2021-09-05 17:31:13.399398+08	39	a	3		10	1
54	2021-09-05 18:25:34.4496+08	44	fawef	3		10	1
55	2021-09-05 18:25:34.454598+08	43	aafwefwaef	3		10	1
56	2021-09-05 19:09:40.951863+08	61	waefwa	3		10	1
57	2021-09-05 19:09:40.956864+08	60	fawewaf	3		10	1
58	2021-09-05 19:09:40.956864+08	59	fawef	3		10	1
59	2021-09-05 19:12:03.328107+08	73	c	3		10	1
60	2021-09-05 19:12:03.334106+08	72	afawefawef	3		10	1
61	2021-09-05 19:12:03.334106+08	71	afawefawfwafe	3		10	1
62	2021-09-05 19:13:07.497044+08	82	c	3		10	1
63	2021-09-05 19:13:07.501045+08	81	b	3		10	1
64	2021-09-05 19:13:07.501045+08	80	a	3		10	1
65	2021-09-06 09:09:13.614707+08	103	Karl Erol	3		10	1
66	2021-09-06 09:09:13.618103+08	102	Karl Erol	3		10	1
67	2021-09-06 09:48:43.334805+08	6	testtesttest	3		6	1
68	2021-09-06 09:49:33.04544+08	9	testtesttest	3		6	1
69	2021-09-06 09:50:43.018551+08	10	pasion	3		6	1
70	2021-09-06 10:07:12.966026+08	11	pasion	3		6	1
71	2021-09-06 10:14:19.805035+08	13	pasion	3		6	1
72	2021-09-06 11:00:58.305341+08	1	test	1	[{"added": {}}]	7	1
73	2021-09-06 11:01:04.946733+08	1	test	3		7	1
74	2021-09-06 11:43:21.532225+08	2	test	1	[{"added": {}}]	7	1
75	2021-09-06 12:06:39.598831+08	7	 	3		9	1
76	2021-09-06 12:28:18.622444+08	3	Gymnazo	3		7	1
77	2021-09-06 12:28:18.626443+08	2	Feu Tech	3		7	1
78	2021-09-06 12:49:21.994106+08	6	awefwa	3		7	1
79	2021-09-06 12:49:21.999103+08	5	awefwa	3		7	1
80	2021-09-06 13:31:44.044382+08	1	test	1	[{"added": {}}]	12	1
81	2021-09-06 13:31:57.220348+08	1	test	1	[{"added": {}}]	8	1
82	2021-09-06 13:37:16.44742+08	3	facebook.com	3		8	1
83	2021-09-06 14:32:58.647876+08	1	test	1	[{"added": {}}]	11	1
84	2021-09-06 15:04:24.459964+08	1	Admin	2	[{"changed": {"fields": ["Profile image"]}}]	9	1
85	2021-09-06 15:09:20.002501+08	1	Admin	2	[{"changed": {"fields": ["Profile image"]}}]	9	1
86	2021-09-06 15:26:20.210191+08	1	test	3		12	1
87	2021-09-06 15:28:27.303148+08	11	test	3		7	1
88	2021-09-06 15:28:27.309148+08	10	test	3		7	1
89	2021-09-06 15:28:27.309808+08	9	test	3		7	1
90	2021-09-06 15:28:27.309808+08	8	test	3		7	1
91	2021-09-06 16:50:35.411973+08	2	sad	1	[{"added": {}}]	12	1
92	2021-09-06 19:52:04.527602+08	2	TEST	1	[{"added": {}}]	13	1
93	2021-09-06 19:53:41.802419+08	2	TEST	3		13	1
94	2021-09-06 19:54:24.004941+08	3	TEST	1	[{"added": {}}]	13	1
95	2021-09-06 19:54:41.937152+08	3	TEST	3		13	1
96	2021-09-06 19:54:52.795915+08	4	trest	1	[{"added": {}}]	13	1
97	2021-09-06 19:57:30.320465+08	4	trest	3		13	1
98	2021-09-06 19:57:36.992458+08	5	test	1	[{"added": {}}]	13	1
99	2021-09-06 19:57:54.941639+08	6	TEST	1	[{"added": {}}]	13	1
100	2021-09-06 19:59:37.662339+08	6	TEST	3		13	1
101	2021-09-06 19:59:37.667372+08	5	test	3		13	1
102	2021-09-06 19:59:43.658542+08	7	TEST	1	[{"added": {}}]	13	1
103	2021-09-06 20:00:30.698574+08	7	TEST	3		13	1
104	2021-09-06 20:00:36.539697+08	8	TEST	1	[{"added": {}}]	13	1
105	2021-09-06 20:01:27.236618+08	8	test	1	[{"added": {}}]	9	1
106	2021-09-06 20:01:44.181617+08	8	test	2	[{"changed": {"fields": ["Profile image"]}}]	9	1
107	2021-09-06 20:02:19.047218+08	8	TEST	3		13	1
108	2021-09-06 20:02:26.034452+08	9	test	1	[{"added": {}}]	13	1
109	2021-09-06 20:09:14.836308+08	9	test	3		13	1
110	2021-09-06 20:09:40.06561+08	10	TEST	1	[{"added": {}}]	13	1
111	2021-09-06 20:09:45.908616+08	10	TEST	3		13	1
112	2021-09-06 20:10:30.464435+08	11	TEST	1	[{"added": {}}]	13	1
113	2021-09-06 20:10:41.739226+08	11	TEST	3		13	1
114	2021-09-06 20:10:46.625161+08	12	awrfaw	1	[{"added": {}}]	13	1
115	2021-09-06 20:11:46.714501+08	12	awrfaw	2	[{"changed": {"fields": ["Article"]}}]	13	1
116	2021-09-06 20:12:07.143973+08	12	awrfaw	2	[{"changed": {"fields": ["Article"]}}]	13	1
117	2021-09-06 20:12:32.175558+08	13	awrfaw	1	[{"added": {}}]	13	1
118	2021-09-06 20:12:38.300891+08	13	awrfaw	3		13	1
119	2021-09-06 20:12:38.304888+08	12	awrfaw	3		13	1
120	2021-09-06 20:13:54.038209+08	14	TEST	1	[{"added": {}}]	13	1
121	2021-09-06 20:25:38.92146+08	14	TEST	3		13	1
122	2021-09-06 20:45:35.32623+08	15	fawefwaef	3		13	1
123	2021-09-06 20:45:41.840928+08	16	test	1	[{"added": {}}]	13	1
124	2021-09-06 20:45:50.615691+08	16	test	3		13	1
125	2021-09-06 20:45:56.295128+08	17	TEST	1	[{"added": {}}]	13	1
126	2021-09-06 20:46:02.807618+08	17	TEST	3		13	1
127	2021-09-06 20:46:58.985524+08	18	fawefwaef	3		13	1
128	2021-09-06 20:50:05.760681+08	19	TEST	1	[{"added": {}}]	13	1
129	2021-09-06 20:50:35.008704+08	19	TEST	3		13	1
130	2021-09-06 20:50:42.255681+08	20	awfaf	1	[{"added": {}}]	13	1
131	2021-09-06 20:50:58.902516+08	20	awfaf	3		13	1
132	2021-09-06 20:51:05.435621+08	21	afwefaw	1	[{"added": {}}]	13	1
133	2021-09-06 20:51:22.34913+08	21	afwefaw	3		13	1
134	2021-09-06 20:51:29.239534+08	22	awefawfe	1	[{"added": {}}]	13	1
135	2021-09-06 20:51:43.736777+08	22	awefawfe	3		13	1
136	2021-09-06 20:55:33.849605+08	23	efeawf	1	[{"added": {}}]	13	1
137	2021-09-06 20:55:53.524693+08	23	efeawf	2	[{"changed": {"fields": ["Article"]}}]	13	1
138	2021-09-06 20:56:01.436093+08	23	efeawf	3		13	1
139	2021-09-06 20:57:35.853782+08	24	gavaesg	1	[{"added": {}}]	13	1
140	2021-09-06 20:58:24.257695+08	24	gavaesg	3		13	1
141	2021-09-06 21:00:20.837642+08	25	TEST	1	[{"added": {}}]	13	1
142	2021-09-06 21:02:24.269813+08	25	TEST	3		13	1
143	2021-09-06 21:02:30.621807+08	26	test	1	[{"added": {}}]	13	1
144	2021-09-06 21:03:01.503531+08	26	test	3		13	1
145	2021-09-06 21:03:49.976582+08	27	test	1	[{"added": {}}]	13	1
146	2021-09-06 21:07:54.696058+08	27	testawefwafe	2	[{"changed": {"fields": ["Article"]}}]	13	1
147	2021-09-06 21:15:43.09003+08	5	fawefaw	3		6	1
148	2021-09-06 21:15:43.09503+08	14	pasion	3		6	1
149	2021-09-06 21:15:43.09503+08	3	test	3		6	1
150	2021-09-06 21:15:43.09603+08	4	tests	3		6	1
151	2021-09-06 21:21:10.01+08	6	awf	3		12	1
152	2021-09-06 21:21:10.014+08	5	awfawf	3		12	1
153	2021-09-06 21:21:10.014+08	4	awfawf	3		12	1
154	2021-09-06 21:21:10.014999+08	3	test	3		12	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	contenttypes	contenttype
5	sessions	session
6	accounts	accounts
7	clientApp	education
8	clientApp	link
9	clientApp	personaldetails
10	clientApp	employmenthistory
11	clientApp	reference
12	clientApp	skill
13	clientApp	article
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-09-03 15:30:37.70247+08
2	contenttypes	0002_remove_content_type_name	2021-09-03 15:30:37.708469+08
3	auth	0001_initial	2021-09-03 15:30:37.74017+08
4	auth	0002_alter_permission_name_max_length	2021-09-03 15:30:37.74317+08
5	auth	0003_alter_user_email_max_length	2021-09-03 15:30:37.746171+08
6	auth	0004_alter_user_username_opts	2021-09-03 15:30:37.750171+08
7	auth	0005_alter_user_last_login_null	2021-09-03 15:30:37.753171+08
8	auth	0006_require_contenttypes_0002	2021-09-03 15:30:37.754172+08
9	auth	0007_alter_validators_add_error_messages	2021-09-03 15:30:37.75717+08
10	auth	0008_alter_user_username_max_length	2021-09-03 15:30:37.760548+08
11	auth	0009_alter_user_last_name_max_length	2021-09-03 15:30:37.76355+08
12	auth	0010_alter_group_name_max_length	2021-09-03 15:30:37.77055+08
13	auth	0011_update_proxy_permissions	2021-09-03 15:30:37.77455+08
14	auth	0012_alter_user_first_name_max_length	2021-09-03 15:30:37.777058+08
15	accounts	0001_initial	2021-09-03 15:30:37.812104+08
16	admin	0001_initial	2021-09-03 15:30:37.827104+08
17	admin	0002_logentry_remove_auto_add	2021-09-03 15:30:37.832104+08
18	admin	0003_logentry_add_action_flag_choices	2021-09-03 15:30:37.836557+08
19	sessions	0001_initial	2021-09-03 15:30:37.846104+08
20	accounts	0002_alter_accounts_managers	2021-09-03 15:56:43.950595+08
21	accounts	0003_accounts_phone	2021-09-03 21:31:26.816373+08
23	clientApp	0002_alter_personaldetails_profile_image	2021-09-04 23:30:55.013082+08
24	clientApp	0003_alter_employmenthistory_description	2021-09-05 10:55:55.764779+08
25	clientApp	0001_initial	2021-09-05 15:24:04.021908+08
26	clientApp	0002_rename_personal_employmenthistory_personaldetails	2021-09-05 15:31:52.191357+08
27	clientApp	0003_auto_20210906_1050	2021-09-06 10:50:09.825034+08
28	clientApp	0004_article	2021-09-06 19:48:39.04535+08
29	clientApp	0005_article_headline	2021-09-06 19:50:59.331592+08
30	clientApp	0006_auto_20210906_2002	2021-09-06 20:02:09.178222+08
31	clientApp	0007_rename_account_article_accounts	2021-09-06 20:33:31.016575+08
32	clientApp	0008_rename_accounts_article_account	2021-09-06 20:43:55.514017+08
33	clientApp	0009_auto_20210906_2049	2021-09-06 20:49:54.042178+08
34	clientApp	0010_auto_20210906_2053	2021-09-06 20:53:32.870761+08
35	clientApp	0011_rename_account_article_accounts	2021-09-06 20:57:24.033366+08
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
76olux0tdlztxin26pjflckq9zg5d893	.eJxVjTEPwiAUhP8LsyEthIe46e7oTF55D6kSSEobB-N_t0066HLD3X13b-FxmZNfGk9-JHESvTj8egOGJ5ctoAeWe5WhlnkaB7lV5J42ec65vla5rUy7VuJ82cG_tYQtbR9MOkYGtMwGIIAJCq1TYB0q1o6i6UhDDAq0Cb0CdTSInWOKzsTOis8XbEs9Qw:1mNEY1:rAtVKysbhN9i4JFFFL1azAXKzFYosDKvuTNUJVncWxw	2021-09-20 21:20:29.759596+08
\.


--
-- Name: accounts_accounts_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.accounts_accounts_groups_id_seq', 12, true);


--
-- Name: accounts_accounts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.accounts_accounts_id_seq', 15, true);


--
-- Name: accounts_accounts_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.accounts_accounts_user_permissions_id_seq', 1, false);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 3, true);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 52, true);


--
-- Name: clientApp_article_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."clientApp_article_id_seq"', 28, true);


--
-- Name: clientApp_education_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."clientApp_education_id_seq"', 12, true);


--
-- Name: clientApp_employmenthistory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."clientApp_employmenthistory_id_seq"', 104, true);


--
-- Name: clientApp_link_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."clientApp_link_id_seq"', 5, true);


--
-- Name: clientApp_personaldetails_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."clientApp_personaldetails_id_seq"', 9, true);


--
-- Name: clientApp_reference_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."clientApp_reference_id_seq"', 2, true);


--
-- Name: clientApp_skill_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."clientApp_skill_id_seq"', 6, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 154, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 35, true);


--
-- Name: accounts_accounts accounts_accounts_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts_accounts
    ADD CONSTRAINT accounts_accounts_email_key UNIQUE (email);


--
-- Name: accounts_accounts_groups accounts_accounts_groups_accounts_id_group_id_fe616882_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts_accounts_groups
    ADD CONSTRAINT accounts_accounts_groups_accounts_id_group_id_fe616882_uniq UNIQUE (accounts_id, group_id);


--
-- Name: accounts_accounts_groups accounts_accounts_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts_accounts_groups
    ADD CONSTRAINT accounts_accounts_groups_pkey PRIMARY KEY (id);


--
-- Name: accounts_accounts accounts_accounts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts_accounts
    ADD CONSTRAINT accounts_accounts_pkey PRIMARY KEY (id);


--
-- Name: accounts_accounts_user_permissions accounts_accounts_user_p_accounts_id_permission_i_310c5a2e_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts_accounts_user_permissions
    ADD CONSTRAINT accounts_accounts_user_p_accounts_id_permission_i_310c5a2e_uniq UNIQUE (accounts_id, permission_id);


--
-- Name: accounts_accounts_user_permissions accounts_accounts_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts_accounts_user_permissions
    ADD CONSTRAINT accounts_accounts_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: accounts_accounts accounts_accounts_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts_accounts
    ADD CONSTRAINT accounts_accounts_username_key UNIQUE (username);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: clientApp_article clientApp_article_account_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."clientApp_article"
    ADD CONSTRAINT "clientApp_article_account_id_key" UNIQUE (accounts_id);


--
-- Name: clientApp_article clientApp_article_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."clientApp_article"
    ADD CONSTRAINT "clientApp_article_pkey" PRIMARY KEY (id);


--
-- Name: clientApp_education clientApp_education_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."clientApp_education"
    ADD CONSTRAINT "clientApp_education_pkey" PRIMARY KEY (id);


--
-- Name: clientApp_employmenthistory clientApp_employmenthistory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."clientApp_employmenthistory"
    ADD CONSTRAINT "clientApp_employmenthistory_pkey" PRIMARY KEY (id);


--
-- Name: clientApp_link clientApp_link_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."clientApp_link"
    ADD CONSTRAINT "clientApp_link_pkey" PRIMARY KEY (id);


--
-- Name: clientApp_personaldetails clientApp_personaldetails_accounts_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."clientApp_personaldetails"
    ADD CONSTRAINT "clientApp_personaldetails_accounts_id_key" UNIQUE (accounts_id);


--
-- Name: clientApp_personaldetails clientApp_personaldetails_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."clientApp_personaldetails"
    ADD CONSTRAINT "clientApp_personaldetails_pkey" PRIMARY KEY (id);


--
-- Name: clientApp_reference clientApp_reference_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."clientApp_reference"
    ADD CONSTRAINT "clientApp_reference_pkey" PRIMARY KEY (id);


--
-- Name: clientApp_skill clientApp_skill_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."clientApp_skill"
    ADD CONSTRAINT "clientApp_skill_pkey" PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: accounts_accounts_email_da8a4382_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX accounts_accounts_email_da8a4382_like ON public.accounts_accounts USING btree (email varchar_pattern_ops);


--
-- Name: accounts_accounts_groups_accounts_id_a094314b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX accounts_accounts_groups_accounts_id_a094314b ON public.accounts_accounts_groups USING btree (accounts_id);


--
-- Name: accounts_accounts_groups_group_id_d2af1629; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX accounts_accounts_groups_group_id_d2af1629 ON public.accounts_accounts_groups USING btree (group_id);


--
-- Name: accounts_accounts_user_permissions_accounts_id_001e820c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX accounts_accounts_user_permissions_accounts_id_001e820c ON public.accounts_accounts_user_permissions USING btree (accounts_id);


--
-- Name: accounts_accounts_user_permissions_permission_id_7df1f232; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX accounts_accounts_user_permissions_permission_id_7df1f232 ON public.accounts_accounts_user_permissions USING btree (permission_id);


--
-- Name: accounts_accounts_username_a6d49ba5_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX accounts_accounts_username_a6d49ba5_like ON public.accounts_accounts USING btree (username varchar_pattern_ops);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: clientApp_education_personaldetails_id_82358fb9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "clientApp_education_personaldetails_id_82358fb9" ON public."clientApp_education" USING btree (personaldetails_id);


--
-- Name: clientApp_employmenthistory_personal_id_ff36d4f7; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "clientApp_employmenthistory_personal_id_ff36d4f7" ON public."clientApp_employmenthistory" USING btree (personaldetails_id);


--
-- Name: clientApp_link_personaldetails_id_67dd0eb9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "clientApp_link_personaldetails_id_67dd0eb9" ON public."clientApp_link" USING btree (personaldetails_id);


--
-- Name: clientApp_reference_personaldetails_id_e266ad92; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "clientApp_reference_personaldetails_id_e266ad92" ON public."clientApp_reference" USING btree (personaldetails_id);


--
-- Name: clientApp_skill_personaldetails_id_57a81148; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "clientApp_skill_personaldetails_id_57a81148" ON public."clientApp_skill" USING btree (personaldetails_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: accounts_accounts_groups accounts_accounts_gr_accounts_id_a094314b_fk_accounts_; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts_accounts_groups
    ADD CONSTRAINT accounts_accounts_gr_accounts_id_a094314b_fk_accounts_ FOREIGN KEY (accounts_id) REFERENCES public.accounts_accounts(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: accounts_accounts_groups accounts_accounts_groups_group_id_d2af1629_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts_accounts_groups
    ADD CONSTRAINT accounts_accounts_groups_group_id_d2af1629_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: accounts_accounts_user_permissions accounts_accounts_us_accounts_id_001e820c_fk_accounts_; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts_accounts_user_permissions
    ADD CONSTRAINT accounts_accounts_us_accounts_id_001e820c_fk_accounts_ FOREIGN KEY (accounts_id) REFERENCES public.accounts_accounts(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: accounts_accounts_user_permissions accounts_accounts_us_permission_id_7df1f232_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts_accounts_user_permissions
    ADD CONSTRAINT accounts_accounts_us_permission_id_7df1f232_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: clientApp_article clientApp_article_accounts_id_674b4325_fk_accounts_accounts_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."clientApp_article"
    ADD CONSTRAINT "clientApp_article_accounts_id_674b4325_fk_accounts_accounts_id" FOREIGN KEY (accounts_id) REFERENCES public.accounts_accounts(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: clientApp_education clientApp_education_personaldetails_id_82358fb9_fk_clientApp; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."clientApp_education"
    ADD CONSTRAINT "clientApp_education_personaldetails_id_82358fb9_fk_clientApp" FOREIGN KEY (personaldetails_id) REFERENCES public."clientApp_personaldetails"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: clientApp_employmenthistory clientApp_employment_personaldetails_id_e915ace6_fk_clientApp; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."clientApp_employmenthistory"
    ADD CONSTRAINT "clientApp_employment_personaldetails_id_e915ace6_fk_clientApp" FOREIGN KEY (personaldetails_id) REFERENCES public."clientApp_personaldetails"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: clientApp_link clientApp_link_personaldetails_id_67dd0eb9_fk_clientApp; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."clientApp_link"
    ADD CONSTRAINT "clientApp_link_personaldetails_id_67dd0eb9_fk_clientApp" FOREIGN KEY (personaldetails_id) REFERENCES public."clientApp_personaldetails"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: clientApp_personaldetails clientApp_personalde_accounts_id_9070254b_fk_accounts_; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."clientApp_personaldetails"
    ADD CONSTRAINT "clientApp_personalde_accounts_id_9070254b_fk_accounts_" FOREIGN KEY (accounts_id) REFERENCES public.accounts_accounts(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: clientApp_reference clientApp_reference_personaldetails_id_e266ad92_fk_clientApp; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."clientApp_reference"
    ADD CONSTRAINT "clientApp_reference_personaldetails_id_e266ad92_fk_clientApp" FOREIGN KEY (personaldetails_id) REFERENCES public."clientApp_personaldetails"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: clientApp_skill clientApp_skill_personaldetails_id_57a81148_fk_clientApp; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."clientApp_skill"
    ADD CONSTRAINT "clientApp_skill_personaldetails_id_57a81148_fk_clientApp" FOREIGN KEY (personaldetails_id) REFERENCES public."clientApp_personaldetails"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_accounts_accounts_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_accounts_accounts_id FOREIGN KEY (user_id) REFERENCES public.accounts_accounts(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--


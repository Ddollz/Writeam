PGDMP     4    '                y         	   writeamdb    13.4    13.4 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    33489 	   writeamdb    DATABASE     k   CREATE DATABASE writeamdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_Philippines.1252';
    DROP DATABASE writeamdb;
                postgres    false            �            1259    33490    accounts_accounts    TABLE     {  CREATE TABLE public.accounts_accounts (
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
 %   DROP TABLE public.accounts_accounts;
       public         heap    postgres    false            �            1259    33496    accounts_accounts_groups    TABLE     �   CREATE TABLE public.accounts_accounts_groups (
    id bigint NOT NULL,
    accounts_id bigint NOT NULL,
    group_id integer NOT NULL
);
 ,   DROP TABLE public.accounts_accounts_groups;
       public         heap    postgres    false            �            1259    33499    accounts_accounts_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.accounts_accounts_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.accounts_accounts_groups_id_seq;
       public          postgres    false    201            �           0    0    accounts_accounts_groups_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.accounts_accounts_groups_id_seq OWNED BY public.accounts_accounts_groups.id;
          public          postgres    false    202            �            1259    33501    accounts_accounts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.accounts_accounts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.accounts_accounts_id_seq;
       public          postgres    false    200            �           0    0    accounts_accounts_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.accounts_accounts_id_seq OWNED BY public.accounts_accounts.id;
          public          postgres    false    203            �            1259    33503 "   accounts_accounts_user_permissions    TABLE     �   CREATE TABLE public.accounts_accounts_user_permissions (
    id bigint NOT NULL,
    accounts_id bigint NOT NULL,
    permission_id integer NOT NULL
);
 6   DROP TABLE public.accounts_accounts_user_permissions;
       public         heap    postgres    false            �            1259    33506 )   accounts_accounts_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.accounts_accounts_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.accounts_accounts_user_permissions_id_seq;
       public          postgres    false    204            �           0    0 )   accounts_accounts_user_permissions_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.accounts_accounts_user_permissions_id_seq OWNED BY public.accounts_accounts_user_permissions.id;
          public          postgres    false    205            �            1259    33794    adminApp_onboardingapplicant    TABLE     w  CREATE TABLE public."adminApp_onboardingapplicant" (
    id bigint NOT NULL,
    "jobTitle" character varying(50),
    score integer,
    accounts_id bigint,
    remarks text,
    "dateScore" timestamp with time zone NOT NULL,
    status character varying(30),
    is_active boolean NOT NULL,
    CONSTRAINT "adminApp_onboardingapplicant_score_check" CHECK ((score >= 0))
);
 2   DROP TABLE public."adminApp_onboardingapplicant";
       public         heap    postgres    false            �            1259    33792 #   adminApp_onboardingapplicant_id_seq    SEQUENCE     �   CREATE SEQUENCE public."adminApp_onboardingapplicant_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public."adminApp_onboardingapplicant_id_seq";
       public          postgres    false    234            �           0    0 #   adminApp_onboardingapplicant_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public."adminApp_onboardingapplicant_id_seq" OWNED BY public."adminApp_onboardingapplicant".id;
          public          postgres    false    233            �            1259    33508 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    33511    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    206            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    207            �            1259    33513    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    33516    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    208            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    209            �            1259    33518    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    33521    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    210            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    211            �            1259    33523    clientApp_article    TABLE     �   CREATE TABLE public."clientApp_article" (
    id bigint NOT NULL,
    article character varying(255),
    headline character varying(255),
    accounts_id bigint,
    "dateSubmit" timestamp with time zone NOT NULL
);
 '   DROP TABLE public."clientApp_article";
       public         heap    postgres    false            �            1259    33529    clientApp_article_id_seq    SEQUENCE     �   CREATE SEQUENCE public."clientApp_article_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."clientApp_article_id_seq";
       public          postgres    false    212            �           0    0    clientApp_article_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."clientApp_article_id_seq" OWNED BY public."clientApp_article".id;
          public          postgres    false    213            �            1259    33531    clientApp_education    TABLE       CREATE TABLE public."clientApp_education" (
    id bigint NOT NULL,
    school character varying(200),
    degree character varying(200),
    start_date character varying(200),
    end_date character varying(200),
    city character varying(200),
    personaldetails_id bigint
);
 )   DROP TABLE public."clientApp_education";
       public         heap    postgres    false            �            1259    33537    clientApp_education_id_seq    SEQUENCE     �   CREATE SEQUENCE public."clientApp_education_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."clientApp_education_id_seq";
       public          postgres    false    214            �           0    0    clientApp_education_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."clientApp_education_id_seq" OWNED BY public."clientApp_education".id;
          public          postgres    false    215            �            1259    33539    clientApp_employmenthistory    TABLE     <  CREATE TABLE public."clientApp_employmenthistory" (
    id bigint NOT NULL,
    "JobTitle" character varying(200),
    start_date character varying(200),
    end_date character varying(200),
    employer character varying(200),
    city character varying(200),
    description text,
    personaldetails_id bigint
);
 1   DROP TABLE public."clientApp_employmenthistory";
       public         heap    postgres    false            �            1259    33545 "   clientApp_employmenthistory_id_seq    SEQUENCE     �   CREATE SEQUENCE public."clientApp_employmenthistory_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public."clientApp_employmenthistory_id_seq";
       public          postgres    false    216            �           0    0 "   clientApp_employmenthistory_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public."clientApp_employmenthistory_id_seq" OWNED BY public."clientApp_employmenthistory".id;
          public          postgres    false    217            �            1259    33547    clientApp_link    TABLE     o   CREATE TABLE public."clientApp_link" (
    id bigint NOT NULL,
    link text,
    personaldetails_id bigint
);
 $   DROP TABLE public."clientApp_link";
       public         heap    postgres    false            �            1259    33553    clientApp_link_id_seq    SEQUENCE     �   CREATE SEQUENCE public."clientApp_link_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."clientApp_link_id_seq";
       public          postgres    false    218            �           0    0    clientApp_link_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."clientApp_link_id_seq" OWNED BY public."clientApp_link".id;
          public          postgres    false    219            �            1259    33555    clientApp_personaldetails    TABLE     �  CREATE TABLE public."clientApp_personaldetails" (
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
 /   DROP TABLE public."clientApp_personaldetails";
       public         heap    postgres    false            �            1259    33562     clientApp_personaldetails_id_seq    SEQUENCE     �   CREATE SEQUENCE public."clientApp_personaldetails_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public."clientApp_personaldetails_id_seq";
       public          postgres    false    220            �           0    0     clientApp_personaldetails_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public."clientApp_personaldetails_id_seq" OWNED BY public."clientApp_personaldetails".id;
          public          postgres    false    221            �            1259    33564    clientApp_reference    TABLE     �   CREATE TABLE public."clientApp_reference" (
    id bigint NOT NULL,
    name character varying(200),
    company character varying(200),
    phone character varying(200),
    email character varying(200),
    personaldetails_id bigint
);
 )   DROP TABLE public."clientApp_reference";
       public         heap    postgres    false            �            1259    33570    clientApp_reference_id_seq    SEQUENCE     �   CREATE SEQUENCE public."clientApp_reference_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."clientApp_reference_id_seq";
       public          postgres    false    222            �           0    0    clientApp_reference_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."clientApp_reference_id_seq" OWNED BY public."clientApp_reference".id;
          public          postgres    false    223            �            1259    33572    clientApp_skill    TABLE     q   CREATE TABLE public."clientApp_skill" (
    id bigint NOT NULL,
    skill text,
    personaldetails_id bigint
);
 %   DROP TABLE public."clientApp_skill";
       public         heap    postgres    false            �            1259    33578    clientApp_skill_id_seq    SEQUENCE     �   CREATE SEQUENCE public."clientApp_skill_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."clientApp_skill_id_seq";
       public          postgres    false    224            �           0    0    clientApp_skill_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."clientApp_skill_id_seq" OWNED BY public."clientApp_skill".id;
          public          postgres    false    225            �            1259    33580    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    33587    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    226            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    227            �            1259    33589    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    33592    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    228            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    229            �            1259    33594    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    33600    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    230            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    231            �            1259    33602    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �           2604    33608    accounts_accounts id    DEFAULT     |   ALTER TABLE ONLY public.accounts_accounts ALTER COLUMN id SET DEFAULT nextval('public.accounts_accounts_id_seq'::regclass);
 C   ALTER TABLE public.accounts_accounts ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    200            �           2604    33609    accounts_accounts_groups id    DEFAULT     �   ALTER TABLE ONLY public.accounts_accounts_groups ALTER COLUMN id SET DEFAULT nextval('public.accounts_accounts_groups_id_seq'::regclass);
 J   ALTER TABLE public.accounts_accounts_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    201            �           2604    33610 %   accounts_accounts_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.accounts_accounts_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.accounts_accounts_user_permissions_id_seq'::regclass);
 T   ALTER TABLE public.accounts_accounts_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204            �           2604    33797    adminApp_onboardingapplicant id    DEFAULT     �   ALTER TABLE ONLY public."adminApp_onboardingapplicant" ALTER COLUMN id SET DEFAULT nextval('public."adminApp_onboardingapplicant_id_seq"'::regclass);
 P   ALTER TABLE public."adminApp_onboardingapplicant" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233    234            �           2604    33611    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206            �           2604    33612    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208            �           2604    33613    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210            �           2604    33614    clientApp_article id    DEFAULT     �   ALTER TABLE ONLY public."clientApp_article" ALTER COLUMN id SET DEFAULT nextval('public."clientApp_article_id_seq"'::regclass);
 E   ALTER TABLE public."clientApp_article" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212            �           2604    33615    clientApp_education id    DEFAULT     �   ALTER TABLE ONLY public."clientApp_education" ALTER COLUMN id SET DEFAULT nextval('public."clientApp_education_id_seq"'::regclass);
 G   ALTER TABLE public."clientApp_education" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214            �           2604    33616    clientApp_employmenthistory id    DEFAULT     �   ALTER TABLE ONLY public."clientApp_employmenthistory" ALTER COLUMN id SET DEFAULT nextval('public."clientApp_employmenthistory_id_seq"'::regclass);
 O   ALTER TABLE public."clientApp_employmenthistory" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216            �           2604    33617    clientApp_link id    DEFAULT     z   ALTER TABLE ONLY public."clientApp_link" ALTER COLUMN id SET DEFAULT nextval('public."clientApp_link_id_seq"'::regclass);
 B   ALTER TABLE public."clientApp_link" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218            �           2604    33618    clientApp_personaldetails id    DEFAULT     �   ALTER TABLE ONLY public."clientApp_personaldetails" ALTER COLUMN id SET DEFAULT nextval('public."clientApp_personaldetails_id_seq"'::regclass);
 M   ALTER TABLE public."clientApp_personaldetails" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220            �           2604    33619    clientApp_reference id    DEFAULT     �   ALTER TABLE ONLY public."clientApp_reference" ALTER COLUMN id SET DEFAULT nextval('public."clientApp_reference_id_seq"'::regclass);
 G   ALTER TABLE public."clientApp_reference" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222            �           2604    33620    clientApp_skill id    DEFAULT     |   ALTER TABLE ONLY public."clientApp_skill" ALTER COLUMN id SET DEFAULT nextval('public."clientApp_skill_id_seq"'::regclass);
 C   ALTER TABLE public."clientApp_skill" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224            �           2604    33621    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226            �           2604    33622    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228            �           2604    33623    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230            �          0    33490    accounts_accounts 
   TABLE DATA           �   COPY public.accounts_accounts (id, password, email, username, first_name, last_name, date_joined, last_login, is_admin, is_active, is_staff, is_superuser, profile_image, address, phone) FROM stdin;
    public          postgres    false    200   ��       �          0    33496    accounts_accounts_groups 
   TABLE DATA           M   COPY public.accounts_accounts_groups (id, accounts_id, group_id) FROM stdin;
    public          postgres    false    201   g�       �          0    33503 "   accounts_accounts_user_permissions 
   TABLE DATA           \   COPY public.accounts_accounts_user_permissions (id, accounts_id, permission_id) FROM stdin;
    public          postgres    false    204   ��       �          0    33794    adminApp_onboardingapplicant 
   TABLE DATA           �   COPY public."adminApp_onboardingapplicant" (id, "jobTitle", score, accounts_id, remarks, "dateScore", status, is_active) FROM stdin;
    public          postgres    false    234   ��       �          0    33508 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    206   R�       �          0    33513    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    208   ��       �          0    33518    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    210   ��       �          0    33523    clientApp_article 
   TABLE DATA           _   COPY public."clientApp_article" (id, article, headline, accounts_id, "dateSubmit") FROM stdin;
    public          postgres    false    212   /�       �          0    33531    clientApp_education 
   TABLE DATA           s   COPY public."clientApp_education" (id, school, degree, start_date, end_date, city, personaldetails_id) FROM stdin;
    public          postgres    false    214   S�       �          0    33539    clientApp_employmenthistory 
   TABLE DATA           �   COPY public."clientApp_employmenthistory" (id, "JobTitle", start_date, end_date, employer, city, description, personaldetails_id) FROM stdin;
    public          postgres    false    216   �       �          0    33547    clientApp_link 
   TABLE DATA           H   COPY public."clientApp_link" (id, link, personaldetails_id) FROM stdin;
    public          postgres    false    218   ��       �          0    33555    clientApp_personaldetails 
   TABLE DATA           �   COPY public."clientApp_personaldetails" (id, profile_image, "jobTitle", fname, lname, email, phone, country, city, address, birthplace, birthdate, nationality, "profSummary", postalcode, accounts_id) FROM stdin;
    public          postgres    false    220   H�       �          0    33564    clientApp_reference 
   TABLE DATA           d   COPY public."clientApp_reference" (id, name, company, phone, email, personaldetails_id) FROM stdin;
    public          postgres    false    222   �       �          0    33572    clientApp_skill 
   TABLE DATA           J   COPY public."clientApp_skill" (id, skill, personaldetails_id) FROM stdin;
    public          postgres    false    224   ��       �          0    33580    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    226   L�       �          0    33589    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    228   �	      �          0    33594    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    230   �
      �          0    33602    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    232   �      �           0    0    accounts_accounts_groups_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.accounts_accounts_groups_id_seq', 17, true);
          public          postgres    false    202            �           0    0    accounts_accounts_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.accounts_accounts_id_seq', 20, true);
          public          postgres    false    203            �           0    0 )   accounts_accounts_user_permissions_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.accounts_accounts_user_permissions_id_seq', 1, false);
          public          postgres    false    205            �           0    0 #   adminApp_onboardingapplicant_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."adminApp_onboardingapplicant_id_seq"', 14, true);
          public          postgres    false    233            �           0    0    auth_group_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_group_id_seq', 3, true);
          public          postgres    false    207            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    209            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 60, true);
          public          postgres    false    211            �           0    0    clientApp_article_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."clientApp_article_id_seq"', 34, true);
          public          postgres    false    213            �           0    0    clientApp_education_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."clientApp_education_id_seq"', 17, true);
          public          postgres    false    215            �           0    0 "   clientApp_employmenthistory_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."clientApp_employmenthistory_id_seq"', 109, true);
          public          postgres    false    217            �           0    0    clientApp_link_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."clientApp_link_id_seq"', 10, true);
          public          postgres    false    219            �           0    0     clientApp_personaldetails_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."clientApp_personaldetails_id_seq"', 14, true);
          public          postgres    false    221            �           0    0    clientApp_reference_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."clientApp_reference_id_seq"', 7, true);
          public          postgres    false    223            �           0    0    clientApp_skill_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."clientApp_skill_id_seq"', 19, true);
          public          postgres    false    225            �           0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 177, true);
          public          postgres    false    227            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 15, true);
          public          postgres    false    229            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 50, true);
          public          postgres    false    231            �           2606    33625 -   accounts_accounts accounts_accounts_email_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.accounts_accounts
    ADD CONSTRAINT accounts_accounts_email_key UNIQUE (email);
 W   ALTER TABLE ONLY public.accounts_accounts DROP CONSTRAINT accounts_accounts_email_key;
       public            postgres    false    200            �           2606    33627 T   accounts_accounts_groups accounts_accounts_groups_accounts_id_group_id_fe616882_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.accounts_accounts_groups
    ADD CONSTRAINT accounts_accounts_groups_accounts_id_group_id_fe616882_uniq UNIQUE (accounts_id, group_id);
 ~   ALTER TABLE ONLY public.accounts_accounts_groups DROP CONSTRAINT accounts_accounts_groups_accounts_id_group_id_fe616882_uniq;
       public            postgres    false    201    201            �           2606    33629 6   accounts_accounts_groups accounts_accounts_groups_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.accounts_accounts_groups
    ADD CONSTRAINT accounts_accounts_groups_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.accounts_accounts_groups DROP CONSTRAINT accounts_accounts_groups_pkey;
       public            postgres    false    201            �           2606    33631 (   accounts_accounts accounts_accounts_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.accounts_accounts
    ADD CONSTRAINT accounts_accounts_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.accounts_accounts DROP CONSTRAINT accounts_accounts_pkey;
       public            postgres    false    200            �           2606    33633 b   accounts_accounts_user_permissions accounts_accounts_user_p_accounts_id_permission_i_310c5a2e_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.accounts_accounts_user_permissions
    ADD CONSTRAINT accounts_accounts_user_p_accounts_id_permission_i_310c5a2e_uniq UNIQUE (accounts_id, permission_id);
 �   ALTER TABLE ONLY public.accounts_accounts_user_permissions DROP CONSTRAINT accounts_accounts_user_p_accounts_id_permission_i_310c5a2e_uniq;
       public            postgres    false    204    204            �           2606    33635 J   accounts_accounts_user_permissions accounts_accounts_user_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.accounts_accounts_user_permissions
    ADD CONSTRAINT accounts_accounts_user_permissions_pkey PRIMARY KEY (id);
 t   ALTER TABLE ONLY public.accounts_accounts_user_permissions DROP CONSTRAINT accounts_accounts_user_permissions_pkey;
       public            postgres    false    204            �           2606    33637 0   accounts_accounts accounts_accounts_username_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.accounts_accounts
    ADD CONSTRAINT accounts_accounts_username_key UNIQUE (username);
 Z   ALTER TABLE ONLY public.accounts_accounts DROP CONSTRAINT accounts_accounts_username_key;
       public            postgres    false    200            �           2606    33802 I   adminApp_onboardingapplicant adminApp_onboardingapplicant_accounts_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."adminApp_onboardingapplicant"
    ADD CONSTRAINT "adminApp_onboardingapplicant_accounts_id_key" UNIQUE (accounts_id);
 w   ALTER TABLE ONLY public."adminApp_onboardingapplicant" DROP CONSTRAINT "adminApp_onboardingapplicant_accounts_id_key";
       public            postgres    false    234            �           2606    33800 >   adminApp_onboardingapplicant adminApp_onboardingapplicant_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."adminApp_onboardingapplicant"
    ADD CONSTRAINT "adminApp_onboardingapplicant_pkey" PRIMARY KEY (id);
 l   ALTER TABLE ONLY public."adminApp_onboardingapplicant" DROP CONSTRAINT "adminApp_onboardingapplicant_pkey";
       public            postgres    false    234            �           2606    33639    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    206            �           2606    33641 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    208    208            �           2606    33643 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    208            �           2606    33645    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    206            �           2606    33647 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    210    210            �           2606    33649 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    210            �           2606    33651 2   clientApp_article clientApp_article_account_id_key 
   CONSTRAINT     x   ALTER TABLE ONLY public."clientApp_article"
    ADD CONSTRAINT "clientApp_article_account_id_key" UNIQUE (accounts_id);
 `   ALTER TABLE ONLY public."clientApp_article" DROP CONSTRAINT "clientApp_article_account_id_key";
       public            postgres    false    212            �           2606    33653 (   clientApp_article clientApp_article_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public."clientApp_article"
    ADD CONSTRAINT "clientApp_article_pkey" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public."clientApp_article" DROP CONSTRAINT "clientApp_article_pkey";
       public            postgres    false    212            �           2606    33655 ,   clientApp_education clientApp_education_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."clientApp_education"
    ADD CONSTRAINT "clientApp_education_pkey" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public."clientApp_education" DROP CONSTRAINT "clientApp_education_pkey";
       public            postgres    false    214            �           2606    33657 <   clientApp_employmenthistory clientApp_employmenthistory_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public."clientApp_employmenthistory"
    ADD CONSTRAINT "clientApp_employmenthistory_pkey" PRIMARY KEY (id);
 j   ALTER TABLE ONLY public."clientApp_employmenthistory" DROP CONSTRAINT "clientApp_employmenthistory_pkey";
       public            postgres    false    216            �           2606    33659 "   clientApp_link clientApp_link_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."clientApp_link"
    ADD CONSTRAINT "clientApp_link_pkey" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public."clientApp_link" DROP CONSTRAINT "clientApp_link_pkey";
       public            postgres    false    218            �           2606    33661 C   clientApp_personaldetails clientApp_personaldetails_accounts_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."clientApp_personaldetails"
    ADD CONSTRAINT "clientApp_personaldetails_accounts_id_key" UNIQUE (accounts_id);
 q   ALTER TABLE ONLY public."clientApp_personaldetails" DROP CONSTRAINT "clientApp_personaldetails_accounts_id_key";
       public            postgres    false    220            �           2606    33663 8   clientApp_personaldetails clientApp_personaldetails_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public."clientApp_personaldetails"
    ADD CONSTRAINT "clientApp_personaldetails_pkey" PRIMARY KEY (id);
 f   ALTER TABLE ONLY public."clientApp_personaldetails" DROP CONSTRAINT "clientApp_personaldetails_pkey";
       public            postgres    false    220            �           2606    33665 ,   clientApp_reference clientApp_reference_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."clientApp_reference"
    ADD CONSTRAINT "clientApp_reference_pkey" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public."clientApp_reference" DROP CONSTRAINT "clientApp_reference_pkey";
       public            postgres    false    222            �           2606    33667 $   clientApp_skill clientApp_skill_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."clientApp_skill"
    ADD CONSTRAINT "clientApp_skill_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."clientApp_skill" DROP CONSTRAINT "clientApp_skill_pkey";
       public            postgres    false    224            �           2606    33669 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    226            �           2606    33671 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    228    228            �           2606    33673 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    228            �           2606    33675 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    230            �           2606    33677 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    232            �           1259    33678 %   accounts_accounts_email_da8a4382_like    INDEX     x   CREATE INDEX accounts_accounts_email_da8a4382_like ON public.accounts_accounts USING btree (email varchar_pattern_ops);
 9   DROP INDEX public.accounts_accounts_email_da8a4382_like;
       public            postgres    false    200            �           1259    33679 -   accounts_accounts_groups_accounts_id_a094314b    INDEX     y   CREATE INDEX accounts_accounts_groups_accounts_id_a094314b ON public.accounts_accounts_groups USING btree (accounts_id);
 A   DROP INDEX public.accounts_accounts_groups_accounts_id_a094314b;
       public            postgres    false    201            �           1259    33680 *   accounts_accounts_groups_group_id_d2af1629    INDEX     s   CREATE INDEX accounts_accounts_groups_group_id_d2af1629 ON public.accounts_accounts_groups USING btree (group_id);
 >   DROP INDEX public.accounts_accounts_groups_group_id_d2af1629;
       public            postgres    false    201            �           1259    33681 7   accounts_accounts_user_permissions_accounts_id_001e820c    INDEX     �   CREATE INDEX accounts_accounts_user_permissions_accounts_id_001e820c ON public.accounts_accounts_user_permissions USING btree (accounts_id);
 K   DROP INDEX public.accounts_accounts_user_permissions_accounts_id_001e820c;
       public            postgres    false    204            �           1259    33682 9   accounts_accounts_user_permissions_permission_id_7df1f232    INDEX     �   CREATE INDEX accounts_accounts_user_permissions_permission_id_7df1f232 ON public.accounts_accounts_user_permissions USING btree (permission_id);
 M   DROP INDEX public.accounts_accounts_user_permissions_permission_id_7df1f232;
       public            postgres    false    204            �           1259    33683 (   accounts_accounts_username_a6d49ba5_like    INDEX     ~   CREATE INDEX accounts_accounts_username_a6d49ba5_like ON public.accounts_accounts USING btree (username varchar_pattern_ops);
 <   DROP INDEX public.accounts_accounts_username_a6d49ba5_like;
       public            postgres    false    200            �           1259    33684    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    206            �           1259    33685 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    208            �           1259    33686 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    208            �           1259    33687 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    210            �           1259    33688 /   clientApp_education_personaldetails_id_82358fb9    INDEX     �   CREATE INDEX "clientApp_education_personaldetails_id_82358fb9" ON public."clientApp_education" USING btree (personaldetails_id);
 E   DROP INDEX public."clientApp_education_personaldetails_id_82358fb9";
       public            postgres    false    214            �           1259    33689 0   clientApp_employmenthistory_personal_id_ff36d4f7    INDEX     �   CREATE INDEX "clientApp_employmenthistory_personal_id_ff36d4f7" ON public."clientApp_employmenthistory" USING btree (personaldetails_id);
 F   DROP INDEX public."clientApp_employmenthistory_personal_id_ff36d4f7";
       public            postgres    false    216            �           1259    33690 *   clientApp_link_personaldetails_id_67dd0eb9    INDEX     w   CREATE INDEX "clientApp_link_personaldetails_id_67dd0eb9" ON public."clientApp_link" USING btree (personaldetails_id);
 @   DROP INDEX public."clientApp_link_personaldetails_id_67dd0eb9";
       public            postgres    false    218            �           1259    33691 /   clientApp_reference_personaldetails_id_e266ad92    INDEX     �   CREATE INDEX "clientApp_reference_personaldetails_id_e266ad92" ON public."clientApp_reference" USING btree (personaldetails_id);
 E   DROP INDEX public."clientApp_reference_personaldetails_id_e266ad92";
       public            postgres    false    222            �           1259    33692 +   clientApp_skill_personaldetails_id_57a81148    INDEX     y   CREATE INDEX "clientApp_skill_personaldetails_id_57a81148" ON public."clientApp_skill" USING btree (personaldetails_id);
 A   DROP INDEX public."clientApp_skill_personaldetails_id_57a81148";
       public            postgres    false    224            �           1259    33693 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    226            �           1259    33694 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    226            �           1259    33695 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    232            �           1259    33696 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    232            �           2606    33697 O   accounts_accounts_groups accounts_accounts_gr_accounts_id_a094314b_fk_accounts_    FK CONSTRAINT     �   ALTER TABLE ONLY public.accounts_accounts_groups
    ADD CONSTRAINT accounts_accounts_gr_accounts_id_a094314b_fk_accounts_ FOREIGN KEY (accounts_id) REFERENCES public.accounts_accounts(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.accounts_accounts_groups DROP CONSTRAINT accounts_accounts_gr_accounts_id_a094314b_fk_accounts_;
       public          postgres    false    201    200    2986            �           2606    33702 T   accounts_accounts_groups accounts_accounts_groups_group_id_d2af1629_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.accounts_accounts_groups
    ADD CONSTRAINT accounts_accounts_groups_group_id_d2af1629_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.accounts_accounts_groups DROP CONSTRAINT accounts_accounts_groups_group_id_d2af1629_fk_auth_group_id;
       public          postgres    false    3006    201    206            �           2606    33707 Y   accounts_accounts_user_permissions accounts_accounts_us_accounts_id_001e820c_fk_accounts_    FK CONSTRAINT     �   ALTER TABLE ONLY public.accounts_accounts_user_permissions
    ADD CONSTRAINT accounts_accounts_us_accounts_id_001e820c_fk_accounts_ FOREIGN KEY (accounts_id) REFERENCES public.accounts_accounts(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.accounts_accounts_user_permissions DROP CONSTRAINT accounts_accounts_us_accounts_id_001e820c_fk_accounts_;
       public          postgres    false    200    2986    204            �           2606    33712 [   accounts_accounts_user_permissions accounts_accounts_us_permission_id_7df1f232_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.accounts_accounts_user_permissions
    ADD CONSTRAINT accounts_accounts_us_permission_id_7df1f232_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.accounts_accounts_user_permissions DROP CONSTRAINT accounts_accounts_us_permission_id_7df1f232_fk_auth_perm;
       public          postgres    false    210    204    3017                       2606    33803 S   adminApp_onboardingapplicant adminApp_onboardinga_accounts_id_d9c4b20b_fk_accounts_    FK CONSTRAINT     �   ALTER TABLE ONLY public."adminApp_onboardingapplicant"
    ADD CONSTRAINT "adminApp_onboardinga_accounts_id_d9c4b20b_fk_accounts_" FOREIGN KEY (accounts_id) REFERENCES public.accounts_accounts(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."adminApp_onboardingapplicant" DROP CONSTRAINT "adminApp_onboardinga_accounts_id_d9c4b20b_fk_accounts_";
       public          postgres    false    200    2986    234            �           2606    33717 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    210    3017    208            �           2606    33722 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    3006    206    208            �           2606    33727 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    210    3048    228            �           2606    33732 P   clientApp_article clientApp_article_accounts_id_674b4325_fk_accounts_accounts_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."clientApp_article"
    ADD CONSTRAINT "clientApp_article_accounts_id_674b4325_fk_accounts_accounts_id" FOREIGN KEY (accounts_id) REFERENCES public.accounts_accounts(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public."clientApp_article" DROP CONSTRAINT "clientApp_article_accounts_id_674b4325_fk_accounts_accounts_id";
       public          postgres    false    200    212    2986            �           2606    33737 P   clientApp_education clientApp_education_personaldetails_id_82358fb9_fk_clientApp    FK CONSTRAINT     �   ALTER TABLE ONLY public."clientApp_education"
    ADD CONSTRAINT "clientApp_education_personaldetails_id_82358fb9_fk_clientApp" FOREIGN KEY (personaldetails_id) REFERENCES public."clientApp_personaldetails"(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public."clientApp_education" DROP CONSTRAINT "clientApp_education_personaldetails_id_82358fb9_fk_clientApp";
       public          postgres    false    220    214    3034            �           2606    33742 Y   clientApp_employmenthistory clientApp_employment_personaldetails_id_e915ace6_fk_clientApp    FK CONSTRAINT     �   ALTER TABLE ONLY public."clientApp_employmenthistory"
    ADD CONSTRAINT "clientApp_employment_personaldetails_id_e915ace6_fk_clientApp" FOREIGN KEY (personaldetails_id) REFERENCES public."clientApp_personaldetails"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."clientApp_employmenthistory" DROP CONSTRAINT "clientApp_employment_personaldetails_id_e915ace6_fk_clientApp";
       public          postgres    false    220    216    3034            �           2606    33747 F   clientApp_link clientApp_link_personaldetails_id_67dd0eb9_fk_clientApp    FK CONSTRAINT     �   ALTER TABLE ONLY public."clientApp_link"
    ADD CONSTRAINT "clientApp_link_personaldetails_id_67dd0eb9_fk_clientApp" FOREIGN KEY (personaldetails_id) REFERENCES public."clientApp_personaldetails"(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public."clientApp_link" DROP CONSTRAINT "clientApp_link_personaldetails_id_67dd0eb9_fk_clientApp";
       public          postgres    false    220    3034    218            �           2606    33752 P   clientApp_personaldetails clientApp_personalde_accounts_id_9070254b_fk_accounts_    FK CONSTRAINT     �   ALTER TABLE ONLY public."clientApp_personaldetails"
    ADD CONSTRAINT "clientApp_personalde_accounts_id_9070254b_fk_accounts_" FOREIGN KEY (accounts_id) REFERENCES public.accounts_accounts(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public."clientApp_personaldetails" DROP CONSTRAINT "clientApp_personalde_accounts_id_9070254b_fk_accounts_";
       public          postgres    false    2986    200    220            �           2606    33757 P   clientApp_reference clientApp_reference_personaldetails_id_e266ad92_fk_clientApp    FK CONSTRAINT     �   ALTER TABLE ONLY public."clientApp_reference"
    ADD CONSTRAINT "clientApp_reference_personaldetails_id_e266ad92_fk_clientApp" FOREIGN KEY (personaldetails_id) REFERENCES public."clientApp_personaldetails"(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public."clientApp_reference" DROP CONSTRAINT "clientApp_reference_personaldetails_id_e266ad92_fk_clientApp";
       public          postgres    false    3034    220    222                        2606    33762 H   clientApp_skill clientApp_skill_personaldetails_id_57a81148_fk_clientApp    FK CONSTRAINT     �   ALTER TABLE ONLY public."clientApp_skill"
    ADD CONSTRAINT "clientApp_skill_personaldetails_id_57a81148_fk_clientApp" FOREIGN KEY (personaldetails_id) REFERENCES public."clientApp_personaldetails"(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public."clientApp_skill" DROP CONSTRAINT "clientApp_skill_personaldetails_id_57a81148_fk_clientApp";
       public          postgres    false    220    3034    224                       2606    33767 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    226    228    3048                       2606    33772 J   django_admin_log django_admin_log_user_id_c564eba6_fk_accounts_accounts_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_accounts_accounts_id FOREIGN KEY (user_id) REFERENCES public.accounts_accounts(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_accounts_accounts_id;
       public          postgres    false    226    2986    200            �   �  x���[s�0 �g�>��,&!3���.�V���L'
".V��_��Ug|)�p�y��9����7��g+�� 
NW%�9[�6m���`��ngީh�ŋ���ê��&x����x���j��ɴ����O��r�E����"��"/�����@�� +Cj`d�B� Ѫ@�dy!RUL���]*��Y*�4�=vC�{�$����ރ�JM"_QJ�����D�i�4iNpC��,�*M���<`֬ݶ���o�ͧ�#�I�]=��д�~�l���{Y�p�8.��e1]��?�2��N�J9�^#/Y�bM#��	�}�J��lw@�	�L�oT4�^�d�\E�uH���{=�vޚ鋤=p��1q��mSW�H�w*Z����~}��*�7�S5�A��י~׊����gTv���O�&�={��t�hٝ�Ju�͞�W{M��w[�1Zn�VB��ɪU/��#ˉ�E�&"����>����E�*_������,T�2z+%e��Ac*���V����_6���ᆣ��d�L^��.�o���n�c�9�@�& M���5%�\8�?��A� 
^��V����y�:%��0�U�s�8�����d5xk{�S�
�)6"rwR(�#�B8��?j�T��eY%      �   -   x�3�4�4�24�44�4�24�4� �f��� ڜ�� H��qqq �Y�      �      x������ � �      �   �   x�E�;
1 �zr���af�O���BX��&E�������������󖗹E ��:`d0d%b"N�Ut�۰� �q�n�
Ұ�/ynץ4�!�^{���c$L̊�1���q��_sQB�7M� �      �   ,   x�3�t��L�+)�2��R�M�KLO-�2q�K�Ҹb���� �k
m      �      x������ � �      �   t  x�u�]��0F��U��N�M��mܙ�n�\b3@����lI����sp��\�4.3]���Y�L/��u�k]�R��w�nVPa����v�`�"��oo�	l� �Nf���<�ީ�hC7\N�h��3�,
2�B��G�]��m��Q� �u~�r��^���)"��HA* ,�ɠ�nY�.[^�U��ֶ����`�|��v<*
�!���='�ن��AW:�pYb�3aW�H�E�8�A`��<���O�̪��ԅH�P�@���,	1�(	�{�f��Ϡ�ֺA��1T䀣��P� �(C��%���.E� "ā ���K>%f�̰>j1�0�k������vc�DsC�ջ��"�1I�]q��J�}��=�,��y�۠<��>U��K�����5�7�$7��㭹b�:n_�{#�n��d]kU.���+<��0VdO���X?A�-�(��w?*�,t%���8�#2��8���0�B�Rf��o�U5\7�Ե� ����|����x�%pn'k�|�����C;���h<*F��I:�Y�$����,�~{3u��ef��5nm	��RI�"]���U ���vGhX�>��5��Z�d�h6      �     x���OO�0���Sp7���
�F�*qE�`�I�P��]��n\��,VO�L�2���͐4�3�N�8�%B��u�>N��o(Nzj�Ր+�Rk���4v����UV�4��=����q0 �`�8�+ӄ����Qt�b��.KQ��"8t@�J_�Ӌ��w/�}��B��:�o�.2Q��)/`%��D�e{=tzr����u�N����f�M"N��.� �b������Q�ȢC�TQ��X3����׿�yԻ�����i�덝��f�]9xx��.&px      �   �   x���M�@�םS���(�a!!6��M��h"`�a���e�B���/y_�B��z|P�[*����A݁nQ�L��m��@���:� �e�*73he�rg���0���fz�1�L�o�B�+�7�� y�3�D�����sl�8��c�q�	�_(�>&*m]      �   �   x���1n�0Eg�:Aa%C�9k��%�P[Y2d&Bo_���E(� �>�~0y��Yh)�C���7�;�=b&��L�t��(�Dh��W��O\8��,'�	�,�*5;��g����9ĕx�sBAԥ�R�|���g/
��͓Z��"t]�P���`6��ǀɄ�ʕ΁>�P��m�춹�l-j<kT����?��"      �   P   x�3�L��O�I�K���4�2�LKLNM��φ
�s��rYp��'���	NCc.KN��A|C�Ĵ��@����� #�:      �   �  x����j�0���O���r���RH��n`sY(�ddku2�\ѷ_�IJ����=3:�����x'��Wi����ߜ^ߦ���P�[���H{���G;g /���y�Oa]K-�FZj���O���T�à�&�ْgE���OH�`㘐V�5�lY��C��zM�i����$���9���Ǹ�{/w
�Y�jҚ��~�s����D�zt����pz��7�r�F
)�B�Hr��g|��v|�v�?��ْ�H��<��:��#�Ђ��|Q����|V�N'|<���^�	qӅn��Ӑ�ऄƶ2JG4�VM�F%)�dӃ*M�М�������A�L�^1-"=)3~��@hz�����"�8��/�r�ڻʣ1��>OlT��t��P��S4���:m�`�ϖL���6�X��w��/"~�b)�Z
b)��њY�2ʲ�/J�4�      �   �   x�}���0Dg�+��*	"ЍO@L,V�B�Q)��Q���p7���4\9P�qxH5���F��B�%���&�A��~z�����-����|w��K��o�
|j��j���\Pf���*W��nEm��=a�M�5���D���Wo      �   �   x�U��
�0����)��4^���
�7nB;��t"�(��ڐ������5\Rt�γg���.��з����G�v��@ky�����_��)�K��T��W:�&�Ho
�Y�=eA@��P�����J)�	r1�      �   ]
  x��ZQ�7~v~���wHEI~zm�;���C��];Y�f؛[�E����ƣ�g�d�`�#5�G��lW`�~c�7ƭ��8�X�Y�ч�����oOG���?n������f�ǟ��r+�
f��k]��������W�ؿ�T��$NT�y�w�x����@���7�w��,��}�?�+���������|��a����������v}���|�!6�'Fh�fcR #}����ǧ�c�a+���7�Y�J�U�g6:�1�s�NU���ww���8Z	ڊ����x�����/Inc�\��h_f����Z!���}�n�u3��s�K}3��76u6D$�Z�MV����hM��$�]�|7�QI�MJ�5���@�Ȧz����i̡`����w��u������-'��4n�ٗ�d�Q�Ud��p.�S59�J�h��D�o�(��@ޘ���G�t.l]�,gAh�y����o0v�ф��9x�����&v�'�� 
�ic��&b����Qݼ�uU��0LCO,�q\�������|� '[
chOB�¬�r���$aA�Va߄����P�<5�9҂4/s.5�pfA��H���^n9�@	�s�ݑ�l[a��c& ׋,�V�q�?ow#Fs���W���Cɔ�z�\�Y:��:�U�Y���`:�AL��F��h��ɕd��QG�P�o
c9�S��iEpy�\FlS�1�\��$ir��9���y���t)��E�AڻR��4�:��� 7<���Μ�(��:H�x�M����t'�F5l��5>p��2�Z�qA:��J�yi2T2ڵ�FIs#�;y¬k�F�]@����C�����3ڐ��`�62n�sÁ�rRq�v?/��")�q��1�3_Iz��m,�.ٕ �����ҮP���1�`|�ߓ�.����L��^md�Z������l����'�`�����S�S0X.h��f��2�2�����פ�*@M�im�k�Vd1�����?������m-�ؿ�Y60
�|�d��Rd)�ÿ����ai�w�x+ͣ�By#ƌ���z�����L��Fz++�R��
Q�o�S
_�
7�F�vg�C{�e�vm�	KH\Y�}UG%�\�,O~ P{�K�&�r�:���Ҕ�B+�h %�w���R����}x�ߟ��X;�﷟�o���O�� �������U�<T�H�Ti� N������:�5ܞ�}�N�0�/£�A���0���������������9���@Y\0���@��l>���N��D�	��G!E�Z7��t� W���MJ7����&;̈́���,A�q��f�:1.ȧA�L�Ӓ<�Sc�ē�"��Sb��2�;�6��,�~n�ߞ���JR5<*�X�����9�lƒ�p�39@���:ˣ�ϔ�q9��.���p6�xd���O��\�C��ηKO�������\��2g �U���X��R�ex:�{��\*U�{�1Ϸa��M��q9# ��؏�R g|Irs���T�p��;�=J<���5�����JT�xŠ�x+���#i�iaOe��U�������Lq��u�tGS��� ���R�B�苤�I��ёӅ� �9pwm���&]t��3x�%�. ��D
a3?Pn~_k�e��`��KDp	N��2�&�n������?d�^4�I&�u��p��T\"������C�Hլ�'�V���N�f�,�A���*Y�\�l�GQ!����=���98`0�=�a@Ӑ .������^$h���ŏ5�˥�+i]&��v�-(�=F�m�&A���	
����su���CIe(h�	�:�9���e�h�!qY�<��huEMF�����9�h�p�b|�}��t多9��a���m�L:���I�z=���w��A��,)�QM/��/;,�ve��hV�u tS}�U�v5w���K<>�%b]8l�k:y�zRA+Mky/Cx�Dev����Z6�I�*��>)���/�s�wLp�� �5�tF� T��յ6'�����n���|QZ]����u�q2�S�� �.�*����$A�
 [��Rǫ$Aw����{���+EQ+���N�e �h�?Gȋ\�6�~��I�
r�L·�((U��������˛��L2�n�Y��7F�_�^��=�e�[�+�͂8q���Q^3	�uiGd�;Ϳ�k��8,BvSyM��<��k���SJ�o��� am�,.r��8*/����4��7�+�ow����GH�@��ʷ-�[�J�����b�(G�fd��W��;�(��riS�C}�X���.�q�� ����"�J�ζ��.�8�ono�����m����i�g8�|Q3���ڔf���ͨ��7O�ӧ���ܵ�m�!�a�9Vb]E���C���pD�ZP^;���L�x������ZH���8?�At�F�S�vF�h>Lp�͂�- �:�,��FpWi˾ pI�$y�s�Ԛ1�k��r�0o���뺟��n�J/0t�[#/PP�ys�q^�'��gZ��s��4<��Q�l�!�'� �0W���B�.��(�`��u��ugÖ���L晞px�xq��{����r�	      �   �   x�M�Mn�0���0U=�]��P�I��Y���t��;��{�	��5�ͤ�v8$�bI����l
���mN��F��^�G�����.	K�M����"�3��&����t�*��@_�MQ&
dq��㌵��kW{X?!���N���À��"���\��N��4"������'6�6l댵
Ԁ�7 ��}u      �   0  x���˲�8�ל�`?�)��%�n�c�Ri�W�$��S}�~d�0�lX�Y��K�;���q��ܰ ,}�G_�;���GUd2B�� ����ݥ�r���Oʦ���\jP�������%`<[������e����6���R�.kל�W�I4��J��t��]*_���`��"�)�#f�v���`F���u5�eݞ<�u�_Ȣh��+Ds/~]}�6#v���`H4"0��0s"_U����CY�����//n��{U���EXi�Se�$�%�HdzEJE�XH3�Է��=�������v��+����}g��9#V��/�����ҙ�a#��ߘ���a����7o��Ę[��dw����sEm��s��7� �_�ac�YW��pn���r�JM.���͊����)�fK��X���oOW���Y��6
L0tt�Iv�����;��P��ݡ�\��]�YhC�T�э����O_��_8�S��� 	�8�B��e��KW��~p���wytá�]��T{��4Zw�P)��*�#d2�,Dc
���w��K�O��Ծ9�T"C�4u_��j�CX^�
n��,[ZMN�So�~��%q��yA6�h�M��V�]u�}���s�͈P��(��7��d]��EHM.Ą�a}g�)�My��A��V&�D"��ްnx��o.W5m�mJ�v�`��BRp���9l�B���*����#�����TR���iy�����Kɔ�;��0{0�TZ~�Aq�)�-Rɣ�\3���>4�.a3%�ĩG�]qy������G�0���z���e���@(D+i&-$L���b@�#�/CK�\=���m�wr��H��pA��d�H�[�W ����Jn�oW��&%���L�y�H�A��L
�S�)�� 	[M���@-�T�NꑰՄ�3�M���)�����Jy��SR+���2O�{d��l���S�u�?T<w�X��;]�>؋7�	kf]<��kx��?/~�G ��U��?�/��4������mm���萏&!E�������_��,      �     x���ێ�J ����O1�;������QDQ���p�3rFx��N&��W�W����.u��R>t�zH�	�e�
���i�gj�K���1��/���i3U@	�A��!kz���[2{�ON�eF� y�����~�!1�U��4Kj��CY����v���!�9����k��kS�=Wr����^�3N{�42w;&�yב�X�s�ƜT�qv�pR��x���]��ޞ����Z;܀��Wk�s4$��K!�5���l�h��:dZ�5fnS���� �@V�8��B�_��=N�ǣ{�-	���r�J��3��_d0�T2#��w\}�+|�
�V�{�f[�rڲ�12)���Q���tw ��u����@�璫S�K
ߠ�>l����+��S��{��G7���4��4�#����O�J�V�eK�h�Ķ���m7Ϊ��!�j�y�tG��������fj��0a�U��'Mp��E�Ok��gqmS9tV��>�6? 9(rt!`��6�ʾ��8��.��iΐ���=ԥu��_f��gf��٪��!G¯��+$;����@�FWЕ��l�*n���	��Y�+���P5�wO)�Cl�y��K�_����'x�]ܜ'z�5��s��;
;#s�n7�ۭ��5k9KP�O��s�(Rdȁuږ��9������[��9��6:��Q�W;����.�Kg�˩(uM�h���>���b��-�� _�
"K�<�o1n�Q��}�l8�l���J�D�@̐nHL�5Wǝn��%��pm5g����8����Z'2�S��D?XVd�� �#�#ٌp1�<j�[{M�9�:�kK2|�+3�!λ�1{.�o�v�?G����©^���ss�X�^�����c"�cD�7�q��|;ehΟM���[�v��y��Ad�"9�š����g.'&GY�
�R �e�yw;e����b�;2LD,,� �)�k�
I��O��߱�0�c�����-�o ���J����:�+�Q�|tK�^O�����0��vs�cZ5�1-����������� �.     
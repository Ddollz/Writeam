PGDMP                         y         	   writeamdb    13.4    13.4 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    33489 	   writeamdb    DATABASE     k   CREATE DATABASE writeamdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_Philippines.1252';
    DROP DATABASE writeamdb;
                postgres    false            �            1259    33490    accounts_accounts    TABLE     �  CREATE TABLE public.accounts_accounts (
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
    phone character varying(50) NOT NULL,
    is_email_verified boolean NOT NULL
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
    accounts_id bigint
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
          public          postgres    false    217            �            1259    33817    clientApp_jobapplication    TABLE     g  CREATE TABLE public."clientApp_jobapplication" (
    id bigint NOT NULL,
    "dateSubmit" timestamp with time zone NOT NULL,
    "submitApplication" boolean NOT NULL,
    accounts_id bigint,
    is_copywriter boolean NOT NULL,
    is_editor boolean NOT NULL,
    is_translator boolean NOT NULL,
    copywriter integer,
    editor integer,
    translator integer,
    CONSTRAINT "clientApp_jobapplication_copywriter_check" CHECK ((copywriter >= 0)),
    CONSTRAINT "clientApp_jobapplication_editor_check" CHECK ((editor >= 0)),
    CONSTRAINT "clientApp_jobapplication_translator_check" CHECK ((translator >= 0))
);
 .   DROP TABLE public."clientApp_jobapplication";
       public         heap    postgres    false            �            1259    33815    clientApp_jobapplication_id_seq    SEQUENCE     �   CREATE SEQUENCE public."clientApp_jobapplication_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public."clientApp_jobapplication_id_seq";
       public          postgres    false    236            �           0    0    clientApp_jobapplication_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public."clientApp_jobapplication_id_seq" OWNED BY public."clientApp_jobapplication".id;
          public          postgres    false    235            �            1259    33547    clientApp_link    TABLE     o   CREATE TABLE public."clientApp_link" (
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
       public         heap    postgres    false            �            1259    50199    system_joblist    TABLE     �   CREATE TABLE public.system_joblist (
    id bigint NOT NULL,
    "job_Title" character varying(255) NOT NULL,
    "job_Description" text NOT NULL,
    "is_onHire" boolean NOT NULL
);
 "   DROP TABLE public.system_joblist;
       public         heap    postgres    false            �            1259    50197    system_joblist_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.system_joblist_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.system_joblist_id_seq;
       public          postgres    false    238            �           0    0    system_joblist_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.system_joblist_id_seq OWNED BY public.system_joblist.id;
          public          postgres    false    237            �            1259    50210    system_jobskill    TABLE     �   CREATE TABLE public.system_jobskill (
    id bigint NOT NULL,
    skill_name character varying(255) NOT NULL,
    "job_Title_id" bigint NOT NULL
);
 #   DROP TABLE public.system_jobskill;
       public         heap    postgres    false            �            1259    50208    system_jobskill_id_seq    SEQUENCE        CREATE SEQUENCE public.system_jobskill_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.system_jobskill_id_seq;
       public          postgres    false    240            �           0    0    system_jobskill_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.system_jobskill_id_seq OWNED BY public.system_jobskill.id;
          public          postgres    false    239            �           2604    33608    accounts_accounts id    DEFAULT     |   ALTER TABLE ONLY public.accounts_accounts ALTER COLUMN id SET DEFAULT nextval('public.accounts_accounts_id_seq'::regclass);
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
       public          postgres    false    217    216            �           2604    33820    clientApp_jobapplication id    DEFAULT     �   ALTER TABLE ONLY public."clientApp_jobapplication" ALTER COLUMN id SET DEFAULT nextval('public."clientApp_jobapplication_id_seq"'::regclass);
 L   ALTER TABLE public."clientApp_jobapplication" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235    236            �           2604    33617    clientApp_link id    DEFAULT     z   ALTER TABLE ONLY public."clientApp_link" ALTER COLUMN id SET DEFAULT nextval('public."clientApp_link_id_seq"'::regclass);
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
       public          postgres    false    231    230            �           2604    50202    system_joblist id    DEFAULT     v   ALTER TABLE ONLY public.system_joblist ALTER COLUMN id SET DEFAULT nextval('public.system_joblist_id_seq'::regclass);
 @   ALTER TABLE public.system_joblist ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    238    238            �           2604    50213    system_jobskill id    DEFAULT     x   ALTER TABLE ONLY public.system_jobskill ALTER COLUMN id SET DEFAULT nextval('public.system_jobskill_id_seq'::regclass);
 A   ALTER TABLE public.system_jobskill ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    240    240            �          0    33490    accounts_accounts 
   TABLE DATA           �   COPY public.accounts_accounts (id, password, email, username, first_name, last_name, date_joined, last_login, is_admin, is_active, is_staff, is_superuser, profile_image, address, phone, is_email_verified) FROM stdin;
    public          postgres    false    200   L      �          0    33496    accounts_accounts_groups 
   TABLE DATA           M   COPY public.accounts_accounts_groups (id, accounts_id, group_id) FROM stdin;
    public          postgres    false    201         �          0    33503 "   accounts_accounts_user_permissions 
   TABLE DATA           \   COPY public.accounts_accounts_user_permissions (id, accounts_id, permission_id) FROM stdin;
    public          postgres    false    204   �      �          0    33794    adminApp_onboardingapplicant 
   TABLE DATA           �   COPY public."adminApp_onboardingapplicant" (id, "jobTitle", score, accounts_id, remarks, "dateScore", status, is_active) FROM stdin;
    public          postgres    false    234   �      �          0    33508 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    206   <      �          0    33513    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    208   x      �          0    33518    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    210   �      �          0    33523    clientApp_article 
   TABLE DATA           Q   COPY public."clientApp_article" (id, article, headline, accounts_id) FROM stdin;
    public          postgres    false    212   �      �          0    33531    clientApp_education 
   TABLE DATA           s   COPY public."clientApp_education" (id, school, degree, start_date, end_date, city, personaldetails_id) FROM stdin;
    public          postgres    false    214   `      �          0    33539    clientApp_employmenthistory 
   TABLE DATA           �   COPY public."clientApp_employmenthistory" (id, "JobTitle", start_date, end_date, employer, city, description, personaldetails_id) FROM stdin;
    public          postgres    false    216         �          0    33817    clientApp_jobapplication 
   TABLE DATA           �   COPY public."clientApp_jobapplication" (id, "dateSubmit", "submitApplication", accounts_id, is_copywriter, is_editor, is_translator, copywriter, editor, translator) FROM stdin;
    public          postgres    false    236         �          0    33547    clientApp_link 
   TABLE DATA           H   COPY public."clientApp_link" (id, link, personaldetails_id) FROM stdin;
    public          postgres    false    218   �      �          0    33555    clientApp_personaldetails 
   TABLE DATA           �   COPY public."clientApp_personaldetails" (id, profile_image, "jobTitle", fname, lname, email, phone, country, city, address, birthplace, birthdate, nationality, "profSummary", postalcode, accounts_id) FROM stdin;
    public          postgres    false    220          �          0    33564    clientApp_reference 
   TABLE DATA           d   COPY public."clientApp_reference" (id, name, company, phone, email, personaldetails_id) FROM stdin;
    public          postgres    false    222   "      �          0    33572    clientApp_skill 
   TABLE DATA           J   COPY public."clientApp_skill" (id, skill, personaldetails_id) FROM stdin;
    public          postgres    false    224   �"      �          0    33580    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    226   z#      �          0    33589    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    228   _2      �          0    33594    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    230   E3      �          0    33602    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    232   E8      �          0    50199    system_joblist 
   TABLE DATA           Y   COPY public.system_joblist (id, "job_Title", "job_Description", "is_onHire") FROM stdin;
    public          postgres    false    238   n<      �          0    50210    system_jobskill 
   TABLE DATA           I   COPY public.system_jobskill (id, skill_name, "job_Title_id") FROM stdin;
    public          postgres    false    240   >      �           0    0    accounts_accounts_groups_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.accounts_accounts_groups_id_seq', 68, true);
          public          postgres    false    202            �           0    0    accounts_accounts_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.accounts_accounts_id_seq', 73, true);
          public          postgres    false    203            �           0    0 )   accounts_accounts_user_permissions_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.accounts_accounts_user_permissions_id_seq', 1, false);
          public          postgres    false    205            �           0    0 #   adminApp_onboardingapplicant_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."adminApp_onboardingapplicant_id_seq"', 19, true);
          public          postgres    false    233            �           0    0    auth_group_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_group_id_seq', 3, true);
          public          postgres    false    207            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    209            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 72, true);
          public          postgres    false    211            �           0    0    clientApp_article_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."clientApp_article_id_seq"', 85, true);
          public          postgres    false    213            �           0    0    clientApp_education_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."clientApp_education_id_seq"', 20, true);
          public          postgres    false    215            �           0    0 "   clientApp_employmenthistory_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."clientApp_employmenthistory_id_seq"', 112, true);
          public          postgres    false    217            �           0    0    clientApp_jobapplication_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."clientApp_jobapplication_id_seq"', 58, true);
          public          postgres    false    235            �           0    0    clientApp_link_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."clientApp_link_id_seq"', 13, true);
          public          postgres    false    219            �           0    0     clientApp_personaldetails_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."clientApp_personaldetails_id_seq"', 65, true);
          public          postgres    false    221            �           0    0    clientApp_reference_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."clientApp_reference_id_seq"', 10, true);
          public          postgres    false    223            �           0    0    clientApp_skill_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."clientApp_skill_id_seq"', 30, true);
          public          postgres    false    225            �           0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 246, true);
          public          postgres    false    227            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 18, true);
          public          postgres    false    229            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 59, true);
          public          postgres    false    231                        0    0    system_joblist_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.system_joblist_id_seq', 5, true);
          public          postgres    false    237                       0    0    system_jobskill_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.system_jobskill_id_seq', 100, true);
          public          postgres    false    239            �           2606    33625 -   accounts_accounts accounts_accounts_email_key 
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
       public            postgres    false    200            
           2606    33802 I   adminApp_onboardingapplicant adminApp_onboardingapplicant_accounts_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."adminApp_onboardingapplicant"
    ADD CONSTRAINT "adminApp_onboardingapplicant_accounts_id_key" UNIQUE (accounts_id);
 w   ALTER TABLE ONLY public."adminApp_onboardingapplicant" DROP CONSTRAINT "adminApp_onboardingapplicant_accounts_id_key";
       public            postgres    false    234                       2606    33800 >   adminApp_onboardingapplicant adminApp_onboardingapplicant_pkey 
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
       public            postgres    false    216                       2606    33827 A   clientApp_jobapplication clientApp_jobapplication_accounts_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."clientApp_jobapplication"
    ADD CONSTRAINT "clientApp_jobapplication_accounts_id_key" UNIQUE (accounts_id);
 o   ALTER TABLE ONLY public."clientApp_jobapplication" DROP CONSTRAINT "clientApp_jobapplication_accounts_id_key";
       public            postgres    false    236                       2606    33825 6   clientApp_jobapplication clientApp_jobapplication_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public."clientApp_jobapplication"
    ADD CONSTRAINT "clientApp_jobapplication_pkey" PRIMARY KEY (id);
 d   ALTER TABLE ONLY public."clientApp_jobapplication" DROP CONSTRAINT "clientApp_jobapplication_pkey";
       public            postgres    false    236            �           2606    33659 "   clientApp_link clientApp_link_pkey 
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
       public            postgres    false    226                        2606    33671 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    228    228                       2606    33673 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    228                       2606    33675 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    230                       2606    33677 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    232                       2606    50207 "   system_joblist system_joblist_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.system_joblist
    ADD CONSTRAINT system_joblist_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.system_joblist DROP CONSTRAINT system_joblist_pkey;
       public            postgres    false    238                       2606    50215 $   system_jobskill system_jobskill_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.system_jobskill
    ADD CONSTRAINT system_jobskill_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.system_jobskill DROP CONSTRAINT system_jobskill_pkey;
       public            postgres    false    240            �           1259    33678 %   accounts_accounts_email_da8a4382_like    INDEX     x   CREATE INDEX accounts_accounts_email_da8a4382_like ON public.accounts_accounts USING btree (email varchar_pattern_ops);
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
       public            postgres    false    226                       1259    33695 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    232                       1259    33696 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    232                       1259    50221 %   system_jobskill_job_Title_id_86037a74    INDEX     m   CREATE INDEX "system_jobskill_job_Title_id_86037a74" ON public.system_jobskill USING btree ("job_Title_id");
 ;   DROP INDEX public."system_jobskill_job_Title_id_86037a74";
       public            postgres    false    240                       2606    33697 O   accounts_accounts_groups accounts_accounts_gr_accounts_id_a094314b_fk_accounts_    FK CONSTRAINT     �   ALTER TABLE ONLY public.accounts_accounts_groups
    ADD CONSTRAINT accounts_accounts_gr_accounts_id_a094314b_fk_accounts_ FOREIGN KEY (accounts_id) REFERENCES public.accounts_accounts(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.accounts_accounts_groups DROP CONSTRAINT accounts_accounts_gr_accounts_id_a094314b_fk_accounts_;
       public          postgres    false    3012    201    200                       2606    33702 T   accounts_accounts_groups accounts_accounts_groups_group_id_d2af1629_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.accounts_accounts_groups
    ADD CONSTRAINT accounts_accounts_groups_group_id_d2af1629_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.accounts_accounts_groups DROP CONSTRAINT accounts_accounts_groups_group_id_d2af1629_fk_auth_group_id;
       public          postgres    false    201    3032    206                       2606    33707 Y   accounts_accounts_user_permissions accounts_accounts_us_accounts_id_001e820c_fk_accounts_    FK CONSTRAINT     �   ALTER TABLE ONLY public.accounts_accounts_user_permissions
    ADD CONSTRAINT accounts_accounts_us_accounts_id_001e820c_fk_accounts_ FOREIGN KEY (accounts_id) REFERENCES public.accounts_accounts(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.accounts_accounts_user_permissions DROP CONSTRAINT accounts_accounts_us_accounts_id_001e820c_fk_accounts_;
       public          postgres    false    200    3012    204                       2606    33712 [   accounts_accounts_user_permissions accounts_accounts_us_permission_id_7df1f232_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.accounts_accounts_user_permissions
    ADD CONSTRAINT accounts_accounts_us_permission_id_7df1f232_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.accounts_accounts_user_permissions DROP CONSTRAINT accounts_accounts_us_permission_id_7df1f232_fk_auth_perm;
       public          postgres    false    3043    204    210            &           2606    33803 S   adminApp_onboardingapplicant adminApp_onboardinga_accounts_id_d9c4b20b_fk_accounts_    FK CONSTRAINT     �   ALTER TABLE ONLY public."adminApp_onboardingapplicant"
    ADD CONSTRAINT "adminApp_onboardinga_accounts_id_d9c4b20b_fk_accounts_" FOREIGN KEY (accounts_id) REFERENCES public.accounts_accounts(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."adminApp_onboardingapplicant" DROP CONSTRAINT "adminApp_onboardinga_accounts_id_d9c4b20b_fk_accounts_";
       public          postgres    false    200    3012    234                       2606    33717 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    3043    210    208                       2606    33722 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    206    3032    208                       2606    33727 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    210    3074    228                       2606    33732 P   clientApp_article clientApp_article_accounts_id_674b4325_fk_accounts_accounts_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."clientApp_article"
    ADD CONSTRAINT "clientApp_article_accounts_id_674b4325_fk_accounts_accounts_id" FOREIGN KEY (accounts_id) REFERENCES public.accounts_accounts(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public."clientApp_article" DROP CONSTRAINT "clientApp_article_accounts_id_674b4325_fk_accounts_accounts_id";
       public          postgres    false    212    200    3012                       2606    33737 P   clientApp_education clientApp_education_personaldetails_id_82358fb9_fk_clientApp    FK CONSTRAINT     �   ALTER TABLE ONLY public."clientApp_education"
    ADD CONSTRAINT "clientApp_education_personaldetails_id_82358fb9_fk_clientApp" FOREIGN KEY (personaldetails_id) REFERENCES public."clientApp_personaldetails"(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public."clientApp_education" DROP CONSTRAINT "clientApp_education_personaldetails_id_82358fb9_fk_clientApp";
       public          postgres    false    214    3060    220                       2606    33742 Y   clientApp_employmenthistory clientApp_employment_personaldetails_id_e915ace6_fk_clientApp    FK CONSTRAINT     �   ALTER TABLE ONLY public."clientApp_employmenthistory"
    ADD CONSTRAINT "clientApp_employment_personaldetails_id_e915ace6_fk_clientApp" FOREIGN KEY (personaldetails_id) REFERENCES public."clientApp_personaldetails"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."clientApp_employmenthistory" DROP CONSTRAINT "clientApp_employment_personaldetails_id_e915ace6_fk_clientApp";
       public          postgres    false    216    3060    220            '           2606    33828 O   clientApp_jobapplication clientApp_jobapplica_accounts_id_583dcc3c_fk_accounts_    FK CONSTRAINT     �   ALTER TABLE ONLY public."clientApp_jobapplication"
    ADD CONSTRAINT "clientApp_jobapplica_accounts_id_583dcc3c_fk_accounts_" FOREIGN KEY (accounts_id) REFERENCES public.accounts_accounts(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public."clientApp_jobapplication" DROP CONSTRAINT "clientApp_jobapplica_accounts_id_583dcc3c_fk_accounts_";
       public          postgres    false    236    3012    200                        2606    33747 F   clientApp_link clientApp_link_personaldetails_id_67dd0eb9_fk_clientApp    FK CONSTRAINT     �   ALTER TABLE ONLY public."clientApp_link"
    ADD CONSTRAINT "clientApp_link_personaldetails_id_67dd0eb9_fk_clientApp" FOREIGN KEY (personaldetails_id) REFERENCES public."clientApp_personaldetails"(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public."clientApp_link" DROP CONSTRAINT "clientApp_link_personaldetails_id_67dd0eb9_fk_clientApp";
       public          postgres    false    220    218    3060            !           2606    33752 P   clientApp_personaldetails clientApp_personalde_accounts_id_9070254b_fk_accounts_    FK CONSTRAINT     �   ALTER TABLE ONLY public."clientApp_personaldetails"
    ADD CONSTRAINT "clientApp_personalde_accounts_id_9070254b_fk_accounts_" FOREIGN KEY (accounts_id) REFERENCES public.accounts_accounts(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public."clientApp_personaldetails" DROP CONSTRAINT "clientApp_personalde_accounts_id_9070254b_fk_accounts_";
       public          postgres    false    220    200    3012            "           2606    33757 P   clientApp_reference clientApp_reference_personaldetails_id_e266ad92_fk_clientApp    FK CONSTRAINT     �   ALTER TABLE ONLY public."clientApp_reference"
    ADD CONSTRAINT "clientApp_reference_personaldetails_id_e266ad92_fk_clientApp" FOREIGN KEY (personaldetails_id) REFERENCES public."clientApp_personaldetails"(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public."clientApp_reference" DROP CONSTRAINT "clientApp_reference_personaldetails_id_e266ad92_fk_clientApp";
       public          postgres    false    222    3060    220            #           2606    33762 H   clientApp_skill clientApp_skill_personaldetails_id_57a81148_fk_clientApp    FK CONSTRAINT     �   ALTER TABLE ONLY public."clientApp_skill"
    ADD CONSTRAINT "clientApp_skill_personaldetails_id_57a81148_fk_clientApp" FOREIGN KEY (personaldetails_id) REFERENCES public."clientApp_personaldetails"(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public."clientApp_skill" DROP CONSTRAINT "clientApp_skill_personaldetails_id_57a81148_fk_clientApp";
       public          postgres    false    220    3060    224            $           2606    33767 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    3074    226    228            %           2606    33772 J   django_admin_log django_admin_log_user_id_c564eba6_fk_accounts_accounts_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_accounts_accounts_id FOREIGN KEY (user_id) REFERENCES public.accounts_accounts(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_accounts_accounts_id;
       public          postgres    false    200    226    3012            (           2606    50216 J   system_jobskill system_jobskill_job_Title_id_86037a74_fk_system_joblist_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.system_jobskill
    ADD CONSTRAINT "system_jobskill_job_Title_id_86037a74_fk_system_joblist_id" FOREIGN KEY ("job_Title_id") REFERENCES public.system_joblist(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.system_jobskill DROP CONSTRAINT "system_jobskill_job_Title_id_86037a74_fk_system_joblist_id";
       public          postgres    false    240    238    3090            �   #  x���[o�@ǟ�S���Y:7`�Ĥ�z�j�n�f�fD@�x���u�n7�29�393���$$Ke��l͑$א��f���nạ�����^giԺ�#m���s��?v��zTJ��#w��.{�z`?n����G��cьC��{����Dx?	~�T�PV!R1!�2#u@o��
�
�E��U�Xy���-j!w��$�m7����$&�#����vE��������K����n{�z/Ǘ��������q�K�|8���C����N��fw�h�K}�G����J!ʽr78�(B�/�-�<�4�� �D1E��%`"a I���ϣ�j�j�ܤ��CT�0 �.z�T{�4�!�Ip;}\�k�șLd�:8M�O�(9�OOz�۠n��Ƥ���3���J]��k�� ���^�A�[�KW.���A���"R$@o��^�*`�"a*�wi�<��F(������n�ϋ��`g���뵨n&��ٌ�����&���,��3��Q��Ѻu%=�I7��:�[�����$�G���*��i�"
��UT,��
�F����1�G�e��x�=�,��`�Ԇ����4z�e��S��;\�R��w�b?=؋�5 zh\H~�}��e�m�}v�0���#2(�/����H ��� L%Dd
�����v#����y�m��J2g��1M#d����=��`I ���i��:si��ጊ�_�nt�����_pXPŊHe�!���U�U�E��,�[�_�Mvo��^����=��r�p�l�@�!V*���9��      �   1   x���  ��eD[�0���,9Ri*	����8(�q~7��gH��       �      x������ � �      �   O   x�3��t�/�T/�,I-�4�46�LK,OcN##C]K]CC#+cs+C=S3sSsm� ��`W�4�=... ��      �   ,   x�3�t��L�+)�2��R�M�KLO-�2q�K�Ҹb���� �k
m      �      x������ � �      �   �  x�u��n�0���S�	�����ކ�v0���zu��v7���P�H��-�>�([<���/�r
���u~/l��mkX�
���W����`��Mn�`�b�����)��P���n���2_T����r
D;���bQP�'VT$8
�,�sx�5�ocR���+�AD*V! ,�NC��������Dp�cl#u2��J��GE�w,����c�^\|�-��ؓ�e=v����aՁ����d�Cx��Rt�DKS�$
�TI j1(� 0c���.oC�>쏠�֦RA��	T�@��'P	���8��_�S �OS��) T������8
8��X���Qk?NKq�Y۸k�&�y�]�f�#����:5I�*�'����n�)��Yz�5<�!���L�2�_I_��b���b�>>7"_����Xȩ��o7;?���(m�FO�؏`U�����S$�
�����T�x��4*z	�I���И��["⌊眲~^�a�T�u�KӪ�	�q*s���D�����x"���s~y	ka���;�U��(�*A��i�^��E�4_� 9Y�?�~���Z���4��J�-�g�ȴ*]�Uc+�P	�����:���ʡ��bNڷ�\~�0�m�����wM�B�S���e*;e�`^&��Sm�%����#$��m��H��t]ފ���y���?iyM�;�ge��N���.Q,A�{Ȇ�� a���/Ƙ��3      �   �   x���]�0��w�e:7cv)i1��.�`,�L
N��}_P��΁�C9�~�곍�X(B�����f���7��]�x���C�!�'=v�QU�Q��l��gHP�~AF��Z�EQJ%�P;��EY�|)�o���h]�q��Ό��(c {	<AY�Iώ~iN��?p�͵u�u�	�&?��m�o��gh!�\�\s      �   �   x��ͽ�@ �}
x�]�o<	����R���R��-��@�4m�/�!}�M=�Ӝ#����3�Y�;V}��`p~�Hʬ
�<q4wEvtj��<��'�nA~nȃ�����9كr�v�F��6��d`��k����E�O+D|�OXH      �   �   x����n� �g�)x�S�ړn�ڡR�.Y��O�^��{����R����XF�-!�����Aum��˄�jH7����Q�=�� 	�Ћ��rF�I�Y�XD�x;�J�-e��@�5�[�z�{*]5@\!������{����o~_-1f�S��'�����\���hï<𗣅��L.�pUے���6���u���w�A`?��������Kpv�*�ձ~�ڒ�;����S�4?�ݩ�      �   �   x�]�A
�0���
�K�V�eIo�9/����L�"�v`%11�^�lդ�ۋ,}�K������P��*��m��L���n1
4&jZŜK�i`�s��/8�+����}+@��ڵ��kՠ�*��� �fr��e.�9�/�E7�      �   M   x�-�1
�0F���a
��Ӹ�%�P%[s}|<ƈ��7���Z��3<�<�!;�@_~�
�]i+u4ԃ�BDH      �   �  x������0���S��Md�mQ�U�J[�W��&��c[�C���v`�P{X%�d���7�?ՔVx�n�!�cu#$��8�������"�f��UfUɮ�����#ȑ��8p�lE}@��)1$>��~�B
c�"�:TB"��T��%��C�g�1􇌧nG��<g�B�	:MdEQ��1Ϫ���;�/V+���Vt$���F�-II���鄭֓ZwlQ~��2_�OpH�-zw���؜�YqK_\ÿ���nS�}'�Ոq|�D���VW��w��R�{c,�<g/�5�tZ< ������z�8�����v��"ԡ��<Dϥ�BG0�����i���[6e@+x���4bN:/��$�9��?�ޅ�13\��N7~5��	��HQ:��En�{�m��@(Gt�5HB���v��ż�4���Ӟ@����'@]_��VF;'v��\���-)�[
⧔����d��"+g��\���䍳/�O0��?��2>ɭ�7rN�l;ɲ�/m,��      �   �   x�U���0D���TIQ��L,VqB��H!�տ'%���w���]V�Y_��7z�L0U����;�a�,9H��C�\���O'~�rTAd��s�7w
`����I���ڀ&ޑ5�c#w9�Wzt�WzD���=i      �   �   x�5��n�0D��W�Kv���L
d蒅q$��L��IE��w��1��y���g� ���9��W��/�hs~��5�9_�������%��Ci���`�j˰�װ��q���M�1U�;ܪ���Q�S���D�����1���_K�<���Y��;$7}����#IxRp�p�)�^v�D�      �   �  x��[Ko$�>��`O17�H�kn��G�0�rp|�F��Z�B�-؆�{Ȫ��jv��>�+��f�,>j��OL���ֺ�Κ��]���������{|�}�����z�b����?����~xꌵ���a����������+,p���y^X��x���ܬ0�9�����o�_�XF_���}_�/n�����/��?�����߶/��?�n���k���w"ĳ7�wdv&u(�������q{׿ދ���+R}+��B�0�V�5�����~��0J	Z����<�3��R���x�|I�����;�.z�Ѿ��kkokŉ]@O�������E��k��7h޴���!����DmA��9�EkbL%0���녈J�nB�mٜ�� ��m��=��|�vt�.ò��XD��ES?�����.B_�_	ma���U�T�EC'�nǪp̂w��ϠM?�9��-GAh�y�����(v�Ȅj�O��-[��sd��!�K���PM���FUq��b%n-ӣ�L�CN��XrKvp�>��[ch5������\�[M�
��Į9>��8�\�R�DY�Դz�j>��s���
��'=�^ n}A���96G�ٶĨ�cv8 ��7��M���1�0L�XZ	�(٥9!x�1S��Z�e�F��h�&����T��i�>����3�ӄ(.k�3�c�4�v!}���r�홒>S�U�&I��-�ј��O#F�!L��=[�g;P;,ـ�MC�O�q�' �p�lGj}�5�޾�֧:�nω��v%D��9a�;�P��Z�L�/���Q�\�H�N�S�M��F�]A�����<�-V`��f� ��`�m>dz�Q\������^qw��/��.~����BHR�%gc�u����,�@|,�/_��7b��K�{�Bp�e�Z����;�W�7��H�d{Np56!�^���Mp����\S��R0T.h��Ej.�L�L�mr��K�m�����ɦe��B�n����n?��V��۷��`A��o�l�X���e��g(�|԰�C���k�eTR(gD���9[/�7���x7 �i�H�`�`���T!�B�⛿ƔD�שB��E����C�gK� h�h+EX"ϙuZWerR����r� �f;'l���|���3BD[���h�^��]h#��@�p�寯��ߎ'��
�Պ�����o�W?� QA��sR�o��!�d@Z��N��07�|]�J��Y-�A�vw�+%�~d�A�\U�����ǟ���kQ9��.A2�`��\�^e+�8��A2J~ҁ�c�(N����7�1���Cy{�����&;��r4A�G��A[�f:1�Ч��L��=�Sc�ȓ�@��S����udm
5X��><{�:gB��� �2~��7���f	.�����1s������3=i��R�.����87����-��~�����W��Yz�_����ŕ�Z����O��sV�&?���q��p'9�zL%��3�5F��6�����.G�
 `���*0�$7�wѕL.h8q0rǱE=���}ZCZ x���/}N� �i��h�\�4Ѵ2�2~��Ō����G��rS��TS��s ���P�D�j���I��=�DT ��\]��P&�5��x�%}@���f� ��]���Ejc�"&8jJ��0Ax�6��_�%�ӽ4߫B��I=�`i��N,�9ʧ������"���?��B��|�0���d�2�p%Uɸ��gkR��X/������:���r�i�p�U��|�g��J��|�%j7$'�*g�:L��ۖ����1JnC2	b�X�PЮ�gG�|5�W
���;�>���y�h#�i�o�P����0�L P�m-G;�)�u\g���I4՞S
v�P����H�~#mt�\)S���~i�W9h�q�%KF�Ä�(T����F��˃s7e��*V;� �R]p�,F��w���K�>�!b8��kwr�r��!�d�}�9i�#%_zw��͞A낵S1�\��O8e�yg~�n�<�ќ���ZW��X�����~�������������#ב�I0M�-� �u�|)�8��	�f Y*X�u�
�9B*2�Aʘ.$-"�@����9�, t�"7G�F.p	u�|^��r����bàd!v�w�
��촰3���f�w�W��H{,��ܴ+��
�/��Fz�I�w֥�a�ͩ��N;�@K� �fJ�]fBOsz�!'����[+�q��5Q9NE�/��~�^���6�+�������FH�@r�ʷ-�[�H�����`�0'�fbO���3�(�w��}�C]]l�xk����{���^�lVi��6?$��8�ong��>;��u������36�����֔b�w1rZ`s�2/�ǟ���[�6?�0�d��J�������<�Q�4�m�3�θ���M`���B�����ld�*��6��0�y.����-�
.*\y�U�-�Z�%����R��9c�L��a�E��u�O,X����51����(/��s�<!֥gZ���#c�V��@��(SqHuV`n�ugW�/L�E��D�#p6��Ԣ9o�o\�0�{zO�f��㰙�۲/�d�M$_6���������p�?�=��q���|�9�5��SvK��\a��L��~e
�D�p�.�HkL�S;gʥ�l�Z;�0ug�)I-�ƕ��S�)j�(�$G|�A��&祥}�  m�w����q `�eN3���Nle�
�����ʗ����.a�E��ѥ�0V��3��8v�Z1�\��3�}.����p{��&/���Ǭ����W����lk������FM��b
�<a�RZY@.�#7����J�BH�&��F��/% Zy�۔�(淍$���������I�R�Is)����q�V6�9�i���������A����_���������YF���Y8�7yʏ&OJ�	Di~�ȷlHu�S����S4*���M�t�6���'3�e:��-Qi .��E"�i$�8��:���B�W�� cW ޕW]����=A0�!^,Κ�@��	�s����L��q�8��]%�I(ؼ"0R�y*���#�i��]8�0
���>�����T��G��p����[:h�x���[u0�p��1�;�~0֩�";f.QsI�@qk��yN��Ҝ���p�\�ƞ�42;��(����e���懾���#dV�p�б�4&�Ę�������L�BQ1pF�E���'^8���W��a�Rl�xon⥯�.�T6�:*��<�K�iX�2��^���8%k]j��D��=�?�)z\��� V�ƖG����������#�j��L�|�V��B� e/�u/`�L��Y�L@��9}刁��<�+ \`��-I!�r ��ӰR��V���xW�� �ٷ�DԲ3��|�K�\���
�/$ȏ̺�EY�O�����K���z�P�?<��Z5�;1���s����/6���A���� �Nז�vh�S`0���2�q��g7A�=1$�ҥ&�\���T�o_^��UR�������*��JQL�sn�)�=���y�X��u�����&zQ~�A�ܛó*�bVj�`R��YKZ1�H2��s)֬��b$Y�k�g��f�V�
RÅ��ysE��+��gIF��C;+�P�Q|������")Ս���g������a���Ϫ�׊�-��A�����裏�M_�      �   �   x�M�Kr�0D��0�h�Y��hd�&�A%�·�<��v�[�bH�LXG�+�BZ|
�Lf��'�.!�x��Z�����w��r�E��8���2ߥ��|s^:�$w��@[�T�� ~�o̅u�[7���b��7�(!�:lwb���P�N�����rE��!��a���:�������.��ח�8/����8o�k��C�V�� ��7��      �   �  x����n�6�����}����Gw}���f��Jr�y�����uo$?��9��p��ɵ��ݻ���ʷ~�us���f0q,+�.4�R���Xȫ�]�/W-Tᓪ�/�	�HeJ�����ޒA�[nxU7���?��k�ե�U5�����'���I,��H?ܥ���!
4��(�~�j�~����x�h�q����S_��,(�� ��⟫�È�TŞ0$hvc襐����zꆱ����C7T7���{֖����̮2��X1�&�`#��^C	�H�+	�B��k�E��������������}g�'�h� 6�o����ʙ�!#�Nݵ�^�a���ȹ�o_X���F����Mr���>u���CĶ��A��U��0��M�Q�>;zb2#��2{ݢ�����k�,�l=��o$~K��Q�R�x����ϮM��C)��N@	-�jq85�����@��n�n�(���}�*��nLy�"4�X0���2e���.}�}_�O?�<Wg7���oL<B �VR��S����d��?Y��U��ࢵ�w��z�v �`A̧��C���a�����*6�Jf������"(Ňɟ����4���(擷�2\�U��>7���Ӿh! m<(�R��J�I\�#��y(��|F@�Ы����6��<A��B{<噌7���'E��zU�����Eis	E�������!�3���/�fZŋQ����*�&cL�T䥮�}W��e���L�K�������Զ *E����e�m��J��(�+����?X4@�?
�����)G�����FJ=k!��O������U��J��������������#A�� A�ˢ�R�+��o#rܧI)�\�L�y�yF@^�)$�FD��k�	�kBޠ8()�TB�GB�	�g����s:!��` �)!zJ*d2Z[����#��gWg�~�}��SMs7N�t��U��(�u�Y�����u\ók�������$,��`�x}ajR�[�����ۀ��Q�K5�̺�D$��� �X�X�\Ʊ�4fa�����RO|ѯ�����	�0Khcfc�X��6�L��."�����	��j�1!MC��0}����A*�_����߽;ߓ�5CS@~�riN%$̟i;���,�WJr}7bsE:ᨗ96p��c��8�˓���^���'�S����0�0O�0:/z���00G�ė��,��_���ۿgOE�      �     x���ێ�J������LQEQ���4�(���v�G�W�t�ɬ������������!�B���ԝp_&4oPx��_�P}�S�ۏ�xzj��N��r@���h�;�ޒ�Q>9A��)�Q��'�۹j�ĘW�bo�,*�Z%KC���6+��f����O��}���9ܨ�=�'2u�42w;&�yב�X�seƜ�����D��8�{+:�gݞ����Z�_�@�����6�Ṑƽ��j���lvZ�UjnS��A i
����F@dA &��p~�S�~��a�G��\UN9|&]_���7��1͈��Su��\W�H����-�"� �	yQhOw{v֘.��<�j���X2�~*{Q�4���2�a}a��L�7�ަw���j�&�d��n��Gw%f+�e�h�Ķ���m7Ϊ���F���A��ks�cmStx�)y*���Y^TT!�U�Y�gU��r9���ҦR�4o�;|�c>!(0d�c �m�}yqq]�Ӝ!ߟ'�{�K� ��f��wf���٪��!Æ����lv������MF����Y\����Y+���PT�w1�Cl�y��K������g񐻸9M�ܫ��[瘝w�wF�(�nT�[Q�j�r���lbYk y@
�㶴�������.ު���-�Ѡ���ʼؑt��v�TZ8�NE�k��|����*F�?b�'xe�4��!�~�13�"����(�;����fRx�ď@��񊄄�[su�ivHYb��k�9�z��g����Y�+Q;��/�'M4 ^ �9�bl6#\����^G�q�p�Ǵ%;��)3�!̻�1{&���z��F���a�Ԉ埮��S�gh������1q�1b�7Y>&Xz���1��N�&���f����Fp��p��i]���H^>��}?����vJ�d^��#�^�a �B�e�?�_�I�������0�c�����-� ��r%̑.����bTD)��Үדhm��:p�ݜ�؂�_�A�n�F�#���w����䰩�      �   �  x�m��n�0���S�K`���a�CQ`�]�v�ȔKIμ�/�6)��F��Ϗ��m��\��T�,���`�
$�)��D�!4ŰJ�熉�y���e�R�\+	�XIS9��@l�� �h�Ԭ �vL\N�Z9$˻2�<�R����J��f[�=p$�<np��+�h^�c�)_놰�W.TCC5a&S=u�u����{�ǰ��� �p��>�_���_>f"!�dP���D���%�	�
���7�i�d�F���f5�*ڄ�ݎ{��5�Q���a&w����k~��$��r_I��{��=׹lB��$�l$����C�'F��O�Y�����da����fB�NԿ�x�y����X�����"P�W�Vr�-=�7������#j�<\r��������      �   �  x��R�n�0=�_�h�$mb�h)ZÀ5C/�0kk��@����G9ؚ���<��=>���K
޵8���qg��0/�9lXu�(��~pd
�� ���e�2��	_��s��QL�8��;�ST�`��) 9��h;X
��\�C`J����ۉ����k�	��W���Ĥ�q<9)�)0�7�E��{&��j�C>1�������֮�&vhɵ������������;.��
�G���|c�j	��V�>u�+cK�W��S����?)��w��NJ���2����(� G#�F4�WcVˤ�f#���H��&�D��94X���%�K�Ϯ2�����N�6��i�o_�����qS���G�G��<��=�iŪ�&�~��Yr�rNyE�:���j��^<O��$�d-��1�cֽЛ�f�Dq�b}��~h(-%9�m�L���(�?��#�     
PGDMP         "                y         	   writeamdb    13.4    13.4 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
          public          postgres    false    217            �            1259    33817    clientApp_jobapplication    TABLE     b  CREATE TABLE public."clientApp_jobapplication" (
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
    is_validated boolean NOT NULL,
    article integer,
    copywriterfinal integer,
    editorfinal integer,
    translatorfinal integer,
    remarks text,
    progress character varying(255),
    is_copywriter_hired boolean NOT NULL,
    is_editor_hired boolean NOT NULL,
    is_translator_hired boolean NOT NULL,
    "jobAccepted" character varying(255),
    "dateAccepted" timestamp with time zone,
    CONSTRAINT "clientApp_jobapplication_article_check" CHECK ((article >= 0)),
    CONSTRAINT "clientApp_jobapplication_copywriter_check" CHECK ((copywriter >= 0)),
    CONSTRAINT "clientApp_jobapplication_copywriterfinal_check" CHECK ((copywriterfinal >= 0)),
    CONSTRAINT "clientApp_jobapplication_editor_check" CHECK ((editor >= 0)),
    CONSTRAINT "clientApp_jobapplication_editorfinal_check" CHECK ((editorfinal >= 0)),
    CONSTRAINT "clientApp_jobapplication_translator_check" CHECK ((translator >= 0)),
    CONSTRAINT "clientApp_jobapplication_translatorfinal_check" CHECK ((translatorfinal >= 0))
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
       public          postgres    false    233    234    234            �           2604    33611    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
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
       public          postgres    false    235    236    236            �           2604    33617    clientApp_link id    DEFAULT     z   ALTER TABLE ONLY public."clientApp_link" ALTER COLUMN id SET DEFAULT nextval('public."clientApp_link_id_seq"'::regclass);
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
       public          postgres    false    238    237    238            �           2604    50213    system_jobskill id    DEFAULT     x   ALTER TABLE ONLY public.system_jobskill ALTER COLUMN id SET DEFAULT nextval('public.system_jobskill_id_seq'::regclass);
 A   ALTER TABLE public.system_jobskill ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    239    240            �          0    33490    accounts_accounts 
   TABLE DATA           �   COPY public.accounts_accounts (id, password, email, username, first_name, last_name, date_joined, last_login, is_admin, is_active, is_staff, is_superuser, profile_image, address, phone, is_email_verified) FROM stdin;
    public          postgres    false    200   �      �          0    33496    accounts_accounts_groups 
   TABLE DATA           M   COPY public.accounts_accounts_groups (id, accounts_id, group_id) FROM stdin;
    public          postgres    false    201   #      �          0    33503 "   accounts_accounts_user_permissions 
   TABLE DATA           \   COPY public.accounts_accounts_user_permissions (id, accounts_id, permission_id) FROM stdin;
    public          postgres    false    204   e      �          0    33794    adminApp_onboardingapplicant 
   TABLE DATA           �   COPY public."adminApp_onboardingapplicant" (id, "jobTitle", score, accounts_id, remarks, "dateScore", status, is_active) FROM stdin;
    public          postgres    false    234   �      �          0    33508 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    206   �      �          0    33513    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    208   �      �          0    33518    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    210   �      �          0    33523    clientApp_article 
   TABLE DATA           Q   COPY public."clientApp_article" (id, article, headline, accounts_id) FROM stdin;
    public          postgres    false    212   �      �          0    33531    clientApp_education 
   TABLE DATA           s   COPY public."clientApp_education" (id, school, degree, start_date, end_date, city, personaldetails_id) FROM stdin;
    public          postgres    false    214   �       �          0    33539    clientApp_employmenthistory 
   TABLE DATA           �   COPY public."clientApp_employmenthistory" (id, "JobTitle", start_date, end_date, employer, city, description, personaldetails_id) FROM stdin;
    public          postgres    false    216   �!      �          0    33817    clientApp_jobapplication 
   TABLE DATA           d  COPY public."clientApp_jobapplication" (id, "dateSubmit", "submitApplication", accounts_id, is_copywriter, is_editor, is_translator, copywriter, editor, translator, is_validated, article, copywriterfinal, editorfinal, translatorfinal, remarks, progress, is_copywriter_hired, is_editor_hired, is_translator_hired, "jobAccepted", "dateAccepted") FROM stdin;
    public          postgres    false    236   E%      �          0    33547    clientApp_link 
   TABLE DATA           H   COPY public."clientApp_link" (id, link, personaldetails_id) FROM stdin;
    public          postgres    false    218   '      �          0    33555    clientApp_personaldetails 
   TABLE DATA           �   COPY public."clientApp_personaldetails" (id, profile_image, "jobTitle", fname, lname, email, phone, country, city, address, birthplace, birthdate, nationality, "profSummary", postalcode, accounts_id) FROM stdin;
    public          postgres    false    220   j'      �          0    33564    clientApp_reference 
   TABLE DATA           d   COPY public."clientApp_reference" (id, name, company, phone, email, personaldetails_id) FROM stdin;
    public          postgres    false    222   2+      �          0    33572    clientApp_skill 
   TABLE DATA           J   COPY public."clientApp_skill" (id, skill, personaldetails_id) FROM stdin;
    public          postgres    false    224   �+      �          0    33580    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    226   R.      �          0    33589    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    228   �?      �          0    33594    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    230   �@      �          0    33602    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    232   �F      �          0    50199    system_joblist 
   TABLE DATA           Y   COPY public.system_joblist (id, "job_Title", "job_Description", "is_onHire") FROM stdin;
    public          postgres    false    238   �K      �          0    50210    system_jobskill 
   TABLE DATA           I   COPY public.system_jobskill (id, skill_name, "job_Title_id") FROM stdin;
    public          postgres    false    240   \M      �           0    0    accounts_accounts_groups_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.accounts_accounts_groups_id_seq', 74, true);
          public          postgres    false    202            �           0    0    accounts_accounts_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.accounts_accounts_id_seq', 79, true);
          public          postgres    false    203            �           0    0 )   accounts_accounts_user_permissions_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.accounts_accounts_user_permissions_id_seq', 1, false);
          public          postgres    false    205            �           0    0 #   adminApp_onboardingapplicant_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."adminApp_onboardingapplicant_id_seq"', 22, true);
          public          postgres    false    233            �           0    0    auth_group_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_group_id_seq', 3, true);
          public          postgres    false    207            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    209            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 72, true);
          public          postgres    false    211            �           0    0    clientApp_article_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."clientApp_article_id_seq"', 91, true);
          public          postgres    false    213            �           0    0    clientApp_education_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."clientApp_education_id_seq"', 25, true);
          public          postgres    false    215            �           0    0 "   clientApp_employmenthistory_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."clientApp_employmenthistory_id_seq"', 119, true);
          public          postgres    false    217            �           0    0    clientApp_jobapplication_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."clientApp_jobapplication_id_seq"', 64, true);
          public          postgres    false    235            �           0    0    clientApp_link_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."clientApp_link_id_seq"', 17, true);
          public          postgres    false    219            �           0    0     clientApp_personaldetails_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."clientApp_personaldetails_id_seq"', 71, true);
          public          postgres    false    221            �           0    0    clientApp_reference_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."clientApp_reference_id_seq"', 15, true);
          public          postgres    false    223                        0    0    clientApp_skill_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."clientApp_skill_id_seq"', 67, true);
          public          postgres    false    225                       0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 284, true);
          public          postgres    false    227                       0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 18, true);
          public          postgres    false    229                       0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 73, true);
          public          postgres    false    231                       0    0    system_joblist_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.system_joblist_id_seq', 5, true);
          public          postgres    false    237                       0    0    system_jobskill_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.system_jobskill_id_seq', 100, true);
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
       public            postgres    false    200                       2606    33802 I   adminApp_onboardingapplicant adminApp_onboardingapplicant_accounts_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."adminApp_onboardingapplicant"
    ADD CONSTRAINT "adminApp_onboardingapplicant_accounts_id_key" UNIQUE (accounts_id);
 w   ALTER TABLE ONLY public."adminApp_onboardingapplicant" DROP CONSTRAINT "adminApp_onboardingapplicant_accounts_id_key";
       public            postgres    false    234                       2606    33800 >   adminApp_onboardingapplicant adminApp_onboardingapplicant_pkey 
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
       public            postgres    false    216                       2606    33827 A   clientApp_jobapplication clientApp_jobapplication_accounts_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."clientApp_jobapplication"
    ADD CONSTRAINT "clientApp_jobapplication_accounts_id_key" UNIQUE (accounts_id);
 o   ALTER TABLE ONLY public."clientApp_jobapplication" DROP CONSTRAINT "clientApp_jobapplication_accounts_id_key";
       public            postgres    false    236                       2606    33825 6   clientApp_jobapplication clientApp_jobapplication_pkey 
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
       public            postgres    false    224                       2606    33669 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    226                       2606    33671 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    228    228                       2606    33673 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    228                       2606    33675 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    230                       2606    33677 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    232                       2606    50207 "   system_joblist system_joblist_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.system_joblist
    ADD CONSTRAINT system_joblist_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.system_joblist DROP CONSTRAINT system_joblist_pkey;
       public            postgres    false    238                       2606    50215 $   system_jobskill system_jobskill_pkey 
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
       public            postgres    false    226                       1259    33694 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    226            	           1259    33695 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    232                       1259    33696 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    232                       1259    50221 %   system_jobskill_job_Title_id_86037a74    INDEX     m   CREATE INDEX "system_jobskill_job_Title_id_86037a74" ON public.system_jobskill USING btree ("job_Title_id");
 ;   DROP INDEX public."system_jobskill_job_Title_id_86037a74";
       public            postgres    false    240                       2606    33697 O   accounts_accounts_groups accounts_accounts_gr_accounts_id_a094314b_fk_accounts_    FK CONSTRAINT     �   ALTER TABLE ONLY public.accounts_accounts_groups
    ADD CONSTRAINT accounts_accounts_gr_accounts_id_a094314b_fk_accounts_ FOREIGN KEY (accounts_id) REFERENCES public.accounts_accounts(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.accounts_accounts_groups DROP CONSTRAINT accounts_accounts_gr_accounts_id_a094314b_fk_accounts_;
       public          postgres    false    200    201    3016                       2606    33702 T   accounts_accounts_groups accounts_accounts_groups_group_id_d2af1629_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.accounts_accounts_groups
    ADD CONSTRAINT accounts_accounts_groups_group_id_d2af1629_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.accounts_accounts_groups DROP CONSTRAINT accounts_accounts_groups_group_id_d2af1629_fk_auth_group_id;
       public          postgres    false    3036    201    206                       2606    33707 Y   accounts_accounts_user_permissions accounts_accounts_us_accounts_id_001e820c_fk_accounts_    FK CONSTRAINT     �   ALTER TABLE ONLY public.accounts_accounts_user_permissions
    ADD CONSTRAINT accounts_accounts_us_accounts_id_001e820c_fk_accounts_ FOREIGN KEY (accounts_id) REFERENCES public.accounts_accounts(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.accounts_accounts_user_permissions DROP CONSTRAINT accounts_accounts_us_accounts_id_001e820c_fk_accounts_;
       public          postgres    false    200    3016    204                       2606    33712 [   accounts_accounts_user_permissions accounts_accounts_us_permission_id_7df1f232_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.accounts_accounts_user_permissions
    ADD CONSTRAINT accounts_accounts_us_permission_id_7df1f232_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.accounts_accounts_user_permissions DROP CONSTRAINT accounts_accounts_us_permission_id_7df1f232_fk_auth_perm;
       public          postgres    false    204    210    3047            *           2606    33803 S   adminApp_onboardingapplicant adminApp_onboardinga_accounts_id_d9c4b20b_fk_accounts_    FK CONSTRAINT     �   ALTER TABLE ONLY public."adminApp_onboardingapplicant"
    ADD CONSTRAINT "adminApp_onboardinga_accounts_id_d9c4b20b_fk_accounts_" FOREIGN KEY (accounts_id) REFERENCES public.accounts_accounts(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."adminApp_onboardingapplicant" DROP CONSTRAINT "adminApp_onboardinga_accounts_id_d9c4b20b_fk_accounts_";
       public          postgres    false    200    3016    234                       2606    33717 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    3047    210    208                       2606    33722 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    206    3036    208                        2606    33727 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    228    3078    210            !           2606    33732 P   clientApp_article clientApp_article_accounts_id_674b4325_fk_accounts_accounts_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."clientApp_article"
    ADD CONSTRAINT "clientApp_article_accounts_id_674b4325_fk_accounts_accounts_id" FOREIGN KEY (accounts_id) REFERENCES public.accounts_accounts(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public."clientApp_article" DROP CONSTRAINT "clientApp_article_accounts_id_674b4325_fk_accounts_accounts_id";
       public          postgres    false    200    212    3016            "           2606    33737 P   clientApp_education clientApp_education_personaldetails_id_82358fb9_fk_clientApp    FK CONSTRAINT     �   ALTER TABLE ONLY public."clientApp_education"
    ADD CONSTRAINT "clientApp_education_personaldetails_id_82358fb9_fk_clientApp" FOREIGN KEY (personaldetails_id) REFERENCES public."clientApp_personaldetails"(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public."clientApp_education" DROP CONSTRAINT "clientApp_education_personaldetails_id_82358fb9_fk_clientApp";
       public          postgres    false    214    3064    220            #           2606    33742 Y   clientApp_employmenthistory clientApp_employment_personaldetails_id_e915ace6_fk_clientApp    FK CONSTRAINT     �   ALTER TABLE ONLY public."clientApp_employmenthistory"
    ADD CONSTRAINT "clientApp_employment_personaldetails_id_e915ace6_fk_clientApp" FOREIGN KEY (personaldetails_id) REFERENCES public."clientApp_personaldetails"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."clientApp_employmenthistory" DROP CONSTRAINT "clientApp_employment_personaldetails_id_e915ace6_fk_clientApp";
       public          postgres    false    220    3064    216            +           2606    33828 O   clientApp_jobapplication clientApp_jobapplica_accounts_id_583dcc3c_fk_accounts_    FK CONSTRAINT     �   ALTER TABLE ONLY public."clientApp_jobapplication"
    ADD CONSTRAINT "clientApp_jobapplica_accounts_id_583dcc3c_fk_accounts_" FOREIGN KEY (accounts_id) REFERENCES public.accounts_accounts(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public."clientApp_jobapplication" DROP CONSTRAINT "clientApp_jobapplica_accounts_id_583dcc3c_fk_accounts_";
       public          postgres    false    200    236    3016            $           2606    33747 F   clientApp_link clientApp_link_personaldetails_id_67dd0eb9_fk_clientApp    FK CONSTRAINT     �   ALTER TABLE ONLY public."clientApp_link"
    ADD CONSTRAINT "clientApp_link_personaldetails_id_67dd0eb9_fk_clientApp" FOREIGN KEY (personaldetails_id) REFERENCES public."clientApp_personaldetails"(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public."clientApp_link" DROP CONSTRAINT "clientApp_link_personaldetails_id_67dd0eb9_fk_clientApp";
       public          postgres    false    3064    218    220            %           2606    33752 P   clientApp_personaldetails clientApp_personalde_accounts_id_9070254b_fk_accounts_    FK CONSTRAINT     �   ALTER TABLE ONLY public."clientApp_personaldetails"
    ADD CONSTRAINT "clientApp_personalde_accounts_id_9070254b_fk_accounts_" FOREIGN KEY (accounts_id) REFERENCES public.accounts_accounts(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public."clientApp_personaldetails" DROP CONSTRAINT "clientApp_personalde_accounts_id_9070254b_fk_accounts_";
       public          postgres    false    200    220    3016            &           2606    33757 P   clientApp_reference clientApp_reference_personaldetails_id_e266ad92_fk_clientApp    FK CONSTRAINT     �   ALTER TABLE ONLY public."clientApp_reference"
    ADD CONSTRAINT "clientApp_reference_personaldetails_id_e266ad92_fk_clientApp" FOREIGN KEY (personaldetails_id) REFERENCES public."clientApp_personaldetails"(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public."clientApp_reference" DROP CONSTRAINT "clientApp_reference_personaldetails_id_e266ad92_fk_clientApp";
       public          postgres    false    220    3064    222            '           2606    33762 H   clientApp_skill clientApp_skill_personaldetails_id_57a81148_fk_clientApp    FK CONSTRAINT     �   ALTER TABLE ONLY public."clientApp_skill"
    ADD CONSTRAINT "clientApp_skill_personaldetails_id_57a81148_fk_clientApp" FOREIGN KEY (personaldetails_id) REFERENCES public."clientApp_personaldetails"(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public."clientApp_skill" DROP CONSTRAINT "clientApp_skill_personaldetails_id_57a81148_fk_clientApp";
       public          postgres    false    224    220    3064            (           2606    33767 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    226    3078    228            )           2606    33772 J   django_admin_log django_admin_log_user_id_c564eba6_fk_accounts_accounts_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_accounts_accounts_id FOREIGN KEY (user_id) REFERENCES public.accounts_accounts(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_accounts_accounts_id;
       public          postgres    false    3016    200    226            ,           2606    50216 J   system_jobskill system_jobskill_job_Title_id_86037a74_fk_system_joblist_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.system_jobskill
    ADD CONSTRAINT "system_jobskill_job_Title_id_86037a74_fk_system_joblist_id" FOREIGN KEY ("job_Title_id") REFERENCES public.system_joblist(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.system_jobskill DROP CONSTRAINT "system_jobskill_job_Title_id_86037a74_fk_system_joblist_id";
       public          postgres    false    240    238    3094            �     x���ko�L�_�O��#�
,I���h�`��m��Y�	,������=��񘜔�ɰ�����.e����k�截���jXoE���pMd�ȴ��O��0��J&�<t��s�Y��_T6S��FB���M�;�7���"�E�n �=�u�*N�H�W���J��Y{Bx� ����*:�T�e��E0 Vֈ��/���K�<,=�x�,O�Px�a��d�@���Jc�i�������~l?��~g��i<>����G�E�if�d���r�ֆ�h���c����7R$aM|$<�|������O�+:f��`�A� �*�.,�����w�k.�����A+ݸ��=��n����� _�)3�����v�A^h�<�eѡ�7҇�1��������X�b��
B���0$` 
�T��7��e�i9�'b��m��Rg��d6�F�ȵ�-�obE ����������i0�ڙ�I������������u�XSt�2D��#�
FXG���Mф�.F�K;<�c�x�7�Np	0���Zo�2{��{v0j�����O�a4>.�3{'^������z��ua��C���L^ߏd���[�r��<�W�W<J��^p7�y!�=?1��R,"�����Z�JZR�/S �+��
TG��U��L'���念U��W'�B����GuQ��E��\E�ԭ]{k���\�:e�.I[�<�vw����֓y�eӟ���7�l��wn�C�/�h_J���
�Rv���Q�{cU�o6�����OD�,      �   2   x���� ��l0��h.��������ﱣ�8�;���Ζd��      �      x������ � �      �      x������ � �      �   ,   x�3�t��L�+)�2��R�M�KLO-�2q�K�Ҹb���� �k
m      �      x������ � �      �   �  x�u��n�0���S�	�����ކ�v0���zu��v7���P�H��-�>�([<���/�r
���u~/l��mkX�
���W����`��Mn�`�b�����)��P���n���2_T����r
D;���bQP�'VT$8
�,�sx�5�ocR���+�AD*V! ,�NC��������Dp�cl#u2��J��GE�w,����c�^\|�-��ؓ�e=v����aՁ����d�Cx��Rt�DKS�$
�TI j1(� 0c���.oC�>쏠�֦RA��	T�@��'P	���8��_�S �OS��) T������8
8��X���Qk?NKq�Y۸k�&�y�]�f�#����:5I�*�'����n�)��Yz�5<�!���L�2�_I_��b���b�>>7"_����Xȩ��o7;?���(m�FO�؏`U�����S$�
�����T�x��4*z	�I���И��["⌊眲~^�a�T�u�KӪ�	�q*s���D�����x"���s~y	ka���;�U��(�*A��i�^��E�4_� 9Y�?�~���Z���4��J�-�g�ȴ*]�Uc+�P	�����:���ʡ��bNڷ�\~�0�m�����wM�B�S���e*;e�`^&��Sm�%����#$��m��H��t]ފ���y���?iyM�;�ge��N���.Q,A�{Ȇ�� a���/Ƙ��3      �   �   x�M�Qk� ��g�.�XH�ǐ�-0��ʞ
���jkPi�o��e�����ǟ[Ibbv�#�ۖeY����!~���u	�uJ��.`vy����m��B���'��%(+��9%�ۂ�2��Ŵ�`f�cf"+�4!�W"%Uj	��[_h3k�>LG<e֌hޥ��n��{n6�X"�T�KG��38�{��7����s�N5���=�f�      �   �   x���1�@���_�@E��$$��˩�� �h��z�#qp�6yM����k�{BSj�K�1Z�=d8�=��ߵ��넔�:��(ڪ�ں���MuԎe����cg����;q���p�~�S���8��d�xc%�����4����*�ӆ�>�4k�      �   �  x��UK��F]sNѻl4��$3��`� �|�� �)5�bG�n��)F�\#��%|�$��EM�,t� �a�,�z��U���S��;3[N�勗�/��-������<$�̭�R��#���X�9d�9oJ{θ�2�v����L�����ܦ�*�H;6O�)��Vf���Gg��G�{��T��.��*w`��19�m"$�4���Sbv1 �v�'�|&Y�JVԝcY7���曆��g� M7kq��Ot��y|{�ӻ���?�����ל.�c�+j��Q�e��d� AO�Š�`�J��J�_<=Ҙ8�[�"�����A"1sωQ'�ܮ͏���@��R[�4�X%ܴ�E�7(f��M�>RF����A��(���(�'�s
�fB�G�R`���,��$`�£�(⶞��[�}Ӽq�G�/ڐf��j]�Z=�L�S6�H?���vŜK�L.��&v��7hT+f��O}ۇ8{nAA_�&��"�>Dw�"��&�u�Bk�8���j�dy�� �ڪpj_F
ǯT�l�;D�.��T�T�2'W8p�՚�Eଡ��e�ɍ���aa�,yc{Jd�&'�;2����زWBګS%3o����j�j$UE�u �u�R��Eocܯ�E��'V����+�[��-T�u�������灴q<V�e�`�ųb`t?ύ�Q�p�h�A&�*A5�y ��@^��Wp�m�͗L�e�q��U_i޲�Z\xb��]ՠu��Ҷe=�l/�?��p/`-���4:/�����0.F�.�1v�|�S��^I��yi Z�4�4j�h9�u�vS*j��,T_!�"I�p]$u�2�88���9]�j�,����#<����{����2�]x����asc��6[��9�Z��,����Rrv��P��~~.�����ww�q� w��qey��r�4���i}uu�z\      �   �  x���[k�0�g�S�>m0b�.��/#a�AZ�@�E��ċc�Yɷ�����0(�q�d����d�!�4FM)��&GV���P��(Z,<���͜�|;�v��6͇���������pp{��ko�غ~H/���~~,U%���hε	�f�?��hɂ��j�����-ӄQ�TXRDRhbBW�]vW�j{�����0�]=n"ou}9���UW�!�m�&.v�o�����7&��冢�&W��2Ik���݉�1RC��/�����r�����,DT>EJ0>!��H��d���5<��4k�b��\��?�'-W����>�Zs�p0�Hʏ���ގ��Ā��W���agp�q.�g���u����~�����>��*��Q�B�J
�:�������V������4��+������{��l�z��1��ɳ,��v�?      �   M   x�-�A
�0D���a�l<��Z�.T���(���`#b�Vz<���팸~�m��4G�)>[�](���$��($_>�      �   �  x��UMo�F=S�bN�EQD��[�$��E���@0"��F�]vwiV��}�����Z@"����x��hs]L�$����V^�7��W�o���������.���v|]�����y�a��r؛�7����|˫������jS^��כ�cg��$����7޳�G��gC�!I��@���������&S�J\�6p=r�L�`��$D2�>�֚���]N�Q�p1�=�ߚ*��w.��-�:�3S-2��|F��:�C�$�&�}��@R��5'`Nx����F�%����
�d��@~r��%9�:����zA��ѿ�r�#rQ�Dekɤ���qU�eyY����K�6Wg�p�K����G�~�P�<�EÓ4�o�輼|{���L�3�'D��I�$��h�x������L)��3(��L�ك��H��l3�H;H2�Eq�u���	����w�V ��ڨ��?�;d}hQ�_3�m�S�V�I�%g�Gg*'K�?�h��"��JQ5����9N$Ċb� �6L�'f�Yl�/�ٮ�0M&mP%R~=X���y��p������9r��� &���zz��U�@�!<����K���d"E��:謰�4A ���w+�AP���q�>�P!�d�FO,0n^�gn��fy�L��d=�;?��v�=�~��j��a�m�3���7EV��� + �T{�)���5���>��Y�Ē����}*�z���0�۟�c����Y���>C�h�y��Y�(���%�(3����Y:.�LFu��Ai=���yܮ��F�r,��� #���^D�ZI����#H��J�.5���Ev�d"SG����]��kXA$M#�n����Z���V�>M�����q��N]�� ��@)��d�Q[ŭf�Γ�+��A@���[�b�#��q�gU�Y<���ߘ�Ʈ      �   �   x�U��
�@E�ɯd2����.��&h�J�;�����.��\�Q6���a3�ޑ5�q��_~��LaB�/ӛA�%
�'�V'�,�xV����Ki\��}�(��Q?s -!�=�5�s���ŵ'ԭ� ݪ1�lU(r���c�#|6��	mL�      �   e  x��TMo�0=ӿ��(�|8Nz�f�b�ҡ�]T���Ȓ!�q��G���aV씐���㇋)<8[s�d��[���XN�b�\:�m�s-A������,� ��� ��Tx�R�~��sX?��p�`��g}BU�.D�l�ٳ�#�#;kZ�O�����[Iױ��ܫ=%��@�����4+
�Ō�d.��2��#��ِ� ���X���Z'���Q��*�t&�����m�͗����Ϛ����)�H����Ųl*������o
%�
�F�S�é�֑�����(��T���#�:�5>���Xh�O`�Zi�r8ph08e�V���8�A9��lҗOe(:�X�^*������Ry�\�r�2W��U}�a�)7B�3H��Qci۶7\�D1�ے�F�e>�ɕ� ���M�J�)Ġ���_C�������N6�ҧd.�.hd_�K�vw⎥E��,�x9�/eu[}��t1�'��WJ�q<��׼����:Y�;��&�9�q�=���yG��(�q�Xe��7��9|!OʕM2��9�����FG
)`�~<�Y���*�{e��ħl�jl+v��؍���>^R����J>7x'��\���,�~ 9�	      �      x��\_o$����>]�K�,�����%�[���C�4ڝX+-$�B仧�dO���gv%�dV��U�b������1�7�m��9�Y�Y�ч_����o����{��_������_��m����u�6�+X�cg�u�
6���������n��[`A�A" a��ۇ��j��8�H|YC��pú0��C���\�ח��ǿ����폟�����͟�n�����#���"�X�����I] ���B�;��?lo��{�Ǿ�aE*�R���A�Ƅϕ:eͲ������ߏR��byyzO����7�J�D����Er6ڧ�8��F�V��G���j�l\ع ��{3��w6u6D$|.��V�D��]�&�T.�e�x�p����+巼��� �D6U���`>
F�	:�˰lo�+��w��|u��4�����.tT��	ma��ޱ�&gRqq����w�����~$Nsb�:g��f�=E~���&�=�:���Up��&v�'~���`M���>\���eb�*q��0=zbʝcw�E��^Ӈ��`�c�&�L��)�zj5	+Ķ��� j��K�e����#�P��e�K�ά�zұ���3ĭ�9P�bs�m��#�l[b��c68@���m����q5b�a�b�h%�d�f�\��:���,+��.���t�0j0�w{�N�摚\���mԧ	QL�o���iN���V�G�nĶg��L���6I����|3��q��0�R^�g��lj�7`o�P�S��9�	Ε�ᛳ����L^xSK�OuFݞNO5쌓+j|��ݐky��4PCK����P�Ѯ�Ao5�0⾓'̼��ш�+�8 �ŐǾ��
,12Ì�� �~��L7��s�����W��2�燤���1=g~��|��X^]�<6����PY�c߈�g0>��$�����n��lܡ}��,S;�&�W`W�f#��9�=�x��#4�c��a
�c �zn��!S�hIx����<mM�Z6+�jn`�������m��xK�l`	�%�;�����EK;�8��e��2*)�7"��轭�����p{3 �i�H�`%`%�S�V!J�ͫ1���s�0ApPl�iw�;�'C� h��V���ĞuWerT����r� 5f;%lbb�����=Bt�e��J$H��[h#�Ԁ���w�x�����[XAb�ؿ����~���
�v��Ii�p��o�i���z�Sp9���U���j@�s�)���(h�� 5Ā�b'w�w{�Cwq�QTΨ�I�.ؠ��@�U�����H��D���G1��5o�~�썞˛o ��	�Mvz��M�⌳�h�W'��4Л)}Z��tjtRy2g��|jX$����M�^��~)�kOS�bO�5<*��|�����RKN�g��� mj�ՙ5}6)N�Sqq�8?����)��~Gsz]H�#ߒ,=ܭ܀�����X� M�G�q@�U8ɏū�ݸOs�nɥ��Nm�5F��5�	~P�o�
 �����^����/�(��pb0`��%�_K����  ~��<'��5��mG�4�i�Nehg��������8�ԼA"���^�9 �3RԁƑ��E��$����iGT ��]�4�I'7���TF-тB�l(/�����Hm`̀]Dp	����-L�ц�u��?�I�*T��S���kvdq�P��{8\\W����I�����q��'�g���/�J�=g���QXH�jb}h�,���68`0�:�0�͐ v���R��#<i��Pr��%�H-~����<�ؓ�b�Uߦ��m�Q��Ik���m����w��ꆒ���-O���0��No�60$v+������Ƞ���kmkis��p�b|�q�M:����谱�RmE:m7��A�W�R�z���~��6�S�d�9L8�B��x�nt��P��*żU�ڐ�@�0���b��mG0����c-"ւ�~]�6'/�!{O
!h&�hmC�K1Q���b��Z���Yx�q(RrS_�������-��y\��Ԃ�Z������������WW�3��TK�#��`��[.p�]�^�}?yI4�R9�����%A7GHD�1H)�����H�2G��vZ����#�֗O�$� ��$����~��`P����:��Ph��ǈq�k�U��b:�p��be�Y!�B���~�ז�g]�)�\�_���8B����d&�8��r�O)M�Z�����R�����Q�\��zi�Cl�O�o/o���1B���W~m1p�ZK2Oo�����e�Ȗ����5�(�wy�)A���.��}k����w��վ�I�Ҕ�m$py8�_no�N}s������;<,�������,nM	f������S;�����N�T�en� �a#s���Z���o����*�����Ȼ��������S�q~�ќ��S�_��f&8�`A�- ��¬���*m��
.i�\Ŝ5�g,�*����5l��I���'v�)�:�51ҁ��(/���<9W��i��0�hh�/Q�T�!�tX�����;�r|ab.2����ް�R���XK�q)�d��	�����aS���_�Ξ� HT:�������ӧ��E��/���������_-]���j��)_6���\a�֙6��dDư�.ֈkL�S;gʡ;ޘ;�0�'�)J,�/��5�t���L�T�<��5���Q5��) @���\n�#ğ����9M���Z��*p�WK++��^��9i&z�|*c�K<�_�.Q��},_�r°Oݡ���^�u{̷M&����Y����>����Vtj��5���)�2�%���8�6��0��TBB�0$	5b�Ɛ� ��(orO0�0.�6�LA��s��SG)K�t$�1�0����t�8lg��1^b"�)�Ϟ�������?��������iF���Z8Λ<�ɣ�aG����~���5}9E��*���lĒ1�0��/'3�ez��-aI �ڿD"��%HRq )u�-�B�*�q��+�e�˹�cߞ ����&&�'x�9�K���T�8N@Ӭ��*��"0��H��q"by"�s����=��s� IK$�/J7���?�@����O�f��L��4�9ޑ��X���옹D�%� ŻX#�o��]g��8���:{:��\����P<'C��0(E�͇����#dV���бy4&H�������,ӪP�x#�"�q����9�ۛ�Kٓ�zs/y�p���Yw�u���_���t6�Z��:�^��^(Y�S�`��0A$���Qv�c��*5�<���8�N��\�ە��ɅR��`�P)@�/�q/`�L��i�L�5�9�r��i5�y�V �j嗤����H8��Z�
"А���p����VqP�� S3���x9���8x_H
��̺�Ei�O��rӳߗ��.B	Ch��Z5���L���O���B� �@���Z][�ڡi~L��;R���R��i�ĐȧsI�)_��1:߾����oTqq�ϣǯ��th�*E1y�9�����*FZ� }�����&za������U�Z1+1|0)E���%���H4u��k�`U1��1�ZX�h�j��Br�u}E��+����$%R��N
uZ��(~y)�W��z�����������zA�\���WU��b��q֥�,�y�bS����g���Sκn�.������MW�����8>�C��9+@�imǩYi@�rI�6m��X�:r��t��_{r��񗭝X��3�(0q�����b��_x�́6=`���D���3�ŉX���)"N�������W P!A�����p��hŎ��������i���+ �3�
�O�@��U�Z<�Q,)	�Z>a��.�����Ce�b~�d��>J�@҂���u*��h��:��׳%��6i���~r%!��L���2�t�����_.����N�滷�"�����V��u��;�7 �  �^ �*�RY���.�we4�籑/R��U�WO����J$%�/��$�"��}?��U\��R�z��S�5����|?,�+�y����B/.��xc��}�n">��廴\���5�ݑ�6������-��	m��6Jm����������K2J�������_[7���"�R��y��:3䕫Ԍ�Up�C�]�Z_n�VU���Oe��l��H^P�zO�������M+lˇ�R��l?�oJ3/T��o9�����n5�JC̡ k���oY���&"'o�L���)"z�K�&1%Q�h�K���i5��3����V��O�d`l�x���`[y��9�<���ڛX�"|�<��a���T'��.o�Q��"2��Hǋ�����7u�݊      �   �   x�M�Kr�0D��0�h�Y��hd�&�A%�·�<��v�[�bH�LXG�+�BZ|
�Lf��'�.!�x��Z�����w��r�E��8���2ߥ��|s^:�$w��@[�T�� ~�o̅u�[7���b��7�(!�:lwb���P�N�����rE��!��a���:�������.��ח�8/����8o�k��C�V�� ��7��      �     x����r�6Ư���}��vW��{t���ġ�@gN޾+6�q�{���O��o?�oǮ��v���j|B@Q��T��
�߅�]�TN"'����&�;>,�b�.�WU,_���-/����y����󅽥����-��l�j(�j���Xwmذ��?��j��W�$�I�F��t����u�k���o����M�O�>B�an�E4�8Mw�9�k�,���A4��?�z�F8��W�	C�A�p7�Y�*��TN�0��TT��ť��\=K���q�������Z(i	n$�P��P�T �J���Cw�_��Pn�(�=ק*��������� n2ܦ�Q���Ù��B>�k;�����X��Kݾ�ͺ��נ�&�k�^{�3�L�!t���!t�x}��ɷ�GS���gW��̒VjV�{���N��v�ET����q�[V���t.)sJ(�!���vm�}9A��O@����ގM��������][6�jb+��>�*��tg��OL�L 	Ze�\����M�}�/>����8U�q�{_�;S�=�hiL�hT1s���We.dƿr"u��Pi�	�D����T���O�C�^�~�pl� ��#tHN�±���Y	6F��S}l�h�˥��eB*�O���Ժ����SS��z�W���E"�$t��Z��F:�8# F����
o!�4����Lȉ0�ل7���'��F�zUS�o���t)����YD,g��	BQ�P�f����H�zٲ�_��aag����X�޿7!�B���� L.U���"4>Ų*���?�i���.st��N�|F�\a:��`q��h@�O��A�'4_fO���J��R�V��@���Hx_=���4�M	���H��P�"0�	:%h{����_��}�`��>MJs<2��1#�	Aa6��,��j��HHk�����sF:"�GBZ��;=��9tJ��"��!hJj%d���a�#��GW��=�}��ǒ�n��麩�<xy��o�b��F�v�c�x�q��-(G.��?0D��T,R�L=����n۠B<�ǣ	%��D�q��/n�Dȶƶ�(C۩�fa��_ݏ%�0�S=5UJ�x���i�D��1 �"��	���. �u��\��M����^R�@*��Wy~^}UC�QW�-���r ֣�Kr:"�tL�95}>�\���m$�L��/s�����c���q�.O܎oz�K��Q��/3K�;�ϋ'����z�0Ii �gu<, �g�	,O�MMQx�`�,�e`ֱ�ST:��B1+ K��t,b����ܼZg�י��l���E��%^���,�Pd\�,#��=��؅����t<-�N|�G��Ȝ��-�� M�gX���c���H<#�M1�*8��I8Fdc-�ͨ��CBdY���;�[@�&�cU�JU��}���HH����B&������"���7?�0�X����j/(O4�}Î,Cw�X�D�A�����#X��I>������ؖ��S��U�g����/1X�      �   �  x�ݖI��H@ו��}+ �`��$c�1VK��13��w�TRu�o�'xҋ�|n�W'ψp�W7c��h�R��0z�ˏU��.���T�_�u�~���<-C�k��ϛ���tX�njUN���/��~�[>5�M�s�pw�V�$Ic���쎅�ZC�_:
�9���]K�{�S�w1m2�u�4rO���<M�XL�ڽ�S�����]4���x��ъ/�Ewf.���Q�7 Х��,a)��:s)��K��x3�+����J-]�:S���04x�a~2���$+aؿ �(���uh�$��j.�W�͔#��V�c�D3���6g]��n��k$W��Y��Sl���+oc
����C�;1�JM�ߞk�>�� �\'����W��l���0������H�5n�G(zaМ���ő�w�RǊ�n���M�{�O�6�I�\�sC�p�2xz;�������㲎��������Q|��.�"7�y�; ��3��,Y��������~��\�$ż�0�>�&��og��Wf��٦O����Wf[�d��gv��x���Je�}�7���yJ�oΣ�qQl�T�O1r"�$E�{kR\��2Q��Xx��grT�	v��5{�������i�(�*5��AC?q��D��H>�B�T��t��v���t�9���5F�M�ڼ:�t�m�TY(^nM�g�G>ϔ�@�N��1�'�ʔh����6�.(�O2nH����!_H�� �70f�7(��ܙ��As"�=�Z���H�.�����i4,Q�k.�O�h"0h � �6���r�8���{�NK�Z<��Ux��̄�����"���������G��@̿<�v{di�\��'2�k�	�[!� �~)�I�t�Wq}�`ӿ�<�RO�-0ʟ?"���������aspe[q��>�.��b�u+;w���TP��x�y׽b!���Ҿ"�@|~!)�I���M�>&�c@������a��-iڳS������D4���U���8IH��?��+��iL���!�V^�D=��S2uA�$��*��r-,�.u���X���i��h�?C�6��A��Zb1��`�w4\·�"i�2��aK~&1����h=��m3y�|��S��T��Z�<m���sU���:�fbQY�d��<�����.������a��������      �   �  x�m��n�@�g�)�u1�}�:(� ]��w�L�D*�G���!/����x"�����6�G���G*�J�c"5Ii�e�z"�ZưJ�熉�:B�yAپ�d��f��S9��@l�� �
�bjV K;&.'�\9$˻2�<�R����J��f[�=p$�<np��+�d]�c�I/�uC�wY�+��A�PM��TC�}�2JI��.�|%�m��Թ�n?�6	4��9����'F��O�*Tz����-�}��k&���D�یg�gGpoX����H�𫕕|��	śl���&�ƈ9m.Z�5��u��e��}5�����E\�d���L�#��A'�6������t"η�KH-d*6?���L�Es���ۮ�j�U�	?7�m�z/OY���^jfr����6�v��/��      �   �  x��R�n�0=�_�h�$mb�h)ZÀ5C/�0kk��@����G9ؚ���<��=>���K
޵8���qg��0/�9lXu�(��~pd
�� ���e�2��	_��s��QL�8��;�ST�`��) 9��h;X
��\�C`J����ۉ����k�	��W���Ĥ�q<9)�)0�7�E��{&��j�C>1�������֮�&vhɵ������������;.��
�G���|c�j	��V�>u�+cK�W��S����?)��w��NJ���2����(� G#�F4�WcVˤ�f#���H��&�D��94X���%�K�Ϯ2�����N�6��i�o_�����qS���G�G��<��=�iŪ�&�~��Yr�rNyE�:���j��^<O��$�d-��1�cֽЛ�f�Dq�b}��~h(-%9�m�L���(�?��#�     
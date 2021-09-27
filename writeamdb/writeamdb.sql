PGDMP         1                y         	   writeamdb    13.4    13.4 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
          public          postgres    false    217            �            1259    33817    clientApp_jobapplication    TABLE       CREATE TABLE public."clientApp_jobapplication" (
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
    "jobAccepted" character varying(255),
    "dateAccepted" timestamp with time zone,
    "validationDate" timestamp with time zone,
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
          public          postgres    false    239            �            1259    58416    system_manpower    TABLE     <  CREATE TABLE public.system_manpower (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    department character varying(255) NOT NULL,
    "requestDate" timestamp with time zone,
    reason text NOT NULL,
    "nosCandidate" integer,
    requirements text NOT NULL,
    "lastSubmitted" timestamp with time zone,
    "currentCandidate" integer,
    "is_Finished" boolean NOT NULL,
    CONSTRAINT "system_manpower_currentCandidate_check" CHECK (("currentCandidate" >= 0)),
    CONSTRAINT "system_manpower_nosCandidate_check" CHECK (("nosCandidate" >= 0))
);
 #   DROP TABLE public.system_manpower;
       public         heap    postgres    false            �            1259    58414    system_manpower_id_seq    SEQUENCE        CREATE SEQUENCE public.system_manpower_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.system_manpower_id_seq;
       public          postgres    false    242                        0    0    system_manpower_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.system_manpower_id_seq OWNED BY public.system_manpower.id;
          public          postgres    false    241            �           2604    33608    accounts_accounts id    DEFAULT     |   ALTER TABLE ONLY public.accounts_accounts ALTER COLUMN id SET DEFAULT nextval('public.accounts_accounts_id_seq'::regclass);
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
       public          postgres    false    237    238    238            �           2604    50213    system_jobskill id    DEFAULT     x   ALTER TABLE ONLY public.system_jobskill ALTER COLUMN id SET DEFAULT nextval('public.system_jobskill_id_seq'::regclass);
 A   ALTER TABLE public.system_jobskill ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    239    240            �           2604    58419    system_manpower id    DEFAULT     x   ALTER TABLE ONLY public.system_manpower ALTER COLUMN id SET DEFAULT nextval('public.system_manpower_id_seq'::regclass);
 A   ALTER TABLE public.system_manpower ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    242    242            �          0    33490    accounts_accounts 
   TABLE DATA           �   COPY public.accounts_accounts (id, password, email, username, first_name, last_name, date_joined, last_login, is_admin, is_active, is_staff, is_superuser, profile_image, address, phone, is_email_verified) FROM stdin;
    public          postgres    false    200   y"      �          0    33496    accounts_accounts_groups 
   TABLE DATA           M   COPY public.accounts_accounts_groups (id, accounts_id, group_id) FROM stdin;
    public          postgres    false    201   �$      �          0    33503 "   accounts_accounts_user_permissions 
   TABLE DATA           \   COPY public.accounts_accounts_user_permissions (id, accounts_id, permission_id) FROM stdin;
    public          postgres    false    204   �$      �          0    33794    adminApp_onboardingapplicant 
   TABLE DATA           �   COPY public."adminApp_onboardingapplicant" (id, "jobTitle", score, accounts_id, remarks, "dateScore", status, is_active) FROM stdin;
    public          postgres    false    234   �$      �          0    33508 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    206   %      �          0    33513    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    208   v%      �          0    33518    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    210   �%      �          0    33523    clientApp_article 
   TABLE DATA           Q   COPY public."clientApp_article" (id, article, headline, accounts_id) FROM stdin;
    public          postgres    false    212   �(      �          0    33531    clientApp_education 
   TABLE DATA           s   COPY public."clientApp_education" (id, school, degree, start_date, end_date, city, personaldetails_id) FROM stdin;
    public          postgres    false    214   _)      �          0    33539    clientApp_employmenthistory 
   TABLE DATA           �   COPY public."clientApp_employmenthistory" (id, "JobTitle", start_date, end_date, employer, city, description, personaldetails_id) FROM stdin;
    public          postgres    false    216   �)      �          0    33817    clientApp_jobapplication 
   TABLE DATA           ;  COPY public."clientApp_jobapplication" (id, "dateSubmit", "submitApplication", accounts_id, is_copywriter, is_editor, is_translator, copywriter, editor, translator, is_validated, article, copywriterfinal, editorfinal, translatorfinal, remarks, progress, "jobAccepted", "dateAccepted", "validationDate") FROM stdin;
    public          postgres    false    236   ,      �          0    33547    clientApp_link 
   TABLE DATA           H   COPY public."clientApp_link" (id, link, personaldetails_id) FROM stdin;
    public          postgres    false    218   �-      �          0    33555    clientApp_personaldetails 
   TABLE DATA           �   COPY public."clientApp_personaldetails" (id, profile_image, "jobTitle", fname, lname, email, phone, country, city, address, birthplace, birthdate, nationality, "profSummary", postalcode, accounts_id) FROM stdin;
    public          postgres    false    220   �-      �          0    33564    clientApp_reference 
   TABLE DATA           d   COPY public."clientApp_reference" (id, name, company, phone, email, personaldetails_id) FROM stdin;
    public          postgres    false    222   `/      �          0    33572    clientApp_skill 
   TABLE DATA           J   COPY public."clientApp_skill" (id, skill, personaldetails_id) FROM stdin;
    public          postgres    false    224   �/      �          0    33580    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    226   S0      �          0    33589    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    228   �3      �          0    33594    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    230   �4      �          0    33602    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    232   �;      �          0    50199    system_joblist 
   TABLE DATA           Y   COPY public.system_joblist (id, "job_Title", "job_Description", "is_onHire") FROM stdin;
    public          postgres    false    238   PA      �          0    50210    system_jobskill 
   TABLE DATA           I   COPY public.system_jobskill (id, skill_name, "job_Title_id") FROM stdin;
    public          postgres    false    240   �B      �          0    58416    system_manpower 
   TABLE DATA           �   COPY public.system_manpower (id, name, department, "requestDate", reason, "nosCandidate", requirements, "lastSubmitted", "currentCandidate", "is_Finished") FROM stdin;
    public          postgres    false    242   �D                 0    0    accounts_accounts_groups_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.accounts_accounts_groups_id_seq', 108, true);
          public          postgres    false    202                       0    0    accounts_accounts_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.accounts_accounts_id_seq', 93, true);
          public          postgres    false    203                       0    0 )   accounts_accounts_user_permissions_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.accounts_accounts_user_permissions_id_seq', 1, false);
          public          postgres    false    205                       0    0 #   adminApp_onboardingapplicant_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."adminApp_onboardingapplicant_id_seq"', 22, true);
          public          postgres    false    233                       0    0    auth_group_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_group_id_seq', 6, true);
          public          postgres    false    207                       0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    209                       0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 76, true);
          public          postgres    false    211                       0    0    clientApp_article_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."clientApp_article_id_seq"', 97, true);
          public          postgres    false    213            	           0    0    clientApp_education_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."clientApp_education_id_seq"', 27, true);
          public          postgres    false    215            
           0    0 "   clientApp_employmenthistory_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."clientApp_employmenthistory_id_seq"', 122, true);
          public          postgres    false    217                       0    0    clientApp_jobapplication_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."clientApp_jobapplication_id_seq"', 70, true);
          public          postgres    false    235                       0    0    clientApp_link_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."clientApp_link_id_seq"', 20, true);
          public          postgres    false    219                       0    0     clientApp_personaldetails_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."clientApp_personaldetails_id_seq"', 77, true);
          public          postgres    false    221                       0    0    clientApp_reference_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."clientApp_reference_id_seq"', 17, true);
          public          postgres    false    223                       0    0    clientApp_skill_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."clientApp_skill_id_seq"', 78, true);
          public          postgres    false    225                       0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 336, true);
          public          postgres    false    227                       0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 19, true);
          public          postgres    false    229                       0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 82, true);
          public          postgres    false    231                       0    0    system_joblist_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.system_joblist_id_seq', 5, true);
          public          postgres    false    237                       0    0    system_jobskill_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.system_jobskill_id_seq', 100, true);
          public          postgres    false    239                       0    0    system_manpower_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.system_manpower_id_seq', 6, true);
          public          postgres    false    241            �           2606    33625 -   accounts_accounts accounts_accounts_email_key 
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
       public            postgres    false    200                       2606    33802 I   adminApp_onboardingapplicant adminApp_onboardingapplicant_accounts_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."adminApp_onboardingapplicant"
    ADD CONSTRAINT "adminApp_onboardingapplicant_accounts_id_key" UNIQUE (accounts_id);
 w   ALTER TABLE ONLY public."adminApp_onboardingapplicant" DROP CONSTRAINT "adminApp_onboardingapplicant_accounts_id_key";
       public            postgres    false    234                       2606    33800 >   adminApp_onboardingapplicant adminApp_onboardingapplicant_pkey 
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
       public            postgres    false    216                       2606    33827 A   clientApp_jobapplication clientApp_jobapplication_accounts_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."clientApp_jobapplication"
    ADD CONSTRAINT "clientApp_jobapplication_accounts_id_key" UNIQUE (accounts_id);
 o   ALTER TABLE ONLY public."clientApp_jobapplication" DROP CONSTRAINT "clientApp_jobapplication_accounts_id_key";
       public            postgres    false    236                       2606    33825 6   clientApp_jobapplication clientApp_jobapplication_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public."clientApp_jobapplication"
    ADD CONSTRAINT "clientApp_jobapplication_pkey" PRIMARY KEY (id);
 d   ALTER TABLE ONLY public."clientApp_jobapplication" DROP CONSTRAINT "clientApp_jobapplication_pkey";
       public            postgres    false    236            �           2606    33659 "   clientApp_link clientApp_link_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."clientApp_link"
    ADD CONSTRAINT "clientApp_link_pkey" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public."clientApp_link" DROP CONSTRAINT "clientApp_link_pkey";
       public            postgres    false    218                        2606    33661 C   clientApp_personaldetails clientApp_personaldetails_accounts_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."clientApp_personaldetails"
    ADD CONSTRAINT "clientApp_personaldetails_accounts_id_key" UNIQUE (accounts_id);
 q   ALTER TABLE ONLY public."clientApp_personaldetails" DROP CONSTRAINT "clientApp_personaldetails_accounts_id_key";
       public            postgres    false    220                       2606    33663 8   clientApp_personaldetails clientApp_personaldetails_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public."clientApp_personaldetails"
    ADD CONSTRAINT "clientApp_personaldetails_pkey" PRIMARY KEY (id);
 f   ALTER TABLE ONLY public."clientApp_personaldetails" DROP CONSTRAINT "clientApp_personaldetails_pkey";
       public            postgres    false    220                       2606    33665 ,   clientApp_reference clientApp_reference_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."clientApp_reference"
    ADD CONSTRAINT "clientApp_reference_pkey" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public."clientApp_reference" DROP CONSTRAINT "clientApp_reference_pkey";
       public            postgres    false    222                       2606    33667 $   clientApp_skill clientApp_skill_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."clientApp_skill"
    ADD CONSTRAINT "clientApp_skill_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."clientApp_skill" DROP CONSTRAINT "clientApp_skill_pkey";
       public            postgres    false    224                       2606    33669 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    226                       2606    33671 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    228    228                       2606    33673 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    228                       2606    33675 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    230                       2606    33677 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    232                        2606    50207 "   system_joblist system_joblist_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.system_joblist
    ADD CONSTRAINT system_joblist_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.system_joblist DROP CONSTRAINT system_joblist_pkey;
       public            postgres    false    238            #           2606    50215 $   system_jobskill system_jobskill_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.system_jobskill
    ADD CONSTRAINT system_jobskill_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.system_jobskill DROP CONSTRAINT system_jobskill_pkey;
       public            postgres    false    240            %           2606    58425 $   system_manpower system_manpower_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.system_manpower
    ADD CONSTRAINT system_manpower_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.system_manpower DROP CONSTRAINT system_manpower_pkey;
       public            postgres    false    242            �           1259    33678 %   accounts_accounts_email_da8a4382_like    INDEX     x   CREATE INDEX accounts_accounts_email_da8a4382_like ON public.accounts_accounts USING btree (email varchar_pattern_ops);
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
       public            postgres    false    218                       1259    33691 /   clientApp_reference_personaldetails_id_e266ad92    INDEX     �   CREATE INDEX "clientApp_reference_personaldetails_id_e266ad92" ON public."clientApp_reference" USING btree (personaldetails_id);
 E   DROP INDEX public."clientApp_reference_personaldetails_id_e266ad92";
       public            postgres    false    222                       1259    33692 +   clientApp_skill_personaldetails_id_57a81148    INDEX     y   CREATE INDEX "clientApp_skill_personaldetails_id_57a81148" ON public."clientApp_skill" USING btree (personaldetails_id);
 A   DROP INDEX public."clientApp_skill_personaldetails_id_57a81148";
       public            postgres    false    224            	           1259    33693 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    226                       1259    33694 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    226                       1259    33695 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    232                       1259    33696 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    232            !           1259    50221 %   system_jobskill_job_Title_id_86037a74    INDEX     m   CREATE INDEX "system_jobskill_job_Title_id_86037a74" ON public.system_jobskill USING btree ("job_Title_id");
 ;   DROP INDEX public."system_jobskill_job_Title_id_86037a74";
       public            postgres    false    240            &           2606    33697 O   accounts_accounts_groups accounts_accounts_gr_accounts_id_a094314b_fk_accounts_    FK CONSTRAINT     �   ALTER TABLE ONLY public.accounts_accounts_groups
    ADD CONSTRAINT accounts_accounts_gr_accounts_id_a094314b_fk_accounts_ FOREIGN KEY (accounts_id) REFERENCES public.accounts_accounts(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.accounts_accounts_groups DROP CONSTRAINT accounts_accounts_gr_accounts_id_a094314b_fk_accounts_;
       public          postgres    false    200    201    3026            '           2606    33702 T   accounts_accounts_groups accounts_accounts_groups_group_id_d2af1629_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.accounts_accounts_groups
    ADD CONSTRAINT accounts_accounts_groups_group_id_d2af1629_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.accounts_accounts_groups DROP CONSTRAINT accounts_accounts_groups_group_id_d2af1629_fk_auth_group_id;
       public          postgres    false    206    3046    201            (           2606    33707 Y   accounts_accounts_user_permissions accounts_accounts_us_accounts_id_001e820c_fk_accounts_    FK CONSTRAINT     �   ALTER TABLE ONLY public.accounts_accounts_user_permissions
    ADD CONSTRAINT accounts_accounts_us_accounts_id_001e820c_fk_accounts_ FOREIGN KEY (accounts_id) REFERENCES public.accounts_accounts(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.accounts_accounts_user_permissions DROP CONSTRAINT accounts_accounts_us_accounts_id_001e820c_fk_accounts_;
       public          postgres    false    204    200    3026            )           2606    33712 [   accounts_accounts_user_permissions accounts_accounts_us_permission_id_7df1f232_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.accounts_accounts_user_permissions
    ADD CONSTRAINT accounts_accounts_us_permission_id_7df1f232_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.accounts_accounts_user_permissions DROP CONSTRAINT accounts_accounts_us_permission_id_7df1f232_fk_auth_perm;
       public          postgres    false    204    210    3057            6           2606    33803 S   adminApp_onboardingapplicant adminApp_onboardinga_accounts_id_d9c4b20b_fk_accounts_    FK CONSTRAINT     �   ALTER TABLE ONLY public."adminApp_onboardingapplicant"
    ADD CONSTRAINT "adminApp_onboardinga_accounts_id_d9c4b20b_fk_accounts_" FOREIGN KEY (accounts_id) REFERENCES public.accounts_accounts(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."adminApp_onboardingapplicant" DROP CONSTRAINT "adminApp_onboardinga_accounts_id_d9c4b20b_fk_accounts_";
       public          postgres    false    3026    200    234            *           2606    33717 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    208    210    3057            +           2606    33722 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    208    206    3046            ,           2606    33727 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    210    228    3088            -           2606    33732 P   clientApp_article clientApp_article_accounts_id_674b4325_fk_accounts_accounts_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."clientApp_article"
    ADD CONSTRAINT "clientApp_article_accounts_id_674b4325_fk_accounts_accounts_id" FOREIGN KEY (accounts_id) REFERENCES public.accounts_accounts(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public."clientApp_article" DROP CONSTRAINT "clientApp_article_accounts_id_674b4325_fk_accounts_accounts_id";
       public          postgres    false    200    212    3026            .           2606    33737 P   clientApp_education clientApp_education_personaldetails_id_82358fb9_fk_clientApp    FK CONSTRAINT     �   ALTER TABLE ONLY public."clientApp_education"
    ADD CONSTRAINT "clientApp_education_personaldetails_id_82358fb9_fk_clientApp" FOREIGN KEY (personaldetails_id) REFERENCES public."clientApp_personaldetails"(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public."clientApp_education" DROP CONSTRAINT "clientApp_education_personaldetails_id_82358fb9_fk_clientApp";
       public          postgres    false    214    220    3074            /           2606    33742 Y   clientApp_employmenthistory clientApp_employment_personaldetails_id_e915ace6_fk_clientApp    FK CONSTRAINT     �   ALTER TABLE ONLY public."clientApp_employmenthistory"
    ADD CONSTRAINT "clientApp_employment_personaldetails_id_e915ace6_fk_clientApp" FOREIGN KEY (personaldetails_id) REFERENCES public."clientApp_personaldetails"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."clientApp_employmenthistory" DROP CONSTRAINT "clientApp_employment_personaldetails_id_e915ace6_fk_clientApp";
       public          postgres    false    216    220    3074            7           2606    33828 O   clientApp_jobapplication clientApp_jobapplica_accounts_id_583dcc3c_fk_accounts_    FK CONSTRAINT     �   ALTER TABLE ONLY public."clientApp_jobapplication"
    ADD CONSTRAINT "clientApp_jobapplica_accounts_id_583dcc3c_fk_accounts_" FOREIGN KEY (accounts_id) REFERENCES public.accounts_accounts(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public."clientApp_jobapplication" DROP CONSTRAINT "clientApp_jobapplica_accounts_id_583dcc3c_fk_accounts_";
       public          postgres    false    3026    200    236            0           2606    33747 F   clientApp_link clientApp_link_personaldetails_id_67dd0eb9_fk_clientApp    FK CONSTRAINT     �   ALTER TABLE ONLY public."clientApp_link"
    ADD CONSTRAINT "clientApp_link_personaldetails_id_67dd0eb9_fk_clientApp" FOREIGN KEY (personaldetails_id) REFERENCES public."clientApp_personaldetails"(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public."clientApp_link" DROP CONSTRAINT "clientApp_link_personaldetails_id_67dd0eb9_fk_clientApp";
       public          postgres    false    218    220    3074            1           2606    33752 P   clientApp_personaldetails clientApp_personalde_accounts_id_9070254b_fk_accounts_    FK CONSTRAINT     �   ALTER TABLE ONLY public."clientApp_personaldetails"
    ADD CONSTRAINT "clientApp_personalde_accounts_id_9070254b_fk_accounts_" FOREIGN KEY (accounts_id) REFERENCES public.accounts_accounts(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public."clientApp_personaldetails" DROP CONSTRAINT "clientApp_personalde_accounts_id_9070254b_fk_accounts_";
       public          postgres    false    220    200    3026            2           2606    33757 P   clientApp_reference clientApp_reference_personaldetails_id_e266ad92_fk_clientApp    FK CONSTRAINT     �   ALTER TABLE ONLY public."clientApp_reference"
    ADD CONSTRAINT "clientApp_reference_personaldetails_id_e266ad92_fk_clientApp" FOREIGN KEY (personaldetails_id) REFERENCES public."clientApp_personaldetails"(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public."clientApp_reference" DROP CONSTRAINT "clientApp_reference_personaldetails_id_e266ad92_fk_clientApp";
       public          postgres    false    222    220    3074            3           2606    33762 H   clientApp_skill clientApp_skill_personaldetails_id_57a81148_fk_clientApp    FK CONSTRAINT     �   ALTER TABLE ONLY public."clientApp_skill"
    ADD CONSTRAINT "clientApp_skill_personaldetails_id_57a81148_fk_clientApp" FOREIGN KEY (personaldetails_id) REFERENCES public."clientApp_personaldetails"(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public."clientApp_skill" DROP CONSTRAINT "clientApp_skill_personaldetails_id_57a81148_fk_clientApp";
       public          postgres    false    224    220    3074            4           2606    33767 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    226    228    3088            5           2606    33772 J   django_admin_log django_admin_log_user_id_c564eba6_fk_accounts_accounts_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_accounts_accounts_id FOREIGN KEY (user_id) REFERENCES public.accounts_accounts(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_accounts_accounts_id;
       public          postgres    false    226    200    3026            8           2606    50216 J   system_jobskill system_jobskill_job_Title_id_86037a74_fk_system_joblist_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.system_jobskill
    ADD CONSTRAINT "system_jobskill_job_Title_id_86037a74_fk_system_joblist_id" FOREIGN KEY ("job_Title_id") REFERENCES public.system_joblist(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.system_jobskill DROP CONSTRAINT "system_jobskill_job_Title_id_86037a74_fk_system_joblist_id";
       public          postgres    false    3104    240    238            �     x���[o�0 �g�+x�5�;v"!5PAz�;L�*�\��sk ��~�������cY�|���;/�/�[����<�Voa�c����-�{CE_��5��g3>FΐxQR��Xgt�w�⧭S,oGt�<FQ�U(��#�]����M��(��~ �p����#?O"�!F7м�zBq�0���6���������9���� �q:3��/ԃ���I #�E�+-�C @�0���"3��Fn?��C���|�J��䰴7+O��o<�Q�3����v�v�Ҙ���zsx�Pɚr�}�ٞ��U(��FCH7>K�f��15�tC�����Rw6=F.��ql���8F*O�������f�WN�px[ڏ��YYH9Q�鎎����N�T��$�-������OhdA^��&aW�T�L�3v.o�w�,��@sahB�~z�F�}Z��X��S�� \T�ת�J�*A�(��}�W��kοV�`8��H�l��Ň���>t���z'>��{��x&�&�-�-�5�9��
X��3�S����?T���h4~�      �   +   x�3��0�4�0�0�4�240�43,8-�9M�b���� t��      �      x������ � �      �      x������ � �      �   O   x�3�t��L�+)�2��R�M�KLO-�2q�K�ҸL8��*2KR��
L9C��sK��f��)��1z\\\ �t�      �      x������ � �      �     x�u�ϒ�0���)x�N��;�u�K{�L�K�,]bS ���lɒ��-�?1�?��>i���5�-7v�_�"��?��_��#���7#��E`����*��E`�����'�}��&�Mf��28��^�6T��v����`A��gR�wd�%Z�f�����ߪ8q9</@
�� R�
���h�;�n�.__'��^��U�\'��J�wKxP|K�	�}�E�ńw�xaX���e�ψ]�#a��Xy"5��UD�h���=�d�W¥*ER�$0�dI`�#��`��^��}���Z�"�9��p��b�A/�0J�8ؗ���SU"p���" ��� ���8
X�)�8���Q��%���۰��:�i�Y�$�#��"�Z1I�*�'���a���^�{���eu��<��>����Df�+�kx[,�t\��Ǜ���4|1o)u��efc{����� ��X�=��>cY��mG	\^�q̊p���E�"��*0"s��1�H��)ez^�~�T�uKՈ�1r"s�������xB����1vyvkV��vT#r'Q|U�i�4�4F��I6�>FR��}rz����i�^ۭ$�Bt�T#��^5�r� ��� �=�e){��7|XLI�������"�s�ݓ�]Պ��@�i���A4���(��ҒFt�}I�e,Y�aC!9m��"a��.�A���g)/it�"�tF�q[���"E�,RO�0��D�DI������9�f�<�Ά����i>�A�*D��*��*X��x/��R���^      �   �   x�=�M�@�����e*uf98VC1E��@�+Y~aC���E��z9� 2<BȲ�;�����EC�X���l�J���퍥F%+���զ�r_yCY�XNy�O�5�����'�)�P�-u��*^M�vL*��B�wZ6+<��C�/*'1      �   B   x�32�,OLM�i���%��I�E
FF����r�Jss.#s�4��T�H��r���&\1z\\\ h�#      �   @  x��SA�1<'���h���Q �`%�����gƊ�6n;Cn|�G�	��K�� �^V�4ʸ\]U]���V8Q?��P��T`w��>���+���V��ǞV�����vu�[��1�@���e*�Ry�v��w}�T�z&-g.���;�?�!�O�+ȧ��O�� '�:�&�����yJ<�2Ы���O�*�1q���:}�]sոz*�'�#��r��:� %i�.c7*(����8fL���wߙU�}�ON�RW�WV�b��a�d7|�DŜ	:W|6�̇�Z�0����d�T������f|q2�Qt#�iYS4Y����J��$�1��^M�O����P0n�n�U�o���v�T>5.Tݍq}�7/L˰Ȍ�$�$�q�����2��&C�P Z"`5QlO��5*���{��v��^>ӷI{<�W���L�5c4Kt��&ۂ���������6u>^��;��7���mn������Y@?$;�7�KC�2.5)��l��)��ld�fV��'�d�V� �ƕ�J�k�j��1闠�<��8{�B�5aN�'��9����z��u�      �   �  x����n� ���)nW]D� cl����U)��͝	���<Ѽ}�3�i��*� �9|�%�rvM�k.�s%��h�1�TW�%�tU��HNj���Rҥ⤕��-0�QÌ! Z?�����G=� �te��gvp���������8`�$�h,n�&_ܴ��Ѹ)��7�~��w=���z蝵��L�,O�<N!5:�NXg�K%V���y�>������������L�3i�HO�:"�)a������ ���w�.��l␙}�',c��jL ���1�/g�Fp��C����us[·s���ti�ٸI��M�B~`��1E[%��a�u&�Iۤ�#x]iV��&j�GľO ����5���8�����7���J(AK�$5��a�?��eQ/���]      �   .   x�3��,OLMK,�47�2��L��#��r ;5��܄+F��� 1Y      �   x  x��RMKA=���� ]��vۛ�
���GA�6�:_�L��_ovՃXԃ0�I^�{�7�L��3�����Q��eCO<dep�z���Y�E=�m��ʲ�q��X6��A�UUM�bVԵ�B���z�e�.�[�9m��@Q]Dn֨n��d)��j�GM��b^M'ˉ��l8v��E��5���jc�F@H�����>S�j9�(�)�HY=x�}\;@��i��A*��ޡ}B(s�-�-�pK.C�)\A#��0��;i���AZ�1	�Fi�+�NAR;���Y8���Ϻ����F6�q�`�� �Eޅ�5��HY;v4����}"�qN��|�"�Ҋ� ��6���,����5'{���i{lU��N3[�=VH�x�~|�y�XE���
      �   4   x�34�LK,OM��@Fyj"� ��9�͹����8�܄+F��� 0��      �   �   x���;�0D��)|�'�P�Ht��Y�5�dbd�nO�@�4�{3�r�'�ܓL�#wWPJ�[�Y{���`k��Ñ�׷��[z�-ǷĮ��'�'K��!�;yِ�G+h�f����Q���!���5`"3T!T9����>�Tm�;:τ�F�      �   }  x��WM��F=k��S�&�3���i�h�ES��4���U��mQ��$'���mݛG �{�!i�>���t�"�_�ϼ͊�^g��~�X�뛪\���⺮Ve'?_/.�����Z<�?���ms]����+n�ś�d,�pʌ5ECJk�{f��h6翵��j󟊵 ��2��E�pz��{��Br#��~m�u�*��	`:��2���o��$$���=�%�-�gχ�=D#�MLDP�� �q �i�C�БޘC���*6�U�,�u�Λ���r����}��tS\�[�Q1��f���:x�`A=_.�Ͷ*������)���oc}���4`y)�4�������?�U]=�h8]SH4ɕ(����O�RM:jVD�p�[}�&L5�H����#j�㤄�z�ShЎ~7�f�m��{�l���z��kt�˗���g����N�7�栣�J������h�u�t3���QiR�=M��>�}�����WZ<�
�S��ӧ@>�^˒�h�Gݑ��4�}���θ�H�X��m������슮��۱�����z��|�V]wP{��'H22�)��~fF�91�����������+��^5�g�4�Ts?�d����ܗ?�H�B�2�Ϝ��k0�t���b��l�`SA�B19v��K��z����u�\\���>
l��9'N��S6�U$��=�=�Cқ�,{0�N�l��ź�dgŗ���n?Q�ACJ�}; x�?��Cj�d�!O�z}��"91�	�7G�Ÿ��2�<a��$���k�"�4-�B�[m�ce1q,�Ŷ���T	�P&�e�vU���A����M���n�S.���T��K��q�JH_�B�]]\\�h�s�      �   �   x�M�Kr!D��0�࿗�G6��g�BL���a�+v��n$�]�cQjY`��\'��$2#�>�XtΰsQ�6k]2Z���>�.��B�:K�OG�Z�'g��C]���2��h˘J�k 6���)�.�uY�v���\��%"�M��F��
�R�����X�&���ϿZ��ECHƐ3S��C����Ky�����V�5��!n��?�I
���~� �A
�1      �   �  x���ݒ�6��7O��N<�_��=:�Ql�W�l���;}AR�EZnܛL�?��x;t�����׵ބP6�fl���w�ځ*Hd�F�4�	�b����.���'�:�OHVj�Q�V�Ə�-�o�� �U;�}y��s3Mw	,��ϲ�/'�W�$�$��h"���>WM�k����\S�/!��:�%&�Yj�h�a,���p^��IYM�@4��߷�_.#�R�+��!��g��a�@>��9Vc�eu<�u�w}y���:���2�� �ݬ̯J���6�`!����"�	g��t���5�e-@y�r}���w?�VR|R#'�"c�uJ�M�jN>�X����.�=lA�p��{<7�Π�Ϙ���du�_s�sF���6���;�����0�6~o�Sy����Y�JE�����*��D�kc(���w0���
��+]H�;%�׈�`��~t���
�5߀&C�4�چ���z�m�.U{�G���k�i�9sLw��!�Ĕ� aC�L�����k�}������U���7W_�;S��=�hiL�hT)s���We!��ʉ L�y~}�='�U�{����=8�x�h���c#���Cr��%�E%��.ޏ͡��s��� �RQ�y�S�򣮎ms���w���r�H� ����]�r��Cc#R���;�p	i�h�#��v�2!'g3ސ3�$��L��!E�r�%$���T�޵3���8+�[#���R��e��*)���"�:�RU{�^�dJ�G��0�T8^z@�������V����э���@�W�I�w�����7��4A��j{B[�0{B�B��V��ZH���1���/���wul[	y�����r�`F`�e|$蜠� �^*)i����v�"�m��$b<2��1#�Aav/�Y
:eլ	�ׄ��1 h)cF:!�GB^�g���b��$�,��`��Z	�-mB������cs9U�k�*�a��۪�r���o�͊����կ]��ǹ����j���!��R�H�f0���ϻm�
�h�&�j�2�%R�D�F�!��"�m�R���Fv?�x�����s� �K��L[e2����|N 4/v����h��*�6�r7���҅T��W9>�>�yo����w9 ���)9��T��mܚ�	�^!YE�61"�p���9��(r���5�����񤗅d��_�m|��T�0�/���3��a�� (���tY@����j����,�N%X0�¬S#�|��B?����T:1R��A_�^�#�8�<�&L�^��[���b�@ƅ�ҩ�1q@�;�S���]XZ�K����#>A�B�B��i�n���h�\8ê�kx� _��b 鎀6������'�`X����Q�����f���7���NLbê���k">�����+!��I�L�D<��Z#xF	����lX	M*`��n��'��aG���L�e�Ǡl��׀ڣ#���I>������ؖ��[��*2��Im�$���j�?�1:��-��k�O�o��v>�W�h9��%΁$f���D��B�*6f�X�{A�?���)���$�]��Dr=�"`RSژ�?&����|I�D@�U0�����`�=����1���YV�0��a~�0|��	��9X�0T�`��/��t���9���W���=qr�L�^3�m����>,.0���c��۷��      �   �  x����΢Z�몧��;��=�|*�b:!L2	2#<}�9��>�7�����X�����J���W�C�M�/S��70�O�e���L�����מ��i;U@�F��&�c�g��G���0ܗ9)C�/|�OϮU5|��J���p7�zI2��$�Գ;o�͙}�ʯ#
�9��̥�
��.�2.d8yC˽ݘ�i\�bjV΍��N��F�&���E���j��=�xqE��߀��Wk
s68>�V!��&�f�W���<���bn3����e�_���'@�$ ���?�e���ݣ��D�*��J��s��_d>��L4b�>\}>ʴ���Vx�=�w{�c�Sl�5�#�����A����}{bO���ޞ+�ҧ�e����wS�m���kQ����6sN^^��8��
7�=�0�Ϟ"�a��&>�Rj����w[G)�U��id��8�{G��������>f�G&���5����EVyg�[�qZ�� >�k�I�2�����b���G�<� �3���O�vI���<�އ]V�p�ef*�,�?5S�dq8z�l����󯚹 o�2�2_��x���B�*���hk�S���ɣ̽yXH��(�hxx��L��U��s��?�-w6�a��v�*Ռ�@�<q�/�,�5�| ��yW���ܚZ�ҫ���1~Ķ{V،�ʸڱt�)�H*M��/�"�3������J����5�/y�P�>b܌��$�}gL8���L
��1�� 1M�A!]ȭ��{;Z�����悏�Y�c8�U�{,-2����_#0D`� D!���Q1S
��~G�q�Q���rm��?b��	�!j��{$7Fu��Q�zǨpj����!���#���?JƿwL�t���~�Ҵ����ÂO'��>M;D��Հ���ho2C�]�5O�c�<n�gc�^�O����mR��[�8䔹XnYýB�ex�k�P��b��`�~f�FL6.�o�dF����ۡ[h�Kaq)�lfd�JJ6;Rĝ�����}u.w�%�� 8��:��<�ƚ絆Y�D�t�Mu1W�pu���:�,�����	w|�f�<S1�ۻ�(��7�����n��|3��c�4�g�	�d�Q�<�S>m�#��t~e�۸_H��mM-	�ο䊢;�(V��(^K�JT��������`"��KJ	���4NҤ弒v�u��yBS��{`�?������5��f�Sp�qlw�^����_�U#�.\�%��>$^`?�� ����iW�'>?���]�dlҺ��x����A8��o��Eo�wm�1s6�-J���p�Ir��4�?��K���߾�&��^�D�c2�A�$��2���ȕ0�G�u�W��"�h�G�]�'��~���0�����OL������x�$<��/�����      �   �  x�m��n�0�g�)�u9��Zd��t�hq2吒��ӗRzW�F��Ϗ��ix�\�Odk�S"���Ue���	0��v@��R1q�!O����ʥ�����1��b-LlP2І�z����΀Z8$�7e�5�d�"5�'����2�p$)<�pŽ+�jިcN)_���e1nloTCGua&W=e�8|��?z����֮A2���L��(��jcfRL�r����z__B��@�5�[Ӆ�k���������D��K��qo�-�MyRz(}��]:�{��i�<<+�%|�r�H����=��olB�\%��$m3w��oN�r�o�������a����fB�+�Կ-xi��_kb�>������_ۨ9��PZ�;ݞY��ã�3����k��Zs��q�?�5�      �   �  x��R�n�0=�_�h�$mb�h)ZÀ5C/�0kk��@����G9ؚ���<��=>���K
޵8���qg��0/�9lXu�(��~pd
�� ���e�2��	_��s��QL�8��;�ST�`��) 9��h;X
��\�C`J����ۉ����k�	��W���Ĥ�q<9)�)0�7�E��{&��j�C>1�������֮�&vhɵ������������;.��
�G���|c�j	��V�>u�+cK�W��S����?)��w��NJ���2����(� G#�F4�WcVˤ�f#���H��&�D��94X���%�K�Ϯ2�����N�6��i�o_�����qS���G�G��<��=�iŪ�&�~��Yr�rNyE�:���j��^<O��$�d-��1�cֽЛ�f�Dq�b}��~h(-%9�m�L���(�?��#�      �   �   x�]��
�0Dϛ��]v�Q�\�����)b%Y(��m:���c@i~,�����[yj.$,�x���9n=p�9�i�j�?-ފD ��<�q��R#��*]Kz�Wҩ�N��a�����{��V�i4wg��03�     
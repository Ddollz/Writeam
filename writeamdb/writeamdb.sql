PGDMP     3    #            	    y         	   writeamdb    13.4    13.4 ?               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    67517 	   writeamdb    DATABASE     k   CREATE DATABASE writeamdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_Philippines.1252';
    DROP DATABASE writeamdb;
                postgres    false            ?            1259    67518    accounts_accounts    TABLE     ?  CREATE TABLE public.accounts_accounts (
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
       public         heap    postgres    false            ?            1259    67524    accounts_accounts_groups    TABLE     ?   CREATE TABLE public.accounts_accounts_groups (
    id bigint NOT NULL,
    accounts_id bigint NOT NULL,
    group_id integer NOT NULL
);
 ,   DROP TABLE public.accounts_accounts_groups;
       public         heap    postgres    false            ?            1259    67527    accounts_accounts_groups_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.accounts_accounts_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.accounts_accounts_groups_id_seq;
       public          postgres    false    201                       0    0    accounts_accounts_groups_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.accounts_accounts_groups_id_seq OWNED BY public.accounts_accounts_groups.id;
          public          postgres    false    202            ?            1259    67529    accounts_accounts_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.accounts_accounts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.accounts_accounts_id_seq;
       public          postgres    false    200                       0    0    accounts_accounts_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.accounts_accounts_id_seq OWNED BY public.accounts_accounts.id;
          public          postgres    false    203            ?            1259    67531 "   accounts_accounts_user_permissions    TABLE     ?   CREATE TABLE public.accounts_accounts_user_permissions (
    id bigint NOT NULL,
    accounts_id bigint NOT NULL,
    permission_id integer NOT NULL
);
 6   DROP TABLE public.accounts_accounts_user_permissions;
       public         heap    postgres    false            ?            1259    67534 )   accounts_accounts_user_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.accounts_accounts_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.accounts_accounts_user_permissions_id_seq;
       public          postgres    false    204                       0    0 )   accounts_accounts_user_permissions_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.accounts_accounts_user_permissions_id_seq OWNED BY public.accounts_accounts_user_permissions.id;
          public          postgres    false    205            ?            1259    67536    adminApp_onboardingapplicant    TABLE     w  CREATE TABLE public."adminApp_onboardingapplicant" (
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
       public         heap    postgres    false            ?            1259    67543 #   adminApp_onboardingapplicant_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."adminApp_onboardingapplicant_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public."adminApp_onboardingapplicant_id_seq";
       public          postgres    false    206                       0    0 #   adminApp_onboardingapplicant_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public."adminApp_onboardingapplicant_id_seq" OWNED BY public."adminApp_onboardingapplicant".id;
          public          postgres    false    207            ?            1259    67545 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            ?            1259    67548    auth_group_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    208                       0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    209            ?            1259    67550    auth_group_permissions    TABLE     ?   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            ?            1259    67553    auth_group_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    210                       0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    211            ?            1259    67555    auth_permission    TABLE     ?   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            ?            1259    67558    auth_permission_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    212                       0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    213            ?            1259    67560    clientApp_article    TABLE     ?   CREATE TABLE public."clientApp_article" (
    id bigint NOT NULL,
    article character varying(255),
    headline character varying(255),
    accounts_id bigint
);
 '   DROP TABLE public."clientApp_article";
       public         heap    postgres    false            ?            1259    67566    clientApp_article_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."clientApp_article_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."clientApp_article_id_seq";
       public          postgres    false    214                       0    0    clientApp_article_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."clientApp_article_id_seq" OWNED BY public."clientApp_article".id;
          public          postgres    false    215            ?            1259    67889    clientApp_deploymentmodel    TABLE     ?  CREATE TABLE public."clientApp_deploymentmodel" (
    id bigint NOT NULL,
    username character varying(30),
    password character varying(30),
    is_gcash boolean NOT NULL,
    gname character varying(255),
    gnumber character varying(255),
    is_bank boolean NOT NULL,
    bname character varying(255),
    bnumber character varying(255),
    accounts_id bigint,
    bank character varying(255)
);
 /   DROP TABLE public."clientApp_deploymentmodel";
       public         heap    postgres    false            ?            1259    67887     clientApp_deploymentmodel_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."clientApp_deploymentmodel_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public."clientApp_deploymentmodel_id_seq";
       public          postgres    false    244                       0    0     clientApp_deploymentmodel_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public."clientApp_deploymentmodel_id_seq" OWNED BY public."clientApp_deploymentmodel".id;
          public          postgres    false    243            ?            1259    67568    clientApp_education    TABLE       CREATE TABLE public."clientApp_education" (
    id bigint NOT NULL,
    school character varying(200),
    degree character varying(200),
    start_date character varying(200),
    end_date character varying(200),
    city character varying(200),
    personaldetails_id bigint
);
 )   DROP TABLE public."clientApp_education";
       public         heap    postgres    false            ?            1259    67574    clientApp_education_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."clientApp_education_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."clientApp_education_id_seq";
       public          postgres    false    216                       0    0    clientApp_education_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."clientApp_education_id_seq" OWNED BY public."clientApp_education".id;
          public          postgres    false    217            ?            1259    67576    clientApp_employmenthistory    TABLE     <  CREATE TABLE public."clientApp_employmenthistory" (
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
       public         heap    postgres    false            ?            1259    67582 "   clientApp_employmenthistory_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."clientApp_employmenthistory_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public."clientApp_employmenthistory_id_seq";
       public          postgres    false    218                       0    0 "   clientApp_employmenthistory_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public."clientApp_employmenthistory_id_seq" OWNED BY public."clientApp_employmenthistory".id;
          public          postgres    false    219            ?            1259    67584    clientApp_jobapplication    TABLE       CREATE TABLE public."clientApp_jobapplication" (
    id bigint NOT NULL,
    "dateSubmit" timestamp with time zone,
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
       public         heap    postgres    false            ?            1259    67597    clientApp_jobapplication_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."clientApp_jobapplication_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public."clientApp_jobapplication_id_seq";
       public          postgres    false    220                       0    0    clientApp_jobapplication_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public."clientApp_jobapplication_id_seq" OWNED BY public."clientApp_jobapplication".id;
          public          postgres    false    221            ?            1259    67599    clientApp_link    TABLE     o   CREATE TABLE public."clientApp_link" (
    id bigint NOT NULL,
    link text,
    personaldetails_id bigint
);
 $   DROP TABLE public."clientApp_link";
       public         heap    postgres    false            ?            1259    67605    clientApp_link_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."clientApp_link_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."clientApp_link_id_seq";
       public          postgres    false    222                       0    0    clientApp_link_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."clientApp_link_id_seq" OWNED BY public."clientApp_link".id;
          public          postgres    false    223            ?            1259    67607    clientApp_personaldetails    TABLE     ?  CREATE TABLE public."clientApp_personaldetails" (
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
       public         heap    postgres    false            ?            1259    67614     clientApp_personaldetails_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."clientApp_personaldetails_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public."clientApp_personaldetails_id_seq";
       public          postgres    false    224                       0    0     clientApp_personaldetails_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public."clientApp_personaldetails_id_seq" OWNED BY public."clientApp_personaldetails".id;
          public          postgres    false    225            ?            1259    67616    clientApp_reference    TABLE     ?   CREATE TABLE public."clientApp_reference" (
    id bigint NOT NULL,
    name character varying(200),
    company character varying(200),
    phone character varying(200),
    email character varying(200),
    personaldetails_id bigint
);
 )   DROP TABLE public."clientApp_reference";
       public         heap    postgres    false            ?            1259    67622    clientApp_reference_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."clientApp_reference_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."clientApp_reference_id_seq";
       public          postgres    false    226                        0    0    clientApp_reference_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."clientApp_reference_id_seq" OWNED BY public."clientApp_reference".id;
          public          postgres    false    227            ?            1259    67624    clientApp_skill    TABLE     q   CREATE TABLE public."clientApp_skill" (
    id bigint NOT NULL,
    skill text,
    personaldetails_id bigint
);
 %   DROP TABLE public."clientApp_skill";
       public         heap    postgres    false            ?            1259    67630    clientApp_skill_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."clientApp_skill_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."clientApp_skill_id_seq";
       public          postgres    false    228            !           0    0    clientApp_skill_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."clientApp_skill_id_seq" OWNED BY public."clientApp_skill".id;
          public          postgres    false    229            ?            1259    67632    django_admin_log    TABLE     ?  CREATE TABLE public.django_admin_log (
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
       public         heap    postgres    false            ?            1259    67639    django_admin_log_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    230            "           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    231            ?            1259    67641    django_content_type    TABLE     ?   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            ?            1259    67644    django_content_type_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    232            #           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    233            ?            1259    67646    django_migrations    TABLE     ?   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            ?            1259    67652    django_migrations_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    234            $           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    235            ?            1259    67654    django_session    TABLE     ?   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            ?            1259    67910    system_contact    TABLE     	  CREATE TABLE public.system_contact (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(60) NOT NULL,
    subject character varying(255) NOT NULL,
    message text,
    "lastSubmitted" timestamp with time zone NOT NULL
);
 "   DROP TABLE public.system_contact;
       public         heap    postgres    false            ?            1259    67908    system_contact_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.system_contact_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.system_contact_id_seq;
       public          postgres    false    246            %           0    0    system_contact_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.system_contact_id_seq OWNED BY public.system_contact.id;
          public          postgres    false    245            ?            1259    67660    system_joblist    TABLE     ?   CREATE TABLE public.system_joblist (
    id bigint NOT NULL,
    "job_Title" character varying(255) NOT NULL,
    "job_Description" text NOT NULL,
    "is_onHire" boolean NOT NULL
);
 "   DROP TABLE public.system_joblist;
       public         heap    postgres    false            ?            1259    67666    system_joblist_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.system_joblist_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.system_joblist_id_seq;
       public          postgres    false    237            &           0    0    system_joblist_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.system_joblist_id_seq OWNED BY public.system_joblist.id;
          public          postgres    false    238            ?            1259    67668    system_jobskill    TABLE     ?   CREATE TABLE public.system_jobskill (
    id bigint NOT NULL,
    skill_name character varying(255) NOT NULL,
    "job_Title_id" bigint NOT NULL
);
 #   DROP TABLE public.system_jobskill;
       public         heap    postgres    false            ?            1259    67671    system_jobskill_id_seq    SEQUENCE        CREATE SEQUENCE public.system_jobskill_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.system_jobskill_id_seq;
       public          postgres    false    239            '           0    0    system_jobskill_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.system_jobskill_id_seq OWNED BY public.system_jobskill.id;
          public          postgres    false    240            ?            1259    67673    system_manpower    TABLE     H  CREATE TABLE public.system_manpower (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    "requestDate" timestamp with time zone,
    reason text NOT NULL,
    "nosCandidate" integer,
    requirements text NOT NULL,
    "lastSubmitted" timestamp with time zone,
    "currentCandidate" integer,
    "is_Finished" boolean NOT NULL,
    "on_Going" boolean NOT NULL,
    "job_Title_id" bigint,
    CONSTRAINT "system_manpower_currentCandidate_check" CHECK (("currentCandidate" >= 0)),
    CONSTRAINT "system_manpower_nosCandidate_check" CHECK (("nosCandidate" >= 0))
);
 #   DROP TABLE public.system_manpower;
       public         heap    postgres    false            ?            1259    67681    system_manpower_id_seq    SEQUENCE        CREATE SEQUENCE public.system_manpower_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.system_manpower_id_seq;
       public          postgres    false    241            (           0    0    system_manpower_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.system_manpower_id_seq OWNED BY public.system_manpower.id;
          public          postgres    false    242            ?           2604    67683    accounts_accounts id    DEFAULT     |   ALTER TABLE ONLY public.accounts_accounts ALTER COLUMN id SET DEFAULT nextval('public.accounts_accounts_id_seq'::regclass);
 C   ALTER TABLE public.accounts_accounts ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    200            ?           2604    67684    accounts_accounts_groups id    DEFAULT     ?   ALTER TABLE ONLY public.accounts_accounts_groups ALTER COLUMN id SET DEFAULT nextval('public.accounts_accounts_groups_id_seq'::regclass);
 J   ALTER TABLE public.accounts_accounts_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    201            ?           2604    67685 %   accounts_accounts_user_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.accounts_accounts_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.accounts_accounts_user_permissions_id_seq'::regclass);
 T   ALTER TABLE public.accounts_accounts_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204            ?           2604    67686    adminApp_onboardingapplicant id    DEFAULT     ?   ALTER TABLE ONLY public."adminApp_onboardingapplicant" ALTER COLUMN id SET DEFAULT nextval('public."adminApp_onboardingapplicant_id_seq"'::regclass);
 P   ALTER TABLE public."adminApp_onboardingapplicant" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206            ?           2604    67687    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208            ?           2604    67688    auth_group_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210            ?           2604    67689    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212            ?           2604    67690    clientApp_article id    DEFAULT     ?   ALTER TABLE ONLY public."clientApp_article" ALTER COLUMN id SET DEFAULT nextval('public."clientApp_article_id_seq"'::regclass);
 E   ALTER TABLE public."clientApp_article" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214            ?           2604    67892    clientApp_deploymentmodel id    DEFAULT     ?   ALTER TABLE ONLY public."clientApp_deploymentmodel" ALTER COLUMN id SET DEFAULT nextval('public."clientApp_deploymentmodel_id_seq"'::regclass);
 M   ALTER TABLE public."clientApp_deploymentmodel" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    244    243    244            ?           2604    67691    clientApp_education id    DEFAULT     ?   ALTER TABLE ONLY public."clientApp_education" ALTER COLUMN id SET DEFAULT nextval('public."clientApp_education_id_seq"'::regclass);
 G   ALTER TABLE public."clientApp_education" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216            ?           2604    67692    clientApp_employmenthistory id    DEFAULT     ?   ALTER TABLE ONLY public."clientApp_employmenthistory" ALTER COLUMN id SET DEFAULT nextval('public."clientApp_employmenthistory_id_seq"'::regclass);
 O   ALTER TABLE public."clientApp_employmenthistory" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218            ?           2604    67693    clientApp_jobapplication id    DEFAULT     ?   ALTER TABLE ONLY public."clientApp_jobapplication" ALTER COLUMN id SET DEFAULT nextval('public."clientApp_jobapplication_id_seq"'::regclass);
 L   ALTER TABLE public."clientApp_jobapplication" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220            ?           2604    67694    clientApp_link id    DEFAULT     z   ALTER TABLE ONLY public."clientApp_link" ALTER COLUMN id SET DEFAULT nextval('public."clientApp_link_id_seq"'::regclass);
 B   ALTER TABLE public."clientApp_link" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222            ?           2604    67695    clientApp_personaldetails id    DEFAULT     ?   ALTER TABLE ONLY public."clientApp_personaldetails" ALTER COLUMN id SET DEFAULT nextval('public."clientApp_personaldetails_id_seq"'::regclass);
 M   ALTER TABLE public."clientApp_personaldetails" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224            ?           2604    67696    clientApp_reference id    DEFAULT     ?   ALTER TABLE ONLY public."clientApp_reference" ALTER COLUMN id SET DEFAULT nextval('public."clientApp_reference_id_seq"'::regclass);
 G   ALTER TABLE public."clientApp_reference" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226            ?           2604    67697    clientApp_skill id    DEFAULT     |   ALTER TABLE ONLY public."clientApp_skill" ALTER COLUMN id SET DEFAULT nextval('public."clientApp_skill_id_seq"'::regclass);
 C   ALTER TABLE public."clientApp_skill" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228            ?           2604    67698    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230            ?           2604    67699    django_content_type id    DEFAULT     ?   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232            ?           2604    67700    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    234            ?           2604    67913    system_contact id    DEFAULT     v   ALTER TABLE ONLY public.system_contact ALTER COLUMN id SET DEFAULT nextval('public.system_contact_id_seq'::regclass);
 @   ALTER TABLE public.system_contact ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    246    245    246            ?           2604    67701    system_joblist id    DEFAULT     v   ALTER TABLE ONLY public.system_joblist ALTER COLUMN id SET DEFAULT nextval('public.system_joblist_id_seq'::regclass);
 @   ALTER TABLE public.system_joblist ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    237            ?           2604    67702    system_jobskill id    DEFAULT     x   ALTER TABLE ONLY public.system_jobskill ALTER COLUMN id SET DEFAULT nextval('public.system_jobskill_id_seq'::regclass);
 A   ALTER TABLE public.system_jobskill ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    239            ?           2604    67703    system_manpower id    DEFAULT     x   ALTER TABLE ONLY public.system_manpower ALTER COLUMN id SET DEFAULT nextval('public.system_manpower_id_seq'::regclass);
 A   ALTER TABLE public.system_manpower ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    241            ?          0    67518    accounts_accounts 
   TABLE DATA           ?   COPY public.accounts_accounts (id, password, email, username, first_name, last_name, date_joined, last_login, is_admin, is_active, is_staff, is_superuser, profile_image, address, phone, is_email_verified) FROM stdin;
    public          postgres    false    200   `E      ?          0    67524    accounts_accounts_groups 
   TABLE DATA           M   COPY public.accounts_accounts_groups (id, accounts_id, group_id) FROM stdin;
    public          postgres    false    201   ?G      ?          0    67531 "   accounts_accounts_user_permissions 
   TABLE DATA           \   COPY public.accounts_accounts_user_permissions (id, accounts_id, permission_id) FROM stdin;
    public          postgres    false    204   (H      ?          0    67536    adminApp_onboardingapplicant 
   TABLE DATA           ?   COPY public."adminApp_onboardingapplicant" (id, "jobTitle", score, accounts_id, remarks, "dateScore", status, is_active) FROM stdin;
    public          postgres    false    206   EH      ?          0    67545 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    208   bH      ?          0    67550    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    210   ?H      ?          0    67555    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    212   ?H      ?          0    67560    clientApp_article 
   TABLE DATA           Q   COPY public."clientApp_article" (id, article, headline, accounts_id) FROM stdin;
    public          postgres    false    214   NL      	          0    67889    clientApp_deploymentmodel 
   TABLE DATA           ?   COPY public."clientApp_deploymentmodel" (id, username, password, is_gcash, gname, gnumber, is_bank, bname, bnumber, accounts_id, bank) FROM stdin;
    public          postgres    false    244   ?L      ?          0    67568    clientApp_education 
   TABLE DATA           s   COPY public."clientApp_education" (id, school, degree, start_date, end_date, city, personaldetails_id) FROM stdin;
    public          postgres    false    216   CM      ?          0    67576    clientApp_employmenthistory 
   TABLE DATA           ?   COPY public."clientApp_employmenthistory" (id, "JobTitle", start_date, end_date, employer, city, description, personaldetails_id) FROM stdin;
    public          postgres    false    218   ?M      ?          0    67584    clientApp_jobapplication 
   TABLE DATA           ;  COPY public."clientApp_jobapplication" (id, "dateSubmit", "submitApplication", accounts_id, is_copywriter, is_editor, is_translator, copywriter, editor, translator, is_validated, article, copywriterfinal, editorfinal, translatorfinal, remarks, progress, "jobAccepted", "dateAccepted", "validationDate") FROM stdin;
    public          postgres    false    220    O      ?          0    67599    clientApp_link 
   TABLE DATA           H   COPY public."clientApp_link" (id, link, personaldetails_id) FROM stdin;
    public          postgres    false    222   ?O      ?          0    67607    clientApp_personaldetails 
   TABLE DATA           ?   COPY public."clientApp_personaldetails" (id, profile_image, "jobTitle", fname, lname, email, phone, country, city, address, birthplace, birthdate, nationality, "profSummary", postalcode, accounts_id) FROM stdin;
    public          postgres    false    224   -P      ?          0    67616    clientApp_reference 
   TABLE DATA           d   COPY public."clientApp_reference" (id, name, company, phone, email, personaldetails_id) FROM stdin;
    public          postgres    false    226   ?Q      ?          0    67624    clientApp_skill 
   TABLE DATA           J   COPY public."clientApp_skill" (id, skill, personaldetails_id) FROM stdin;
    public          postgres    false    228   	R      ?          0    67632    django_admin_log 
   TABLE DATA           ?   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    230   ?R      ?          0    67641    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    232   X      ?          0    67646    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    234   Y                0    67654    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    236   `                0    67910    system_contact 
   TABLE DATA           \   COPY public.system_contact (id, name, email, subject, message, "lastSubmitted") FROM stdin;
    public          postgres    false    246   of                0    67660    system_joblist 
   TABLE DATA           Y   COPY public.system_joblist (id, "job_Title", "job_Description", "is_onHire") FROM stdin;
    public          postgres    false    237   ?f                0    67668    system_jobskill 
   TABLE DATA           I   COPY public.system_jobskill (id, skill_name, "job_Title_id") FROM stdin;
    public          postgres    false    239   7h                0    67673    system_manpower 
   TABLE DATA           ?   COPY public.system_manpower (id, name, "requestDate", reason, "nosCandidate", requirements, "lastSubmitted", "currentCandidate", "is_Finished", "on_Going", "job_Title_id") FROM stdin;
    public          postgres    false    241   j      )           0    0    accounts_accounts_groups_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.accounts_accounts_groups_id_seq', 116, true);
          public          postgres    false    202            *           0    0    accounts_accounts_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.accounts_accounts_id_seq', 98, true);
          public          postgres    false    203            +           0    0 )   accounts_accounts_user_permissions_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.accounts_accounts_user_permissions_id_seq', 1, false);
          public          postgres    false    205            ,           0    0 #   adminApp_onboardingapplicant_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."adminApp_onboardingapplicant_id_seq"', 22, true);
          public          postgres    false    207            -           0    0    auth_group_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_group_id_seq', 6, true);
          public          postgres    false    209            .           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    211            /           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 76, true);
          public          postgres    false    213            0           0    0    clientApp_article_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."clientApp_article_id_seq"', 102, true);
          public          postgres    false    215            1           0    0     clientApp_deploymentmodel_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."clientApp_deploymentmodel_id_seq"', 6, true);
          public          postgres    false    243            2           0    0    clientApp_education_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."clientApp_education_id_seq"', 29, true);
          public          postgres    false    217            3           0    0 "   clientApp_employmenthistory_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."clientApp_employmenthistory_id_seq"', 125, true);
          public          postgres    false    219            4           0    0    clientApp_jobapplication_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."clientApp_jobapplication_id_seq"', 75, true);
          public          postgres    false    221            5           0    0    clientApp_link_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."clientApp_link_id_seq"', 22, true);
          public          postgres    false    223            6           0    0     clientApp_personaldetails_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."clientApp_personaldetails_id_seq"', 82, true);
          public          postgres    false    225            7           0    0    clientApp_reference_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."clientApp_reference_id_seq"', 19, true);
          public          postgres    false    227            8           0    0    clientApp_skill_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."clientApp_skill_id_seq"', 92, true);
          public          postgres    false    229            9           0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 358, true);
          public          postgres    false    231            :           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 19, true);
          public          postgres    false    233            ;           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 91, true);
          public          postgres    false    235            <           0    0    system_contact_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.system_contact_id_seq', 1, false);
          public          postgres    false    245            =           0    0    system_joblist_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.system_joblist_id_seq', 5, true);
          public          postgres    false    238            >           0    0    system_jobskill_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.system_jobskill_id_seq', 100, true);
          public          postgres    false    240            ?           0    0    system_manpower_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.system_manpower_id_seq', 7, true);
          public          postgres    false    242            ?           2606    67705 -   accounts_accounts accounts_accounts_email_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.accounts_accounts
    ADD CONSTRAINT accounts_accounts_email_key UNIQUE (email);
 W   ALTER TABLE ONLY public.accounts_accounts DROP CONSTRAINT accounts_accounts_email_key;
       public            postgres    false    200            ?           2606    67707 T   accounts_accounts_groups accounts_accounts_groups_accounts_id_group_id_fe616882_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.accounts_accounts_groups
    ADD CONSTRAINT accounts_accounts_groups_accounts_id_group_id_fe616882_uniq UNIQUE (accounts_id, group_id);
 ~   ALTER TABLE ONLY public.accounts_accounts_groups DROP CONSTRAINT accounts_accounts_groups_accounts_id_group_id_fe616882_uniq;
       public            postgres    false    201    201            ?           2606    67709 6   accounts_accounts_groups accounts_accounts_groups_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.accounts_accounts_groups
    ADD CONSTRAINT accounts_accounts_groups_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.accounts_accounts_groups DROP CONSTRAINT accounts_accounts_groups_pkey;
       public            postgres    false    201            ?           2606    67711 (   accounts_accounts accounts_accounts_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.accounts_accounts
    ADD CONSTRAINT accounts_accounts_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.accounts_accounts DROP CONSTRAINT accounts_accounts_pkey;
       public            postgres    false    200            ?           2606    67713 b   accounts_accounts_user_permissions accounts_accounts_user_p_accounts_id_permission_i_310c5a2e_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.accounts_accounts_user_permissions
    ADD CONSTRAINT accounts_accounts_user_p_accounts_id_permission_i_310c5a2e_uniq UNIQUE (accounts_id, permission_id);
 ?   ALTER TABLE ONLY public.accounts_accounts_user_permissions DROP CONSTRAINT accounts_accounts_user_p_accounts_id_permission_i_310c5a2e_uniq;
       public            postgres    false    204    204            ?           2606    67715 J   accounts_accounts_user_permissions accounts_accounts_user_permissions_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public.accounts_accounts_user_permissions
    ADD CONSTRAINT accounts_accounts_user_permissions_pkey PRIMARY KEY (id);
 t   ALTER TABLE ONLY public.accounts_accounts_user_permissions DROP CONSTRAINT accounts_accounts_user_permissions_pkey;
       public            postgres    false    204            ?           2606    67717 0   accounts_accounts accounts_accounts_username_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.accounts_accounts
    ADD CONSTRAINT accounts_accounts_username_key UNIQUE (username);
 Z   ALTER TABLE ONLY public.accounts_accounts DROP CONSTRAINT accounts_accounts_username_key;
       public            postgres    false    200            ?           2606    67719 I   adminApp_onboardingapplicant adminApp_onboardingapplicant_accounts_id_key 
   CONSTRAINT     ?   ALTER TABLE ONLY public."adminApp_onboardingapplicant"
    ADD CONSTRAINT "adminApp_onboardingapplicant_accounts_id_key" UNIQUE (accounts_id);
 w   ALTER TABLE ONLY public."adminApp_onboardingapplicant" DROP CONSTRAINT "adminApp_onboardingapplicant_accounts_id_key";
       public            postgres    false    206            ?           2606    67721 >   adminApp_onboardingapplicant adminApp_onboardingapplicant_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public."adminApp_onboardingapplicant"
    ADD CONSTRAINT "adminApp_onboardingapplicant_pkey" PRIMARY KEY (id);
 l   ALTER TABLE ONLY public."adminApp_onboardingapplicant" DROP CONSTRAINT "adminApp_onboardingapplicant_pkey";
       public            postgres    false    206            ?           2606    67723    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    208            ?           2606    67725 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    210    210                        2606    67727 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    210            ?           2606    67729    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    208                       2606    67731 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    212    212                       2606    67733 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    212                       2606    67735 2   clientApp_article clientApp_article_account_id_key 
   CONSTRAINT     x   ALTER TABLE ONLY public."clientApp_article"
    ADD CONSTRAINT "clientApp_article_account_id_key" UNIQUE (accounts_id);
 `   ALTER TABLE ONLY public."clientApp_article" DROP CONSTRAINT "clientApp_article_account_id_key";
       public            postgres    false    214            	           2606    67737 (   clientApp_article clientApp_article_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public."clientApp_article"
    ADD CONSTRAINT "clientApp_article_pkey" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public."clientApp_article" DROP CONSTRAINT "clientApp_article_pkey";
       public            postgres    false    214            ;           2606    67902 C   clientApp_deploymentmodel clientApp_deploymentmodel_accounts_id_key 
   CONSTRAINT     ?   ALTER TABLE ONLY public."clientApp_deploymentmodel"
    ADD CONSTRAINT "clientApp_deploymentmodel_accounts_id_key" UNIQUE (accounts_id);
 q   ALTER TABLE ONLY public."clientApp_deploymentmodel" DROP CONSTRAINT "clientApp_deploymentmodel_accounts_id_key";
       public            postgres    false    244            =           2606    67897 8   clientApp_deploymentmodel clientApp_deploymentmodel_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public."clientApp_deploymentmodel"
    ADD CONSTRAINT "clientApp_deploymentmodel_pkey" PRIMARY KEY (id);
 f   ALTER TABLE ONLY public."clientApp_deploymentmodel" DROP CONSTRAINT "clientApp_deploymentmodel_pkey";
       public            postgres    false    244            @           2606    67899 @   clientApp_deploymentmodel clientApp_deploymentmodel_username_key 
   CONSTRAINT     ?   ALTER TABLE ONLY public."clientApp_deploymentmodel"
    ADD CONSTRAINT "clientApp_deploymentmodel_username_key" UNIQUE (username);
 n   ALTER TABLE ONLY public."clientApp_deploymentmodel" DROP CONSTRAINT "clientApp_deploymentmodel_username_key";
       public            postgres    false    244                       2606    67739 ,   clientApp_education clientApp_education_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."clientApp_education"
    ADD CONSTRAINT "clientApp_education_pkey" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public."clientApp_education" DROP CONSTRAINT "clientApp_education_pkey";
       public            postgres    false    216                       2606    67741 <   clientApp_employmenthistory clientApp_employmenthistory_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public."clientApp_employmenthistory"
    ADD CONSTRAINT "clientApp_employmenthistory_pkey" PRIMARY KEY (id);
 j   ALTER TABLE ONLY public."clientApp_employmenthistory" DROP CONSTRAINT "clientApp_employmenthistory_pkey";
       public            postgres    false    218                       2606    67743 A   clientApp_jobapplication clientApp_jobapplication_accounts_id_key 
   CONSTRAINT     ?   ALTER TABLE ONLY public."clientApp_jobapplication"
    ADD CONSTRAINT "clientApp_jobapplication_accounts_id_key" UNIQUE (accounts_id);
 o   ALTER TABLE ONLY public."clientApp_jobapplication" DROP CONSTRAINT "clientApp_jobapplication_accounts_id_key";
       public            postgres    false    220                       2606    67745 6   clientApp_jobapplication clientApp_jobapplication_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public."clientApp_jobapplication"
    ADD CONSTRAINT "clientApp_jobapplication_pkey" PRIMARY KEY (id);
 d   ALTER TABLE ONLY public."clientApp_jobapplication" DROP CONSTRAINT "clientApp_jobapplication_pkey";
       public            postgres    false    220                       2606    67747 "   clientApp_link clientApp_link_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."clientApp_link"
    ADD CONSTRAINT "clientApp_link_pkey" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public."clientApp_link" DROP CONSTRAINT "clientApp_link_pkey";
       public            postgres    false    222                       2606    67749 C   clientApp_personaldetails clientApp_personaldetails_accounts_id_key 
   CONSTRAINT     ?   ALTER TABLE ONLY public."clientApp_personaldetails"
    ADD CONSTRAINT "clientApp_personaldetails_accounts_id_key" UNIQUE (accounts_id);
 q   ALTER TABLE ONLY public."clientApp_personaldetails" DROP CONSTRAINT "clientApp_personaldetails_accounts_id_key";
       public            postgres    false    224                       2606    67751 8   clientApp_personaldetails clientApp_personaldetails_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public."clientApp_personaldetails"
    ADD CONSTRAINT "clientApp_personaldetails_pkey" PRIMARY KEY (id);
 f   ALTER TABLE ONLY public."clientApp_personaldetails" DROP CONSTRAINT "clientApp_personaldetails_pkey";
       public            postgres    false    224                       2606    67753 ,   clientApp_reference clientApp_reference_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."clientApp_reference"
    ADD CONSTRAINT "clientApp_reference_pkey" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public."clientApp_reference" DROP CONSTRAINT "clientApp_reference_pkey";
       public            postgres    false    226                        2606    67755 $   clientApp_skill clientApp_skill_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."clientApp_skill"
    ADD CONSTRAINT "clientApp_skill_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."clientApp_skill" DROP CONSTRAINT "clientApp_skill_pkey";
       public            postgres    false    228            #           2606    67757 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    230            &           2606    67759 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    232    232            (           2606    67761 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    232            *           2606    67763 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    234            -           2606    67765 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    236            C           2606    67920 '   system_contact system_contact_email_key 
   CONSTRAINT     c   ALTER TABLE ONLY public.system_contact
    ADD CONSTRAINT system_contact_email_key UNIQUE (email);
 Q   ALTER TABLE ONLY public.system_contact DROP CONSTRAINT system_contact_email_key;
       public            postgres    false    246            E           2606    67918 "   system_contact system_contact_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.system_contact
    ADD CONSTRAINT system_contact_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.system_contact DROP CONSTRAINT system_contact_pkey;
       public            postgres    false    246            1           2606    67930 5   system_joblist system_joblist_job_Title_eab93b2c_uniq 
   CONSTRAINT     y   ALTER TABLE ONLY public.system_joblist
    ADD CONSTRAINT "system_joblist_job_Title_eab93b2c_uniq" UNIQUE ("job_Title");
 a   ALTER TABLE ONLY public.system_joblist DROP CONSTRAINT "system_joblist_job_Title_eab93b2c_uniq";
       public            postgres    false    237            3           2606    67767 "   system_joblist system_joblist_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.system_joblist
    ADD CONSTRAINT system_joblist_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.system_joblist DROP CONSTRAINT system_joblist_pkey;
       public            postgres    false    237            6           2606    67769 $   system_jobskill system_jobskill_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.system_jobskill
    ADD CONSTRAINT system_jobskill_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.system_jobskill DROP CONSTRAINT system_jobskill_pkey;
       public            postgres    false    239            9           2606    67771 $   system_manpower system_manpower_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.system_manpower
    ADD CONSTRAINT system_manpower_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.system_manpower DROP CONSTRAINT system_manpower_pkey;
       public            postgres    false    241            ?           1259    67772 %   accounts_accounts_email_da8a4382_like    INDEX     x   CREATE INDEX accounts_accounts_email_da8a4382_like ON public.accounts_accounts USING btree (email varchar_pattern_ops);
 9   DROP INDEX public.accounts_accounts_email_da8a4382_like;
       public            postgres    false    200            ?           1259    67773 -   accounts_accounts_groups_accounts_id_a094314b    INDEX     y   CREATE INDEX accounts_accounts_groups_accounts_id_a094314b ON public.accounts_accounts_groups USING btree (accounts_id);
 A   DROP INDEX public.accounts_accounts_groups_accounts_id_a094314b;
       public            postgres    false    201            ?           1259    67774 *   accounts_accounts_groups_group_id_d2af1629    INDEX     s   CREATE INDEX accounts_accounts_groups_group_id_d2af1629 ON public.accounts_accounts_groups USING btree (group_id);
 >   DROP INDEX public.accounts_accounts_groups_group_id_d2af1629;
       public            postgres    false    201            ?           1259    67775 7   accounts_accounts_user_permissions_accounts_id_001e820c    INDEX     ?   CREATE INDEX accounts_accounts_user_permissions_accounts_id_001e820c ON public.accounts_accounts_user_permissions USING btree (accounts_id);
 K   DROP INDEX public.accounts_accounts_user_permissions_accounts_id_001e820c;
       public            postgres    false    204            ?           1259    67776 9   accounts_accounts_user_permissions_permission_id_7df1f232    INDEX     ?   CREATE INDEX accounts_accounts_user_permissions_permission_id_7df1f232 ON public.accounts_accounts_user_permissions USING btree (permission_id);
 M   DROP INDEX public.accounts_accounts_user_permissions_permission_id_7df1f232;
       public            postgres    false    204            ?           1259    67777 (   accounts_accounts_username_a6d49ba5_like    INDEX     ~   CREATE INDEX accounts_accounts_username_a6d49ba5_like ON public.accounts_accounts USING btree (username varchar_pattern_ops);
 <   DROP INDEX public.accounts_accounts_username_a6d49ba5_like;
       public            postgres    false    200            ?           1259    67778    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    208            ?           1259    67779 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    210            ?           1259    67780 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    210                       1259    67781 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    212            >           1259    67900 0   clientApp_deploymentmodel_username_38ea66ca_like    INDEX     ?   CREATE INDEX "clientApp_deploymentmodel_username_38ea66ca_like" ON public."clientApp_deploymentmodel" USING btree (username varchar_pattern_ops);
 F   DROP INDEX public."clientApp_deploymentmodel_username_38ea66ca_like";
       public            postgres    false    244            
           1259    67782 /   clientApp_education_personaldetails_id_82358fb9    INDEX     ?   CREATE INDEX "clientApp_education_personaldetails_id_82358fb9" ON public."clientApp_education" USING btree (personaldetails_id);
 E   DROP INDEX public."clientApp_education_personaldetails_id_82358fb9";
       public            postgres    false    216                       1259    67783 0   clientApp_employmenthistory_personal_id_ff36d4f7    INDEX     ?   CREATE INDEX "clientApp_employmenthistory_personal_id_ff36d4f7" ON public."clientApp_employmenthistory" USING btree (personaldetails_id);
 F   DROP INDEX public."clientApp_employmenthistory_personal_id_ff36d4f7";
       public            postgres    false    218                       1259    67784 *   clientApp_link_personaldetails_id_67dd0eb9    INDEX     w   CREATE INDEX "clientApp_link_personaldetails_id_67dd0eb9" ON public."clientApp_link" USING btree (personaldetails_id);
 @   DROP INDEX public."clientApp_link_personaldetails_id_67dd0eb9";
       public            postgres    false    222                       1259    67785 /   clientApp_reference_personaldetails_id_e266ad92    INDEX     ?   CREATE INDEX "clientApp_reference_personaldetails_id_e266ad92" ON public."clientApp_reference" USING btree (personaldetails_id);
 E   DROP INDEX public."clientApp_reference_personaldetails_id_e266ad92";
       public            postgres    false    226                       1259    67786 +   clientApp_skill_personaldetails_id_57a81148    INDEX     y   CREATE INDEX "clientApp_skill_personaldetails_id_57a81148" ON public."clientApp_skill" USING btree (personaldetails_id);
 A   DROP INDEX public."clientApp_skill_personaldetails_id_57a81148";
       public            postgres    false    228            !           1259    67787 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    230            $           1259    67788 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    230            +           1259    67789 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    236            .           1259    67790 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    236            A           1259    67921 "   system_contact_email_5224f2f6_like    INDEX     r   CREATE INDEX system_contact_email_5224f2f6_like ON public.system_contact USING btree (email varchar_pattern_ops);
 6   DROP INDEX public.system_contact_email_5224f2f6_like;
       public            postgres    false    246            /           1259    67931 &   system_joblist_job_Title_eab93b2c_like    INDEX     ~   CREATE INDEX "system_joblist_job_Title_eab93b2c_like" ON public.system_joblist USING btree ("job_Title" varchar_pattern_ops);
 <   DROP INDEX public."system_joblist_job_Title_eab93b2c_like";
       public            postgres    false    237            4           1259    67791 %   system_jobskill_job_Title_id_86037a74    INDEX     m   CREATE INDEX "system_jobskill_job_Title_id_86037a74" ON public.system_jobskill USING btree ("job_Title_id");
 ;   DROP INDEX public."system_jobskill_job_Title_id_86037a74";
       public            postgres    false    239            7           1259    67932 %   system_manpower_job_Title_id_a8c1aae3    INDEX     m   CREATE INDEX "system_manpower_job_Title_id_a8c1aae3" ON public.system_manpower USING btree ("job_Title_id");
 ;   DROP INDEX public."system_manpower_job_Title_id_a8c1aae3";
       public            postgres    false    241            F           2606    67792 O   accounts_accounts_groups accounts_accounts_gr_accounts_id_a094314b_fk_accounts_    FK CONSTRAINT     ?   ALTER TABLE ONLY public.accounts_accounts_groups
    ADD CONSTRAINT accounts_accounts_gr_accounts_id_a094314b_fk_accounts_ FOREIGN KEY (accounts_id) REFERENCES public.accounts_accounts(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.accounts_accounts_groups DROP CONSTRAINT accounts_accounts_gr_accounts_id_a094314b_fk_accounts_;
       public          postgres    false    200    3042    201            G           2606    67797 T   accounts_accounts_groups accounts_accounts_groups_group_id_d2af1629_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.accounts_accounts_groups
    ADD CONSTRAINT accounts_accounts_groups_group_id_d2af1629_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.accounts_accounts_groups DROP CONSTRAINT accounts_accounts_groups_group_id_d2af1629_fk_auth_group_id;
       public          postgres    false    208    201    3066            H           2606    67802 Y   accounts_accounts_user_permissions accounts_accounts_us_accounts_id_001e820c_fk_accounts_    FK CONSTRAINT     ?   ALTER TABLE ONLY public.accounts_accounts_user_permissions
    ADD CONSTRAINT accounts_accounts_us_accounts_id_001e820c_fk_accounts_ FOREIGN KEY (accounts_id) REFERENCES public.accounts_accounts(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.accounts_accounts_user_permissions DROP CONSTRAINT accounts_accounts_us_accounts_id_001e820c_fk_accounts_;
       public          postgres    false    3042    200    204            I           2606    67807 [   accounts_accounts_user_permissions accounts_accounts_us_permission_id_7df1f232_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.accounts_accounts_user_permissions
    ADD CONSTRAINT accounts_accounts_us_permission_id_7df1f232_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.accounts_accounts_user_permissions DROP CONSTRAINT accounts_accounts_us_permission_id_7df1f232_fk_auth_perm;
       public          postgres    false    204    3077    212            J           2606    67812 S   adminApp_onboardingapplicant adminApp_onboardinga_accounts_id_d9c4b20b_fk_accounts_    FK CONSTRAINT     ?   ALTER TABLE ONLY public."adminApp_onboardingapplicant"
    ADD CONSTRAINT "adminApp_onboardinga_accounts_id_d9c4b20b_fk_accounts_" FOREIGN KEY (accounts_id) REFERENCES public.accounts_accounts(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public."adminApp_onboardingapplicant" DROP CONSTRAINT "adminApp_onboardinga_accounts_id_d9c4b20b_fk_accounts_";
       public          postgres    false    3042    200    206            K           2606    67817 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    212    210    3077            L           2606    67822 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    3066    208    210            M           2606    67827 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    232    212    3112            N           2606    67832 P   clientApp_article clientApp_article_accounts_id_674b4325_fk_accounts_accounts_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public."clientApp_article"
    ADD CONSTRAINT "clientApp_article_accounts_id_674b4325_fk_accounts_accounts_id" FOREIGN KEY (accounts_id) REFERENCES public.accounts_accounts(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public."clientApp_article" DROP CONSTRAINT "clientApp_article_accounts_id_674b4325_fk_accounts_accounts_id";
       public          postgres    false    214    200    3042            Z           2606    67903 P   clientApp_deploymentmodel clientApp_deployment_accounts_id_57f73562_fk_accounts_    FK CONSTRAINT     ?   ALTER TABLE ONLY public."clientApp_deploymentmodel"
    ADD CONSTRAINT "clientApp_deployment_accounts_id_57f73562_fk_accounts_" FOREIGN KEY (accounts_id) REFERENCES public.accounts_accounts(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public."clientApp_deploymentmodel" DROP CONSTRAINT "clientApp_deployment_accounts_id_57f73562_fk_accounts_";
       public          postgres    false    3042    200    244            O           2606    67837 P   clientApp_education clientApp_education_personaldetails_id_82358fb9_fk_clientApp    FK CONSTRAINT     ?   ALTER TABLE ONLY public."clientApp_education"
    ADD CONSTRAINT "clientApp_education_personaldetails_id_82358fb9_fk_clientApp" FOREIGN KEY (personaldetails_id) REFERENCES public."clientApp_personaldetails"(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public."clientApp_education" DROP CONSTRAINT "clientApp_education_personaldetails_id_82358fb9_fk_clientApp";
       public          postgres    false    224    216    3098            P           2606    67842 Y   clientApp_employmenthistory clientApp_employment_personaldetails_id_e915ace6_fk_clientApp    FK CONSTRAINT     ?   ALTER TABLE ONLY public."clientApp_employmenthistory"
    ADD CONSTRAINT "clientApp_employment_personaldetails_id_e915ace6_fk_clientApp" FOREIGN KEY (personaldetails_id) REFERENCES public."clientApp_personaldetails"(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public."clientApp_employmenthistory" DROP CONSTRAINT "clientApp_employment_personaldetails_id_e915ace6_fk_clientApp";
       public          postgres    false    3098    224    218            Q           2606    67847 O   clientApp_jobapplication clientApp_jobapplica_accounts_id_583dcc3c_fk_accounts_    FK CONSTRAINT     ?   ALTER TABLE ONLY public."clientApp_jobapplication"
    ADD CONSTRAINT "clientApp_jobapplica_accounts_id_583dcc3c_fk_accounts_" FOREIGN KEY (accounts_id) REFERENCES public.accounts_accounts(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public."clientApp_jobapplication" DROP CONSTRAINT "clientApp_jobapplica_accounts_id_583dcc3c_fk_accounts_";
       public          postgres    false    220    200    3042            R           2606    67852 F   clientApp_link clientApp_link_personaldetails_id_67dd0eb9_fk_clientApp    FK CONSTRAINT     ?   ALTER TABLE ONLY public."clientApp_link"
    ADD CONSTRAINT "clientApp_link_personaldetails_id_67dd0eb9_fk_clientApp" FOREIGN KEY (personaldetails_id) REFERENCES public."clientApp_personaldetails"(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public."clientApp_link" DROP CONSTRAINT "clientApp_link_personaldetails_id_67dd0eb9_fk_clientApp";
       public          postgres    false    3098    222    224            S           2606    67857 P   clientApp_personaldetails clientApp_personalde_accounts_id_9070254b_fk_accounts_    FK CONSTRAINT     ?   ALTER TABLE ONLY public."clientApp_personaldetails"
    ADD CONSTRAINT "clientApp_personalde_accounts_id_9070254b_fk_accounts_" FOREIGN KEY (accounts_id) REFERENCES public.accounts_accounts(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public."clientApp_personaldetails" DROP CONSTRAINT "clientApp_personalde_accounts_id_9070254b_fk_accounts_";
       public          postgres    false    3042    224    200            T           2606    67862 P   clientApp_reference clientApp_reference_personaldetails_id_e266ad92_fk_clientApp    FK CONSTRAINT     ?   ALTER TABLE ONLY public."clientApp_reference"
    ADD CONSTRAINT "clientApp_reference_personaldetails_id_e266ad92_fk_clientApp" FOREIGN KEY (personaldetails_id) REFERENCES public."clientApp_personaldetails"(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public."clientApp_reference" DROP CONSTRAINT "clientApp_reference_personaldetails_id_e266ad92_fk_clientApp";
       public          postgres    false    3098    226    224            U           2606    67867 H   clientApp_skill clientApp_skill_personaldetails_id_57a81148_fk_clientApp    FK CONSTRAINT     ?   ALTER TABLE ONLY public."clientApp_skill"
    ADD CONSTRAINT "clientApp_skill_personaldetails_id_57a81148_fk_clientApp" FOREIGN KEY (personaldetails_id) REFERENCES public."clientApp_personaldetails"(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public."clientApp_skill" DROP CONSTRAINT "clientApp_skill_personaldetails_id_57a81148_fk_clientApp";
       public          postgres    false    3098    228    224            V           2606    67872 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    230    3112    232            W           2606    67877 J   django_admin_log django_admin_log_user_id_c564eba6_fk_accounts_accounts_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_accounts_accounts_id FOREIGN KEY (user_id) REFERENCES public.accounts_accounts(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_accounts_accounts_id;
       public          postgres    false    3042    200    230            X           2606    67882 J   system_jobskill system_jobskill_job_Title_id_86037a74_fk_system_joblist_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.system_jobskill
    ADD CONSTRAINT "system_jobskill_job_Title_id_86037a74_fk_system_joblist_id" FOREIGN KEY ("job_Title_id") REFERENCES public.system_joblist(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.system_jobskill DROP CONSTRAINT "system_jobskill_job_Title_id_86037a74_fk_system_joblist_id";
       public          postgres    false    3123    239    237            Y           2606    67924 J   system_manpower system_manpower_job_Title_id_a8c1aae3_fk_system_joblist_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.system_manpower
    ADD CONSTRAINT "system_manpower_job_Title_id_a8c1aae3_fk_system_joblist_id" FOREIGN KEY ("job_Title_id") REFERENCES public.system_joblist(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.system_manpower DROP CONSTRAINT "system_manpower_job_Title_id_a8c1aae3_fk_system_joblist_id";
       public          postgres    false    241    237    3123            ?   w  x???Yo?0F?ï?oU??؉??T???ҴJ??r???$?????̴?????Ė}s??#?!1??
?d.GDn"T_?~?M?k5??[(`??K=+??Dc???l?r????,?ڰ??x??7?ni/{7?[?]rь?c-t?? x?BgHjچHT(ń?zL!? U
?i&R	Q?4?5???mބܱ[I???~???1?A?SN:3m??WCmj?0S|I?w???H?$???T?x}???0?E?5?2m6|6???D?
0I??Q??Y~????????.??zÕ@TC"??>??J???)?D??U???ƿ?ʧqm???;@?p=??tе??????[?n????sO???=?)Kk??KLS;?myy?~?<6^7???!?j?1	?o??)jc$RaE?☯ytfm~?o/9?r?!*C???r????9?zes|???Nr?k?????՝?;??j????{#-u??'cs?؀r??nG?Se?S?{?X
???
P? ???iT?b????M?7nV?ucП???x??6[???wQ?s?ݲ???? l??l??)????c<r:?'??G?Q>???????_$T?z?b?NHP? ?D"}?????O?g?      ?   1   x?Ʊ  ??=w??.??Q?cn11q???7????N?C?I?h$      ?      x?????? ? ?      ?      x?????? ? ?      ?   O   x?3?t??L?+)?2??R?M?KLO-?2q?K?ҸL8??*2KR??
L9C???sK??f??)??1z\\\ ?t?      ?      x?????? ? ?      ?   `  x?u??r?0???)x????????i/??3?Fp3y??j?ݕ?͒?%??????S}?????f\??$K???mC??=??j??, ????tS? ??ͫ??	??`6???/Ko?$5?P5? ?1??~?EAƶ?(Hpd?9X^g{?????N\ί?"w?? ??????`??q??]??M&)A????\'??J?w?xT|M???m??bܻ?@G*k?,1??3w$?<??H? ?
H?t????.IJ~?r?F??"	D-YbQ????u?o@-?U.??9?c??GQ??,A?Q
?~|IZ?@????U?8 	@?7 ???ˮQ?b???bG=l?Zu?,???
??YU?Qǈ??oȺ*?q?YW?NW?~"k(?6???g??_V?7ʓ?߇\P???q???E??????P\?|??/汐R7??f6cg??@aB?"x??0VdO???X?A?-?(??K?I??!?RD/ ?S9Fd.0?M9??-?G?uJ??׾6Uw??PU"l??s"s????s,z?r??3??????g?&?;~hFU"w????"m??/??,c?u????,;>Y=_????i?N?[?;?h-,?J???j???D??{ ???5K?{????bJ???~t??3w???O?fU-BwP?[??D??p?q??Al+.?Ď~?!I?n?%??!?????"a?	?M????o????;?ga?????P5?X?S$??,?? :0???j?$??d_͜~7?fg?az?yՈ4??J"?G?L,?G<?M??l?1????????jD?%??%"???㒖?U??N	ݯʺ??,?ⷡjE$?n???2??ځc?cT?????J??9??]      ?   {   x?????????4Ჴ??L? L3.K3?Ģ????T}S}????????bݐ?]C]??s~nAb^?nI??g^Yjq?nf??????^J~r?cJnf??XC?a???F?&NKs?=... ??D#      	   Z   x?3????44??Hrᐵ4????5?%k?5??J-( *?026134?,??N,?I-???4?4?0342?40????4?????? *n&      ?   U   x?3??tK-UIM??t
?Q?ur?N-(I?MJ-R0202D??&?e?$rZrYr&?&???'r??%????	Vbn????? Ϗ#?      ?   H  x??QKN?0]???PE?a?F6H?n6n?N??Oq2?;??!?G?$83H?`Ŏ?>v???????Q'???D???y??N??4?w?&)??>?ʢ??G????L>??ݘ???"1a??ȔG?'r	???t????mܺkfb?Ǧ	B????(o	?Y?\)2h7ng4???I???	u?*?Y?՜pO|S?I?`?:<"DȢ?A???0?#???d??f??Ql?????)`?&???f?k?l?4	?N????
??7?c????Ef?x?Ayo`?1?!?l???n???^???>g???	f<??֫z??u??غ;      ?   ?   x?͒?N?0?g?)?1?VN?4q???B0?t?P
???S??oO?0?~??K?'ۦ?y?l?UZC?K+??	???!?????[??]???)?sX??%??a]qݾ=???WEJ6?R(??yT?e?_?F֙?/VEo???;?6?g2.1a~?xs?9b????c?yF]X??`?.,?߳?~D??#T4*?m?%cm9b?,[WV??3?or?V?
??      ?   -   x?32?L??O?I?K????0?22?L+OM+OLM?47?????? ɗ	?      ?   b  x??Q?J1>g?b@?n??{S??"?cA????dB??֧w??A(ԃ?L??????f????Ǟ?b?wv??CW?Л?ӟV{]?????T??qM??????s?Uq?7Xw?O???c`?'??i?f?!?s??IB????;ڑ?H)?&GI?y?Βsd?.bf	????V?h?ϧ?xԎ̳e?1r??c?7`?ue? ??-)?o??i'#s??? ?E`/i ?ro?ϔit?jT?#.?#??cM?)?[J?T??p???? oعŢ??4YԖ@R??>???I??ְ???淁;,?.?>???B????8?s????"^?$rG?ʕ?c5?i?Q?wI>????ΪU]U???v      ?   Z   x?3???N,?I-???K?K?/??63?4?0342?4?I$g??9T&f???%??rZrZr?'???0'??0R????܌+F??? ?s      ?   ?   x?5?1?@ ??W??(?Y;?+llVY̆̱p?{á?3??e`R?c??63v???5???bN?0㕚??????<ċ?H]????JkH??qо倎?$ON9??5???h?"q???}c???K0?      ?   [  x??YMo?F=ӿ?ЩA????7oNZ-??????@K??X?v???%i?\??d??ɖ???????ٵ?<B?p??1???1A?8wκ??????2_E}?:?^???l6I⯓y?-fk????4/?U?J????x?G???gY??E???"?|???c?)????E?L$2!?E??e?????[?UV???%(#?4?٬!?Ӊ&nI??i????2]?iU??L??D?-??>??~??;e??L?3)d @隗??I???\?A?d?q?L??'????? 9C0(?=?.?T???׋|?Vy????Oٴ???Ͷ???n^?U?	 ?Z%km|(??o-???4???Y?{q????????k?莃?q???N&4?fy????u|?.?Y?1????\????s?-c?'N?CN"?!J??{?|Nrr	r??C#ȩ??&z?c A5~7?f?*??ӝM???>o_??:=?_???|??Q????&B"???׀6?4??-??j݇?X?????N0????a?Z??E?c?zi??m8?A??@??{?t?7?eNi??X?@?tm?
?a?N?d`?i?DvN??A?@?h8??]?YS>?y?????Yoԙ/?l?ި???#I??a?;mG*Ƅ?&\2E3???S??~e???1g????}?^???V????}E??%?z!*?#{??d?L??)?W?j??B???i4ڼ?\?:???#`(,?c????П#??T#???l?A%\1?AZ??:?Mt6?Q ?F?	?????լ6?֊O?U????n??!??ǁs??04lBC?Z|???+?!C`?NAMz}?	?ޮ2?<B??D'??k Z? GAf???P*:??c?m?: ?*Ѽ.k???\de?x?ײ??^?z???E?@]p?`???O?Y)?D??H???XY?R????\W?|??D??N?oƵF???s6??fs???Qn{????;???#$"???!
?Q?|?c???m=Ͳ?E?e?????,[?? l??ӈV?? -U*?
4M??|?d4?:ݱ~???L?E|??9?????"?VC??T??Q3???N??6{??$?@'?ᢢj7?=??G?%?_p?Z?a$??2A7j?\??`&?b??S!?`&jMdU??W?=??=???9x\	?R̢???G?|?v??>=??.%?D?I?ǃ?̕D???JBF/?p?8?}??{f???CA(??z`??5pz????1*?hz???9?S??:??*i?5#?mX??aZk??n+????R?bJmJP?	?????????9c???g7?˼:y?ڗ???6??ݵ>8??ܭ?u?@?"]?I???Ճ??~R?y?????????????<k??????2?WwE?F?K)?47?9??ǎ????w?      ?   ?   x?M?Mr? ???0???/{?n?:4 1H??o_??v???@??1GvI&b?g??B5G?(?????.[??RH?N?9?[G?!?̦??\H??|??h???<w4E?åm?4?aL
???#?$Kn?-?I??}'W??J??a?ǔ??:??bHͷ?}?????^o?b??`#OXJ????n?W?o?ϟ?.j?W?}??C??????\?A?>?H[?,#%??_???? ??آ?      ?   i  x???ݒ?8??;O??????????*?b?ݚ?-?$g?o? )?"%OznR???  o??6ַq???Û??֌Mվ?@?.?wAP????????~??A,?????????Iy??????y?U???ߖ·?r ˪뾼??????????W?ַ?_?$?$??h"=???VM?{????\S?!??>?%&?Yj?h?a,???p^??EYM?@4??ߏ?_.#?R?+??!??g??a?@~Vms?Ʈ??|.?????ZCu?_?ebyA,4?[?ߕX%m ?Br?}EJ?$??w???(FL?E? ??????{???\I?Eq?????)?7?Ws??????O??q???- ??r?????3h?3?y?6Y]????9???dBˇ?BO??Wu?3~o?Ky?????Y?JE?????*??D???P$5??`?7.????_W??ttJ(?!??p??n??!j?M??iz;?g??????ݪ?\?lE???{??es嘞Ly@??)u@'?2e??V_?m?y?|4????\???????? ??FKc?G?J?;EV?:(!??ONa????? ?9????ܳ/p???G???k????O?ɉB8???`S?x?6??NιBڂ?QHE??]zL??ʏ?:??-???U?Hʅ?"?t:&v??q??E?Hf????%?E?)?X>???ʄ?S??xC?x??n̭?2}?M???.KH"g???kgEBqVx?F#??e??wUR??}D?u४???
ɔ?=??0a
?
p<????S*[???b]߆?n\?_????NB??T?0O??????h@?O??A?'?57?(???h%M????_?p??_	W?g+!?UB?c0R?#?L??[??	ڷ b?????+??o,rاII"?#?x?)?
?G??R?)?fM?[B^?ǀ???鄠???&??;=???I:'XP	?4%?2H[ڄ0ϑ??GW???v????9U???ʃ?;??6+??n4:?W?v??f\#?
?ª??C???R???`?!???*ģ}<?Pb??ʤ??H???K?lkl??2<;??,?5???1?? ?ϱ?:??<D?ɴU&c????s?y???d?~@{W??????_C?K*H??p??z??????>?I<??+`=9%???Ǵ?[???+$??w##2	G??<??0??6|c}}?v??e!Y?G}73?J????????=?^ LR E?Y???pӪ??)
??T?3?:0b??ǟH!??YX
?J?"F?1???jk?ڙ?n6aR???w?/?ȿ,?Pd\xY:2&?ub{J<?!?Kk??tZ@?#??'W[8:??-?? M?gX?[
?5??!??hso??W???aD6?b|?:?m"?!?zP,??k?
?ĎU?S???? ?'???GB???I?L?Dܣ?Z#?G	????0?T????j/(O4a?aG??u?T?D۠l??m@?L?T?$_z?^L|gl?B?)SE?Tʤ??-I?衚??a?N?l?r{??W?????O??)ZN?_??>??????W?ZT?1+???T??^???/?IR?E??qA$?#&?1?S?eB?~?`/?K?? ­?Q?(N??W????s?G?İ^?gY???'?=??;????J$o?`??P+??T?7??r???Ck?+?????عm?܍?LM???&??e??L??m?a??1??mH???@?S&??y?D@??^?P"uc)?6?o?o+ۥ-i?Ak-???Qn???Nc??u???OzF???+?:^:@_w???b!?JǓ?J??y?Q???+??{j<?^W??]j?6??Q????U???I?U?{??????N?o         ?  x????ΛJ?u?ٷlU?0???6`c0VK?y2?yz?k?F???'?H??ҏsN??e?*y?,	ݪ2wF}?R\??0??o?P??L"ژ
??H????+ ?ʾU?*J????۬??9?Ap,s?????>?:f?p???????E؅?c(JH_U?βӞc??#Mg?s:??[%??Y?????z?t5wc:??q?Q?f|?j?,vλ?R_7A3b?5??L??Պ? <U?????"hp|??B?]2??Co?p???x?l???f?5J7~?M? ???4?3?5K3???ߣ???.
[4b6$U9??)??z???y@3A?9?<1??,?nǁGតl~8???\b?L??6^A-?N^?L?})?????a*m.{A"-?0g?~??q?4WE??toQ??????{??F??????B.????-????????"?t_FZ???r?ů???????c?{f<??Ë?*\?W??7?????T«?????Y?	?~??4??g?5?0 ???+?&??<&]?<?%???̠?`????Ϙ%?'fr?B???m?p~?3? ??Q?w???T<??.?V?^?FF?X?)??^Bh??J?e?nا??}??????̚?Bh?t??y?????;???APĚ2???N?-?$?????JK?ZZCM[r????Ǐ??H??1??????|
??@y??˺:??u]"??U_?Ũ?S?????Y¢???8??>?3???|aoJ????*< ???V?/????y?Fs??P	M?P?3?????????E???h "????|??X???^Ǧ??a?Ĕ?P??S??=?L??X_?zw?aa?s??"??h%?f????{??!1???i??H??Kgo??(.M;D?~j???L??7?.h?H?6s???ѱem?җ???M?4????Y?rB?L???!?Pc????S??2i???Ӯ??????ю??r?pz???j9??X?n@fm?dw`??????g?X]?????rڦ_??U??o9Nm?M?ʪ&??n?F???|?A?.????&H?? ?Wo??+???DV???(??~Ѐ?`??ɧ1??j?7AJoa(????뀣?a??????????S&??????[?ܲ?y?\?5???X??{)CEk[???? ??0??5!,?F'i?2nI????H????#d???_G/}????*H?F5?ٿ3????O?K?~?o?Ӧ?,n??>?.?ӟ?Y3?@?st"iW?T?z?¦$??&c`??]̎Q?~?s?{?ߴvyǆ3{ws??P????A?|m???Gi?fG???j6????_???aL?????U[&?ޝ}????,??:?	,???ZXZ?v??Wp|}:?o?Ġ?????????? ?xu?M??????b{/FS?S?b???k????W??.?+?"S?MS?q?S?????ͼg#}mW??.?քa?٢??????m?            x?????? ? ?         ?  x?m??n?@?g?)?u1?}?:(? ]??w?L?D*?G???!/????x"?????6?G???G*?J?c"5Ii?e?z"?ZưJ?熉?:B?yAپ?d??f??S9??@l?? ?
?bjV K;&.'?\9$˻2?<?R????J??f[?=p$?<np??+??d]?c?I/?uC?wY?+??A?PM??TC?}?2JI??.?|%?m??Թ?n????6	4??9????'F??O?*Tz????-?}??k&???D?یg?gGpoX????H?𫕕|??	śl???&?ƈ9m.Z?5??u??e??}5?????E\?d???L?#??A'?6??????t"η?KH-d*6????L?Es????ۮ?j?U?	?7?m?z/OY???^jfr????6?v??/??         ?  x??R?n?0=?_?h?$mb?h)ZÀ5C/?0kk??@????G9ؚ???<??=>???K
޵8???qg??0/?9lXu?(??~pd
?? ?????e?2??	_??s??QL?8??;?ST?`??) 9??h;X
??\?C`J?????ۉ????k?	??W???Ĥ?q<9)?)0?7?E??{&??j?C>1???????֮?&vhɵ????????????;.??
?G???|c?j	??V?>u?+cK?W??S?????)??w???NJ???2????(? G#?F4??WcVˤ?f#???H??&?D??94X???%?K?Ϯ2?????N?6??i?o_??????qS???G?G??<??=?iŪ?&?~??Yr?rNyE?:???j??^<O??$?d-??1?cֽЛ?f?Dq?b}??~h(-%9?m?L???(????#?         `   x?3?L?/?T(/?,I-?4202?5??56P00?#mN???????NCN???????d?FVF?VƆzFf?F? ]?i?%??\1z\\\ uD9     
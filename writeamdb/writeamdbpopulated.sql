PGDMP     (                	    y         	   writeamdb    13.4    13.4 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                        0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    74798 	   writeamdb    DATABASE     k   CREATE DATABASE writeamdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_Philippines.1252';
    DROP DATABASE writeamdb;
                postgres    false            �            1259    74799    accounts_accounts    TABLE     �  CREATE TABLE public.accounts_accounts (
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
    address text,
    phone character varying(50),
    is_email_verified boolean NOT NULL
);
 %   DROP TABLE public.accounts_accounts;
       public         heap    postgres    false            �            1259    74805    accounts_accounts_groups    TABLE     �   CREATE TABLE public.accounts_accounts_groups (
    id bigint NOT NULL,
    accounts_id bigint NOT NULL,
    group_id integer NOT NULL
);
 ,   DROP TABLE public.accounts_accounts_groups;
       public         heap    postgres    false            �            1259    74808    accounts_accounts_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.accounts_accounts_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.accounts_accounts_groups_id_seq;
       public          postgres    false    201                       0    0    accounts_accounts_groups_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.accounts_accounts_groups_id_seq OWNED BY public.accounts_accounts_groups.id;
          public          postgres    false    202            �            1259    74810    accounts_accounts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.accounts_accounts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.accounts_accounts_id_seq;
       public          postgres    false    200                       0    0    accounts_accounts_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.accounts_accounts_id_seq OWNED BY public.accounts_accounts.id;
          public          postgres    false    203            �            1259    74812 "   accounts_accounts_user_permissions    TABLE     �   CREATE TABLE public.accounts_accounts_user_permissions (
    id bigint NOT NULL,
    accounts_id bigint NOT NULL,
    permission_id integer NOT NULL
);
 6   DROP TABLE public.accounts_accounts_user_permissions;
       public         heap    postgres    false            �            1259    74815 )   accounts_accounts_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.accounts_accounts_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.accounts_accounts_user_permissions_id_seq;
       public          postgres    false    204                       0    0 )   accounts_accounts_user_permissions_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.accounts_accounts_user_permissions_id_seq OWNED BY public.accounts_accounts_user_permissions.id;
          public          postgres    false    205            �            1259    74826 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    74829    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    206                       0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    207            �            1259    74831    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    74834    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    208                       0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    209            �            1259    74836    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    74839    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    210                       0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    211            �            1259    74841    clientApp_article    TABLE     �   CREATE TABLE public."clientApp_article" (
    id bigint NOT NULL,
    article character varying(255),
    headline character varying(255),
    accounts_id bigint
);
 '   DROP TABLE public."clientApp_article";
       public         heap    postgres    false            �            1259    74847    clientApp_article_id_seq    SEQUENCE     �   CREATE SEQUENCE public."clientApp_article_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."clientApp_article_id_seq";
       public          postgres    false    212                       0    0    clientApp_article_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."clientApp_article_id_seq" OWNED BY public."clientApp_article".id;
          public          postgres    false    213            �            1259    74849    clientApp_deploymentmodel    TABLE     �  CREATE TABLE public."clientApp_deploymentmodel" (
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
       public         heap    postgres    false            �            1259    74855     clientApp_deploymentmodel_id_seq    SEQUENCE     �   CREATE SEQUENCE public."clientApp_deploymentmodel_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public."clientApp_deploymentmodel_id_seq";
       public          postgres    false    214            	           0    0     clientApp_deploymentmodel_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public."clientApp_deploymentmodel_id_seq" OWNED BY public."clientApp_deploymentmodel".id;
          public          postgres    false    215            �            1259    74857    clientApp_education    TABLE       CREATE TABLE public."clientApp_education" (
    id bigint NOT NULL,
    school character varying(200),
    degree character varying(200),
    start_date character varying(200),
    end_date character varying(200),
    city character varying(200),
    personaldetails_id bigint
);
 )   DROP TABLE public."clientApp_education";
       public         heap    postgres    false            �            1259    74863    clientApp_education_id_seq    SEQUENCE     �   CREATE SEQUENCE public."clientApp_education_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."clientApp_education_id_seq";
       public          postgres    false    216            
           0    0    clientApp_education_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."clientApp_education_id_seq" OWNED BY public."clientApp_education".id;
          public          postgres    false    217            �            1259    74865    clientApp_employmenthistory    TABLE     <  CREATE TABLE public."clientApp_employmenthistory" (
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
       public         heap    postgres    false            �            1259    74871 "   clientApp_employmenthistory_id_seq    SEQUENCE     �   CREATE SEQUENCE public."clientApp_employmenthistory_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public."clientApp_employmenthistory_id_seq";
       public          postgres    false    218                       0    0 "   clientApp_employmenthistory_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public."clientApp_employmenthistory_id_seq" OWNED BY public."clientApp_employmenthistory".id;
          public          postgres    false    219            �            1259    74873    clientApp_jobapplication    TABLE       CREATE TABLE public."clientApp_jobapplication" (
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
       public         heap    postgres    false            �            1259    74886    clientApp_jobapplication_id_seq    SEQUENCE     �   CREATE SEQUENCE public."clientApp_jobapplication_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public."clientApp_jobapplication_id_seq";
       public          postgres    false    220                       0    0    clientApp_jobapplication_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public."clientApp_jobapplication_id_seq" OWNED BY public."clientApp_jobapplication".id;
          public          postgres    false    221            �            1259    74888    clientApp_link    TABLE     o   CREATE TABLE public."clientApp_link" (
    id bigint NOT NULL,
    link text,
    personaldetails_id bigint
);
 $   DROP TABLE public."clientApp_link";
       public         heap    postgres    false            �            1259    74894    clientApp_link_id_seq    SEQUENCE     �   CREATE SEQUENCE public."clientApp_link_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."clientApp_link_id_seq";
       public          postgres    false    222                       0    0    clientApp_link_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."clientApp_link_id_seq" OWNED BY public."clientApp_link".id;
          public          postgres    false    223            �            1259    74896    clientApp_personaldetails    TABLE     �  CREATE TABLE public."clientApp_personaldetails" (
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
       public         heap    postgres    false            �            1259    74903     clientApp_personaldetails_id_seq    SEQUENCE     �   CREATE SEQUENCE public."clientApp_personaldetails_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public."clientApp_personaldetails_id_seq";
       public          postgres    false    224                       0    0     clientApp_personaldetails_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public."clientApp_personaldetails_id_seq" OWNED BY public."clientApp_personaldetails".id;
          public          postgres    false    225            �            1259    74905    clientApp_reference    TABLE     �   CREATE TABLE public."clientApp_reference" (
    id bigint NOT NULL,
    name character varying(200),
    company character varying(200),
    phone character varying(200),
    email character varying(200),
    personaldetails_id bigint
);
 )   DROP TABLE public."clientApp_reference";
       public         heap    postgres    false            �            1259    74911    clientApp_reference_id_seq    SEQUENCE     �   CREATE SEQUENCE public."clientApp_reference_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."clientApp_reference_id_seq";
       public          postgres    false    226                       0    0    clientApp_reference_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."clientApp_reference_id_seq" OWNED BY public."clientApp_reference".id;
          public          postgres    false    227            �            1259    74913    clientApp_skill    TABLE     q   CREATE TABLE public."clientApp_skill" (
    id bigint NOT NULL,
    skill text,
    personaldetails_id bigint
);
 %   DROP TABLE public."clientApp_skill";
       public         heap    postgres    false            �            1259    74919    clientApp_skill_id_seq    SEQUENCE     �   CREATE SEQUENCE public."clientApp_skill_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."clientApp_skill_id_seq";
       public          postgres    false    228                       0    0    clientApp_skill_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."clientApp_skill_id_seq" OWNED BY public."clientApp_skill".id;
          public          postgres    false    229            �            1259    74921    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
       public         heap    postgres    false            �            1259    74928    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    230                       0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    231            �            1259    74930    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    74933    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    232                       0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    233            �            1259    74935    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    74941    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    234                       0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    235            �            1259    74943    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    74949    system_contact    TABLE     	  CREATE TABLE public.system_contact (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(60) NOT NULL,
    subject character varying(255) NOT NULL,
    message text,
    "lastSubmitted" timestamp with time zone NOT NULL
);
 "   DROP TABLE public.system_contact;
       public         heap    postgres    false            �            1259    74955    system_contact_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.system_contact_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.system_contact_id_seq;
       public          postgres    false    237                       0    0    system_contact_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.system_contact_id_seq OWNED BY public.system_contact.id;
          public          postgres    false    238            �            1259    74957    system_joblist    TABLE     �   CREATE TABLE public.system_joblist (
    id bigint NOT NULL,
    "job_Title" character varying(255) NOT NULL,
    "job_Description" text NOT NULL,
    "is_onHire" boolean NOT NULL
);
 "   DROP TABLE public.system_joblist;
       public         heap    postgres    false            �            1259    74963    system_joblist_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.system_joblist_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.system_joblist_id_seq;
       public          postgres    false    239                       0    0    system_joblist_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.system_joblist_id_seq OWNED BY public.system_joblist.id;
          public          postgres    false    240            �            1259    74965    system_jobskill    TABLE     �   CREATE TABLE public.system_jobskill (
    id bigint NOT NULL,
    skill_name character varying(255) NOT NULL,
    "job_Title_id" bigint NOT NULL
);
 #   DROP TABLE public.system_jobskill;
       public         heap    postgres    false            �            1259    74968    system_jobskill_id_seq    SEQUENCE        CREATE SEQUENCE public.system_jobskill_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.system_jobskill_id_seq;
       public          postgres    false    241                       0    0    system_jobskill_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.system_jobskill_id_seq OWNED BY public.system_jobskill.id;
          public          postgres    false    242            �            1259    74970    system_manpower    TABLE     H  CREATE TABLE public.system_manpower (
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
       public         heap    postgres    false            �            1259    74978    system_manpower_id_seq    SEQUENCE        CREATE SEQUENCE public.system_manpower_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.system_manpower_id_seq;
       public          postgres    false    243                       0    0    system_manpower_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.system_manpower_id_seq OWNED BY public.system_manpower.id;
          public          postgres    false    244            �           2604    74980    accounts_accounts id    DEFAULT     |   ALTER TABLE ONLY public.accounts_accounts ALTER COLUMN id SET DEFAULT nextval('public.accounts_accounts_id_seq'::regclass);
 C   ALTER TABLE public.accounts_accounts ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    200            �           2604    74981    accounts_accounts_groups id    DEFAULT     �   ALTER TABLE ONLY public.accounts_accounts_groups ALTER COLUMN id SET DEFAULT nextval('public.accounts_accounts_groups_id_seq'::regclass);
 J   ALTER TABLE public.accounts_accounts_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    201            �           2604    74982 %   accounts_accounts_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.accounts_accounts_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.accounts_accounts_user_permissions_id_seq'::regclass);
 T   ALTER TABLE public.accounts_accounts_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204            �           2604    74984    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206            �           2604    74985    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208            �           2604    74986    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210            �           2604    74987    clientApp_article id    DEFAULT     �   ALTER TABLE ONLY public."clientApp_article" ALTER COLUMN id SET DEFAULT nextval('public."clientApp_article_id_seq"'::regclass);
 E   ALTER TABLE public."clientApp_article" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212            �           2604    74988    clientApp_deploymentmodel id    DEFAULT     �   ALTER TABLE ONLY public."clientApp_deploymentmodel" ALTER COLUMN id SET DEFAULT nextval('public."clientApp_deploymentmodel_id_seq"'::regclass);
 M   ALTER TABLE public."clientApp_deploymentmodel" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214            �           2604    74989    clientApp_education id    DEFAULT     �   ALTER TABLE ONLY public."clientApp_education" ALTER COLUMN id SET DEFAULT nextval('public."clientApp_education_id_seq"'::regclass);
 G   ALTER TABLE public."clientApp_education" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216            �           2604    74990    clientApp_employmenthistory id    DEFAULT     �   ALTER TABLE ONLY public."clientApp_employmenthistory" ALTER COLUMN id SET DEFAULT nextval('public."clientApp_employmenthistory_id_seq"'::regclass);
 O   ALTER TABLE public."clientApp_employmenthistory" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218            �           2604    74991    clientApp_jobapplication id    DEFAULT     �   ALTER TABLE ONLY public."clientApp_jobapplication" ALTER COLUMN id SET DEFAULT nextval('public."clientApp_jobapplication_id_seq"'::regclass);
 L   ALTER TABLE public."clientApp_jobapplication" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220            �           2604    74992    clientApp_link id    DEFAULT     z   ALTER TABLE ONLY public."clientApp_link" ALTER COLUMN id SET DEFAULT nextval('public."clientApp_link_id_seq"'::regclass);
 B   ALTER TABLE public."clientApp_link" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222            �           2604    74993    clientApp_personaldetails id    DEFAULT     �   ALTER TABLE ONLY public."clientApp_personaldetails" ALTER COLUMN id SET DEFAULT nextval('public."clientApp_personaldetails_id_seq"'::regclass);
 M   ALTER TABLE public."clientApp_personaldetails" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224            �           2604    74994    clientApp_reference id    DEFAULT     �   ALTER TABLE ONLY public."clientApp_reference" ALTER COLUMN id SET DEFAULT nextval('public."clientApp_reference_id_seq"'::regclass);
 G   ALTER TABLE public."clientApp_reference" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226            �           2604    74995    clientApp_skill id    DEFAULT     |   ALTER TABLE ONLY public."clientApp_skill" ALTER COLUMN id SET DEFAULT nextval('public."clientApp_skill_id_seq"'::regclass);
 C   ALTER TABLE public."clientApp_skill" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228            �           2604    74996    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230            �           2604    74997    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232            �           2604    74998    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    234            �           2604    74999    system_contact id    DEFAULT     v   ALTER TABLE ONLY public.system_contact ALTER COLUMN id SET DEFAULT nextval('public.system_contact_id_seq'::regclass);
 @   ALTER TABLE public.system_contact ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    237            �           2604    75000    system_joblist id    DEFAULT     v   ALTER TABLE ONLY public.system_joblist ALTER COLUMN id SET DEFAULT nextval('public.system_joblist_id_seq'::regclass);
 @   ALTER TABLE public.system_joblist ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    239            �           2604    75001    system_jobskill id    DEFAULT     x   ALTER TABLE ONLY public.system_jobskill ALTER COLUMN id SET DEFAULT nextval('public.system_jobskill_id_seq'::regclass);
 A   ALTER TABLE public.system_jobskill ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    241            �           2604    75002    system_manpower id    DEFAULT     x   ALTER TABLE ONLY public.system_manpower ALTER COLUMN id SET DEFAULT nextval('public.system_manpower_id_seq'::regclass);
 A   ALTER TABLE public.system_manpower ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    244    243            �          0    74799    accounts_accounts 
   TABLE DATA           �   COPY public.accounts_accounts (id, password, email, username, first_name, last_name, date_joined, last_login, is_admin, is_active, is_staff, is_superuser, profile_image, address, phone, is_email_verified) FROM stdin;
    public          postgres    false    200   �6      �          0    74805    accounts_accounts_groups 
   TABLE DATA           M   COPY public.accounts_accounts_groups (id, accounts_id, group_id) FROM stdin;
    public          postgres    false    201    M      �          0    74812 "   accounts_accounts_user_permissions 
   TABLE DATA           \   COPY public.accounts_accounts_user_permissions (id, accounts_id, permission_id) FROM stdin;
    public          postgres    false    204   �N      �          0    74826 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    206   �N      �          0    74831    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    208   �N      �          0    74836    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    210   O      �          0    74841    clientApp_article 
   TABLE DATA           Q   COPY public."clientApp_article" (id, article, headline, accounts_id) FROM stdin;
    public          postgres    false    212   �R      �          0    74849    clientApp_deploymentmodel 
   TABLE DATA           �   COPY public."clientApp_deploymentmodel" (id, username, password, is_gcash, gname, gnumber, is_bank, bname, bnumber, accounts_id, bank) FROM stdin;
    public          postgres    false    214   ~]      �          0    74857    clientApp_education 
   TABLE DATA           s   COPY public."clientApp_education" (id, school, degree, start_date, end_date, city, personaldetails_id) FROM stdin;
    public          postgres    false    216   �l      �          0    74865    clientApp_employmenthistory 
   TABLE DATA           �   COPY public."clientApp_employmenthistory" (id, "JobTitle", start_date, end_date, employer, city, description, personaldetails_id) FROM stdin;
    public          postgres    false    218   +m      �          0    74873    clientApp_jobapplication 
   TABLE DATA           ;  COPY public."clientApp_jobapplication" (id, "dateSubmit", "submitApplication", accounts_id, is_copywriter, is_editor, is_translator, copywriter, editor, translator, is_validated, article, copywriterfinal, editorfinal, translatorfinal, remarks, progress, "jobAccepted", "dateAccepted", "validationDate") FROM stdin;
    public          postgres    false    220   �n      �          0    74888    clientApp_link 
   TABLE DATA           H   COPY public."clientApp_link" (id, link, personaldetails_id) FROM stdin;
    public          postgres    false    222   �~      �          0    74896    clientApp_personaldetails 
   TABLE DATA           �   COPY public."clientApp_personaldetails" (id, profile_image, "jobTitle", fname, lname, email, phone, country, city, address, birthplace, birthdate, nationality, "profSummary", postalcode, accounts_id) FROM stdin;
    public          postgres    false    224   ��      �          0    74905    clientApp_reference 
   TABLE DATA           d   COPY public."clientApp_reference" (id, name, company, phone, email, personaldetails_id) FROM stdin;
    public          postgres    false    226   ��      �          0    74913    clientApp_skill 
   TABLE DATA           J   COPY public."clientApp_skill" (id, skill, personaldetails_id) FROM stdin;
    public          postgres    false    228   y�      �          0    74921    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    230   �      �          0    74930    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    232   
�      �          0    74935    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    234   �      �          0    74943    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    236   ��      �          0    74949    system_contact 
   TABLE DATA           \   COPY public.system_contact (id, name, email, subject, message, "lastSubmitted") FROM stdin;
    public          postgres    false    237   ��      �          0    74957    system_joblist 
   TABLE DATA           Y   COPY public.system_joblist (id, "job_Title", "job_Description", "is_onHire") FROM stdin;
    public          postgres    false    239   ��      �          0    74965    system_jobskill 
   TABLE DATA           I   COPY public.system_jobskill (id, skill_name, "job_Title_id") FROM stdin;
    public          postgres    false    241   e�      �          0    74970    system_manpower 
   TABLE DATA           �   COPY public.system_manpower (id, name, "requestDate", reason, "nosCandidate", requirements, "lastSubmitted", "currentCandidate", "is_Finished", "on_Going", "job_Title_id") FROM stdin;
    public          postgres    false    243   @�                 0    0    accounts_accounts_groups_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.accounts_accounts_groups_id_seq', 116, true);
          public          postgres    false    202                       0    0    accounts_accounts_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.accounts_accounts_id_seq', 98, true);
          public          postgres    false    203                       0    0 )   accounts_accounts_user_permissions_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.accounts_accounts_user_permissions_id_seq', 1, false);
          public          postgres    false    205                       0    0    auth_group_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_group_id_seq', 6, true);
          public          postgres    false    207                       0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    209                       0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 76, true);
          public          postgres    false    211                       0    0    clientApp_article_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."clientApp_article_id_seq"', 102, true);
          public          postgres    false    213                       0    0     clientApp_deploymentmodel_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."clientApp_deploymentmodel_id_seq"', 6, true);
          public          postgres    false    215                        0    0    clientApp_education_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."clientApp_education_id_seq"', 29, true);
          public          postgres    false    217            !           0    0 "   clientApp_employmenthistory_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."clientApp_employmenthistory_id_seq"', 125, true);
          public          postgres    false    219            "           0    0    clientApp_jobapplication_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."clientApp_jobapplication_id_seq"', 75, true);
          public          postgres    false    221            #           0    0    clientApp_link_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."clientApp_link_id_seq"', 22, true);
          public          postgres    false    223            $           0    0     clientApp_personaldetails_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."clientApp_personaldetails_id_seq"', 82, true);
          public          postgres    false    225            %           0    0    clientApp_reference_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."clientApp_reference_id_seq"', 19, true);
          public          postgres    false    227            &           0    0    clientApp_skill_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."clientApp_skill_id_seq"', 92, true);
          public          postgres    false    229            '           0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 585, true);
          public          postgres    false    231            (           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 19, true);
          public          postgres    false    233            )           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 94, true);
          public          postgres    false    235            *           0    0    system_contact_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.system_contact_id_seq', 1, false);
          public          postgres    false    238            +           0    0    system_joblist_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.system_joblist_id_seq', 5, true);
          public          postgres    false    240            ,           0    0    system_jobskill_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.system_jobskill_id_seq', 100, true);
          public          postgres    false    242            -           0    0    system_manpower_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.system_manpower_id_seq', 7, true);
          public          postgres    false    244            �           2606    75004 -   accounts_accounts accounts_accounts_email_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.accounts_accounts
    ADD CONSTRAINT accounts_accounts_email_key UNIQUE (email);
 W   ALTER TABLE ONLY public.accounts_accounts DROP CONSTRAINT accounts_accounts_email_key;
       public            postgres    false    200            �           2606    75006 T   accounts_accounts_groups accounts_accounts_groups_accounts_id_group_id_fe616882_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.accounts_accounts_groups
    ADD CONSTRAINT accounts_accounts_groups_accounts_id_group_id_fe616882_uniq UNIQUE (accounts_id, group_id);
 ~   ALTER TABLE ONLY public.accounts_accounts_groups DROP CONSTRAINT accounts_accounts_groups_accounts_id_group_id_fe616882_uniq;
       public            postgres    false    201    201            �           2606    75008 6   accounts_accounts_groups accounts_accounts_groups_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.accounts_accounts_groups
    ADD CONSTRAINT accounts_accounts_groups_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.accounts_accounts_groups DROP CONSTRAINT accounts_accounts_groups_pkey;
       public            postgres    false    201            �           2606    75010 (   accounts_accounts accounts_accounts_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.accounts_accounts
    ADD CONSTRAINT accounts_accounts_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.accounts_accounts DROP CONSTRAINT accounts_accounts_pkey;
       public            postgres    false    200            �           2606    75012 b   accounts_accounts_user_permissions accounts_accounts_user_p_accounts_id_permission_i_310c5a2e_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.accounts_accounts_user_permissions
    ADD CONSTRAINT accounts_accounts_user_p_accounts_id_permission_i_310c5a2e_uniq UNIQUE (accounts_id, permission_id);
 �   ALTER TABLE ONLY public.accounts_accounts_user_permissions DROP CONSTRAINT accounts_accounts_user_p_accounts_id_permission_i_310c5a2e_uniq;
       public            postgres    false    204    204            �           2606    75014 J   accounts_accounts_user_permissions accounts_accounts_user_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.accounts_accounts_user_permissions
    ADD CONSTRAINT accounts_accounts_user_permissions_pkey PRIMARY KEY (id);
 t   ALTER TABLE ONLY public.accounts_accounts_user_permissions DROP CONSTRAINT accounts_accounts_user_permissions_pkey;
       public            postgres    false    204            �           2606    75016 0   accounts_accounts accounts_accounts_username_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.accounts_accounts
    ADD CONSTRAINT accounts_accounts_username_key UNIQUE (username);
 Z   ALTER TABLE ONLY public.accounts_accounts DROP CONSTRAINT accounts_accounts_username_key;
       public            postgres    false    200            �           2606    75022    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    206            �           2606    75024 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    208    208            �           2606    75026 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    208            �           2606    75028    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    206            �           2606    75030 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    210    210            �           2606    75032 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    210            �           2606    75034 2   clientApp_article clientApp_article_account_id_key 
   CONSTRAINT     x   ALTER TABLE ONLY public."clientApp_article"
    ADD CONSTRAINT "clientApp_article_account_id_key" UNIQUE (accounts_id);
 `   ALTER TABLE ONLY public."clientApp_article" DROP CONSTRAINT "clientApp_article_account_id_key";
       public            postgres    false    212            �           2606    75036 (   clientApp_article clientApp_article_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public."clientApp_article"
    ADD CONSTRAINT "clientApp_article_pkey" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public."clientApp_article" DROP CONSTRAINT "clientApp_article_pkey";
       public            postgres    false    212            �           2606    75038 C   clientApp_deploymentmodel clientApp_deploymentmodel_accounts_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."clientApp_deploymentmodel"
    ADD CONSTRAINT "clientApp_deploymentmodel_accounts_id_key" UNIQUE (accounts_id);
 q   ALTER TABLE ONLY public."clientApp_deploymentmodel" DROP CONSTRAINT "clientApp_deploymentmodel_accounts_id_key";
       public            postgres    false    214                        2606    75040 8   clientApp_deploymentmodel clientApp_deploymentmodel_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public."clientApp_deploymentmodel"
    ADD CONSTRAINT "clientApp_deploymentmodel_pkey" PRIMARY KEY (id);
 f   ALTER TABLE ONLY public."clientApp_deploymentmodel" DROP CONSTRAINT "clientApp_deploymentmodel_pkey";
       public            postgres    false    214                       2606    75042 @   clientApp_deploymentmodel clientApp_deploymentmodel_username_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."clientApp_deploymentmodel"
    ADD CONSTRAINT "clientApp_deploymentmodel_username_key" UNIQUE (username);
 n   ALTER TABLE ONLY public."clientApp_deploymentmodel" DROP CONSTRAINT "clientApp_deploymentmodel_username_key";
       public            postgres    false    214                       2606    75044 ,   clientApp_education clientApp_education_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."clientApp_education"
    ADD CONSTRAINT "clientApp_education_pkey" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public."clientApp_education" DROP CONSTRAINT "clientApp_education_pkey";
       public            postgres    false    216            	           2606    75046 <   clientApp_employmenthistory clientApp_employmenthistory_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public."clientApp_employmenthistory"
    ADD CONSTRAINT "clientApp_employmenthistory_pkey" PRIMARY KEY (id);
 j   ALTER TABLE ONLY public."clientApp_employmenthistory" DROP CONSTRAINT "clientApp_employmenthistory_pkey";
       public            postgres    false    218                       2606    75048 A   clientApp_jobapplication clientApp_jobapplication_accounts_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."clientApp_jobapplication"
    ADD CONSTRAINT "clientApp_jobapplication_accounts_id_key" UNIQUE (accounts_id);
 o   ALTER TABLE ONLY public."clientApp_jobapplication" DROP CONSTRAINT "clientApp_jobapplication_accounts_id_key";
       public            postgres    false    220                       2606    75050 6   clientApp_jobapplication clientApp_jobapplication_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public."clientApp_jobapplication"
    ADD CONSTRAINT "clientApp_jobapplication_pkey" PRIMARY KEY (id);
 d   ALTER TABLE ONLY public."clientApp_jobapplication" DROP CONSTRAINT "clientApp_jobapplication_pkey";
       public            postgres    false    220                       2606    75052 "   clientApp_link clientApp_link_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."clientApp_link"
    ADD CONSTRAINT "clientApp_link_pkey" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public."clientApp_link" DROP CONSTRAINT "clientApp_link_pkey";
       public            postgres    false    222                       2606    75054 C   clientApp_personaldetails clientApp_personaldetails_accounts_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."clientApp_personaldetails"
    ADD CONSTRAINT "clientApp_personaldetails_accounts_id_key" UNIQUE (accounts_id);
 q   ALTER TABLE ONLY public."clientApp_personaldetails" DROP CONSTRAINT "clientApp_personaldetails_accounts_id_key";
       public            postgres    false    224                       2606    75056 8   clientApp_personaldetails clientApp_personaldetails_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public."clientApp_personaldetails"
    ADD CONSTRAINT "clientApp_personaldetails_pkey" PRIMARY KEY (id);
 f   ALTER TABLE ONLY public."clientApp_personaldetails" DROP CONSTRAINT "clientApp_personaldetails_pkey";
       public            postgres    false    224                       2606    75058 ,   clientApp_reference clientApp_reference_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."clientApp_reference"
    ADD CONSTRAINT "clientApp_reference_pkey" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public."clientApp_reference" DROP CONSTRAINT "clientApp_reference_pkey";
       public            postgres    false    226                       2606    75060 $   clientApp_skill clientApp_skill_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."clientApp_skill"
    ADD CONSTRAINT "clientApp_skill_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."clientApp_skill" DROP CONSTRAINT "clientApp_skill_pkey";
       public            postgres    false    228                       2606    75062 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    230                        2606    75064 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    232    232            "           2606    75066 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    232            $           2606    75068 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    234            '           2606    75070 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    236            +           2606    75072 '   system_contact system_contact_email_key 
   CONSTRAINT     c   ALTER TABLE ONLY public.system_contact
    ADD CONSTRAINT system_contact_email_key UNIQUE (email);
 Q   ALTER TABLE ONLY public.system_contact DROP CONSTRAINT system_contact_email_key;
       public            postgres    false    237            -           2606    75074 "   system_contact system_contact_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.system_contact
    ADD CONSTRAINT system_contact_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.system_contact DROP CONSTRAINT system_contact_pkey;
       public            postgres    false    237            0           2606    75076 5   system_joblist system_joblist_job_Title_eab93b2c_uniq 
   CONSTRAINT     y   ALTER TABLE ONLY public.system_joblist
    ADD CONSTRAINT "system_joblist_job_Title_eab93b2c_uniq" UNIQUE ("job_Title");
 a   ALTER TABLE ONLY public.system_joblist DROP CONSTRAINT "system_joblist_job_Title_eab93b2c_uniq";
       public            postgres    false    239            2           2606    75078 "   system_joblist system_joblist_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.system_joblist
    ADD CONSTRAINT system_joblist_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.system_joblist DROP CONSTRAINT system_joblist_pkey;
       public            postgres    false    239            5           2606    75080 $   system_jobskill system_jobskill_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.system_jobskill
    ADD CONSTRAINT system_jobskill_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.system_jobskill DROP CONSTRAINT system_jobskill_pkey;
       public            postgres    false    241            8           2606    75082 $   system_manpower system_manpower_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.system_manpower
    ADD CONSTRAINT system_manpower_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.system_manpower DROP CONSTRAINT system_manpower_pkey;
       public            postgres    false    243            �           1259    75083 %   accounts_accounts_email_da8a4382_like    INDEX     x   CREATE INDEX accounts_accounts_email_da8a4382_like ON public.accounts_accounts USING btree (email varchar_pattern_ops);
 9   DROP INDEX public.accounts_accounts_email_da8a4382_like;
       public            postgres    false    200            �           1259    75084 -   accounts_accounts_groups_accounts_id_a094314b    INDEX     y   CREATE INDEX accounts_accounts_groups_accounts_id_a094314b ON public.accounts_accounts_groups USING btree (accounts_id);
 A   DROP INDEX public.accounts_accounts_groups_accounts_id_a094314b;
       public            postgres    false    201            �           1259    75085 *   accounts_accounts_groups_group_id_d2af1629    INDEX     s   CREATE INDEX accounts_accounts_groups_group_id_d2af1629 ON public.accounts_accounts_groups USING btree (group_id);
 >   DROP INDEX public.accounts_accounts_groups_group_id_d2af1629;
       public            postgres    false    201            �           1259    75086 7   accounts_accounts_user_permissions_accounts_id_001e820c    INDEX     �   CREATE INDEX accounts_accounts_user_permissions_accounts_id_001e820c ON public.accounts_accounts_user_permissions USING btree (accounts_id);
 K   DROP INDEX public.accounts_accounts_user_permissions_accounts_id_001e820c;
       public            postgres    false    204            �           1259    75087 9   accounts_accounts_user_permissions_permission_id_7df1f232    INDEX     �   CREATE INDEX accounts_accounts_user_permissions_permission_id_7df1f232 ON public.accounts_accounts_user_permissions USING btree (permission_id);
 M   DROP INDEX public.accounts_accounts_user_permissions_permission_id_7df1f232;
       public            postgres    false    204            �           1259    75088 (   accounts_accounts_username_a6d49ba5_like    INDEX     ~   CREATE INDEX accounts_accounts_username_a6d49ba5_like ON public.accounts_accounts USING btree (username varchar_pattern_ops);
 <   DROP INDEX public.accounts_accounts_username_a6d49ba5_like;
       public            postgres    false    200            �           1259    75089    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    206            �           1259    75090 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    208            �           1259    75091 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    208            �           1259    75092 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    210                       1259    75093 0   clientApp_deploymentmodel_username_38ea66ca_like    INDEX     �   CREATE INDEX "clientApp_deploymentmodel_username_38ea66ca_like" ON public."clientApp_deploymentmodel" USING btree (username varchar_pattern_ops);
 F   DROP INDEX public."clientApp_deploymentmodel_username_38ea66ca_like";
       public            postgres    false    214                       1259    75094 /   clientApp_education_personaldetails_id_82358fb9    INDEX     �   CREATE INDEX "clientApp_education_personaldetails_id_82358fb9" ON public."clientApp_education" USING btree (personaldetails_id);
 E   DROP INDEX public."clientApp_education_personaldetails_id_82358fb9";
       public            postgres    false    216                       1259    75095 0   clientApp_employmenthistory_personal_id_ff36d4f7    INDEX     �   CREATE INDEX "clientApp_employmenthistory_personal_id_ff36d4f7" ON public."clientApp_employmenthistory" USING btree (personaldetails_id);
 F   DROP INDEX public."clientApp_employmenthistory_personal_id_ff36d4f7";
       public            postgres    false    218                       1259    75096 *   clientApp_link_personaldetails_id_67dd0eb9    INDEX     w   CREATE INDEX "clientApp_link_personaldetails_id_67dd0eb9" ON public."clientApp_link" USING btree (personaldetails_id);
 @   DROP INDEX public."clientApp_link_personaldetails_id_67dd0eb9";
       public            postgres    false    222                       1259    75097 /   clientApp_reference_personaldetails_id_e266ad92    INDEX     �   CREATE INDEX "clientApp_reference_personaldetails_id_e266ad92" ON public."clientApp_reference" USING btree (personaldetails_id);
 E   DROP INDEX public."clientApp_reference_personaldetails_id_e266ad92";
       public            postgres    false    226                       1259    75098 +   clientApp_skill_personaldetails_id_57a81148    INDEX     y   CREATE INDEX "clientApp_skill_personaldetails_id_57a81148" ON public."clientApp_skill" USING btree (personaldetails_id);
 A   DROP INDEX public."clientApp_skill_personaldetails_id_57a81148";
       public            postgres    false    228                       1259    75099 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    230                       1259    75100 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    230            %           1259    75101 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    236            (           1259    75102 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    236            )           1259    75103 "   system_contact_email_5224f2f6_like    INDEX     r   CREATE INDEX system_contact_email_5224f2f6_like ON public.system_contact USING btree (email varchar_pattern_ops);
 6   DROP INDEX public.system_contact_email_5224f2f6_like;
       public            postgres    false    237            .           1259    75104 &   system_joblist_job_Title_eab93b2c_like    INDEX     ~   CREATE INDEX "system_joblist_job_Title_eab93b2c_like" ON public.system_joblist USING btree ("job_Title" varchar_pattern_ops);
 <   DROP INDEX public."system_joblist_job_Title_eab93b2c_like";
       public            postgres    false    239            3           1259    75105 %   system_jobskill_job_Title_id_86037a74    INDEX     m   CREATE INDEX "system_jobskill_job_Title_id_86037a74" ON public.system_jobskill USING btree ("job_Title_id");
 ;   DROP INDEX public."system_jobskill_job_Title_id_86037a74";
       public            postgres    false    241            6           1259    75106 %   system_manpower_job_Title_id_a8c1aae3    INDEX     m   CREATE INDEX "system_manpower_job_Title_id_a8c1aae3" ON public.system_manpower USING btree ("job_Title_id");
 ;   DROP INDEX public."system_manpower_job_Title_id_a8c1aae3";
       public            postgres    false    243            9           2606    75107 O   accounts_accounts_groups accounts_accounts_gr_accounts_id_a094314b_fk_accounts_    FK CONSTRAINT     �   ALTER TABLE ONLY public.accounts_accounts_groups
    ADD CONSTRAINT accounts_accounts_gr_accounts_id_a094314b_fk_accounts_ FOREIGN KEY (accounts_id) REFERENCES public.accounts_accounts(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.accounts_accounts_groups DROP CONSTRAINT accounts_accounts_gr_accounts_id_a094314b_fk_accounts_;
       public          postgres    false    3033    200    201            :           2606    75112 T   accounts_accounts_groups accounts_accounts_groups_group_id_d2af1629_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.accounts_accounts_groups
    ADD CONSTRAINT accounts_accounts_groups_group_id_d2af1629_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.accounts_accounts_groups DROP CONSTRAINT accounts_accounts_groups_group_id_d2af1629_fk_auth_group_id;
       public          postgres    false    206    3053    201            <           2606    75117 Y   accounts_accounts_user_permissions accounts_accounts_us_accounts_id_001e820c_fk_accounts_    FK CONSTRAINT     �   ALTER TABLE ONLY public.accounts_accounts_user_permissions
    ADD CONSTRAINT accounts_accounts_us_accounts_id_001e820c_fk_accounts_ FOREIGN KEY (accounts_id) REFERENCES public.accounts_accounts(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.accounts_accounts_user_permissions DROP CONSTRAINT accounts_accounts_us_accounts_id_001e820c_fk_accounts_;
       public          postgres    false    3033    204    200            ;           2606    75122 [   accounts_accounts_user_permissions accounts_accounts_us_permission_id_7df1f232_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.accounts_accounts_user_permissions
    ADD CONSTRAINT accounts_accounts_us_permission_id_7df1f232_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.accounts_accounts_user_permissions DROP CONSTRAINT accounts_accounts_us_permission_id_7df1f232_fk_auth_perm;
       public          postgres    false    3064    204    210            =           2606    75132 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    208    210    3064            >           2606    75137 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    3053    206    208            ?           2606    75142 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    3106    210    232            @           2606    75147 P   clientApp_article clientApp_article_accounts_id_674b4325_fk_accounts_accounts_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."clientApp_article"
    ADD CONSTRAINT "clientApp_article_accounts_id_674b4325_fk_accounts_accounts_id" FOREIGN KEY (accounts_id) REFERENCES public.accounts_accounts(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public."clientApp_article" DROP CONSTRAINT "clientApp_article_accounts_id_674b4325_fk_accounts_accounts_id";
       public          postgres    false    212    3033    200            A           2606    75152 P   clientApp_deploymentmodel clientApp_deployment_accounts_id_57f73562_fk_accounts_    FK CONSTRAINT     �   ALTER TABLE ONLY public."clientApp_deploymentmodel"
    ADD CONSTRAINT "clientApp_deployment_accounts_id_57f73562_fk_accounts_" FOREIGN KEY (accounts_id) REFERENCES public.accounts_accounts(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public."clientApp_deploymentmodel" DROP CONSTRAINT "clientApp_deployment_accounts_id_57f73562_fk_accounts_";
       public          postgres    false    200    3033    214            B           2606    75157 P   clientApp_education clientApp_education_personaldetails_id_82358fb9_fk_clientApp    FK CONSTRAINT     �   ALTER TABLE ONLY public."clientApp_education"
    ADD CONSTRAINT "clientApp_education_personaldetails_id_82358fb9_fk_clientApp" FOREIGN KEY (personaldetails_id) REFERENCES public."clientApp_personaldetails"(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public."clientApp_education" DROP CONSTRAINT "clientApp_education_personaldetails_id_82358fb9_fk_clientApp";
       public          postgres    false    3092    216    224            C           2606    75162 Y   clientApp_employmenthistory clientApp_employment_personaldetails_id_e915ace6_fk_clientApp    FK CONSTRAINT     �   ALTER TABLE ONLY public."clientApp_employmenthistory"
    ADD CONSTRAINT "clientApp_employment_personaldetails_id_e915ace6_fk_clientApp" FOREIGN KEY (personaldetails_id) REFERENCES public."clientApp_personaldetails"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."clientApp_employmenthistory" DROP CONSTRAINT "clientApp_employment_personaldetails_id_e915ace6_fk_clientApp";
       public          postgres    false    224    218    3092            D           2606    75167 O   clientApp_jobapplication clientApp_jobapplica_accounts_id_583dcc3c_fk_accounts_    FK CONSTRAINT     �   ALTER TABLE ONLY public."clientApp_jobapplication"
    ADD CONSTRAINT "clientApp_jobapplica_accounts_id_583dcc3c_fk_accounts_" FOREIGN KEY (accounts_id) REFERENCES public.accounts_accounts(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public."clientApp_jobapplication" DROP CONSTRAINT "clientApp_jobapplica_accounts_id_583dcc3c_fk_accounts_";
       public          postgres    false    200    220    3033            E           2606    75172 F   clientApp_link clientApp_link_personaldetails_id_67dd0eb9_fk_clientApp    FK CONSTRAINT     �   ALTER TABLE ONLY public."clientApp_link"
    ADD CONSTRAINT "clientApp_link_personaldetails_id_67dd0eb9_fk_clientApp" FOREIGN KEY (personaldetails_id) REFERENCES public."clientApp_personaldetails"(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public."clientApp_link" DROP CONSTRAINT "clientApp_link_personaldetails_id_67dd0eb9_fk_clientApp";
       public          postgres    false    3092    224    222            F           2606    75177 P   clientApp_personaldetails clientApp_personalde_accounts_id_9070254b_fk_accounts_    FK CONSTRAINT     �   ALTER TABLE ONLY public."clientApp_personaldetails"
    ADD CONSTRAINT "clientApp_personalde_accounts_id_9070254b_fk_accounts_" FOREIGN KEY (accounts_id) REFERENCES public.accounts_accounts(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public."clientApp_personaldetails" DROP CONSTRAINT "clientApp_personalde_accounts_id_9070254b_fk_accounts_";
       public          postgres    false    224    3033    200            G           2606    75182 P   clientApp_reference clientApp_reference_personaldetails_id_e266ad92_fk_clientApp    FK CONSTRAINT     �   ALTER TABLE ONLY public."clientApp_reference"
    ADD CONSTRAINT "clientApp_reference_personaldetails_id_e266ad92_fk_clientApp" FOREIGN KEY (personaldetails_id) REFERENCES public."clientApp_personaldetails"(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public."clientApp_reference" DROP CONSTRAINT "clientApp_reference_personaldetails_id_e266ad92_fk_clientApp";
       public          postgres    false    224    3092    226            H           2606    75187 H   clientApp_skill clientApp_skill_personaldetails_id_57a81148_fk_clientApp    FK CONSTRAINT     �   ALTER TABLE ONLY public."clientApp_skill"
    ADD CONSTRAINT "clientApp_skill_personaldetails_id_57a81148_fk_clientApp" FOREIGN KEY (personaldetails_id) REFERENCES public."clientApp_personaldetails"(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public."clientApp_skill" DROP CONSTRAINT "clientApp_skill_personaldetails_id_57a81148_fk_clientApp";
       public          postgres    false    3092    228    224            I           2606    75192 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    232    3106    230            J           2606    75197 J   django_admin_log django_admin_log_user_id_c564eba6_fk_accounts_accounts_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_accounts_accounts_id FOREIGN KEY (user_id) REFERENCES public.accounts_accounts(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_accounts_accounts_id;
       public          postgres    false    3033    200    230            K           2606    75202 J   system_jobskill system_jobskill_job_Title_id_86037a74_fk_system_joblist_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.system_jobskill
    ADD CONSTRAINT "system_jobskill_job_Title_id_86037a74_fk_system_joblist_id" FOREIGN KEY ("job_Title_id") REFERENCES public.system_joblist(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.system_jobskill DROP CONSTRAINT "system_jobskill_job_Title_id_86037a74_fk_system_joblist_id";
       public          postgres    false    241    239    3122            L           2606    75207 J   system_manpower system_manpower_job_Title_id_a8c1aae3_fk_system_joblist_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.system_manpower
    ADD CONSTRAINT "system_manpower_job_Title_id_a8c1aae3_fk_system_joblist_id" FOREIGN KEY ("job_Title_id") REFERENCES public.system_joblist(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.system_manpower DROP CONSTRAINT "system_manpower_job_Title_id_a8c1aae3_fk_system_joblist_id";
       public          postgres    false    239    3122    243            �      x��[�r�:����t�L��N%�U$Suv"ˎ/���r�8;;� )^ ��$�j�}�AI$�L՘^ǖ@�5��/td9����gP���*��az��ݪ�t��W���gC��M�7s뙽_���EU.���7~g�w��|��4����?�Ü����;�'�	�F�]Wu���5TEW?���su��S��U����slݴ����7#k�&W	���K�ga�����2���T�*y�K%ˉ�;MW]�俹֯o߸���s���̊j>�/?��\���&8��L�ϫY��v^�E0���ƻ��nV��o�?H.h�Ŵ+�f��z|$
Daن��Z�;��]��S�%�]�&�>����NG�(9s��7���(Ї��^=�w���W��??���b�p�.&�&Ӽ��A<�,�+mQ�l�"Y?���W3-}/M}�� �|��wӵ��H���:�bϿ����˔��k[��?l&��͏�$�Z��/OϞ٦��������b�����rM���=�^�A����G*�O�ɰ���A]Wt��|��w�㘖s|����p��eL\ͷ���t�_���~��c2��M�M�^��@�|s=�z��f=��Sj���x6Ҧ�W�c��:���?�EU�np��C��yβ����y�G��	�d��\U7���Z(S�`��ߦjj/�OMU5"����M[[�0e-ξr��CxyH������|ˠ�V�����J�r���4���r���&Kk:WR��t^���J2���>y��Z�HBE�h�2��p�D%�##��u����{�5C��ڠñ�V(�#��K8��%o�	J馬��e��p��0�y���aJ2�Tdd[V����h�Ck8�������͡I�p�e�ޯC��Ō���>�T��������������-�I�� ud�\U{�g���,@��J/��J���j�59G.�,cq��R��rϝn*��:q��-M_��PK��87�
�UF�[�4]�4/#r5�dB���-�z�=�R�D{��l]�'�~�\�y�6-8����˔\�:!o�T5���UK���Z��r��(��R����5��X� ��a�� ��h�9]�m���Xz��,�ę~ԃ�^_��1p�h*X�2�s��8���;��h3�gX��������םm��N?���N����*�%\�)(S~BF4�í���Os�l����8m������)(`�*�Oɔ�>4�r6��8��,ؚ��'\�AѾ�n?����[��s�l�����p�D�IQ� ���"V;g�`u�%F�$�9��>8�x`a��7��^ 4 i�lC�e�5~�_nξ|�����p"�F�� �t�0p��K�Ѓ����Mr��1��9�����+�8����B���۟����M�	e��(?�73n�ޣ���l<��ݛM���{ө��ohb*5ɺr�=�%.����C�>ǴQ]C�m��D�D����,�֐�i�Sᅴ��Ny�[��	up�5�>�<*��
���`�h
>5a)`-":-�Z�iԀ?vgG�l���8t/`ҵF�/��!�4^�m�$��O+ށ�K/#��W:��r&�J�b^��+0�@�:460�6���h�(̒2ga�1����qӊE�`'0d]��O5�[��p-k���ĺ�x�<H7���p�ŝ$���z���=�K���Ĥ�zpu	����|�$�`����Y$D�3<a[�k�Er1<}K��0�y���#�g�X�/F��;����ZP�>`�YƸ����U<b�t�M�^a�iE����k��$�%��)��y(�v���͑[�|�(�����)���4��}�DM�61�I��(�����L� �00C�V_�m�P.*#�������!:�g��x @�fo��-���y���r�T�����;8a�@����I����8�(��0��g�v ���.=�q�������8%% ���N.��f��
�oA��ud�`��p��M�a<e"���`�l'�p-��*��: X.�E�Ϩ)����_���%`��ڔ�5�^L���V��gO]�q���^�A��h�4%��:e��Pt�����%`�<�޶�_�C �0���C�"���3霷��f6Gn����VfC��bX��=�C�][x���
{
�1���ƍhuxl��ۯ�N#o�����d����?��~�#��-h�$c��5�|�%��ChH=1�1�Io'g�	6L�S�|�y$�K�, 
 m��\�^@�
Ly��o55T6����,��
IW�IT<y�b� ��,�8�6��X���_j��qJ;Ƞ�_[������$����̓۩ 1�/���M������pK'�����8���\��ˆE>��(�£��&m��y�ѵ\P0do��{}��&��Ѹ��36 �|rϋ���}���+�4��,�`R���lZU��e�|��r����5��c����K��߯N��B4��<X�`�I�YW ;�c9��\L�˄�!&U���{�;��_NY����#\�t�R����2*'��y�|�f��Oa$g5���|�*f(׵8v0 ?�hq����%�Bk�ƾ9(�9���Έ�4��`����
��0�&m+"���u�\m)�b���C�� ����d���,a�1�{\	������GAC���D���p��un�ͫ��Na�ţ�Y��;�,ni���&�.�$�+���rs�L��X��W���415����!STt��ܔ&m +���^��E�W `�b�VV�T�������δ0۶@�D����4��q)X���TeҺC1w�%n��-�̇�^�&��r���x��<ey!R&H&I�QL�y[G�>	�E��-a��G�,-��?�6�<@u)�Q+4�����-˶@�fqÕaM�	��V����\���,�h́}9��x;�|Z�~nkJ�xO&,۠J�#���nǀ��č�l�Ű��
d����b�%W F>�1��@�ՙ?���3�	`�;�ݓ�3��+y]>,�A����RI��4�R�&4�7uI���Z�� ���Jë�Q�,h����&�����H�زXzc�X���f`�3��� ^����# )@ej�f/%�9�_�9���K'w�/�'2e�bFT�EQ�ӓtI,+2�[�&Xg�$�Za����HK�����ǂ�Axt��)]�����<	A_�V(g#�Z|�B� �9R(�<�D�:|���\N|@P�[M,�<뫧*�q�o0]f4��UiqXO\`x^� }�����(B�Q�Zo�`��aE<��5���i�UgKE���!�Q����,V� �4�l������um��	_!=�"�L^�9��9���*#�'�:��Mp"�G�.����e�)؏��f�-hz-5���˽([Ӕ\o�yK���R��D��З3�U5x�:\��߉�b�A���X�պ G�r���߁�SSҏ�Eu1�V�r�eY��A ��%����硋yT�YV��`�6��m��W��A�$#*�)xc��m��0�P��5�-�.�H�F�Dk�y$jk�3���ǒ��;�6�Hʗ�$�9�iY�E��#Σ�$��0b|����I1bMw�.�������@'cZl��j*G��ḍP�KN�pl�y���FXYV?���ܥ��x�XY0��&�7@V�k�X����M�,evς�Zk��>zM?0� ���A4�^�׸/�,ø���X6���Bv��(l�z(?٭�߽,���pٹ�V����'!F�������B~"m����A���M�z�����Y�]���6���0�����\��[HQ�voI�\�p����FA���l6�[5�1t��]�4�?�f�ۂ�~��U����nuP�����C���!�k&�r�UE�9c�Oδ�	.�� 
R3���B�39��.X�4LX���D���;���t�bFE�k5�6   �~[�u�ֱ��.��ձU���
0ܟM#ZcV��
B�v���)�-��ZS6��ʠ�AbNVoZ�^άF.��,�e'`����:�r('��]��&����ؠ�Ȯ]�)�.z��l5�N�jJ0f����9LI:"G-M����%�nM���)N����s�m�{	���~�t�s�
�/�8 ���1\��J�����C�޺l�$�ɴ��a�30>I!�_��人�^ߌ&�M|z��������P�B_ml���j㭦)V�X�e�C*�$L�A>�3�rO�H2"���_:�ý�+��y@� L��E<�S���!����$����I��P�x��M5���������	�_ΡM&_n���ݓ�<dK^J�	�����i�����x �C�d�a&�����Y�mX?� l�8�����Yc)gʼVGn��E�g��s�Kd���v|�yhd�ރB��Kް�f�U�f�s^e��/�k�n�[pL܂#�&ɲ6��~Ț���o0sT�E�7��,X��g�l;bA��zY�o���	iBFEC�*�М���.����:	؆�����*J�w)OU��bb�TI�!��I�iCqX�����>y�N��k2�D5uHF ��Bt
�I�/� �o���h�w�
�U,W�O���� 	���T���P���4�ִ�Hp�1�g()�ޘy�ۼ�-x���[�$�$ҟv}ﯰ�خ'�te����|�$h��#33G��`��?��X$�y��+��]�Iۅ�3T[��Iٵ�G�kY���J�`G��dA/_���@cڮ��Z	0�A;
�X*qj��������A]6�����O��n����ك�η����Ǯ�k�GM3�W��!+�����O	��Ò-  궬�3y�n�=�A�V�bW�k![T���9.�0���܋F�,�x
�]T  Y��l)"i��b��(�Zwb����Uw=��<���?b���)L��"B\I�u�H����/ʐu��%ڗ����<�Oep�hؿ��L�(��̖���D�1iݺ�Mw��P�α3��Bow���3���b�j$��U�ᶭ�\ ��&'w9^rѪh���X����r���"�_� �GP��r�X�F%�-5>no��N��0�+� rM�V��l��G���K�`g��dM�M\�iQ6IBMv��GO�ٝ���LZ��� ����y��	�|�S0l|�tuMa%̰٫&RF5���y�sתzhy{[lw@�����[���{2�O�N7�v�b&����$mЗ�~0�Z����7]��׀�s��?U1�
�ao�Omx��V�1g1��Rἠ�~����:�|�2��Nr�s��FƋ��H�8�p���]A�%�XL�\/���}�U;�[�s"�#'�_<��<����J�t�:�����}s�Źsʑ�4����ρ����їәa=���17o�>���?��|Q�iZ��S�N�0t�,�-`9I���9u�]�n�n�s�2�7��w�����q��      �   r  x�-Ի0ј*�Б�!{q�uX�q���e;o�Z���˕�8���_�z���ެ���ˡ�r�:�C�r�^=ˡ�r跜_�w94n�n�n�n�n�n�n�n�n�nܭ�q���ݺw�nܭ�q���ݺw�nܭ�q���=���ܣ{p���=���ܣ{p���=���&n�&n�&n�&n�&n�&n�&n�&n�&n�&n�n�n�n�n�n�n�n�n�n�n�6n�6n�6n�6n�6n�6n�6n�6n�6n�6n���������������������^ܫ{q��Ž���^ܫ{q��Ž���^ܫ{q���}���>ܧ�p���}���>ܧ�}���e>�|>���F      �      x������ � �      �   O   x�3�t��L�+)�2��R�M�KLO-�2q�K�ҸL8��*2KR��
L9C��sK��f��)��1z\\\ �t�      �      x������ � �      �   `  x�u��r�0���)x��������i/��3�Fp3y��j�ݕ�͒�%�����S}�����f\�$K��mC��=��j�, ����tS� ��ͫ��	��`6���/Ko�$5�P5� �1��~�EAƶ�(Hpd�9X^g{����N\ί�"w�� ������`��q��]��M&)A����\'��J�w�xT|M���m��bܻ�@G*k�,1��3w$�<��H� �
H�t����.IJ~�r�F��"	D-YbQ����u�o@-�U.��9�c��GQ��,A�Q
�~|IZ�@����U�8 	@�7 ���ˮQ�b���bG=l�Zu?,���
��YU�Qǈ��oȺ*�q�YW�NW�~"k(�6���g�_V�7ʓ�߇\P���q���E������P\�|��/汐R7��f6cg��@aB�"x��0VdO���X?A�-�(��K?I��!�RD/ �S9Fd.0�M9��-�G�uJ��׾6Uw��PU"l��s"s����s,z�r��3������g�&�;~hFU"w����"m��/��,c�u����,;>Y=_���i�N�[�;�h-,�J��j���D��{ ���5K�{���bJ���~t��3w���O�fU-BwP�[��D��p�q��Al+.�Ď~�!I�n�%��!�����"a�	�M����o����;�ga�����P5�X�S$��,�� :0���j�$��d_͜~7�fg�az�yՈ4�J"�G�L,�G<�M��l�1��������jD�%��%"���㒖�U��N	ݯʺ��,�ⷡjE$�n���2��ځc�cT�����J��9��]      �   �
  x��Y�R#�]�W�l��ջ�̈́��&�1����)J)ȠT���@���ʿ7_�{n��[�p�ޜn��d�羒,=:���Qg��_t�F��q�uk�R��F?6�ɬ��ssroW'��?���*�6'�=��ֺiOLu�|粒-^��󥩎R�z;�,�����EGY���}����t��J}���u��ե�su[�Vwzm����P�����Ty�Q�W��U���.�h�R��:o��F�J]�Z��+W$�"���i㾪f�Ս�4kM|Z�[��?�$��[|ٙ�>��e��c8q���T��Jյ������l��t��!��V͊�\��l)�2ɖ18��ו�[u�M�6W��.��}�Z��_]�#�JF��18��Z�Z����ꪚ�"o�3Y����U0x��c���y�s�)�9����"�
�/`>�9y��F��ռٟ,�'E��ej_���s�ɾ��f�wZ����j�[&HƓ��"�>�ʲ�����E���֦}Zb5^"W'R/o$�.K$#O*�Kɗ�,�>О�m�\��7މ���ҿ��Az��o�����>\�K�C�g7�A�W��i����}��g8����X.����k���LWza�	e|�.K�@!��d�Kg��㸪�_�[���3lKy��W����s0���L ~�Ч4�����X�׹)���Ns�����D����0H��M�E�]�2����?��._,5U�ˁ�} ����	�:�qm�&�"�4)��c�w!S�uUl�x�6�'�Rh#����aUS��"�A��{�s�~��<�^d�!ö$�ia��U��5V!��� b�k�6�_�� a�7�Z�$��U�R�j6M���
����� e�[�k^v|����&��J��#��񧺠JmX��S��_�J��c�o2�3���W���Bϡ�Я���M�혗 �C�0d���Am�pL(FnѤ�(mQ#�-"�jL�1��W�3�hH�u��1�j�J��	Con�R!��U��E׋�jݜ,F�V�y��tH��K�YsK?�ҏaʰ��k'�Bk]C��vc�e��}�#n�G��&dI����Z�}�1����&�ͺժܰ��z����T%^@{��v��_@�LI�F>���)�&�Mh���M1m�x�}/�����a3V�ϽA���ۜ�4�ݙ.j��z�QImE!Co��d���sm��Z��]����H&�(fV m_-��oDY/��ٱޛ�^��RV�o�~n`�?�ʋ��
���,l)68�R�.���R�}��S����j�֎��n��i((�IaEÖ��4jc;�<ٮ������d�Vꚴ�tAH�LI�a ��|�_�~ϟ55��
9#?�R�����*Hek�l�f����v��������ƫ��d�ym��@���f0;�ˢ+�Յy�ε(M*�M��;�q��X�0�3�V�5)g�-��~Q?^t$h>=F�ڋ���a�)�2�G�,t��7�4zU��@Z�*=5��u�uոF�P_,�'{���Bsg(�@�e��S��$�O�ͪ�����R�qʰ�>>����.A�)M���L�h��#����)g��Tͩ��6�������pH�$��%C_)�bԄl(���v0��Z���5/�ZL|��s��j83|���q�d��@h�Z0��8��nF&��J����a���O�͌	�H9%1�@�(cw�+��l=&��I�~��V�Mj54�j.X �Df�$cx�jnƓ��W�C
I����uXBʠ�Qeh[(���t~�1���/kj�E��d)�W��Т�p~*=���6'��6�]��z8/��KC�>�M�BI�T�=i�08�Y��5n�`˩*�W�@~�I�ӄAH&�5/��+����P�i���
����4e��������J��A�7S �S��4c��='�f4˭��;�1�~yCa����������5K���Α��ϰo�u�T�!	n�:���f��F�4�(ax3x��ҏC�yH>T��/����F�=_L�z�S1��\�ܨ��x2佘a��Y���`Z������1���<���m<8˗��C���bJ㚊��*4D��Thݘ�#|�:?e�W����aڷ�΀��e�aO3�j0n ���Qkѿ ,��D�`�@�3���y㆕�-���n�ᙞ��J���zsD.{�P�;��G��V}���
�G�:���7N�p��:��������GSuQR0өHp��!iG2�Eö�kI�kM��)u���p�4�gt&��/��h���j��O� 91��#���w�ˊ��?��^`b��X4���HYhӢi��L���Y�]K'�/ƈ~��K}#����%/�֘*eg{ٜ���%�&��Ҷy߰݋��J�ѓ��}Wtm)��S^�&2*���@7{N��w���.2,S�aP�w)��-�v�QI��y#E\�R�i�0�p��+�4�S�5��~��C��w&坍���}��fQ�\r�Ә����U�>�6��3)��c�$�q�{g�G��>� �ˤ�2���ot^��t�ۛ+^#e2�d�p�-5�ms��`d�L&�,d8`����9�)��������3)�,b��};�48PEYz;x���2��,fxOtk�vaKc����e����N/������rضM�?ue2�����S�0��+ ��3%��.�y�&rA�p��<Jڎ����\�w��O�����q�U      �   8  x�uYks�8����t%]5�[����e'�#~�Vۉ��LA,A|@I�d���=�;�Tu�;�	��8��sa��cN?���������OF�F�?5s�?Mh4fWb��G� �?e+���V�� K��˽��S��{��n����A���}c֭ҝ����p�yU)�~����|���	X-��Ӳ-kң��u|9��R�(w��P2���`�X��5�T�۵(e�׌�h���0�G��_=TΜ���0��0
�X�Ŋ����9�U��|=���NWj(��Q�7K1"t����K�,L�.�h���vZ�z��Z��Ɏ�˶U%�^P��,���,p�(��9>�Lh	�5͋h�^6�	Ϣ	�7
U�r�7�	#��B�gf��I}p�%������_!��qεX)-��<t�<� ���^PƊ�h��9Ah��豗��	�'Y;�Q�^"��~qn�v�Q�̠݈N�oJ�٬�g}�e���/W�:z�܉D��4��,��>߇��A��J5�/#~�<�0K8OwNx�I��0��C> e��J��wk�S�Z�k���/��Z�x~��=�y��c��G9�����~��i��K�k'�F��wb��uO��B��S �|?d��O?}��O/�{܈��*�:=[��\�A��Ǎ2,Ϡ�Տ����l~~v��jY�Y�
����3CΌ���,w��qg�`X������{1����ߢl��L�(�iKʉ�q��Q33٢$l��[��_֢�L��y#9(����&��b�̴=�!fZ`��;H
��ע��	��zf-��̶0�kY�f)٦�g��l'�o��RΩ/��К�Q`P�7��-*>��-xU����J>��!)�}D w������Q�E\�u�������q�ǎ�D@�y$��	�i�a�횃w\�%�Ҽ�I��R�n���S�kF���t�Y�2q
��0`k�%o8�$�̛	��1��)��YU�Ð�E�����NW;�.��!�8'��|�M�̀�6�AĴK�H�.�!����P�P\��$�8r#R�4K"f&[���F�-���G��xW�~
�SI��}�t ���ɦ)��L6-Y��炙�����?��~�Y��5_�t2t*mAbAR�[��d;Y-���/����:���Ή��5*J�4$���
dLBk�ǰ|�w���	eNϹ�GpI{3�� L�2��[�V�\s*�L��T�dYDY�/Xa{H�0����r��U�2&*	�0:Q8��@Ȏ�YNZ�}ֈ�[��۽?�Ͽ{���B�ʹ�8�Q�L�=�8ͦ�Z�8d�+�Lh1�Ϛ�l���
�����M����
�:�!�S�ּ����G��O6��&�Qːye�nƺ�0b�gX��m�Wb��Yh`\s����p/��$H��`+֌@Q�����>����723B�#w�Z�G	Jj�yS K�j*�8�u������ð���%�.`)��R�*s �^tK�0e���4�l��=�����^���OK���k���gOYZچ9F���g�?��.�_$����-�E�����^�L�,wÜ��V,�?���x�G�,�B���N���H��|���c���F/*0vӼ�d\j�$ %��@d�
c����
/�X�w 7����CVU�a� �F9*d0=�Ȓ52����D��UY�ҫ�Z�u}���m���-�]@
���)�,m��w|���!��W:i�	s
Ӌ�N�Z��ܯ�+���Z~�=��ο�H/��@s>0�\�47z��(65����7/��f��w .�2�G�S�E��Q�JY�s�+�������}h�V-�fә0�Y��NA-���-
2D���2W���o˙-�
'���q,Kā�I�Cd�e�x(�T�Q쾀fK��K^��i�9ǉ�H��bCp�#�c�䬆(�I>�K,K=?a�`l_ѝS� �"�G�1���t��^�3�TMW6j�M�A�*��{��t?�*�aV
��a�������[����	Rf�	
*�ƒ:ؖo9�l߲���� 8F%�5��G��D<�~c5�[*���GA5��Q�����B���0��Ԕ� �]7@��ں��;�:\�9�������:��Q�*|6�d?��t*��c�߽���}�3ZI]M��K/D#�õ랚6��	�Űs�1��GF�n�v��{�W~��/�e�EW�Hp1�}�ÍYf�)9Ӣlw���tي��"*�#3�� Č*���R@�.�}�۲�����m��;cQ����5:���-�VL�,�㜒��5}�C��f/Mg��Q�Eg��EYr�5Kg��=<Lٳ�B���:�+Xv�2�9�ܥ%�$7��{MJ|V�R�c�R�Z����2�o%�<=�3�X����d�ZJb���]	ׅP9�%�����ٓ�v�t�H=|����K�$D���VY��j���wtʰ\��Mt�il�g�]��δ�+4��89�_�:j?�5���=�G�͐�n���$yS�$fg�Z5�E�$�,����Z@��Uh6��rp�P�K������#��{/C�C��uO������ǹ�ma�����)�K�$eW�׬-��N[YZ�s]�a	e+�vߘ�K�85qT���k�$c/��i���>��@��;p�#��f�%])���,�r;���F�}��]��k1Pԓa�1�7X
���#�`j�m��-Q[�#{+p�b���3����KKb�pҔZ�N}6L�9ڶ�X��v�G����BE���tE��x ����b��h�|��:8
6P�AD)\�4>�ev�e���uO?w�g�}�)I�R!�[>T�t�Ilb=��1�����\]��#MY����.u��e�DkI�H�}ZZS��i��]>s�m#��Iۮ��i[�zhN:�.��a��{n�L{�4!U��عZ.1�F�ٲ�9i>a ;\�,����"��;��U�Ν�|]xֳ�锯+����q�n��33Ұ��Ȯ�S<�O�����[W��\��M��.�����03}/ )��wk�����X�l�����g�V���7rQ�\��}��0��-�xQ	�����xY4�U݉W�4ג��I߻4W�Q�����)ݥh8X���^�'Z� vT�R-��,H@=8߄n]�之Ά.�r���!n��EӲ��7�������j��A'bDn���'0��L�8!C�KF	��]$?���07p�ۢ�t�ŮUp�$�����
/�X1�G���E}M�d��<QWC��ybB��R�pٮ9�Z���Q�&?`�'-�5���ýEp%>��1qp�	��6 A�hV^c*�^�����Z��ٴbfV���_s��s�SRP-���Fxh�Ln�^�J�O����f֙d���a�tB��i��JI�+�S�]��T�LG4A��嬅j�]��-�3�UK������ăΦV�A!8`��Չˇ�5F�v�v�qegL6U�(�G�[��}&�r�p�B�FUo�R!��i�%�Q���L�[��aI���h�{.����Q�ѝ�#�6UmM_��E�����6�۶,>������t�g?������c�:��i�[�a?��3n��ڰ����8��r �V֜5��q:ߝL�{l��]a�xn�zP 58L
�8O�s[��b?�%t��J٬���`C�1�4�-���b7�Af�3�<e��@Z~}�>����
n�SB�=�l)����6!J�����࿼	��tI��B��I<2n��d�� ���_����UYƔ      �   U   x�3��tK-UIM��t
�Q�ur�N-(I�MJ-R0202D��&�e�$rZrYr&�&���'r��%����	Vbn����� Ϗ#�      �   H  x��QKN�0]���PE�a�F6H�n6n�N��Oq2�;��!�G�$83H�`Ŏ�>v������Q'���D���y��N��4�w�&)��>�ʢ��G����L>��ݘ���"1a��ȔG�'r	���t����mܺkfb�Ǧ	B����(o	�Y�\)2h7ng4���I���	u�*�Y�՜pO|S�I�`�:<"DȢ�A���0�#���d��f�Ql����)`�&���f�k�l�4	�N����
��7�c����Ef�x�Ayo`�1�!�l���n���^���>g���	f<�֫z��u��غ;      �      x��\Ko�I]����c1�ߏ�EH�F��l�0A!%���s��N�x�(V�������ԩjg{�����K�~����o�?=~z���������������{}y�������ߟ�x}������������߽<=�����Ƿo��������	_���_>��O�o�?<·߼ɮa��X|Ò��XR�8�샩�\���z���\L.�+S./���ȯ�0�_�o��K���_.�\b��(��\���������hkL�s3�f���do���@��T����5�nƨ��T_ft�$���K���/|�����OO�?}z��/�����τ���?}�W���?���~�]��ps�f-�t�6]��{����g��9|�77�����r���Z�C�?�ߤ�F�?_���O�߷g���;rx������R �p�	1��W�o;�O������7#f.h�r{7�p��~:���K�N�cVx��?L���ګ�p�h�8ߍ�+�0�k������Qp�R/����:w��f����+�?�B��G��8[�����3�?�U�����ΐ�?�4[�)� n��?�\�ķ����L����!���Vɡ�t2�D��c�?�g��O7/�&���+�=�@�됰E�q'�?��i3���2�f�X��#~�En��v���( %��x�$~q� G7e�����o����*�5�<�{�O��p2�'�O�臍��E�e��<rBʊ��,�=~S(��������c�8�͇5���Ćߍo1���k�+����v�G>������ܮ�GYv���O���]�����B'@�4��pH�bJ)�as [P BT���$R��`�m�R��dԁ�A�r�S�^3�pI��}�ԩ��l΅  ���� �|����\���
O1�urR��Ʒx��:�F�b��h k:�?L�[o��)�f ��[	�u�Ood��O�m5��K���I6���X��<��:���ų�[� ���1�����.����`
�������I@�lV�Cl�(�u௽���@���]8������/�%@K�z�����ҙy��#.��&~gZ����0��r���-��c�w�v�_9_X	����A�?�������j����@�Y��r���u�gT�N�+�g>� �i�$Q.���k�S��?`kpdy7a����a� ����I�;P�dz��p�	��qK�r<��ܑ�]������*B�P�O�/�_	�\0�?��A^�k���(���~��	�kNx=�9�	l�P��q�_�f
.ϳ%�߬�M���,��g%y� (nd��k�5iQ ~��}��R�$��m���G��#���=�9B�P4�� '��Ud�:bCj��F��7y�
"���}�R�s���j����#n%i����~is����MW@��@�����?6�V��-��}��FF�o�++H�!-��=f�_���9�) U4�a���j�W��K�ҐI��pU=d�"��
�I��QHfbY��X��֎����?����ܴ���
d�J��=��5�����u���3�S��}�����~����8B�Y��˶,�! �8].Ps�����Ο��u��=ɟ3}��o��(G]�u�����̼�?��?�/�_<)�a�q���5~�V���+������Y��}�A���G�[X��5����ؿ��PV�g��#S@_�_� ]����mQp.�8��(D��H8��`�o9�����J���[BS!��O��@-�L.0(��~;ks���I	�m�OKp�E��/�?j��28��C
�w?kJ���[�?��2�P@�bUh��6�uA�*����8��m��{���W��v.~+�*�� UE~�_�6�a��R>�����?�����I�D��6�??�C;��glW�_�ց u l��	rq������:~�PZ�����ڄ�K���iG�S�9����!���:��4�z�ҙSų9 ���gd�կ���J�B���w�?r,��ϥ6�6�S������� /�&��O�Ͱ����������p9����O�C�d�OM�A�L'��@� D�����������,���W�4�����7c���W߽{y��Sj����1m�F�Əݓh��\�sB��tq�ʐn��_�A�~��	ױ;�MH>nT��fF%�~a����j^��18J�����h�2n��76Z��I2�`G�h[��!ޏ0�rp��^�lZ�����3`@_zE��b^}=�^Ų]�#׀qޫVm�=�qL��6��T,�2�6s2P[d�(�˘4�����>�e��\k���|V��c�B�i�LX�y)� �.�Tb��^���e�'�ĕA�i�lsk�8���4���C����f��廱*�(���8����M�'�L�0qL�6�- ��<�4�,�:���|bm��/�ɽM�ƹ1d��Uھ�V�w<¢��eVߍ�-䁟��dF��j=�'�i��K����{b�ф4�|Pk)�,�m���cO��I1�pg��t��d�a	�>fL˞-w�0���ƞO�@U�
9��?�qǙ���ԅU׌���<W[7�3�=[�S
�0�����?|z�8�W���}�}J]h⬓���\�unY�$^��L�[�OM�<��Mb�D6xb#�]�?n�����"-�~���H�g��f�6�i���<y�)M��C]�W�W3�j��pƪ޽��g�-�k�e�����k�@XsO��;���ǎ���[:"�I����[ܴy��le���[����9�S*�$��;ц��g��Y(ˈ4��i��J�1�k?s���N�m��dƆ�k��fĻ�Pc���'��2�_u�Q��~m
~7�[�N�{��v9���T�r��umE�p��b�Os���^K��擗V�dۭ�u��H��z����/Y?����z*.�ۖ|�lwu?U��ԗ�hwKk;q�Du�y� 0wƝ7�����^ ?����9	��w�~�Ewct�����\�&����m��v�-��ޟ�<�.d��C�خuL=US������_(�N�ò����A܎�+�«�y�k�?�en��ΒZ�{,t!�'8�w��'�顛g�r�
�!:�>��{�]��c�'�3G����m�B~뉿��v��CϽ�b.��j�֭;��/�]��%�^-4��8�n^Vku��W�w[��u��_�8��hq��8����h��5��Zv�Ƌ�Y��7� 8��e4ߖ�����F����[�{-�wF�r/��{-����%T�)'�ed���&5�v�S�n�����sc��>��f.�'�J���1j_����@
�ݵ�������"�{F�ȗ�/*[_f�*����׊~j��EL�=�e��qZ��a�|$�z�Z~0Wr�s�T�
:�eݪ&R���K�n-u���K�n���
s%G�w\�{=�m{|�^:�N�[�*i�znoaZ=��Cc{�{��ޏ\nЙ.�E]����y!ֵ�a�+td��f��(���\W�G����w��;O���m��lbyI�9B/�#��K�՜C���8��9ּ�����9�^v^W)c]��ݛ�6~�US7�Gƣ#�ߒ#>]xղ9L��3Lv�2��cӨRC+�aU:ǅr;2��n�k�uQ����xQ.��R��P���S��=��Lǅ"\�pk�D6)ԕ����B�G�� ���2��P��f�_jcifo��t\��~_�g^ӂ�O��<c�oi�;^��B'bM�ݒ�T��&2��-#8�˅����P�i-uKY��q�ӐM��"/³��5ͬCŜ�׀���ʚuF~�v�T�U�{�v����g�g#��B�~rh�������'_������U��u���N ��0��:���>���5��kc���	��0Nmq|ܰY6�T�И7;��L��ݐ�z]������@A�$bf��xi�SS���_��P�O0DX��!w�\a 3   �>�8z�J�]�����!���[������d��5�mz|���7o�Yœ      �   �  x�u��n�@E���D�˲�LӠ� E�-PtC˔4�hԎ���w�(���n�򒌣U�����U��xU��:W�]���p�:�ρV��2�6�֓��d�,��͓���z0Xx����}�zp���!�	T�(���,=�?#X�E족j�\.��N���Ԭ=��܊�3YU6<{nN(�+��j�C�C�\�0�+Fq$HҐ�K&��y��|�*ί㔍2�m��:b�ʔKNH<�w:��ZK�z�]�W{��d��y���R�H.>��c;�sMJ��R�F�?���@��"S�?��s}d0�q^3v)qP�>�PhPK��a���LEG��>س9��3Y�#�|G�`�q3|�E"ک�\��ϙl�yV��3;���eӛ�Y�����Yv��wH�w��_�����zw9��8���&D�QD.O�@]Gfl|r9�����>�<"RN.�Z"A�\V��j~�b�i^�-�E!��;֚ȏKႹ�&r��ax�э�u��tZ��K�:p��zpP��f�[t���$霟\�z�㸐HYA�T�	��
�7��`��ud2wn`ߖj��o�N�n��������Q(��҉�oq��86��?�޳�^�ԑܓon�~rGgY���i�^W�`�o�'��ʲrS���y��э3�}�R�m�1��h��ϯ,Y����?���      �      x��}[�$Gv�s�W�
)��5��������s���!g�X��������b^���ieÀl�d�$���,�dː������O��ND�s���r%��ܙ��gF��w.q�,���b�x#V��6�.�D~ck�MW֏�����f�_ս��ɯ�^�fӻ�um���߿+��l3pT��i�����VH����y��2����J&�V�u)�D�Yb��˵Liak+�8K�wwb�e�bs7�:�d>�^��$�n�T浞�K��Q����]��йܖr����̃�� ��if����,�����:^����w�-[Ћ҃�����J�2���62-��̥��^�S)��.ւ�nvvq'Ia�kA��O��lK�����֍(��*Ϯ���>�钟���x)�,��-P,�%�����8]�˪(�}O.�Oaӽ�l�Kod{K.�|S����g8��ou椸�}�y���T��<�x���펧4��d����<��7֛�s2���Fĉ���d2���ng�~Pɛ,�|�����dZ���Wc���>������D���w4G�9����D�KI3ZEj�3�2ͮ{�]�ef/s)JI��t7���������E"�d�D���n5�	\�$&b� /Ŷ�r�0�����qJ�Ǵap�؊��8�q�?��v
{G$�Qњ1{���G�(�~������%`}W~M�ezX��D��Q�ivG�*w#""���%����dW�,F�6�A$�ⴳ�fyY�o���"΋�����gǠ���ے�(��+�rYc�GY�T�]�'؉�#"�w��K\'���\D��~��[��RT�Dlh����4���^�%q>}=��?����$��&��)4�I��ab.b�Dx�=̇m^؈�R���
܉�3L�a�c���G��<�3ç"%�.H��Ժ���� '���.������9ȯ��<#��#�q\��r���;��-Nx|a�h*�&�GQ�hۼ�d\���^T_ثL�Lb�&"Hb��c{C���ɪɜn���Bb����k�-X
�-����:�5�e�}��Wx��SP���bK7����6�q�(��5wկH���鲫,&*��ѓ�c�-1�Di�rD�Pғ��0B�X�ӗf�J�2e}iN��Vr�QͿDa�YED,���_�X�����6bG�92w��r�K�%��5�;�o�j"�H�I.��4bC�2.��bH��nl���)�,��#5���59��,d�n��� ��M(�U,��\���1�m\$ٵa����'�Df������s��\l64�K���-�<�;�|MJ�]-K~G���r�(IF#s*T��SI%D|E.���\B�B��30��0n�c�7��[�=�3��xc�8�w�y��"R֒�����O�S��Y��Li�DzI�هW4W�鬍Ve��<N��&-�}�}Ax����5|�I���)5G�З%2�9�"Y%��_ћj��ٵ�/�D�ڸ!�����mo���C!���"!�@i1j(�)� �q��aD,|%��9��/E���U��ݱ}?'C
�Z�[_q-}9��dYQjIEϼ"2�8�')�������,U4R���ug>��)"<b����I�D��6�I���GIF���}H\�L�R_��A8#��g����	���j&��<�* ��}N��0�L������7���w�#��"z���>�& �3�#J|��\`;Ǧ��`�,��C�C����'�a�N�i��+��eT�p* �fAs	ԏ]N��|а�-���b�n#��C�q���bq����R�k�d�9��R\ҥK\ע]�\�]A2�B��"���Z��|Q�|�9�KBbId�%z?"&����I�,QDV�m���9�輡 ~kM�mJ��{���)���Plg�K8L����	���<�ǃ�d�9gN����'������[��R�y���V7$��4+���r�&�Y�}���ќ*ʛL�,�T�w�DG�>vX��p$�<s�w�Ҏ��Q�Rp4����ٴ�xC� 5f�P�NM�K�C=-�f�.@G�fKƈ)�
}b���"M"m����|�< �]C�0U�v��v_Z���c	�VDDD|�|�-3��Z�,0� )�~��"�1 �K�e�d��`8�4β]��͖�=(�!6c+�Z�Ho@�x}��x��'�sR���z.�U��~:mq'��L<����J^	���f)v����~H8���@��i�I�k�|��n�V_�7���8��>ܽ�3!NHA��혀�ƽ]�7��)k9�g�X�;AD�G��u"� �`!��*����3Hnl
�.��X�,�>�Et�H�i��`EqB1
˺�n�&��T4^z��Q�}Et�uM�Z���F]�Ȍj�$-��Rǃ��8}���O?s_��u����ɚLH�$W���f��%�)˙.�L��>a����:���$�d	�@��y/�e����܀����3m������-�dR��0�jz��0Dd�!�d�}3�#R1E�J�����T��0�G_�f-I��be�+-͔��+v-��0���D����+��#�R�m��dhˋv�Ֆڏ_��V�6�I{�K������F�W�qV�F�!)8�aط y�M#P9�dަ�s�%���C~��K�gvw��y��E��~�9`��h�!�g�꣠��>Jߙ��Ng6@���O/�O^��pEj��^�&���}�e�١v7��Y0�R�Q��+��?%���ȳ�&F��R;>2�k�j��6pA)�:� �8=JٺfO�?��jK��zd)�#������?
�
G8���7�̜)���5)�2�A<'��*K���gO��	f6�ԛ�o�����bn�J�1����]��ۗ?��?�G�w`ٲ7A�`��
�&x\O�/~�G����1����\� $Gݓ>I��K�3��I�e�#�C�ͭ��>&�p���b+�$�9]���G���t�
I��`�z画�d?���Y�|nXc<��S���0�pt�@C���i������?��t�?���U��O��m�^��ڟ��1K��d[���i�-�q,��Iy�ؐ\����I��)�����5uw:`����q���篷on[�����Qqpn�W�}3�ڴpȸ.�5�q�:�Ƕ�+KV�n~°�������ID�5��� 2����GP8�Rʭ�Q4I��R���A�x�܋��"K��m��wb:Ǝ�)Jy��ֈ;�N�G�3Y�׏])q[Jv�wk�CV�sy]$�d~�w�9s�媱`����ڝ��L��}�p9k�K"j�|>�vj�`�2`�ٗt�$�W�;���s���ӓ���<ky7Gv���=��?��gF$�M �F�4.�vO�m�b����u.~�w��DDk�:�d�,w�1����+��ȷ_,o[�4w��\\J���"����$�s�g�?u�Y8�'��s��
Ab	#~l?$���ډ��,B��(N[ ��q�!Ѯ�.�v8�i͸&�����@;����ɶ����Ѩ����	�?�E�霪��n�](�����R]�X��e�Ao�գ�t��ں�OlbY���^���}g�y��kB'�c�ʐ:6��Q����ƍ����(.����B/M7n���#>�yfo�0������p��	�`Fv�t�6�����rI|�Q��;��E*�o�l��$n��[��䷭)+�Cg�mޘ��An��Ip=���9�ƺ���xW�iA�����W<N��u'$�q��%�XbD�3-Ŏ6_�lI�������\��-�%����kk����Z�A2�4�8{����X�DF���N9�#����a~�j7��}CsB�@������[�6�,�1w��c�c�V҄-���G��2�{��7D�s0d���@���U�}j�ۡ��>T���-�-,��XXn��:�WgΛ�vf��k�d_��W�=��}I�q]�ԗ�̝���v\d���+�ڶj &����{����oXS�P U������9I    YzATM�*n,�{����i2��<��[�������3E�5�7)������׊�6�\8X����Cܗ��E��W�r//e�&+��d�O>$��=e��*�zd�;tN�л��(�s�U�uzU	��>�d�������|�Y;�)�+�\ɲM�G������� �:�%�+�7���g���3�?}�Qk
��5���t�Z�}�O�!�ȹ�<�H%�����-k7�޵ HS������p\�҄h@��8��� ͙l���4"�����m�,Z��&A��#��!`j���Q���R�Y�|�:��ҕN��֘��k�_8W'����:]��B
������z;M����sڃ%��c:��t6��QՁ6c��H�E� �tT�m:.:���[qvd��o�G���j�4�[5B-HW�W��Y��%#�6U���-_	hd׹0wv��Wqd���%ȷՍa�ڷ�zr'3����ćG�0W''�6�f.�z��/~������}��}}�}�(�dp��2_��_�'��gx� ���������x'��_�|��?��W�9|�W�:|�-��{�1���G�ȯ��8��"d�8�����u���~L����!�-���b�y�qs9�L�p�p	ٯǯ֤~�,U� V�lZaB�����a1~�Q�B%"��ɢG�(A�ɶ[+m��r�%�9�-0�jw5��F+�\�\O�Ψ!dsC�ʷ�� �7���F�U�/gr�i��S�@��X3ά�V(�Fi))e�M�,��6l��w�a^�$d'�3�+�ؚ+>Pw �ϝ��,>�Czf�Uf�D�V�"Ŏ��N�y8��ǳp2��	���ɵB:p<���n��[�(��"�ЛܦXorH'v�O��:#�Y���e^�����d7(ǦP:f43���ن�K���ʑ�%�XE[�ɭfR���v͜EK�`dgbj�|��9�z1��x1a�i����$r��ִc/@5����6zטWO�D,/�Dc��Ґ`�d��w��9���(�%=�8A�x`���ZŅ��Ƣ3��:B���V
t�UKƶ�����@X��d�e�Ԃ��V�F�6+<����M��m�f`A�^E=�L�c�.v�T��NIİ��uux���N&ﮍR9&x�^W�@���h���&w/�S�����r�f�T�iof\���QqtY����ǆ����/C���Ɩ��=�M��a�0�YE�8A'ɬKR�����q�ϑ�K��߁���I0��/Q�P>����������z��|,��D�2s<�*�"^.p&w��h��C2���Yǌ�C��`XP� [W�*��;k��A�ށ�w�|�(�+�<��x!�3����E��p'@��Jfo�μy7�~�ڀ�Ji!E��~��rW/�9B�$�����.�u����=an8�=h��w���HIQ<����Zcc}�n�C1�f������]�~"�˂�~��ф�kl��C��P�����]���x½;<�I��R�3A`N�4����bK/�'sBOÁJwnc]��mѬ���Z|����l퇌��������ܓ$�Y���Xس⿚�ێ+�q��識�4Dw�.]����5U�$N*�%){}������^�+�濫�be���?������e�Y�ck2"Ð���F�0$��à�\�X��U�B�k��[�����KQ�k�ls�ps��f�ۇ����������?���;wp� �.H8'Uo2���W���n��;���2^�m� k%�����o���*�Z�;f��j~���UU`|���^9�.��xC�t��o�s2����{�p+��g9��_g4_fX��K
��݇���0p0EP͇��Ȍ��Ȍ�v�i��eT����qY�z�;?$�ܡ�gYA"��MVX>��/�8ԡ��t�������2u�𨣀G�U� ������hG};��Q�SG��t����wȺvd=�H���L�~���&'��I��[��f�+�fW_��x�p+@*��d�CIb�7�f�|/3~o5}g���뱔�S�p
�w8���b:\��2iJ����A�v�]wo0�z�p��E�i�"E�G-�����}
�>�ۓ1��և�p��w8�����-�X+�C���	&"܃`�u=^/�!����5�n�)��s �a����>��,�;,�!����X��[m8�.���ㆡ���fq�Y3TM<������cQ��:�]t����B�s!��
�#Q4p2w8�(������-�@	������p����^
9T��5nU6Q��T��\�.g�TZ'�{��]F�~ ���xs�;��O�3!��3��"�.y�P[777]�t��7�����̛x!>�@�|��"�d�#$su���Q���;.�H g�t�Y>r��B����'��yNԲF��(���fB���姽�
��JH��_�T�"�ŘӒ�T}v�ϛ��\UNT5@�����ڃ܌@��6W���4ex����ޚ��iD�B+g@"v�����2�T2ω2*�=t�I�u�T��x����U����'�_=��z(J�-닝*վ��`¿���b"�V�g�H~Iv�D�+�sV���`�$�;�'�d��_��v�q^�`�˛��A��<�a4T��˨i�ѩf�+6�7�~MFߜ�p&��4���4�3�$~�9�;a�D�$�2�ꖙp�`κ��س@��Z�����9J{c��h�ٹ7����7��S�q򈃁pfpG8�d�Lci?Ɋu��Z(�,�*d��b��Y����w���E58Y�o���<"��-uf�K�G1�jkҹp��:�ބ��� �;���vM�vD@�*�7H��!�N8��ܺ��F��Y�%@�[ա���-��O�;��N��� �` ��q�OT�mM?!$mE$�x�����$D�H��L���Z�R]��T����U;�Ǜ�Č}b�/��1�"�1@�$��wDK�雹y��)��4;�O;67�O�?����E�	M�2��r�-
�}�������[����[���t |2�#|��}�F�����eV��{��NxW��3��	F���3�,٪�)R@������6��N�=x�΂���9OQ�DT�C���4�H�8&fɬ7U��$!�FvK�_7QT��.Z\�����i�Z�@���
N2U	f�"�Y��#h�v�1F�V�� �˦���%7i��l�OY[����d��Ik���]k/�e��
��ٓ��ؑX���}O_|�H��%O0�N]����2���G}�t���!�I:�d���Č�$�]��V������J�`�m��;u�i;�{�ط�36�Y��$�t��1rx�����lEj=��%��~�RJ��k-�����/�#lL�Z��=��Md�T94)���ȍkz�\��a��Nd6�hd?"z�{��u:O]�ܰ\nz~*����Ľ�4��w�J$�C��Q��tb���e�g��$=������Blaˁ� �_�eI������ʙVԑ0B�ۊq��_���}d�r#F"����R)��Z�T�*�����Ln�!klG�_�.���ӡ��v���Y��"�XVz��.�X��~[Ù���éK�/TB�&&uU�܌"MN�:�Շh�/��*cn�Ǌl9�G������޳�V���NJ�!�RkVJ,��?����K2��l��h�Ot�� �hpDt�C���n���-�=U`^��f:�i��gp� �%~Rq�j`�F���F�qޱX�̾s{�z�p'�V�ܬ�Π͢p��{cK�Y0� ��t,� ��I�Vd��Cn���ۅvM���Ǣ�%�wh��B����l�>�'�4���6��y���D	�kn�����
��	�E�,%FCDHo�������u�E�G���H�m*c��[	����l�/�"��C؇:��%{�2�W��ʋ�A3�x�s��kQ��}�)�8V��o����> ���tmĖ��"d�`^�0�<�[��(\    \ښ6�U>@�.Y(���.�R�\�ɽz6�l+c��&��^�-�l�l�\���'7tvN`�(���Z�с�)��[��H%ap�1��7��ds���_e������"-u�B��yV��m"i��Ti��W7�C�@E5�i���
h�tI��0��h9_z3���(���Tjb��z�����.���ɟ�){�2�{Uő��[.Ћ����M�32U������n�4�~D\�I���T�q3�$[h�J���1a��v6�b�-� �q��BQ�@4���%rE���V���'Ig�(����$|�
��Cx!6<M�b�;j�P(9*���u�w���5$8��x����Ȗȗr��ȸ��*\j���1�d�����ـ/gv�/琾*U��]eQ�qཝ>����i�a_����q�v��'�~{�^i����ʹ^���h��l �ovG����2�>%0�K��Gtz�Q�tW�8�?f�-)&h�H��S�#�a�g���m��c4Cz�l �o6�ާ�"�QA,�D�۷��rA��L��������d�,[��%��1`IA(�Gq��S�mq��C��^�]���O�&�Ů����T�H�b�l$�l��>�rhKB4�U�,ch��1��X�Q���c�07Q���w�h=G��:����փM.S���x� /��!/n6����a4��k�p�0_�|
�2�[���y��",�y��nͰn��L�"ۣ�*��7�_f�vխ�&�mĠ�`V(J2`h���2W�tM/\b�X�mz��JdhoN*/�RYb��R(�R��`_�N�\3�4� +�<Y�1��@�2��5\aڵ�7���N*i�����ـ�f6��3����;:����R��2�w��,�n�����?�ru='n���~��0R^�OI�]]��䣫�O����^<��c���p���l_=�g�-�E��bcӫg�eU����gն�*g`�`8p5E�@�LgP;E�
/�y��;�4d0�Y��!���N�#U��Oe�f)�Ik�xkvt��A����K7����}�kL��V�W��#f���)!s8����z�ϡ�S�,�x]�_��ө#8X���8H�}V���N!|��19�D�.3�/'��EI[��j��ދ��X�"FX{��R�Xǽ$�8�.����IwՀ㹠�Ac�@���2��6M����}]���&,�`�6`��xWb��g2�v��b�7z9�D���?��2��,�pY;b�.�xz{rŒ�!i����n�[��Q��ߣC�+�5�$3�x_I4n�:\@S1�q�O���2Ĥ ǆs:vE)7��Q8��8�g��x��]ɲER?��xiG��W,�b��XGJh*�,�R�<\*uVO�GE�}<��VU8��(�c���<�!eW7���X������wS�B����u�Lw�P�t��)�ؗ�$�}�&��Q0�t����]O�q)5	oZ�h�]�Gmt�5��$���L��H}З�~��J0�e�G�U�i�[d�[�W��&�3�E2V8���<D?(�Poo�f��넘�f�PU�0�2�E��S4�$�.�#�,�B5��i��"����,��.�)�qB��ބ�� ��ha�
�kt�<|�G�rծ:dq�$IH(SQ'��hA���^�B�)��W7�ۘ�(���x���x��;�����f[m���q�:@�ɠʝ���	}�Y4��5N�nI��Vm��y�t|��6��-� �j��Q_����B�w�(�����Y/�T[����)����!��
`�W�V-��_j���I)mV4>���	�N+��-��8���b�~NS�k�7��[�P΄���B�C�*�ێ��K���L�6<��B��6�>�t��X� Il2�������:=yR͝�fͱ�gY!kc�;�R7�:�~�C��ı_!�_-��̰[�%�����ǭ����5 T��'��&PXud��*�l��@Խ�BUg�#;��M��������O�o�G����R���e�=��P"�QE����SC!��dZ���=D ���$஻����J���jlk����46YtkY[iXԫL4��:S�ת�J�R�W
��/Fcy��F6&x!�i��1�V�!M��T\�����еx'тI/Z��6�?��������X؟	]T� ��Jv�3���R�����|KoF�L�U7MYa&�xԸ�Iwr�S���P�7N!j���U'���b?�64�D^�PM]�D�~��7�:j�nVڷ݆c;FE�*������`Ѭ������֚ �V"�P,s���([VS��xH�ɱ�Ѹ� 2�/��
��k�pz/�=��-<��q��9�~!��,������Y�`ٖ��8A<��:������gQ�����l��Xp:KF"q't��<������)���H���`�S��)(WC�g-g<@�&(�U�\y������ʻ�|{�+����ML��jAҝ�~ U�)�&3���Z�=���p�K��H ߌ	)���;�}߷P�
d��>�5�Y�Z�*I#�K^�o`w�-ݽȒ�v!cSBg7���-9� �z�Vf0�:�U�ʙ����8~�z<����~w��q��������3�U�k?����Gf�q]M'G"bN�Y�0�S�8�R��RPE�9t:�BV�t"�Tvlk�rcy]�,3�5������h�@��-d��OO���2FO9c��Y��7x�Q�0h����~N`%Aι:y�@�Q���B���T$b$��r�����+�H3IZN���9A;A{.c�����P�F9�~�{7+ܟz��'Ckn�^@_IH��W���!7M�Z+����s���TJx��V��=I
�b��)�v/	h�aGxn//��<�7}�q�8S�%��2V��k��� �>�����Bd�́�� � CDik����7������h��� 6&��iK��v��$�b�Z<��+�xE�Ju���| $?OH�S8�B�瀗��9pj�Ms��ؓ	��`����OH�`M���kf�h-r�&�~ӽ`,`�1�pf>g��qV�1�:�{�jm�ʋt�^^�gb�@�a9�Wp���n��9����.�;�9������7��󡨪I��<�eN�O�arA��d���B��=�?؍̛�>l�\�*q��Q�v$�Y��cߓ�������	>�H�����rc���"��3ƨv�]褦���9娳�(�`� ���Y���<�ϖ�>CKz�4��ן����=�b������X'E�mi	��L�,��2�j{�D�p�Ŵϳ�b�/�f��K^�o,X��p'��^O��#�GC\�֍]���{�"e��J}h���z|Ihi�JJ��8�d@�Nz��˓�/�}��C2����X�Ǽ���"�$��z����[��%G�j��θ�~M��-t�:��~�y5�U�I�W������t�cn���X��3��T9.XB^���Y�����Zw�sdz�r=��:j#��{J;Q>,b�\����zv�xݞ��B�`�b{��,$��)��s���1����DOCKew��R��#��a����8��������.8��S,�(��P~��/~l^ PP��X�F���(ѵ�T�*/8m���x��X�+�wT�q�i_E_�k䨸�j}��N�qƷ���,c��LP��)������!�h%��&�e�GEU�q"�];�Y_���'��kG��3��#�s3& G�%:�)�ϫ�E�E����dG�H.W��!���?u�. �=?`a����L2����4
1KDg�V��ǿ�ɟ���f��#���!�f�&��#�p.H�N�#:��b��q8.�ҕԪN�`�DMl0�Ҳ���<�	L����C�0�uT�h��cqk�
���hd~�^�KP�����ܒL^�H1ho��ڄ2�ç�w��2"5�K6����x��:��&��#� gD�R��Wj��I�|��Q�ĝ���\e���Qz �  ob����	���	l�}���ulFC��R?�rٚ����d3JbOf'�x�:"2�i��
'(f�-
 ���N�
��KBY����5Ʉ��D��=��8n�>ø)�	�9�~�n��w������T�Џ#2���w� :9�F��A���^�R���뽐1����zK���;J>�& ���NI���BSM��ڹ�U�zy}�J�xݒ�:M��n��&�s婧O�X��$i׹��@����(�
FB��(jjV*�2��أ��C%
�V������'���D��?�ne��}������V/�i�!�R0�Q/�Z��ڲ7�S��}P�;]o�*�"١1D�� �Jt��Mų��{ކﵲ�:+`p��%���=��*m�v����K����'F7 ���fɽ�"��J�A�aU���x�	��T\u�	*��ZE�H��ph�N�CYɣv����(�z�p`�ݱ�?
�I!�jLT?	q��"Nd�	�F�葊˴�m8K���4���ʠ\�B'���2D�D��2O�&��H9�x���@Ɓ�0I��I��<�>�oI+�pq�; ����6E�(�Y�9��4�y`��64�p��Ec4�.ZY��V���l�/�������/��B�)��;�����_П��?�M����������������?��Nm�~;�cs��ҿ�ȿ�׵o�?�e�w�ҿn���V|E	�ZW�5��-�D����Ś��;�N��:����۸�\�������u���%K���^?ڼ�_����ƾ[�{�h��ԈLQ���H�G\
�1G�酼FЕ��fr$��y�L���V�Z�u�`a���o56�m�a�o�e�ܰ\�P۔���F�{йq�R=�ר<-ț��z�d~�5��%rb��T�~(S�5�;��^�\%�ٲ�)��.�|jWB�&2_�k��9�U �L��l�&f�*���ϋR�iV���o��n",���-�H�j�rPv@�Yl�<A���32����(�6w ��ޱ��B�>NHӡ]X�QfdJГa<���E���,�{;:����{V�&�T��"�r�)���<��4�iߚ4�8d ����M��eя�_�j�w�Q!��6@m�x�D��'ӫ��OE��Y0�ψ��
��KG���ڹ��rϗ��t�-tR��~J�s1)Ó��zv��
�6ש�J"0Dj��7����8�g!��F�}�+��Xs)�qo���gI"Wr��c��#��7��f�,⁥)�P!��F��z\����
xU��"�S�5�L��$ ��f:�EE�nD%OJ-�C}I���l>���Օ�֐�֐�Ԫu��H��
o`%�wGk��(���"��E/#���n/>	��I//e�%Y�����/��[�9�(�g������\���V��1,���m��}ʌ��$�n�-��yO�Y���)�����O�`� ��8:QZg���̛��=�ۣ�o8ڃ��Ho����[��L��[yif��X�WlvXHٵ�\�G5��@�ԟ�5��d�X�+m�Ǽ�ٳߞ��������E�����|G2}#6qj=oHgeւv\��[B}F����n���b%6�؇K��D�g�xd��n64���W{�ꗴ� ���` o1J���#L�[ǢD���W�wM,�a'�Þv��ɕ8�6�X6�%:i�v�5���6������X~Ȝ�m9��t赺}rsC��^U��8��f��v��׭&�j)�3��J�Ir�F��c��C�+8��0�[0~�-g��u
 2H̚��l���rM�B�%�Y��I$�d.@�Yz��n0]����K.�y0�O�f�u"\�XSH݂h�]n����������M��H�	R�f��l��v���*K�7�K��Ѧ��y�̝��C��9��Ų?���h`A}��ۋ���ً�o��q<�zf�l �k��Z��8�i�3�Ś�kbx��7i܅9�����jcɛ�!x*|@$��<���Ϝ�n7݉�K��%�9��iE��8��=�	m��WDc�TX!�~�7_���m�>�L��j�S<�G|��!M�����e��,0��&�a_��;\��	�f�������<K;��}n��Bm�z�N��o��y�3����|J{)"�,ޒL�v���ʭ(.��)U󁔪�)UO�s	�qUF,ڦm��D��K;�l��W���p����JNd4P�2�[����qfۇپ�a6�[ϝ~<����/���      �   �  x�uWao�6���
}P��HJߚ,[Ҧɲ�kP`�@[��H"]Y�������atY���z���ݑW�3co�гO�7ad?����"�sFؚ����G�	��:���fc�Ї��u���b�aZ]�<��ތ]��|�~4�`={�d͐����GVK)yU���rQ��{�����G8V�g<w�M�s���RWu��d;3���M�Q�d��dGD���E�t)/�b�3H&Ɛ���e��u��ϫ�S���}�1��h�vk}��1_���&
�*�h-�?ž)e�	�b�v����L�-L.��(뚙.��L�1LE05{6>{�s��:�*�a�~b�8<g������7�IK�� �K`۶�߻���{�2S
��9���s�G[�DSL�a�LwH��DQ�J���sc�������{g���4�&Q��3�[7��I�b��kM�z7%eG��d����<F!�Dͮ��;�]�q��T�J	�n]��sb��OMyc�}BuB"�W�ʬ��{EH�Tpv����&R�6*��яa��}S�15u!�ۿ���w���;4���1a(.(6��'�J��U�|�֫�{���SV��?]�^S�-+j&���0�aK/�uDV*Qf��}v�}"-!KU�Z���;Hg�����A�'��=�>$�*���}܄q�X������$�B��0"!����B����*��n���#��e�>X�ۘ��
�����Km/U�`�d$9��i 7�����]~=4�]�%>�$I�(�v�Lve��$*�d]��܇��-��Y2$&Y��f�9�=�7f^�ΤK]V�f]7���0�X ��$AE�xg;&��J|cZ\��~41)I�	�衝�����PBAK��6���ML�|0���BvCs$5j����`?��u�Y$�I��1�dP����8GUk��`V ?�YDS��Xة[o���a�t�6�4�������fO�`���r���P+�uBN�r��!��-��T���-`a�i�s�H���;�/��h��e@�P������*!�*���vt�m�<���(Ȗ?�>Tg��xQ�ϳo�G4#�H��R����la�qe�V��	kB@ai�jSu�`\rH�:���Lϒ!�*I�Vٵ=&ǃ��?��U��1H�J�'�hF��ä��`5<������Y}I�
�g�|�3Z�K����O�M7�gzQ$]U�g�Z��v���Űw��ku�		6v5��\���KQ�j���:��@�nuΞ,�蛐ݯ����Dޜ���l�h��4���`�I�FB+b��i3`}�aH����E��i^�`0�0�UY�m��#��{;��c4�W���=��c��]Pj�6X�c�&�����o�Ls�l}9�(n�����tH��wT���:��['�J�K�I��]4�Xc����p���ۅT��%+�����?�K���
������J�+�����(1�}J��uE���b6l]*#���c�)p57M�jR��Q%,#���5��9/	K3��ah���H�U�����D�sZ���m���LE���i�e�I�x�I��F6���B�$����5X+���1>U#l��:��<w\Mz����z̞�M-�X��r?��0�ODz�v3��XB}�4"x��H�d���b$���k��n@J�p4L9{{\"[
lΥP���
��=��\���#����r@D����P���o...�-,�      �   z  x���ݎ�F����$��鞙KAq~�"���i	S\�KY�ۧ���ܪ�M��i��|��q޼9-����e��?�6�������i������xy(���ӯ��~��O7=,�����_���������y�����6o>?�>.��������ry�/���ӿ�������nyϿ�Q�A6�<>|9,wˇe�����y����7T(kZVʖ����e�\�r�\���o>���'�sZ�[Y��,唚@MRj5I�	�$�&P���@M�����q�nw��s�SJcX��La	R2�%(��B*a	:�a	2ja	*�a	"Z�44���А�BCC
i(4,�a�0�}��~�|�yLM�<��@��D��5�X�k0�1�Ŧ���X|k��8\<��p���c.��8\�n�;~8����?|޵o׷Qt���뀑O�H���W:jEz�+��`�^��:�YJ���Ǵ���������cZ`Z����y9�����a����6���yfMg�
ɚ���5��+k:�W �t�Ыc�^����?��;����G�X��
��!��P%� hԨ��Zew��y����/���w����:tƒ��3ּ�q�����qN�����O��frIfߤ�\���O�q���}s�>�'6�[�dS��>�6���Ow˧��������-VO�]p��~춻�a{�_��χ�q��~{x�~��i����tC#ȧ��F���z��@�rC#c2���l742*���Ȱ��FFf�adfFf�adfFf�adfFf�M�����^���[��ͥzNGo�"9����Q��-]�6�:&:zK)�}P;���S�1%N�z0�SB�H�)�BăI�X!R�
�F��U`&ѢE��-�h�h(D�E�<!-Z�	Q�*0ЈaB4b@��%D#$	шABZ�x{>=���j��k���A�:<L�:TZI�i�$�C�����L�:�Z8I�0k%�C����N���:�s~��C<�G ��B�S[$����H�Om��!��<��R�x�cB䐒7���Mؐ�:6ICJ���))52���CJJ�t!%�F���Z��U������,��LR{�;�Bjoz'bH�M���靠!��d�5���r��0l9���ϻ��.���HV����N)DZr鵀�E�^L[��[0�DZ�Y�m�8+]�mIg��㚝�Z����.x�c<^D�O-�E�9)B���פ"-�,��E��ȵl�(���X����r���ǧ�!-�<�Y�?�A�'���-�<{HH�;�?�][�x���lq��CޱE��y��?��7B�e�z#�\�7B�e������x�9_ �o���!_ Qo���!_ �nr�@�u���!�[����C���!�j���m�������u���9: ^�� v�.���J�"�*�>`�*�>�㪩>�䪩> �)5�\5�������tՔ���R��U{)gW��D�]��x�ZO#0w��F��j=����z����4�W�%o^��S�n��Ժ�0��F<L���W�1���ó.\^=<����ó.^=<����ó.�]=<����ó.�]=<��׵�g]�����O���ѵ�4�s-!�\KH/�r�z��Z��ג�����|��ĵ�?�5���p��ꉃk�2
�[k���xk�7ѱn��Mt���&:�jghMٿ���r8,����´�){�tM�{-�k��k`��^8���Z :^�J�㵀�n�P�]���N��w�'��k��CVӐ��4I:�6O�%����U�4O�PiZ�T���<���:eYx�6cO��C�\��E�9;���u�X!�:g��w�3Vh���A4
�s|@����_�}��/�>��(��=�nC|@���У�6��(��=znC�5�!悖�sA�m����6�\Pqk*����U?f�e���պ|���ܚ��� դ������&�5��6!��4���&��&�6��7����	�M��M��ȼ�
q��t�8bo�B�7]!��[|	���Zo�$|��H���7�0xKn A�B+���B+C��B+���bG��Ŏ
i �f!L�,�����4po��T�6�N�0o��T�6�N��n��T�6�N��n��T�6�N�pn��T�6�N�0n+��J� ߶1@��D�mk���XAP�	۶O蘶�xBǲ��:�m%�бk��B�Y[v/�k�k��8�յM`L���&0���&0���&0k�iB�-��i[x9���r���A��/����K��|��ik��� ��ͻ�po^{���řm��[�&۫�jx�fݫ}и��ln���������|����W�`�|}����W����}�Ǽ>����づۼ>����̇��������쏩���x�����b�s�}�8�}z1t��+~�C�}��}������܇�n�R	���n�S	�*���J��9���<Tz��|{�v�7pn��p�v�70m��p�vɷ��k��j��ê]s~�k��v��.�ߚ�#Ծ*�ԕ�d��D t�u%!ޮ+w]�@ȸ�JB��V"���Pu��H��
q��m�8"�B�w[!��{�k�ޓ_# ����ٯ���������'�F@�=�5���1���1��sA��c.H�����%��{���,A���@��� /��A�� /���{	����p�0ൻOM��ݧ&x��SC�����V����[O�\OpmIb����T�~��[�X���-m�_s���ݤ
o���2|��v7���t;�c��1�'�x�.��%�xz����^ |+�s���I�"�'K���<)BjJn�� |�INSrǉ��SB���SB�T�sB�E����իW����
      �      x�ŝ[s�F����_���n�v����/S�X�7V�g�f�"!c�� �dej��?�����%{N�h�&A�[��#9�9�}�;���2b������1ccfcB�5�߈9J�w�|�F�ۋ�m2��N_�������ٴ���Ӌ��(�h�ܥ/�=z�6����o�Yewɧ�ş���?���;NhW2%c�ƂŜK�J����)��Ȫ��.�9��QT#�Nk%�u�~[�:S���ч"����ʷxￌ����!�r|���f[�I����$�)�R9������`�7��Ę��p�����F�A��Q̈́ceGɯ���Y6I�,�G��_�I}���׽�A�}/�^2cJc���µ�lz�&���A�L&�}�N��ȯъΓ*������`Vt�c#�c����g�o��!�e�e���d{:A�+C�6�O:Q�׉�����9V�u�}�옑XJ�4?�N+2YO&C��TPY�n�-�l����C�뱦����aF�CG�/��7�ok�����}z���Uq���UcNcN-�3�c���E�1*W^�'a�c"�y���S��
�&�RA{k�oxPox�6�M���j,DL�е��Mvf���������-:���6+�֟x;�x�OEZ���u��^��3+b�ٳE�eҾL3&"��(�O�7�+�#����+:�������(#�����x_;���djO_�����cfb	xG����BWĊi���0���#3n ;����yd�rO?�����3������:��$ZR!����&:K�S���<+o[ѵC�/Z�t �HK�Y4Es�3�X���Td��N��G�����3$����ĵ�G���H.ġZ�!�� �:��Dg&F�>'�,-��W�*��}�ռ���,@xtNbK��?֞A�X5�%�8����`,�bF��@���Jnn��D�F�:tƮ�F�����1Io0zk���Ҵqᖏ�~��|�n��O��S��ASb4i�i����t^]��t֎ ]��C��^�z�K��@A�[��V�&`�[�ƛwI6��"��c���/\�?T�ڪ������I�=�t�.TĄ�L�u��j;�F�#�Z����S�l���H21��Zm�fa�/�������Q�yE����Н���BQ��c)c�m*>b#��7��e���KؾP�&�4H����II$Y�٥$ z��v?��-u�2�.UI�́����tE8+2�R&�(CS�^�UZ�'ss;y_�p���=�ms;ŊL�Yѐ�0jl��U�2l�T17��!��� wkB/��wήi����.�N���6U���k6Xw����C�ַۥ{��.��jȪ����f����gT�����N狻��}KI��Sw	I#�RR��ͬ	�d�I(\K#.�ĈO�����L�n#qi�3�l
��:!z�v>���Al���S34gY��(+���Y2I۟�m�QgP��j1s-%���Օ�B)\Ś�za���}S����jq.�iE9*���
�|�v��lRA�T���ĂRQ�.PA���Ⱦ.VZZ��])*�"E,���w�|C����%GH������y��t���3@�@?�6Ԁ�XH�=���j��pD 7��Q��.N�S�z��n}B�nL�)ٔ s;���>LQ!��B�F�Cy���2�5 /�(�x�j�9�-%�6��όp �㢩�V��$t8·S!�+��W#�P�R��u;�J��)壉�t��ԸZL�D,f�5FF�2c�~AKG�	ȧ�D5�l��+%`�ƒa�̷� K��AN��ϵw��1�,&�[���uWJ��A�Z&8��'w��0hƒ�����J	�`0%�\
j�s�])��7�h��ZCu�])��7�!�2#[��?�M0�b�i&�~�#��`��j����J	&�K�:#{:���`��0����`Է�Է�QU�%M�L�9T�,��$0�z�9V�}hH2&�AC��~�`���*PC��ڹ~�`};���A�T��d3���};�d�cr���!0�o�B[�`,S�Y8��R�ck�Ih��~c�ҧ�t��9%�g�C�zWJ[�%�V0.�~��+��-���HK|,1t�v��ɄRpӊվ�x�q	��q5Oj���,,���q٤񕨡S�+%`��eFxݳ�9�6V�����-1�;�7i$`�;e����c�y�VA�p�|))�:��,	
�G�z�� Dx�gQ(�����B{��Q���	�����+4<�P@?P��&���1#AP�1���+�?f�P� �n+'Ք�+?f�PЀ��b�"�5��?ϒ�&�K,�X&[}��x�>���9���~�%�o�n֒��cA!���Ò��;�@.1[�2�S�� g��+g�}�BG9@�0ζ�3�𣂜 Wn"`ʻ:~T�� ��-���:+��qp\���h��f�6G�88�
J��b�8*�Y�q��y�4�4DG9@n 5��3���9����@�Dx�c� ��`L�ƹ����h�A)�=tT4� �JLA�ԐP�<@�ţF��=4�۩��b�A�b��Qi�Wi����B�X·^��Ҙ�P!`��m��Qi���d�5�m=s���5*�X@J���$�ao�f��+Dq�0ծ���]���*PKc�iʅ��l�B��m�'��_��(�wT�V��,B�P�g���������kR`����p�Q�+�R��A*�Wj����A
�K�v!��q�z檲�K�IBG_�Q��}�b��kü+qL������ZZҤ�JU�54�B�̯�*uT�3������GU(�1C�i�d~��Q�	������[f�=�B���M�{��4��v*0f�BYE�iا��xx�RLfX��BQ��o�5����C2j�2����T(̰�l�w~����l� ^̭/�3��-�������d՛�:��5��$�0曧)/�!�]�"C���3����#�8�l_��v���S�ܶp���0䐍�&�Vd��j=l��z	���pf��7�h]pL��ʔ+�d�樵UPM`�a"4q���� qx�Ya7վs�Zd���I����s�_��[�bH�hs�1�(��D�3F��r��n�a��Jz@P��X�: ���$
��7�a ݪ'�Jw�)E~7ҏZ3�a��#�Ʌ=au@X�-B�b�W�?��8u{ ��ԯ�۽�Ď< S�뛈T��g��� �ƂQn�2,4�[�4��%�wX�ٖL@<�Pf��-���Q�	gp�J2B�7�zt2�fE��E�U��IY>�Es�^���b�+ 7�]U��~~H��,}G���.���.?\Do�S�>�[����4G�y-��,�{
r'k�� ؇�>��Nn� d�VFU-J�yt��Ҽi6���}N1��rH�k����Ҥ�����/��p�F��|����ާ�1�K�C�ݽkA��,F��0���W(��.�dRA_\Ud蟞�.�]�>��ˇ���Y�-������+pe�*{HA�4�.�y�����I�}:�T����/Q�Z�E6MǍx���Q�{qV����@������4D,�-�Oɼ��Y��R�i�(0��m�^(�&�vw<�m�s��"���|Q5]����N&+��CL��	��J��&�?�aӗ�����8��I�D7E~S^��{�e�~�f����(Û�X�l�4���&/���*���>�K]�7���l���F*��"��N�I��l(X��I��hM�i6z3/a2Ϣ����A7I��_��*w��f&x��d�'׸%��m���d>-���p殙��_@�bt�?�gy2�|��E���$�;t`r�!>�f�����*G'��������S'�O9�ķw���$ �K�|�C=�NO/O��FvV�����,+ow �Ϗ����9���U������%�r���	�dԌjX��N�-��}���m���Φ-I@-��sC�g�z�9�lrK����)�ө9�2�CzD/Ô �$ X�K-�uBFG�� �	  �A�`�
�E݉sɌߴ�X������[]� Rxn1>zU�I����&��c>��^��kapWi���w��5�����ryTc���4��6�G��<��w����"�e��rw�k�%L�8�!!����	D*�?/���ˏ/wKh5�60��s8W �ڄ_�D'I6K�g�Wn	.
�)ݽ�i�0���T�����?{�w i@.�|9U��{�a\�f�&hY~�Qz�4���w�V��;�~��'77���t6�7J��a�,$'�NF]v��O�y���XBH@�F�6��|�)�O`�M����./ k��.�37�mx�Ѐ^O���o'wr���p|'M�����>��|�OOswM�}�~C ��V#@���E��@KM[������$��r�{�Y��R(�!riX�!w�WM������C��s��|*���ɽ��lr�5����q����l��/+\�]h %�5;�[�T{$�N����&�q\���{���'�� 검=�� ��<��#�Ћ?�., �@ @|���(���%�3�:�ޝ������}���{�1D0�R�iYb���� 1�4���o�bt�� 0��+�GN�Ί�?gm����&Ѳ�p
!?�BQF�Ɲ5��D}e���b�F�E��U�O>���	�&���ԛ�CZV�V�i@ʭ�rʹ��v�R�4z�?���b�>�s^�9z�TUZ�]����p:L��V7�ba�'(>���F<�:�3p~e? ��ˌB���#d�0=��~w��	���Z�Y�]�> Ư���'76������d���ˇ�.����:�x�(����v&#WF�.f d��|&e *�?b�<��ȽF�Q]5� 1К�.E����(�����T�H0��7s}i<N����W���tR����>8�
Q�8��=�vԮ���6z���]q�����"Gp�u0�⼽D��ɼ��c�����E��e�Y����6_̦яs��ٝ��`<g�� �ǻkY�p�Y�ݤ�-(\�B��ު_�χ�.�)��n�׼�\�n��9TFŊ�݃ԣ�'�Z���u>�h�F��5	��>]��\f�
��*��?�ו�.�L���R����-L�>�Ib����	l��m�3�D] ��
��}��<���Y�A�Xs��i{n�J	�r)�M��s�5�j�dU��O(�����|;+��r��bBp`�[ �f|y��_fU����/�k��<����Etr_/}̧E�MwW-���@TI�������%��b��]d��<�L��}
�MR��J@P��m��~T����Ļ���4�&y6�C������i�%=���za�˴_XRr�"��
����O)D�����$y�Ovq�������дH���HpB���T���o�W��"�M�&�0@�<�1 b�z�y�)��ŨyY/M��Op@�M�c͖�����
���`��>�P	q>��D�5Q��+B7�ݕ	��>̨8x�9���o'��}s��OA7pmN'1��T�Jå?<Sg�/!aBC����Qa���ʰ3>��-Ȃ��+:���-
x��Mw��������䡩�>}����	��>��ˍ ��kD�_�˺Uڻjw��-P ���瘚?�y邍�i�9��pR�f{8�������kWM5_�{�kty�~��(�)��W�h%����1(�I0��Z��J˕A}����~�o�NG�ll���ꮕ�F����z��_#pwD�D�b`ʲ_��凋~&�+�+��EDs��Ն1�kV�g�y�%�j�; �qlWL��D�vF�&�<9;���pe�`	��sR�+� ��M��URsw���$x�G��z[jר^�!�e��S�}��$P�&��4m��[�>�[e��z��lR�!�fpR�4�J�Ph���e]�	,jw����&���������{`78��24H��=*}�����Z��ˎ�t�K�� �0a4���tYvj���
��]8��r�,J��4)�)�gP	���n�1�FFR���gɽ���q�2I�@?< �N40��"IX��"Ӑ�lQ����0�9]<�n�rhY\}�0�������z�k-USo 4�W}�0T.��ƞ4}~�Aȉͮ7�O�"��_����Ls�ob�vӾ�%��u��EVf���5�)� ��,`1Js?��j�u�&s�2h���7$���C�������A [���� �k0&iL;,V��[����-���v>@���E-@l�[.����W�-�'������>��Uҏ�Z��./��|��N�����ݣ�)��li��Oo�z���yTg�Â���w��|_�f����M6�g��g�7�
?@v�a�m�FQ�%������h�<�s�|��V�zؘJ��1�D�����?���|]]�*8=p���~n6��͡��}=V�4n�-�7�a�����������-&      �   �   x�M�Mr� ���0���/{�n�:4 1H��o_��v���@��1GvI&b�g��B5G�(�����.[��RH�N�9�[G�!�̦��\H��|��h���<w4E�åm�4�aL
��?#�$Kn�-�I��}'W��J��a�ǔ��:��bHͷ�}�����^o�b�`#OXJ����n�W�o�ϟ�.j�W�}��C������\�A�>�H[�,#%��_���� ��آ�      �   �  x����r�8���O���v �����*��V�ȖG�{;o� �iy�S�J%q�	 � o��:��q���Û��ڌMվ�@�.�wA�
��(�������K��.�J�Iy�.����y�U���gK��rY�eՎu_����C�]��K��l���k�D��M�����Kմ��h0�)z��-��t�q�G(1!̂P[D[c�v��Oʢh���y/��7��a�J_�'	=�-3�j�S5v�PV�SY�}ח�z�s�,-�b�������Z(i	�{(�k(R*�p&��H羻�^�1Q���ק.o}��k#�'�1rB,2ܦ������É�a!���:�p�- ��rO����4���A�MVW�5�}Ψ�2ه��`�Bh�x}U��㏶:��Ϯ9>�%�TT�{��O�Om�ER�y�q��>�҅��SB���	�V����&އP�y4
����6���[fhCw��S=�^[M[�ͅcZ���'��A 	�0ʔ9[[}���ׅ?�l>�_��}s�_��<�3����F�2w��|uPB�ONa����� �9����ܳ'p���G�נ_$!%V�ɉB8���`S�x?6ǶNֹBڂ�AHEq�]�L���Ϻ:��5_��U�@ʅ�"�t:&v�ߑ�F:��"�\�I�KH�FS�|����	9�<����$y�(�[5e�v)J�#�P,!��e@�r���!e�Y��ath����-��UI�A�ց�����&$S
��aޅ)�*���Z��O�l�J>�u}>�q��?]�J:	q�R��<t��`�b�р&H�R�bOhknfOP��J�X)��?5���K�%�\���<�M	y��H��P0#0y2>tNо{����_��}�`��>MJ1����� {��,��j��H�k�����1#��#!�	�3�Nd1�`��	TB�MI��Җ6!�sdw��U�����ۭm���a�������ˋ�x�S]4:W?v��f�"�
�ª����K�"���4C>~��*ģ}<�Pb��ʤ��H���K�lkl��2;��,�5�o�c�'A��،m��x"�d�*��}���s�y���d�~@{W������OC�K*H��?���z���>mI<��)`=9%���Ǵ�]��§WHVߍD��$�2�y�?`9�m���������B��ȏ�6��T*aLz�O�k��z�0Ii �gu:, �{�	LW�MMQx�`�,�i`֩�sT>�D
�o�
�R8T:1R��A_mn�#C;���&L�^��]�������'K�B����@lO)��:vaim�/�N�s���
a���B:��s����ᑂ�M~z���3�÷�s�W���aD6�b<�:�=$D6C����X��NLbǪ�(շD|����GB���
� ��G	�Ep��~�a$4��	���^P�h���Y��eR-=es����HuL����{ƶ,��2UT�I�Lj��%�=T��9�ѩ�m���޺����*m�Uz���U�K�I�@߾��"��Ul̆��U���G���ZIʻ(�9.��z�A��:��`*��[��L��&io�6��5���+��s���#Y1���YVl0zŰpG>�U����s�baC0U�ys�V��Ck�-����عm�������&��f��La�m�a��@�6$K��@�S&��y�D@n�^�P"uc)�6��KǷ��K[�8��Z���(7��E���[�y���=#6��s��O��y�F��z���n��d=���>w������'���x�Z�������E����D��I�U&��Y� o+(��	*�'��߸�+��
S>{O�+~�Z��9ϱl���K�)�޼�{lN��M*o��}����      �   �  x�ݖɮ�JEǙ_�󒭀  `��6�1�$D�c��럝�n=�TJ̷�X{����8U�
8U=�Ό�2!ذ�A8/?��q2R+c�ߧ3>��~���32��e��սI/w���|�|�\fL�Cw�}r���ay�❹����@�0Ğ|���N�MJ�;[���dd��J(,�^��ޙ�veU9sc2�ڸ��D��'5�t5k���.��םW��h��9�h�@�Qy�(�S�sK�7tt%�B�]<x�Smp�?X���WK�Z�X��	Hb�I�"	��8Ȭ����?��lvaТ�f\�sNNI��c�P�����j���Bշ�����s=3��l�D�E*�Ʒ�m��J�^z9S�n5R+�	`��kCU�\���8��aN���}�Yn�����$.��d�n�s�Ѝ���{�͑�LR���.���z����ޒ�h�Ѵ6��ZՎgK8�h�m
��]�rd��u7*�`�ߎ��a��uފ����G�
����\����EB�"9�Y����0s˾��8�p���d���.��ڇ�3]��Y�|4���Pt��l��Hg�/�� �ޟE� ޚm��yw�:�۠�8���y݋� �q^fΆ�t����ѐ;��ό�1����R;Wc/rf��˸;��P��5���"_�����)��V��?\�e��Cl&��V�Ì��S�B������a�p��!R�*��ob�/�֔�z͒fЇ��(,��>�R�M����x�� b2��\�[U�.g3X�|~�zs���10 EP�T�gZX]D�_����#�Dk ���-ưa���d\"��C�����?b�T(s�%hԞ��'q���(?�kPX5���q�{o����?$c�;�A�FA�%I��pMfw��6I:��~j���L��72�Wl��5�22�n�%#�ܞ�����&���b�Q\2L����!�Pc�����:$
U2�97|��SY�c=��=���n%�6�Ž,�[x��!��"�\�=��U>W��'^�O×mr
/���e��D�$+��]ߨ�ÚoB:(�F���k���|�z)�ާ��KG�oTx�H��GP���4�A���X�	�݅"��cR:�}� �9�������M��fܯ��as��d��3IR,\�su���RP��I��I�/�� �(�Ƙ!��J�q��S�C��&��8!�R9���W��7�h �A�5���ރj�0�}�X���/�F4m��K��.ˑ��YSC�:�+�g\vauq�R�I�.bưGߡwM2�x�w�]��Pcj��]�<���8���T�7��k
���|QͤlR:�A�uD<���z��j��ػ�'V�]�֒�,�E��H	J��μ�?���0����~�uR�GyI�S^���n���'Þu�ћC�UL�Fh��a�^��su�@R8i`������b14[$!R�u$�LZݍG:���������v�)
��-J�~\�,��K�v8N�q�_�q:��9�}�i�����v¾�Y@�zÏ^bR/�~W�];��_l%(l�Z�yhV}py��y��8��|vdШ!�`ӟ�8`j�O�	n2�M���{Cƹ�\K�I<���Ӎ'�"6�|$w9!'F��gB�T��n��ԝ�(ًJ��N���=Q�vŊ��`�T���̰�5O�N��R.���}��`# �~O�/IbH�>r������_�,�}      �      x������ � �      �   �  x�m��n�@�g�)�u1�}�:(� ]��w�L�D*�G���!/����x"�����6�G���G*�J�c"5Ii�e�z"�ZưJ�熉�:B�yAپ�d��f��S9��@l�� �
�bjV K;&.'�\9$˻2�<�R����J��f[�=p$�<np��+�d]�c�I/�uC�wY�+��A�PM��TC�}�2JI��.�|%�m��Թ�n?�6	4��9����'F��O�*Tz����-�}��k&���D�یg�gGpoX����H�𫕕|��	śl���&�ƈ9m.Z�5��u��e��}5�����E\�d���L�#��A'�6������t"η�KH-d*6?���L�Es���ۮ�j�U�	?7�m�z/OY���^jfr����6�v��/��      �   �  x��R�n�0=�_�h�$mb�h)ZÀ5C/�0kk��@����G9ؚ���<��=>���K
޵8���qg��0/�9lXu�(��~pd
�� ���e�2��	_��s��QL�8��;�ST�`��) 9��h;X
��\�C`J����ۉ����k�	��W���Ĥ�q<9)�)0�7�E��{&��j�C>1�������֮�&vhɵ������������;.��
�G���|c�j	��V�>u�+cK�W��S����?)��w��NJ���2����(� G#�F4�WcVˤ�f#���H��&�D��94X���%�K�Ϯ2�����N�6��i�o_�����qS���G�G��<��=�iŪ�&�~��Yr�rNyE�:���j��^<O��$�d-��1�cֽЛ�f�Dq�b}��~h(-%9�m�L���(�?��#�      �   `   x�3�L�/�T(/�,I-�4202�5��56P00�#mN�������NCN�������d�FVF�VƆzFf�F� ]�i�%��\1z\\\ uD9     
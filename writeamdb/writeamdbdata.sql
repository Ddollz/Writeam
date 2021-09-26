--
-- PostgreSQL database dump
--

-- Dumped from database version 13.4
-- Dumped by pg_dump version 13.4

-- Started on 2021-09-26 14:04:40

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
-- TOC entry 3259 (class 0 OID 33490)
-- Dependencies: 200
-- Data for Name: accounts_accounts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.accounts_accounts (id, password, email, username, first_name, last_name, date_joined, last_login, is_admin, is_active, is_staff, is_superuser, profile_image, address, phone, is_email_verified) FROM stdin;
86	pbkdf2_sha256$260000$CVA4yrVdeWy7VFu6mlMUwY$UCFTT8Q1HN4dloxztwaYq5V778bKnKhHtW/O5QoJllg=	xgamer1407@gmail.com	awefwaef	waefwef	karlerol	2021-09-23 00:18:47.46741+08	2021-09-25 21:14:04.281524+08	f	t	f	f	writeamImage/profile_image.png			t
93	pbkdf2_sha256$260000$q0vlecQAu6rALbDNAJ57rO$ofYRvWAcXdi9kZ8p8lrfFq0c5ixiAtpBui6UmydXzH8=	igmierol@gmail.com	erol	Admin	karlerol	2021-09-23 12:20:21.711361+08	2021-09-25 21:26:42.358771+08	f	t	f	f	writeamImage/profile_image.png			t
85	pbkdf2_sha256$260000$ORupwFHna2CKw70GgVxSsx$XpSmo1mtwHBDqexuhb9UPxwGNGCjo4TSHwab2vYeYBI=	admin@a.com	admin	Admin	Admin	2021-09-22 23:58:12.788458+08	2021-09-25 21:26:49.484094+08	t	t	t	t	writeamImage/profile_image.png			t
87	pbkdf2_sha256$260000$bTSylb0nHQn6ekznn1mroN$hyvdO4cWqyXHpVH8+3f+JqO0AqwtiiRmXSk5OudbqC8=	pasionkarlerol@gmail.com	karlerol	karlerol	pasion	2021-09-23 11:08:49.702947+08	2021-09-26 09:14:31.077601+08	f	t	t	f	writeamImage/profile_image.png	Tondo	09286120906	t
\.


--
-- TOC entry 3265 (class 0 OID 33508)
-- Dependencies: 206
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
1	Clients
2	HR Manager
3	HR Staff
4	Copy Writer Manager
5	Translator Manager
6	Editor Manager
\.


--
-- TOC entry 3260 (class 0 OID 33496)
-- Dependencies: 201
-- Data for Name: accounts_accounts_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.accounts_accounts_groups (id, accounts_id, group_id) FROM stdin;
79	85	2
80	86	1
104	93	1
106	87	2
107	87	3
\.


--
-- TOC entry 3287 (class 0 OID 33589)
-- Dependencies: 228
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
14	clientApp	screenshot
15	adminApp	onboardingapplicant
16	clientApp	jobapplication
17	system	jobskill
18	system	joblist
19	system	manpower
\.


--
-- TOC entry 3269 (class 0 OID 33518)
-- Dependencies: 210
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
53	Can add screenshot	14	add_screenshot
54	Can change screenshot	14	change_screenshot
55	Can delete screenshot	14	delete_screenshot
56	Can view screenshot	14	view_screenshot
57	Can add onboarding applicant	15	add_onboardingapplicant
58	Can change onboarding applicant	15	change_onboardingapplicant
59	Can delete onboarding applicant	15	delete_onboardingapplicant
60	Can view onboarding applicant	15	view_onboardingapplicant
61	Can add Job Application	16	add_jobapplication
62	Can change Job Application	16	change_jobapplication
63	Can delete Job Application	16	delete_jobapplication
64	Can view Job Application	16	view_jobapplication
65	Can add Job Skill List	17	add_jobskill
66	Can change Job Skill List	17	change_jobskill
67	Can delete Job Skill List	17	delete_jobskill
68	Can view Job Skill List	17	view_jobskill
69	Can add Job List	18	add_joblist
70	Can change Job List	18	change_joblist
71	Can delete Job List	18	delete_joblist
72	Can view Job List	18	view_joblist
73	Can add Manpower Request	19	add_manpower
74	Can change Manpower Request	19	change_manpower
75	Can delete Manpower Request	19	delete_manpower
76	Can view Manpower Request	19	view_manpower
\.


--
-- TOC entry 3263 (class 0 OID 33503)
-- Dependencies: 204
-- Data for Name: accounts_accounts_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.accounts_accounts_user_permissions (id, accounts_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3293 (class 0 OID 33794)
-- Dependencies: 234
-- Data for Name: adminApp_onboardingapplicant; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."adminApp_onboardingapplicant" (id, "jobTitle", score, accounts_id, remarks, "dateScore", status, is_active) FROM stdin;
\.


--
-- TOC entry 3267 (class 0 OID 33513)
-- Dependencies: 208
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3271 (class 0 OID 33523)
-- Dependencies: 212
-- Data for Name: clientApp_article; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."clientApp_article" (id, article, headline, accounts_id) FROM stdin;
95		\N	87
96		Admin	85
97	article/93/CONFIDENTIALITY-UNDERTAKING-STUDENT_2.pdf	rdwafawf	93
94	article/86/Project-Development-Checklist-ADACHI.pdf	fawefawefwf	86
\.


--
-- TOC entry 3279 (class 0 OID 33555)
-- Dependencies: 220
-- Data for Name: clientApp_personaldetails; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."clientApp_personaldetails" (id, profile_image, "jobTitle", fname, lname, email, phone, country, city, address, birthplace, birthdate, nationality, "profSummary", postalcode, accounts_id) FROM stdin;
75	writeamImage/profile_image.png	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	87
76	writeamImage/profile_image.png	Admin	Admin	Admin	admin@a.com	Admin	Admin	Admin	Admin	Admin	Admin	Admin	Admin	1112	85
77	profile_images/77/profile_image.png	Front-end Developer	Ericka	Michelle	ericka@yahoo.com	928612090	Philippines	manila	Lakan dula tulip st	manila	September 1950	awetwaet	To work in a highly professional and competitive environment where I can learn and share my skills that will help the organization growth. Skilled communicator, experienced in managing customer relations on social media platforms.	1112	93
74	profile_images/74/profile_image.png	awefwaf	w	Michelle	ericka@yahoo.com	928612090	Philippines	manila	Lakan dula tulip st	wefwfae	September 1950	awefwfe	wefawefw	1112	86
\.


--
-- TOC entry 3273 (class 0 OID 33531)
-- Dependencies: 214
-- Data for Name: clientApp_education; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."clientApp_education" (id, school, degree, start_date, end_date, city, personaldetails_id) FROM stdin;
26	waef	waefwf	September 2021	September 2021	awef	77
27	fwaefwfe	awefwef	September 2021	September 2021	wefwf	74
\.


--
-- TOC entry 3275 (class 0 OID 33539)
-- Dependencies: 216
-- Data for Name: clientApp_employmenthistory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."clientApp_employmenthistory" (id, "JobTitle", start_date, end_date, employer, city, description, personaldetails_id) FROM stdin;
122	awefw	September 2021	September 2021	aef	awfewe	fawefwafe	74
120	Community Manager/Copywriter	September 2021	September 2021	awdawd	awdawd	Customer support service ­ managing customer inquiries of all kinds using working knowledge of 3D printing technology and products offered on the marketplace, ensuring adherence to company's policy and voice\r\nContent creation ­ writing engaging and informative descriptions and technical characteristics for each 3D printing model's page on the website\r\nManagement of social media presence on Facebook, Instagram, Twitter, YouTube, Quora etc.\r\nWriting marketing copy for email newsletters, social media platforms, press releases and other promotion materials	77
121	afwef	September 2021	September 2021	waefwefwaef	wef	Responsible for conducting research and writing content on a company products.\r\nAssessment of pupils’ home assignments in English\r\nCorrection and commenting upon mistakes, further explanation of material that needs to be revised via online chats	77
\.


--
-- TOC entry 3295 (class 0 OID 33817)
-- Dependencies: 236
-- Data for Name: clientApp_jobapplication; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."clientApp_jobapplication" (id, "dateSubmit", "submitApplication", accounts_id, is_copywriter, is_editor, is_translator, copywriter, editor, translator, is_validated, article, copywriterfinal, editorfinal, translatorfinal, remarks, progress, "jobAccepted", "dateAccepted") FROM stdin;
70	2021-09-25 21:26:43.421311+08	t	93	t	t	t	60	62	56	t	100	90	92	86	You have pass all job requirements you may choice a job any you may like that is available	Congratulations Ericka! You may choose any of following job	Translator	2021-09-25 21:26:43.417802+08
67	2021-09-25 14:50:02.043214+08	t	86	t	t	f	0	0	0	t	50	15	15	15	There's might be a problem with your resume please update the resume	There is something WRONG. Please read the remarks	None	\N
68	2021-09-23 11:08:49.716945+08	f	87	f	f	f	0	0	0	f	0	0	0	0	\N	Writeam Staff's are reviewing your applications	None	\N
69	2021-09-23 11:34:40.21625+08	f	85	f	f	f	0	0	0	f	0	0	0	0		Writeam Staff's are reviewing your applications	None	\N
\.


--
-- TOC entry 3277 (class 0 OID 33547)
-- Dependencies: 218
-- Data for Name: clientApp_link; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."clientApp_link" (id, link, personaldetails_id) FROM stdin;
18	waefaw	77
19	fwaefw	77
20	awefwef	74
\.


--
-- TOC entry 3281 (class 0 OID 33564)
-- Dependencies: 222
-- Data for Name: clientApp_reference; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."clientApp_reference" (id, name, company, phone, email, personaldetails_id) FROM stdin;
16	fawef	awefwaef	weaf	waefaw	77
17	waefwef		awefwaef	awefwaef	74
\.


--
-- TOC entry 3283 (class 0 OID 33572)
-- Dependencies: 224
-- Data for Name: clientApp_skill; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."clientApp_skill" (id, skill, personaldetails_id) FROM stdin;
68	Creative writing	77
69	Microsoft Office	77
70	Research	77
71	Flexibility and Adaptability	77
72	Customer Service	77
73	Social Media Tools	77
74	Flexibility and Adaptability	77
75	awefwef	74
76	awfewa	74
77	fwefwaf	74
78	wef	74
\.


--
-- TOC entry 3285 (class 0 OID 33580)
-- Dependencies: 226
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
300	2021-09-23 00:22:29.009989+08	85	admin	2	[{"changed": {"fields": ["First name", "Last name", "Profile image"]}}]	6	85
301	2021-09-23 10:32:42.335826+08	4	Copy Writer Manager	1	[{"added": {}}]	3	85
302	2021-09-23 10:32:49.12726+08	5	Translator Manager	1	[{"added": {}}]	3	85
303	2021-09-23 10:33:08.480713+08	6	Editor Manager	1	[{"added": {}}]	3	85
304	2021-09-23 11:33:52.131566+08	76	Admin	1	[{"added": {}}]	9	85
305	2021-09-23 11:34:10.03976+08	96	Admin	1	[{"added": {}}]	13	85
306	2021-09-23 11:34:40.217249+08	69	jobapplication object (69)	1	[{"added": {}}]	16	85
307	2021-09-23 20:38:11.666754+08	70	jobapplication object (70)	2	[{"changed": {"fields": ["Accepted Job", "DateAccepted"]}}]	16	85
308	2021-09-23 21:03:07.362676+08	70	jobapplication object (70)	2	[{"changed": {"fields": ["Is validated", "Accepted Job", "DateAccepted"]}}]	16	85
309	2021-09-23 21:11:00.680178+08	70	jobapplication object (70)	2	[{"changed": {"fields": ["Is validated", "Accepted Job", "DateAccepted"]}}]	16	85
310	2021-09-23 21:13:36.224214+08	70	jobapplication object (70)	2	[{"changed": {"fields": ["Is validated", "Accepted Job", "DateAccepted"]}}]	16	85
311	2021-09-23 21:19:20.559273+08	70	jobapplication object (70)	2	[{"changed": {"fields": ["Is validated"]}}]	16	85
312	2021-09-23 21:20:22.141589+08	70	jobapplication object (70)	2	[{"changed": {"fields": ["Article Score", "Copywriter FS", "Editor FS", "Translator FS", "Accepted Job", "DateAccepted"]}}]	16	85
313	2021-09-23 21:23:43.304167+08	70	jobapplication object (70)	2	[{"changed": {"fields": ["Remarks"]}}]	16	85
314	2021-09-24 22:16:31.319017+08	2	Translator	1	[{"added": {}}]	19	85
315	2021-09-24 23:35:19.324904+08	3	Copy Writer	3		19	85
316	2021-09-24 23:35:38.956416+08	5	Copy Writer	3		19	85
317	2021-09-24 23:35:38.959416+08	4	Copy Writer	3		19	85
318	2021-09-24 23:36:44.174789+08	6	Copy Writer	3		19	85
319	2021-09-25 14:36:19.700592+08	70	jobapplication object (70)	2	[{"changed": {"fields": ["Is editor hired", "Is validated", "Copywriter FS", "Editor FS", "Translator FS", "Progress", "Accepted Job"]}}]	16	85
320	2021-09-25 14:46:27.609682+08	70	jobapplication object (70)	2	[{"changed": {"fields": ["Accepted Job"]}}]	16	85
321	2021-09-25 14:48:04.509968+08	67	jobapplication object (67)	2	[{"changed": {"fields": ["Is validated", "Article Score", "Copywriter FS", "Editor FS", "Translator FS"]}}]	16	85
322	2021-09-25 21:08:16.868492+08	70	jobapplication object (70)	2	[{"changed": {"fields": ["Accepted Job", "DateAccepted"]}}]	16	85
323	2021-09-25 21:09:57.325266+08	70	jobapplication object (70)	2	[{"changed": {"fields": ["Accepted Job", "DateAccepted"]}}]	16	85
324	2021-09-25 21:17:28.515842+08	70	jobapplication object (70)	2	[{"changed": {"fields": ["Accepted Job", "DateAccepted"]}}]	16	85
325	2021-09-25 21:19:09.627674+08	70	jobapplication object (70)	2	[{"changed": {"fields": ["Accepted Job", "DateAccepted"]}}]	16	85
326	2021-09-25 21:20:31.238306+08	70	jobapplication object (70)	2	[{"changed": {"fields": ["Accepted Job", "DateAccepted"]}}]	16	85
327	2021-09-25 21:22:04.964457+08	70	jobapplication object (70)	2	[{"changed": {"fields": ["Accepted Job", "DateAccepted"]}}]	16	85
328	2021-09-25 21:25:05.207156+08	70	jobapplication object (70)	2	[{"changed": {"fields": ["Accepted Job", "DateAccepted"]}}]	16	85
329	2021-09-25 21:25:16.075145+08	2	Translator	2	[{"changed": {"fields": ["Accepted of Candidate", "Is Finished"]}}]	19	85
330	2021-09-25 21:26:28.008591+08	2	Translator	2	[{"changed": {"fields": ["Accepted of Candidate", "Is Finished"]}}]	19	85
331	2021-09-25 21:26:37.142827+08	70	jobapplication object (70)	2	[{"changed": {"fields": ["Accepted Job", "DateAccepted"]}}]	16	85
332	2021-09-25 21:27:17.83837+08	1	Copy Writer	2	[{"changed": {"fields": ["Is Finished"]}}]	19	85
333	2021-09-25 21:27:27.767214+08	1	Copy Writer	2	[{"changed": {"fields": ["Is Finished"]}}]	19	85
334	2021-09-25 21:31:12.853447+08	1	Copy Writer	2	[{"changed": {"fields": ["Is Finished"]}}]	19	85
335	2021-09-26 09:14:31.085601+08	87	karlerol	2	[{"changed": {"fields": ["Groups", "Profile image"]}}]	6	85
\.


--
-- TOC entry 3289 (class 0 OID 33594)
-- Dependencies: 230
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
36	clientApp	0012_auto_20210907_0745	2021-09-07 07:45:19.701603+08
37	clientApp	0013_screenshot	2021-09-07 20:54:29.549415+08
38	clientApp	0014_alter_screenshot_screenshot	2021-09-07 20:55:36.861274+08
39	clientApp	0015_delete_screenshot	2021-09-07 21:00:19.654766+08
40	adminApp	0001_initial	2021-09-10 17:44:32.612657+08
41	clientApp	0013_auto_20210910_1744	2021-09-10 17:44:32.651657+08
42	adminApp	0002_auto_20210910_1746	2021-09-10 17:46:37.337305+08
43	clientApp	0014_alter_personaldetails_options	2021-09-10 17:46:37.344307+08
44	adminApp	0003_auto_20210910_1752	2021-09-10 17:52:18.429831+08
45	adminApp	0004_auto_20210910_1754	2021-09-10 17:54:37.216445+08
46	adminApp	0005_auto_20210910_1756	2021-09-10 17:56:05.713821+08
47	adminApp	0006_auto_20210910_1815	2021-09-10 18:15:36.465043+08
48	adminApp	0007_alter_onboardingapplicant_status	2021-09-14 00:11:57.045007+08
49	clientApp	0015_article_datesubmit	2021-09-14 13:22:15.946909+08
50	adminApp	0008_onboardingapplicant_is_active	2021-09-15 00:16:57.632425+08
51	clientApp	0016_auto_20210915_1812	2021-09-15 18:12:49.512244+08
52	clientApp	0017_alter_jobapplication_jobtitle	2021-09-15 18:16:41.818575+08
53	clientApp	0018_auto_20210915_1819	2021-09-15 18:19:57.106827+08
54	clientApp	0019_alter_jobapplication_datesubmit	2021-09-15 19:54:24.083442+08
55	accounts	0004_accounts_is_email_verified	2021-09-15 23:44:11.717475+08
56	accounts	0005_alter_accounts_is_active	2021-09-16 09:57:47.031702+08
57	accounts	0006_alter_accounts_is_active	2021-09-16 09:59:47.164432+08
58	system	0001_initial	2021-09-16 14:42:13.774871+08
59	clientApp	0020_auto_20210918_1213	2021-09-18 12:14:04.611206+08
60	clientApp	0021_jobapplication_is_validated	2021-09-20 12:06:30.81557+08
61	clientApp	0022_jobapplication_article	2021-09-20 12:32:54.511839+08
62	clientApp	0023_jobapplication_overall	2021-09-20 12:44:29.694139+08
63	clientApp	0024_remove_jobapplication_overall	2021-09-20 13:12:18.613794+08
64	clientApp	0025_auto_20210920_1348	2021-09-20 13:48:21.424883+08
65	clientApp	0026_auto_20210920_1907	2021-09-20 19:08:01.96265+08
66	clientApp	0027_jobapplication_remarks	2021-09-20 19:08:20.807453+08
67	clientApp	0028_jobapplication_progress	2021-09-20 19:21:52.788242+08
68	clientApp	0029_auto_20210920_1938	2021-09-20 19:38:57.587172+08
69	clientApp	0030_jobapplication_jobaccepted	2021-09-21 00:12:26.514382+08
70	clientApp	0031_auto_20210921_1705	2021-09-21 17:05:41.005388+08
71	clientApp	0032_alter_jobapplication_dateaccepted	2021-09-21 17:07:55.751246+08
72	clientApp	0033_auto_20210921_1708	2021-09-21 17:08:35.293146+08
73	clientApp	0034_alter_jobapplication_jobaccepted	2021-09-21 21:18:06.033565+08
74	clientApp	0035_alter_jobapplication_remarks	2021-09-24 20:25:47.031926+08
75	system	0002_manpower	2021-09-24 20:25:47.068926+08
76	system	0003_manpower_lastsubmitted	2021-09-24 22:11:09.419153+08
77	system	0004_remove_manpower_expecteddate	2021-09-25 14:16:06.435607+08
78	clientApp	0036_auto_20210925_2044	2021-09-25 20:44:45.266137+08
79	system	0005_manpower_currentcandidate	2021-09-25 20:44:45.275139+08
80	system	0006_manpower_is_finished	2021-09-25 20:47:04.189923+08
\.


--
-- TOC entry 3291 (class 0 OID 33602)
-- Dependencies: 232
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
8za7aphoe78eapqvjay5uni19fr3efyz	.eJxVjD8PwiAUxL8LsyHyp0Dd7O7oTOC9p1QbSEobB-N3lyYddLnk7nd3b-bDuiS_Vpr9iOzEhGWH3zAGeFLeCD5CvhcOJS_zGPlW4Tut_DxN5dXk2jb1UpCmYR_-vaVQU7vSN9QOkaIwivQRwFgAiTpYZ4wl6pyRzYseyGgpOoUAPTgVsVNWy8g-X5qJPZ0:1mNxsT:zmdr6gN2VmCwPGhvcPZQsX3FHIY6yBFJ-zsjYWwmJtw	2021-09-22 21:44:37.705724+08
bva61utfd70q4xef50adsrr3ftrdeac3	.eJxVjLkOwjAQRP_FNbJsx8dCBz0ldbTrAwciW4oTUSD-nURKAc0UM_Pem_W4zLlfWpz6IbATA8MOvyWhf8ayLeGB5V65r2WeBuLbhe9r4-dxrK81bivTrjXE8bKDf7aMLa8qEbW1XklnkxSA2gmhVZAgOtl1OiVtiLy1CRQdnYSEaAIQGO3AgiHDPl9SKzwf:1mU7hZ:16mL893vFi7f-OjqrfNlhQ3qaWSfBOnhIJm-MZXW97s	2021-10-09 21:26:49.488094+08
cu5j9fftfes5w67e8pnyl2xituqwk55q	.eJxVjb0OwjAQg98lM4qSND8tG90ZmaNL7kILVSI1rRgQ704rdYDFg-3PfjMP6zL4tdLsR2RnJi07_ZoB4pPynuAD8r3wWPIyj4HvFX6klV-mqbw2uW1MvRakqT_Av7UB6rCfdAadcqSaEAkEQVI6GgM2CiWTgoYkIHYEmgBt66Rw2JqQRJLYCKHZ5wuZsj3R:1mNGlj:2i-_Tbgmpe-uSJ9YB9VJNyFDnvAomXsjCeYd19WaM5U	2021-09-20 23:42:47.956009+08
bnurgbhkg8thhlyzk3cczy0ub3tjqd3w	.eJxVjTEPwiAUhP8LsyEthIe46e7oTF55D6kSSEobB-N_t0066HLD3X13b-FxmZNfGk9-JHESvTj8egOGJ5ctoAeWe5WhlnkaB7lV5J42ec65vla5rUy7VuJ82cG_tYQtbR9MOkYGtMwGIIAJCq1TYB0q1o6i6UhDDAq0Cb0CdTSInWOKzsTOis8XbEs9Qw:1mNHL2:GwfpQXWgCXZEMeCnT5kuxYp77aQ6fr0KS-If5QEph3o	2021-09-21 00:19:16.927875+08
4z5gg097j8uigj1t0462ukz7mbxicg0g	.eJxVjTEPwiAUhP8LsyEthIe46e7oTF55D6kSSEobB-N_t0066HLD3X13b-FxmZNfGk9-JHESvTj8egOGJ5ctoAeWe5WhlnkaB7lV5J42ec65vla5rUy7VuJ82cG_tYQtbR9MOkYGtMwGIIAJCq1TYB0q1o6i6UhDDAq0Cb0CdTSInWOKzsTOis8XbEs9Qw:1mOAZ3:i-DsQERMLWe-TAlNeFTrU6NeJeV3414_xqqL6C-MD3w	2021-09-23 11:17:25.005832+08
6kz35mz883r7aqbt7iwzg5r6vt84sn6v	.eJxVjD8PwiAUxL8LsyHyp0Dd7O7oTOC9p1QbSEobB-N3lyYddLnk7nd3b-bDuiS_Vpr9iOzEhGWH3zAGeFLeCD5CvhcOJS_zGPlW4Tut_DxN5dXk2jb1UpCmYR_-vaVQU7vSN9QOkaIwivQRwFgAiTpYZ4wl6pyRzYseyGgpOoUAPTgVsVNWy8g-X5qJPZ0:1mNQ3O:zMerQu4lhZ1J_WKwOXaNemYq369xaa5bUrP41D7Vrk0	2021-09-21 09:37:38.555368+08
r6bwmdi8dbz41cqt7j6lqd911vykyvsc	e30:1mSxjD:38u-ClXWVys7d2tbUkEEPY8mmBLpNAXnE3JEeqW6W4A	2021-10-06 16:35:43.88716+08
66hihs4an8tt53qtx8kh8i16w34l65ko	e30:1mRurr:aR0kO0hkrOTuycX4rAB0W_HiXzpaphUlMBrDW_3Fun0	2021-10-03 19:20:19.43837+08
x8itn71u7b9z7i8gthrj43riqtg7wfu5	e30:1mRurv:NikbVZ6UPsziit4wjYGU__mnA5uxwMXICDcPwC50C3Q	2021-10-03 19:20:23.489161+08
5q7j9inaco530ct1hvwhwsccd3hkpsnh	.eJxVjTEPwiAUhP8LsyEthIe46e7oTF55D6kSSEobB-N_t0066HLD3X13b-FxmZNfGk9-JHESvTj8egOGJ5ctoAeWe5WhlnkaB7lV5J42ec65vla5rUy7VuJ82cG_tYQtbR9MOkYGtMwGIIAJCq1TYB0q1o6i6UhDDAq0Cb0CdTSInWOKzsTOis8XbEs9Qw:1mNcDp:zgNCsYOxkh3mgj8gPenWqFyATHKdLZvv2MIHULhT2T0	2021-09-21 22:37:13.7933+08
\.


--
-- TOC entry 3297 (class 0 OID 50199)
-- Dependencies: 238
-- Data for Name: system_joblist; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.system_joblist (id, "job_Title", "job_Description", "is_onHire") FROM stdin;
2	Editor	Responsible for ensuring the accuracy and quality of a company's written materials. Main duties is to evaluate publish articles and educate writers on best practices, identify ways to improve the flow of materials, and advise writers on content pieces.	t
1	Copy Writer	Responsible for producing engaging forex trading and general topics. Their duties include researching keywords, producing interesting and unique written content and proofreading their work for accuracy and quality.	f
3	Translator	Responsible for converting English written articles and announcements into Brazilian, Indonesian, Malaysian and Polish language and making sure that the translated version conveys the meaning of the original as clearly as possible.	t
\.


--
-- TOC entry 3299 (class 0 OID 50210)
-- Dependencies: 240
-- Data for Name: system_jobskill; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.system_jobskill (id, skill_name, "job_Title_id") FROM stdin;
70	Strong writing skills	1
71	Technical skills	1
72	Research skills	1
73	Knowledge about SEO	1
74	Master in sentence structure, grammar and vocabulary	1
75	Creative Thinking	1
76	Ability to Write Headlines	1
77	Aware of User experience	1
78	An eye for details	1
79	English language skills	1
85	Advanced language knowledge	3
86	Excellent writing skills	3
87	In-depth cultural knowledge	3
88	Research skills	3
89	Reading comprehension	3
90	Master in sentence structure, grammar and vocabulary	3
91	Familiarity with word processing and CAT tools	3
92	Attention to detail	2
93	Knowledge of grammar and sentence structure	2
94	Knowledge of style	2
95	Timeliness -Writing skills	2
96	Knowledge of English language	2
97	Flexible and open for changes	2
98	Improve writers, not just documents	2
99	Know all the rules of language	2
100	Has and editing experience or related degree	2
\.


--
-- TOC entry 3301 (class 0 OID 58416)
-- Dependencies: 242
-- Data for Name: system_manpower; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.system_manpower (id, name, department, "requestDate", reason, designation, "nosCandidate", requirements, "lastSubmitted", "currentCandidate", "is_Finished") FROM stdin;
2	test	Translator	2021-09-24 00:00:00+08	test	Editor	1	aaaaaaaaaaaaaaaa	2021-09-24 22:16:31.318018+08	0	f
1	awdawd	Copy Writer	2021-09-10 00:00:00+08	wefawef	Translator	1	ssssssssssss	2021-09-24 22:11:09.407154+08	1	t
\.


--
-- TOC entry 3307 (class 0 OID 0)
-- Dependencies: 202
-- Name: accounts_accounts_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.accounts_accounts_groups_id_seq', 107, true);


--
-- TOC entry 3308 (class 0 OID 0)
-- Dependencies: 203
-- Name: accounts_accounts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.accounts_accounts_id_seq', 93, true);


--
-- TOC entry 3309 (class 0 OID 0)
-- Dependencies: 205
-- Name: accounts_accounts_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.accounts_accounts_user_permissions_id_seq', 1, false);


--
-- TOC entry 3310 (class 0 OID 0)
-- Dependencies: 233
-- Name: adminApp_onboardingapplicant_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."adminApp_onboardingapplicant_id_seq"', 22, true);


--
-- TOC entry 3311 (class 0 OID 0)
-- Dependencies: 207
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 6, true);


--
-- TOC entry 3312 (class 0 OID 0)
-- Dependencies: 209
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 3313 (class 0 OID 0)
-- Dependencies: 211
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 76, true);


--
-- TOC entry 3314 (class 0 OID 0)
-- Dependencies: 213
-- Name: clientApp_article_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."clientApp_article_id_seq"', 97, true);


--
-- TOC entry 3315 (class 0 OID 0)
-- Dependencies: 215
-- Name: clientApp_education_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."clientApp_education_id_seq"', 27, true);


--
-- TOC entry 3316 (class 0 OID 0)
-- Dependencies: 217
-- Name: clientApp_employmenthistory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."clientApp_employmenthistory_id_seq"', 122, true);


--
-- TOC entry 3317 (class 0 OID 0)
-- Dependencies: 235
-- Name: clientApp_jobapplication_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."clientApp_jobapplication_id_seq"', 70, true);


--
-- TOC entry 3318 (class 0 OID 0)
-- Dependencies: 219
-- Name: clientApp_link_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."clientApp_link_id_seq"', 20, true);


--
-- TOC entry 3319 (class 0 OID 0)
-- Dependencies: 221
-- Name: clientApp_personaldetails_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."clientApp_personaldetails_id_seq"', 77, true);


--
-- TOC entry 3320 (class 0 OID 0)
-- Dependencies: 223
-- Name: clientApp_reference_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."clientApp_reference_id_seq"', 17, true);


--
-- TOC entry 3321 (class 0 OID 0)
-- Dependencies: 225
-- Name: clientApp_skill_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."clientApp_skill_id_seq"', 78, true);


--
-- TOC entry 3322 (class 0 OID 0)
-- Dependencies: 227
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 335, true);


--
-- TOC entry 3323 (class 0 OID 0)
-- Dependencies: 229
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 19, true);


--
-- TOC entry 3324 (class 0 OID 0)
-- Dependencies: 231
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 80, true);


--
-- TOC entry 3325 (class 0 OID 0)
-- Dependencies: 237
-- Name: system_joblist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.system_joblist_id_seq', 5, true);


--
-- TOC entry 3326 (class 0 OID 0)
-- Dependencies: 239
-- Name: system_jobskill_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.system_jobskill_id_seq', 100, true);


--
-- TOC entry 3327 (class 0 OID 0)
-- Dependencies: 241
-- Name: system_manpower_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.system_manpower_id_seq', 6, true);


-- Completed on 2021-09-26 14:04:40

--
-- PostgreSQL database dump complete
--


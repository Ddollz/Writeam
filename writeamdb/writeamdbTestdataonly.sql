PGDMP     5    2                y         	   writeamdb    13.4    13.4 3               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    67517 	   writeamdb    DATABASE     k   CREATE DATABASE writeamdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_Philippines.1252';
    DROP DATABASE writeamdb;
                postgres    false            �          0    67518    accounts_accounts 
   TABLE DATA           �   COPY public.accounts_accounts (id, password, email, username, first_name, last_name, date_joined, last_login, is_admin, is_active, is_staff, is_superuser, profile_image, address, phone, is_email_verified) FROM stdin;
    public          postgres    false    200   �0       �          0    67545 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    208   �0       �          0    67524    accounts_accounts_groups 
   TABLE DATA           M   COPY public.accounts_accounts_groups (id, accounts_id, group_id) FROM stdin;
    public          postgres    false    201   1       �          0    67641    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    232   61       �          0    67555    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    212   72       �          0    67531 "   accounts_accounts_user_permissions 
   TABLE DATA           \   COPY public.accounts_accounts_user_permissions (id, accounts_id, permission_id) FROM stdin;
    public          postgres    false    204   �5       �          0    67536    adminApp_onboardingapplicant 
   TABLE DATA           �   COPY public."adminApp_onboardingapplicant" (id, "jobTitle", score, accounts_id, remarks, "dateScore", status, is_active) FROM stdin;
    public          postgres    false    206   �5       �          0    67550    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    210   �5       �          0    67560    clientApp_article 
   TABLE DATA           Q   COPY public."clientApp_article" (id, article, headline, accounts_id) FROM stdin;
    public          postgres    false    214   �5       	          0    67889    clientApp_deploymentmodel 
   TABLE DATA           �   COPY public."clientApp_deploymentmodel" (id, username, password, is_gcash, gname, gnumber, is_bank, bname, bnumber, accounts_id) FROM stdin;
    public          postgres    false    244   6       �          0    67607    clientApp_personaldetails 
   TABLE DATA           �   COPY public."clientApp_personaldetails" (id, profile_image, "jobTitle", fname, lname, email, phone, country, city, address, birthplace, birthdate, nationality, "profSummary", postalcode, accounts_id) FROM stdin;
    public          postgres    false    224   86       �          0    67568    clientApp_education 
   TABLE DATA           s   COPY public."clientApp_education" (id, school, degree, start_date, end_date, city, personaldetails_id) FROM stdin;
    public          postgres    false    216   U6       �          0    67576    clientApp_employmenthistory 
   TABLE DATA           �   COPY public."clientApp_employmenthistory" (id, "JobTitle", start_date, end_date, employer, city, description, personaldetails_id) FROM stdin;
    public          postgres    false    218   r6       �          0    67584    clientApp_jobapplication 
   TABLE DATA           ;  COPY public."clientApp_jobapplication" (id, "dateSubmit", "submitApplication", accounts_id, is_copywriter, is_editor, is_translator, copywriter, editor, translator, is_validated, article, copywriterfinal, editorfinal, translatorfinal, remarks, progress, "jobAccepted", "dateAccepted", "validationDate") FROM stdin;
    public          postgres    false    220   �6       �          0    67599    clientApp_link 
   TABLE DATA           H   COPY public."clientApp_link" (id, link, personaldetails_id) FROM stdin;
    public          postgres    false    222   �6       �          0    67616    clientApp_reference 
   TABLE DATA           d   COPY public."clientApp_reference" (id, name, company, phone, email, personaldetails_id) FROM stdin;
    public          postgres    false    226   �6       �          0    67624    clientApp_skill 
   TABLE DATA           J   COPY public."clientApp_skill" (id, skill, personaldetails_id) FROM stdin;
    public          postgres    false    228   �6       �          0    67632    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    230   7       �          0    67646    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    234    7                 0    67654    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    236   >                 0    67910    system_contact 
   TABLE DATA           \   COPY public.system_contact (id, name, email, subject, message, "lastSubmitted") FROM stdin;
    public          postgres    false    246   �D                 0    67660    system_joblist 
   TABLE DATA           Y   COPY public.system_joblist (id, "job_Title", "job_Description", "is_onHire") FROM stdin;
    public          postgres    false    237   E                 0    67668    system_jobskill 
   TABLE DATA           I   COPY public.system_jobskill (id, skill_name, "job_Title_id") FROM stdin;
    public          postgres    false    239   5E                 0    67673    system_manpower 
   TABLE DATA           �   COPY public.system_manpower (id, name, "requestDate", reason, "nosCandidate", requirements, "lastSubmitted", "currentCandidate", "is_Finished", "on_Going", "job_Title_id") FROM stdin;
    public          postgres    false    241   RE                  0    0    accounts_accounts_groups_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.accounts_accounts_groups_id_seq', 109, true);
          public          postgres    false    202                       0    0    accounts_accounts_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.accounts_accounts_id_seq', 94, true);
          public          postgres    false    203                       0    0 )   accounts_accounts_user_permissions_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.accounts_accounts_user_permissions_id_seq', 1, false);
          public          postgres    false    205                       0    0 #   adminApp_onboardingapplicant_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."adminApp_onboardingapplicant_id_seq"', 22, true);
          public          postgres    false    207                       0    0    auth_group_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_group_id_seq', 6, true);
          public          postgres    false    209                       0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    211                       0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 76, true);
          public          postgres    false    213                       0    0    clientApp_article_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."clientApp_article_id_seq"', 97, true);
          public          postgres    false    215                       0    0     clientApp_deploymentmodel_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."clientApp_deploymentmodel_id_seq"', 1, false);
          public          postgres    false    243                       0    0    clientApp_education_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."clientApp_education_id_seq"', 27, true);
          public          postgres    false    217                       0    0 "   clientApp_employmenthistory_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."clientApp_employmenthistory_id_seq"', 122, true);
          public          postgres    false    219                       0    0    clientApp_jobapplication_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."clientApp_jobapplication_id_seq"', 70, true);
          public          postgres    false    221                       0    0    clientApp_link_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."clientApp_link_id_seq"', 20, true);
          public          postgres    false    223                       0    0     clientApp_personaldetails_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."clientApp_personaldetails_id_seq"', 77, true);
          public          postgres    false    225                        0    0    clientApp_reference_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."clientApp_reference_id_seq"', 17, true);
          public          postgres    false    227            !           0    0    clientApp_skill_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."clientApp_skill_id_seq"', 78, true);
          public          postgres    false    229            "           0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 350, true);
          public          postgres    false    231            #           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 19, true);
          public          postgres    false    233            $           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 82, true);
          public          postgres    false    235            %           0    0    system_contact_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.system_contact_id_seq', 1, false);
          public          postgres    false    245            &           0    0    system_joblist_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.system_joblist_id_seq', 5, true);
          public          postgres    false    238            '           0    0    system_jobskill_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.system_jobskill_id_seq', 100, true);
          public          postgres    false    240            (           0    0    system_manpower_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.system_manpower_id_seq', 6, true);
          public          postgres    false    242            �      x������ � �      �      x������ � �      �      x������ � �      �   �   x�M�Mr� ���0���/{�n�:4 1H��o_��v���@��1GvI&b�g��B5G�(�����.[��RH�N�9�[G�!�̦��\H��|��h���<w4E�åm�4�aL
��?#�$Kn�-�I��}'W��J��a�ǔ��:��bHͷ�}�����^o�b�`#OXJ����n�W�o�ϟ�.j�W�}��C������\�A�>�H[�,#%��_���� ��آ�      �   `  x�u��r�0���)x��������i/��3�Fp3y��j�ݕ�͒�%�����S}�����f\�$K��mC��=��j�, ����tS� ��ͫ��	��`6���/Ko�$5�P5� �1��~�EAƶ�(Hpd�9X^g{����N\ί�"w�� ������`��q��]��M&)A����\'��J�w�xT|M���m��bܻ�@G*k�,1��3w$�<��H� �
H�t����.IJ~�r�F��"	D-YbQ����u�o@-�U.��9�c��GQ��,A�Q
�~|IZ�@����U�8 	@�7 ���ˮQ�b���bG=l�Zu?,���
��YU�Qǈ��oȺ*�q�YW�NW�~"k(�6���g�_V�7ʓ�߇\P���q���E������P\�|��/汐R7��f6cg��@aB�"x��0VdO���X?A�-�(��K?I��!�RD/ �S9Fd.0�M9��-�G�uJ��׾6Uw��PU"l��s"s����s,z�r��3������g�&�;~hFU"w����"m��/��,c�u����,;>Y=_���i�N�[�;�h-,�J��j���D��{ ���5K�{���bJ���~t��3w���O�fU-BwP�[��D��p�q��Al+.�Ď~�!I�n�%��!�����"a�	�M����o����;�ga�����P5�X�S$��,�� :0���j�$��d_͜~7�fg�az�yՈ4�J"�G�L,�G<�M��l�1��������jD�%��%"���㒖�U��N	ݯʺ��,�ⷡjE$�n���2��ځc�cT�����J��9��]      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      	      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   O  x���͒���=O�}�����=R���j��r$y2��II)9�l�z�Ï xx >N�m�o��}��!�ͭ���@��p	:�*Hd�F�4�nb����W]N����V]�$+��(����{Kao�,��jǺ/�um���na��Z�.��v���O�HR�&�c���j�?C4��P���h��8�#��fA�5����l�K�y=�eQ4A��|�~4�r�J_�	=�-3�j�s5v�PV�sY�}ח�z�K�*-�b�������Z(i	���=)H8�@L�K�=��Q��(�h�ǝ�S���������9!�S�l�ws����O��q߸���X��ks{c�y�y�A�MVW�=�}Ψ�2هв�}B�	���N��Ɵmu)O_]sz!2KZ��2�1�S�������f�����X�}��҅��SB�p�	����WwK�� (P�	h2V�ǩm8���ݭj���V4xm}6m]6W��ɔ$��RG$l��(S�lm���v�W���>��z8�����T�@�4Z<U��)���AYy�?9��:ϯ����w��r�v�
*<����f��נ_$!%���p,i%(*��v�~lNm��s�������ɻt����_uun�[���U�Hʅ�"�t:&v��q��E�Hf���%�E�)�X>���ʄ�S��xC�x��n̭�2}�M���.KH"g���kgEBqVx�F#��e������(�H��KU��{�){�a�R�x�-�ŧT�@%_ź�_ݸ^�w����NB<�T�0O��`�b�р&H�R�bOhknf/P��J�X)���4���?�W�k+!�UB>c0R�#�Lv�-A��[ ���PII���ݷ9�Ӥ$�I<یf�أDg)�U�&�-!�	k�c@�RƌtBP[B^�g���b��$�,��`��Z	�-mB��������ss�T�{ۜ*�w�X��U]��ˋ�x�S]7�������k3�@ra���C���R���`�!���*ģ}<�Pb��ʤ��H���K�lkl��2\;��,�5�g�s�'A�ϱ�:��<D�ɴU&c����s�y���d�~@{W������oC�K*H�p����W�7�M}^�x��[�z4rJN'$��i;��§WHV��D��$�6�y��`9�c���������B��ȏ�6��T*aLz�O����z�0Ii �gu:, �g�	LO�UMQx�`�,�i`֩�sT>�D
�o�
�R�T:1R��A_�^�#C;���&L�^��[�������7K�B����@lO)��:vaim�/�N�s���
aG���B:��s���_Ö�|L~z���3�ï�K�O���aD6�b��:�m"�!�zP,����NLbǪ�*��D|����GB���
� ��G	�Fp��_~�a$4��	_��^P�h���Y��eR-m��9�_ꈎ`B�:&����b�3c[�O�*�ȤR&��hI�A�dctje[����?u��J�y�^��eU��%��$f�o��D��B�*6f�X.�����S�a=Iʻ(�9.��z�A��:��b*���k�L��!io�V��g�G�O���s�G�İ^�gY���'�=��;��J$o�`��P+��T�_���V%/s����'>�{b継r7^35�5ML��B��y�L���1��mH����X�L󰉀\���D��Rpm�o��V����q��l�����2�Ʈ���E/��"�X<@/G�u�t<��X���+�Bꕎ'����ܣ���+���ԸܽX����q�����'�9         l  x����΢J�����	�����Q?���Lb8�I�3�ӏ��ezv�:�~%?�Y|ί�g̑د�1�g<T��[����*޿�\&�����@ݼ�k G��=-M�k���3XS'���(:TWE(�y��7�n�L[�Tu�h�xs�%Kcj��mQ���XC�_']
��]K�gި�w��'��
7e�aN�D̬ڻ2Ӄ�gs�xV�Z{ڢn%N�ܙ$�7{�
�<�:KXʨe�tJi��t���]�f���y��SK�{�T����� OA����[q s�� ?�������O,�����C37�dЦ\4�<�Ls>ɤWyp-�Ӂ+v缣[318���'o
�����ˁ�CgB��g��]�k���jeҢ��ws�l�ͅ-U6��>��_4�M9{Ͷ�=�(lξ"���X59B)s�������ɺgYs���0�O��^�4\��3��0�nV��uL�=�yg�7r5�����R�E4��Gl�6� (0܊�, ��,��6	�"!}�>�@a��`P�7���,寚���fJ��b���5�`,����f� ��dt��5ۼ���<��*���I�h���S����*�5�p�q�����֞9g����3���Z��qRw;q/5��AC?ٌ�SY @���r������#�@�xc��mPP�{m\�D�\�c,U.��Ws�o��|���J���o1�xהhv�C�p�#�,8I ��dȒ���¡X�2xea�?@L�H�(�3�xpc��xc�6{����������J�QF�s��M4'@� ?bl� \.�����iIpˎ=a����)3�&,Ǹ5�^��������K�A,��}ح��2��G����	��0ƈ%�,��'���9�P �ϲ�tx�`�&S�Mf��M��)zN��])0q��W�����om����)��m�V5�x�q���2���r ����g8�b��LqW9Ɋk�^�cOiҮ���rw-��+�>��Cȝ�C}�v�%�g��ɾ�G�Dc��ZK�N�t�Me[kC�x�Y�G�7�f���|!BG;	=�R���ۻ�*{�o*��_���=���?T-Le��(X:lz.gM���8�؅?b��A�W.��Jz\\g���](�\�x��W��e]F�o*`Ѭ����!��Ui6�Ҏ�+��5��)�hvB̃���;��V�MPh -Z���´���mvY��o?��Vvoh3T�w���x~�g� ��O�d}������OۜAm��	7��;tNY8W�ֻ�]f�=վ��J��k:^v�꓄�����h����7\�g�>1aO��N]F(-�J���;�r-,�I�<�U��Lr��q�6�Y��_��:���ڇԂ�?�����h��}�*.�����0��p��?H�gU������mީ4eߤ.i�y8�c�X�(w������={*��d�����K���EI��h�NP�j�A�6���MU��87���� ��78�_����1�8"���s+Q-3y�2R�V������܁2�m�d�ledr�Q��o1g�<|�r)|j�:�]u�w��4�=�;ݑ:k�s�(��f>c� �
!�����^����?�:sG            x������ � �            x������ � �            x������ � �            x������ � �     
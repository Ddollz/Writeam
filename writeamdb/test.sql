PGDMP     6    6                y         	   writeamdb    13.4    13.4 3               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
    public          postgres    false    208   �1       �          0    67524    accounts_accounts_groups 
   TABLE DATA           M   COPY public.accounts_accounts_groups (id, accounts_id, group_id) FROM stdin;
    public          postgres    false    201   2       �          0    67641    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    232   :2       �          0    67555    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    212   ;3       �          0    67531 "   accounts_accounts_user_permissions 
   TABLE DATA           \   COPY public.accounts_accounts_user_permissions (id, accounts_id, permission_id) FROM stdin;
    public          postgres    false    204   �6       �          0    67536    adminApp_onboardingapplicant 
   TABLE DATA           �   COPY public."adminApp_onboardingapplicant" (id, "jobTitle", score, accounts_id, remarks, "dateScore", status, is_active) FROM stdin;
    public          postgres    false    206   �6       �          0    67550    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    210   �6       �          0    67560    clientApp_article 
   TABLE DATA           Q   COPY public."clientApp_article" (id, article, headline, accounts_id) FROM stdin;
    public          postgres    false    214   7       	          0    67889    clientApp_deploymentmodel 
   TABLE DATA           �   COPY public."clientApp_deploymentmodel" (id, username, password, is_gcash, gname, gnumber, is_bank, bname, bnumber, accounts_id) FROM stdin;
    public          postgres    false    244   ,7       �          0    67607    clientApp_personaldetails 
   TABLE DATA           �   COPY public."clientApp_personaldetails" (id, profile_image, "jobTitle", fname, lname, email, phone, country, city, address, birthplace, birthdate, nationality, "profSummary", postalcode, accounts_id) FROM stdin;
    public          postgres    false    224   I7       �          0    67568    clientApp_education 
   TABLE DATA           s   COPY public."clientApp_education" (id, school, degree, start_date, end_date, city, personaldetails_id) FROM stdin;
    public          postgres    false    216   �7       �          0    67576    clientApp_employmenthistory 
   TABLE DATA           �   COPY public."clientApp_employmenthistory" (id, "JobTitle", start_date, end_date, employer, city, description, personaldetails_id) FROM stdin;
    public          postgres    false    218   �7       �          0    67584    clientApp_jobapplication 
   TABLE DATA           ;  COPY public."clientApp_jobapplication" (id, "dateSubmit", "submitApplication", accounts_id, is_copywriter, is_editor, is_translator, copywriter, editor, translator, is_validated, article, copywriterfinal, editorfinal, translatorfinal, remarks, progress, "jobAccepted", "dateAccepted", "validationDate") FROM stdin;
    public          postgres    false    220   �7       �          0    67599    clientApp_link 
   TABLE DATA           H   COPY public."clientApp_link" (id, link, personaldetails_id) FROM stdin;
    public          postgres    false    222   _8       �          0    67616    clientApp_reference 
   TABLE DATA           d   COPY public."clientApp_reference" (id, name, company, phone, email, personaldetails_id) FROM stdin;
    public          postgres    false    226   |8       �          0    67624    clientApp_skill 
   TABLE DATA           J   COPY public."clientApp_skill" (id, skill, personaldetails_id) FROM stdin;
    public          postgres    false    228   �8       �          0    67632    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    230   �8       �          0    67646    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    234   r<                 0    67654    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    236   �C                 0    67910    system_contact 
   TABLE DATA           \   COPY public.system_contact (id, name, email, subject, message, "lastSubmitted") FROM stdin;
    public          postgres    false    246   QJ                 0    67660    system_joblist 
   TABLE DATA           Y   COPY public.system_joblist (id, "job_Title", "job_Description", "is_onHire") FROM stdin;
    public          postgres    false    237   nJ                 0    67668    system_jobskill 
   TABLE DATA           I   COPY public.system_jobskill (id, skill_name, "job_Title_id") FROM stdin;
    public          postgres    false    239   L                 0    67673    system_manpower 
   TABLE DATA           �   COPY public.system_manpower (id, name, "requestDate", reason, "nosCandidate", requirements, "lastSubmitted", "currentCandidate", "is_Finished", "on_Going", "job_Title_id") FROM stdin;
    public          postgres    false    241   �M                  0    0    accounts_accounts_groups_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.accounts_accounts_groups_id_seq', 108, true);
          public          postgres    false    202                       0    0    accounts_accounts_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.accounts_accounts_id_seq', 93, true);
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
          public          postgres    false    229            "           0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 339, true);
          public          postgres    false    231            #           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 19, true);
          public          postgres    false    233            $           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 82, true);
          public          postgres    false    235            %           0    0    system_contact_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.system_contact_id_seq', 1, false);
          public          postgres    false    245            &           0    0    system_joblist_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.system_joblist_id_seq', 5, true);
          public          postgres    false    238            '           0    0    system_jobskill_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.system_jobskill_id_seq', 100, true);
          public          postgres    false    240            (           0    0    system_manpower_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.system_manpower_id_seq', 6, true);
          public          postgres    false    242            �   �   x�M�݊�0D�ӧ�wbL>����V�U��� ��Zw�f��>��";����$?�l/G	�s�#�����د(�0�6	�e_*web]P]ڨ?�S�����ie��pp*�<��L�V�����^gyW�]�_�z��� 5h\p[�E���m���*0�9��Ӗ��sV*�GZ��i��!�U�����S�P�l��8wEB`      �   O   x�3�t��L�+)�2��R�M�KLO-�2q�K�ҸL8��*2KR��
L9C��sK��f��)��1z\\\ �t�      �      x�3��0�4����� ��      �   �   x�M�Mr� ���0���/{�n�:4 1H��o_��v���@��1GvI&b�g��B5G�(�����.[��RH�N�9�[G�!�̦��\H��|��h���<w4E�åm�4�aL
��?#�$Kn�-�I��}'W��J��a�ǔ��:��bHͷ�}�����^o�b�`#OXJ����n�W�o�ϟ�.j�W�}��C������\�A�>�H[�,#%��_���� ��آ�      �   `  x�u��r�0���)x��������i/��3�Fp3y��j�ݕ�͒�%�����S}�����f\�$K��mC��=��j�, ����tS� ��ͫ��	��`6���/Ko�$5�P5� �1��~�EAƶ�(Hpd�9X^g{����N\ί�"w�� ������`��q��]��M&)A����\'��J�w�xT|M���m��bܻ�@G*k�,1��3w$�<��H� �
H�t����.IJ~�r�F��"	D-YbQ����u�o@-�U.��9�c��GQ��,A�Q
�~|IZ�@����U�8 	@�7 ���ˮQ�b���bG=l�Zu?,���
��YU�Qǈ��oȺ*�q�YW�NW�~"k(�6���g�_V�7ʓ�߇\P���q���E������P\�|��/汐R7��f6cg��@aB�"x��0VdO���X?A�-�(��K?I��!�RD/ �S9Fd.0�M9��-�G�uJ��׾6Uw��PU"l��s"s����s,z�r��3������g�&�;~hFU"w����"m��/��,c�u����,;>Y=_���i�N�[�;�h-,�J��j���D��{ ���5K�{���bJ���~t��3w���O�fU-BwP�[��D��p�q��Al+.�Ď~�!I�n�%��!�����"a�	�M����o����;�ga�����P5�X�S$��,�� :0���j�$��d_͜~7�fg�az�yՈ4�J"�G�L,�G<�M��l�1��������jD�%��%"���㒖�U��N	ݯʺ��,�ⷡjE$�n���2��ځc�cT�����J��9��]      �      x������ � �      �      x������ � �      �      x������ � �      �      x��4��tL����0����� %��      	      x������ � �      �   H   x�37�,/�,IM���MLO�/(�O��I����
��9Sr3�P�D鐨����E?ihhh�ia����� ��'�      �      x������ � �      �      x������ � �      �   t   x�3��4202�5��52V04�26�21�32432�6��L�0 h �0ڀ�3�(�$51W!�$1-M�X!�(U�(�,3�<3/]�2��H!�� '39�$3?���/?/�3���b���� ��      �      x������ � �      �      x������ � �      �      x������ � �      �   �  x��WMo�F=ӿ�ЩA�����ނ�.Z�@��!�a-Q6Y(�F�w��j%9J�7���y��f(
�g���,Q / �w�[p��E���˂���'ӛ���f�P����j1[����eݮ7�2�V�����8x��m���*��x]M�|��0z!�����HH���Y/��?�m����d���D#�f=�'{8: ����t�{��E�4'��LpB9�(�)���'!�$LH�JԦ�eM���>��t��� �m������GP -����o���Z-�i��Ͳl��V�M���O�n+h���YrQc�V]lp���tZ�6լ���J]�]�T���&���v8` ��Ґ����~\��E=��'s8���8q��q���O�rN2H#���Z}='�9�@ ��d�#r��I�OJ�'P���nD϶�z�J�rڴ��%������e��Ռ�e G����&�dPR�֠��b��������������� QH�������Z�:�z��Os��d���P������7�Nxm8�^ڏ�#�~k������Ze�&1���KTɐc� �ӣ;����n�A����7�u[��{�7,>A�2��0���q���t��|��N?�=���j՘���LC�i�.4���V�d] �s�A�.$Mf�.<���8��fyUg˃�9xN�0d�=�]B&��#$�c��`s������=q:�s�� >������9�l�ը��;�e3/_����_��z}��u�$�M �=�Ǯqߵ�|鐣sU_�H�A8���������(s�c��xҷw�#��%M���pZ*�XQ˔,��t@�]b�kg�w�]Tm�x��m��j���4C_,	��%����W�fe�����I�$���Z�9p�b_&g�xW��b5O�����Ҁ�o��E��O�3�D�[�)...����      �   O  x���͒���=O�}�����=R���j��r$y2��II)9�l�z�Ï xx >N�m�o��}��!�ͭ���@��p	:�*Hd�F�4�nb����W]N����V]�$+��(����{Kao�,��jǺ/�um���na��Z�.��v���O�HR�&�c���j�?C4��P���h��8�#��fA�5����l�K�y=�eQ4A��|�~4�r�J_�	=�-3�j�s5v�PV�sY�}ח�z�K�*-�b�������Z(i	���=)H8�@L�K�=��Q��(�h�ǝ�S���������9!�S�l�ws����O��q߸���X��ks{c�y�y�A�MVW�=�}Ψ�2هв�}B�	���N��Ɵmu)O_]sz!2KZ��2�1�S�������f�����X�}��҅��SB�p�	����WwK�� (P�	h2V�ǩm8���ݭj���V4xm}6m]6W��ɔ$��RG$l��(S�lm���v�W���>��z8�����T�@�4Z<U��)���AYy�?9��:ϯ����w��r�v�
*<����f��נ_$!%���p,i%(*��v�~lNm��s�������ɻt����_uun�[���U�Hʅ�"�t:&v��q��E�Hf���%�E�)�X>���ʄ�S��xC�x��n̭�2}�M���.KH"g���kgEBqVx�F#��e������(�H��KU��{�){�a�R�x�-�ŧT�@%_ź�_ݸ^�w����NB<�T�0O��`�b�р&H�R�bOhknf/P��J�X)���4���?�W�k+!�UB>c0R�#�Lv�-A��[ ���PII���ݷ9�Ӥ$�I<یf�أDg)�U�&�-!�	k�c@�RƌtBP[B^�g���b��$�,��`��Z	�-mB��������ss�T�{ۜ*�w�X��U]��ˋ�x�S]7�������k3�@ra���C���R���`�!���*ģ}<�Pb��ʤ��H���K�lkl��2\;��,�5�g�s�'A�ϱ�:��<D�ɴU&c����s�y���d�~@{W������oC�K*H�p����W�7�M}^�x��[�z4rJN'$��i;��§WHV��D��$�6�y��`9�c���������B��ȏ�6��T*aLz�O����z�0Ii �gu:, �g�	LO�UMQx�`�,�i`֩�sT>�D
�o�
�R�T:1R��A_�^�#C;���&L�^��[�������7K�B����@lO)��:vaim�/�N�s���
aG���B:��s���_Ö�|L~z���3�ï�K�O���aD6�b��:�m"�!�zP,����NLbǪ�*��D|����GB���
� ��G	�Fp��_~�a$4��	_��^P�h���Y��eR-m��9�_ꈎ`B�:&����b�3c[�O�*�ȤR&��hI�A�dctje[����?u��J�y�^��eU��%��$f�o��D��B�*6f�X.�����S�a=Iʻ(�9.��z�A��:��b*���k�L��!io�V��g�G�O���s�G�İ^�gY���'�=��;��J$o�`��P+��T�_���V%/s����'>�{b継r7^35�5ML��B��y�L���1��mH����X�L󰉀\���D��Rpm�o��V����q��l�����2�Ʈ���E/��"�X<@/G�u�t<��X���+�Bꕎ'����ܣ���+���ԸܽX����q�����'�9         p  x�ݖ�ΣHEיO��[�"���0`c0VI�y�f6<}ٙٝ]�7H�����/��1�3}D��g3��LuٸEQ</����e�"֧����t�n~1d4�aj�����fuB�섡RL"�Cvq�g�f�"���C/G[%DJ�@;\�E�K�4��_'*�D���S����=˸2���Z���l4��6�3���ɩ���yq�h������X�u�g��nTs���ՙ�R�-���&]N�@��mw{��7��j�rǞ�C?}# W�]�9���f �� �T��qG5�L���\�������2hS�	�K�l.'�2�wR�b�X�=lω� �q����N/
هJw&��!�{lȧ>�/�M���sr7notQZ���'b��:���1]~d���� �x_H����D%��6��S�w�T%����qh��Aq���NMý����L.s��V��'�3Z��lX�p��b=����B䄐�=���f�đG2k��`?��zh?-ܧi9/
�e����	��)��,�?�I}��H:zk��(�..�4s{ hz���ߚm_����:��h�8J4�@���숲Ӳ.�SZԁ$����ң���X�������gV�
G��I�����@�ـ>茾���7@����}mkǥ3���7_�Xc��)'O�Ӹىp�Kj$�&U/��0�A�-8^V��2�g����/�֔� �f	3ԇ�PIX&�C��$M��T�+���4���l%v�tV;Z�|y��f{�O�!�	I��4
-�T�_/��d8�Z@aD|��ł�j�����=�MKB���c����2iܢF�1�ez��>N��;E�� �}y�_[��"c���d�{�8��E!�eY�<p���fB� �e=���Ղ�2I���^w�<�U�tW�>�����=��7��fK�J-0�Zn�c��Z��b�hTle�_���S�J��f��v�uW��f�U׺Z��� �7B*�*�}�=��IS��z�_���3V��1V��-�j-�$��������͙/B>�왴\����0�zf-=2>�w��J�'*�����r��|��T-�OU���_H4=��e��s1�]�-B�ty���ʛm��-$IwpUm�牿�:HQc�6��/�_��őh�1�J�i�v�W㾧Pӿp���"K�*�B�C�r�H�V3�9��-����n��}௥�iE�Eۡ�C�Eb9�>ka�|B_8�k��.L��>ms�Y�'���Б;e�o���-om�)w��V5O�I��1�'�2�J�5�Y��/�09��^�z��S:uA��xvu���)�ܒ����^E��$ǉ�v��ysw��8�~wUR�0�Q^����5�"��aL�%β.J�1�� �|�]�����*ŏW�Yw�'�нp(lP����S���ü^�U}=� \UW�*�&����B�}�䱪����؛�H�PM��m�O#�%W�=b�g���7	�G1f<U�p#�6�o��O$Uj��D�K�eV�)3�FX;�����!>�v�^���2�ob�V\Xe��pʳ3�\dU~�I���p!���u�S��.���;L~�H�5ɲ�ϛ��������s�            x������ � �         �  x�m��n�0�g�)�u9��Zd��t�hq2吒��ӗRzW�F��Ϗ��ix�\�Odk�S"���Ue���	0��v@��R1q�!O����ʥ�����1��b-LlP2І�z����΀Z8$�7e�5�d�"5�'����2�p$)<�pŽ+�jިcN)_���e1nloTCGua&W=e�8|��?z����֮A2���L��(��jcfRL�r����z__B��@�5�[Ӆ�k���������D��K��qo�-�MyRz(}��]:�{��i�<<+�%|�r�H����=��olB�\%��$m3w��oN�r�o�������a����fB�+�Կ-xi��_kb�>������_ۨ9��PZ�;ݞY��ã�3����k��Zs��q�?�5�         �  x��R�n�0=�_�h�$mb�h)ZÀ5C/�0kk��@����G9ؚ���<��=>���K
޵8���qg��0/�9lXu�(��~pd
�� ���e�2��	_��s��QL�8��;�ST�`��) 9��h;X
��\�C`J����ۉ����k�	��W���Ĥ�q<9)�)0�7�E��{&��j�C>1�������֮�&vhɵ������������;.��
�G���|c�j	��V�>u�+cK�W��S����?)��w��NJ���2����(� G#�F4�WcVˤ�f#���H��&�D��94X���%�K�Ϯ2�����N�6��i�o_�����qS���G�G��<��=�iŪ�&�~��Yr�rNyE�:���j��^<O��$�d-��1�cֽЛ�f�Dq�b}��~h(-%9�m�L���(�?��#�            x������ � �     
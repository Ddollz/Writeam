PGDMP         2                y         	   writeamdb    13.4    13.4 /    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    33489 	   writeamdb    DATABASE     k   CREATE DATABASE writeamdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_Philippines.1252';
    DROP DATABASE writeamdb;
                postgres    false            �          0    33490    accounts_accounts 
   TABLE DATA           �   COPY public.accounts_accounts (id, password, email, username, first_name, last_name, date_joined, last_login, is_admin, is_active, is_staff, is_superuser, profile_image, address, phone, is_email_verified) FROM stdin;
    public          postgres    false    200   �,       �          0    33508 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    206   /       �          0    33496    accounts_accounts_groups 
   TABLE DATA           M   COPY public.accounts_accounts_groups (id, accounts_id, group_id) FROM stdin;
    public          postgres    false    201   q/       �          0    33589    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    228   �/       �          0    33518    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    210   �0       �          0    33503 "   accounts_accounts_user_permissions 
   TABLE DATA           \   COPY public.accounts_accounts_user_permissions (id, accounts_id, permission_id) FROM stdin;
    public          postgres    false    204   �3       �          0    33794    adminApp_onboardingapplicant 
   TABLE DATA           �   COPY public."adminApp_onboardingapplicant" (id, "jobTitle", score, accounts_id, remarks, "dateScore", status, is_active) FROM stdin;
    public          postgres    false    234   �3       �          0    33513    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    208   �3       �          0    33523    clientApp_article 
   TABLE DATA           Q   COPY public."clientApp_article" (id, article, headline, accounts_id) FROM stdin;
    public          postgres    false    212   4       �          0    33555    clientApp_personaldetails 
   TABLE DATA           �   COPY public."clientApp_personaldetails" (id, profile_image, "jobTitle", fname, lname, email, phone, country, city, address, birthplace, birthdate, nationality, "profSummary", postalcode, accounts_id) FROM stdin;
    public          postgres    false    220   �4       �          0    33531    clientApp_education 
   TABLE DATA           s   COPY public."clientApp_education" (id, school, degree, start_date, end_date, city, personaldetails_id) FROM stdin;
    public          postgres    false    214   F6       �          0    33539    clientApp_employmenthistory 
   TABLE DATA           �   COPY public."clientApp_employmenthistory" (id, "JobTitle", start_date, end_date, employer, city, description, personaldetails_id) FROM stdin;
    public          postgres    false    216   �6       �          0    33817    clientApp_jobapplication 
   TABLE DATA           ;  COPY public."clientApp_jobapplication" (id, "dateSubmit", "submitApplication", accounts_id, is_copywriter, is_editor, is_translator, copywriter, editor, translator, is_validated, article, copywriterfinal, editorfinal, translatorfinal, remarks, progress, "jobAccepted", "dateAccepted", "validationDate") FROM stdin;
    public          postgres    false    236   �8       �          0    33547    clientApp_link 
   TABLE DATA           H   COPY public."clientApp_link" (id, link, personaldetails_id) FROM stdin;
    public          postgres    false    218   �:       �          0    33564    clientApp_reference 
   TABLE DATA           d   COPY public."clientApp_reference" (id, name, company, phone, email, personaldetails_id) FROM stdin;
    public          postgres    false    222   �:       �          0    33572    clientApp_skill 
   TABLE DATA           J   COPY public."clientApp_skill" (id, skill, personaldetails_id) FROM stdin;
    public          postgres    false    224   ;       �          0    33580    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    226   �;       �          0    33594    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    230   ??       �          0    33602    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    232   !F       �          0    50199    system_joblist 
   TABLE DATA           Y   COPY public.system_joblist (id, "job_Title", "job_Description", "is_onHire") FROM stdin;
    public          postgres    false    238   �K       �          0    50210    system_jobskill 
   TABLE DATA           I   COPY public.system_jobskill (id, skill_name, "job_Title_id") FROM stdin;
    public          postgres    false    240   kM       �          0    58416    system_manpower 
   TABLE DATA           �   COPY public.system_manpower (id, name, department, "requestDate", reason, "nosCandidate", requirements, "lastSubmitted", "currentCandidate", "is_Finished") FROM stdin;
    public          postgres    false    242   FO       �           0    0    accounts_accounts_groups_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.accounts_accounts_groups_id_seq', 108, true);
          public          postgres    false    202            �           0    0    accounts_accounts_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.accounts_accounts_id_seq', 93, true);
          public          postgres    false    203            �           0    0 )   accounts_accounts_user_permissions_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.accounts_accounts_user_permissions_id_seq', 1, false);
          public          postgres    false    205            �           0    0 #   adminApp_onboardingapplicant_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."adminApp_onboardingapplicant_id_seq"', 22, true);
          public          postgres    false    233            �           0    0    auth_group_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_group_id_seq', 6, true);
          public          postgres    false    207            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    209            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 76, true);
          public          postgres    false    211            �           0    0    clientApp_article_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."clientApp_article_id_seq"', 97, true);
          public          postgres    false    213            �           0    0    clientApp_education_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."clientApp_education_id_seq"', 27, true);
          public          postgres    false    215            �           0    0 "   clientApp_employmenthistory_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."clientApp_employmenthistory_id_seq"', 122, true);
          public          postgres    false    217            �           0    0    clientApp_jobapplication_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."clientApp_jobapplication_id_seq"', 70, true);
          public          postgres    false    235            �           0    0    clientApp_link_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."clientApp_link_id_seq"', 20, true);
          public          postgres    false    219            �           0    0     clientApp_personaldetails_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."clientApp_personaldetails_id_seq"', 77, true);
          public          postgres    false    221            �           0    0    clientApp_reference_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."clientApp_reference_id_seq"', 17, true);
          public          postgres    false    223            �           0    0    clientApp_skill_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."clientApp_skill_id_seq"', 78, true);
          public          postgres    false    225            �           0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 336, true);
          public          postgres    false    227            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 19, true);
          public          postgres    false    229            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 82, true);
          public          postgres    false    231            �           0    0    system_joblist_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.system_joblist_id_seq', 5, true);
          public          postgres    false    237            �           0    0    system_jobskill_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.system_jobskill_id_seq', 100, true);
          public          postgres    false    239                        0    0    system_manpower_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.system_manpower_id_seq', 6, true);
          public          postgres    false    241            �     x���[o�0 �g�+x�5�;v"!5PAz�;L�*�\��sk ��~�������cY�|���;/�/�[����<�Voa�c����-�{CE_��5��g3>FΐxQR��Xgt�w�⧭S,oGt�<FQ�U(��#�]����M��(��~ �p����#?O"�!F7м�zBq�0���6���������9���� �q:3��/ԃ���I #�E�+-�C @�0���"3��Fn?��C���|�J��䰴7+O��o<�Q�3����v�v�Ҙ���zsx�Pɚr�}�ٞ��U(��FCH7>K�f��15�tC�����Rw6=F.��ql���8F*O�������f�WN�px[ڏ��YYH9Q�鎎����N�T��$�-������OhdA^��&aW�T�L�3v.o�w�,��@sahB�~z�F�}Z��X��S�� \T�ת�J�*A�(��}�W��kοV�`8��H�l��Ň���>t���z'>��{��x&�&�-�-�5�9��
X��3�S����?T���h4~�      �   O   x�3�t��L�+)�2��R�M�KLO-�2q�K�ҸL8��*2KR��
L9C��sK��f��)��1z\\\ �t�      �   +   x�3��0�4�0�0�4�240�43,8-�9M�b���� t��      �   �   x�M�Kr!D��0�࿗�G6��g�BL���a�+v��n$�]�cQjY`��\'��$2#�>�XtΰsQ�6k]2Z���>�.��B�:K�OG�Z�'g��C]���2��h˘J�k 6���)�.�uY�v���\��%"�M��F��
�R�����X�&���ϿZ��ECHƐ3S��C����Ky�����V�5��!n��?�I
���~� �A
�1      �     x�u�ϒ�0���)x�N��;�u�K{�L�K�,]bS ���lɒ��-�?1�?��>i���5�-7v�_�"��?��_��#���7#��E`����*��E`�����'�}��&�Mf��28��^�6T��v����`A��gR�wd�%Z�f�����ߪ8q9</@
�� R�
���h�;�n�.__'��^��U�\'��J�wKxP|K�	�}�E�ńw�xaX���e�ψ]�#a��Xy"5��UD�h���=�d�W¥*ER�$0�dI`�#��`��^��}���Z�"�9��p��b�A/�0J�8ؗ���SU"p���" ��� ���8
X�)�8���Q��%���۰��:�i�Y�$�#��"�Z1I�*�'���a���^�{���eu��<��>����Df�+�kx[,�t\��Ǜ���4|1o)u��efc{����� ��X�=��>cY��mG	\^�q̊p���E�"��*0"s��1�H��)ez^�~�T�uKՈ�1r"s�������xB����1vyvkV��vT#r'Q|U�i�4�4F��I6�>FR��}rz����i�^ۭ$�Bt�T#��^5�r� ��� �=�e){��7|XLI�������"�s�ݓ�]Պ��@�i���A4���(��ҒFt�}I�e,Y�aC!9m��"a��.�A���g)/it�"�tF�q[���"E�,RO�0��D�DI������9�f�<�Ά����i>�A�*D��*��*X��x/��R���^      �      x������ � �      �      x������ � �      �      x������ � �      �   �   x�=�M�@�����e*uf98VC1E��@�+Y~aC���E��z9� 2<BȲ�;�����EC�X���l�J���퍥F%+���զ�r_yCY�XNy�O�5�����'�)�P�-u��*^M�vL*��B�wZ6+<��C�/*'1      �   x  x��RMKA=���� ]��vۛ�
���GA�6�:_�L��_ovՃXԃ0�I^�{�7�L��3�����Q��eCO<dep�z���Y�E=�m��ʲ�q��X6��A�UUM�bVԵ�B���z�e�.�[�9m��@Q]Dn֨n��d)��j�GM��b^M'ˉ��l8v��E��5���jc�F@H�����>S�j9�(�)�HY=x�}\;@��i��A*��ޡ}B(s�-�-�pK.C�)\A#��0��;i���AZ�1	�Fi�+�NAR;���Y8���Ϻ����F6�q�`�� �Eޅ�5��HY;v4����}"�qN��|�"�Ҋ� ��6���,����5'{���i{lU��N3[�=VH�x�~|�y�XE���
      �   B   x�32�,OLM�i���%��I�E
FF����r�Jss.#s�4��T�H��r���&\1z\\\ h�#      �   @  x��SA�1<'���h���Q �`%�����gƊ�6n;Cn|�G�	��K�� �^V�4ʸ\]U]���V8Q?��P��T`w��>���+���V��ǞV�����vu�[��1�@���e*�Ry�v��w}�T�z&-g.���;�?�!�O�+ȧ��O�� '�:�&�����yJ<�2Ы���O�*�1q���:}�]sոz*�'�#��r��:� %i�.c7*(����8fL���wߙU�}�ON�RW�WV�b��a�d7|�DŜ	:W|6�̇�Z�0����d�T������f|q2�Qt#�iYS4Y����J��$�1��^M�O����P0n�n�U�o���v�T>5.Tݍq}�7/L˰Ȍ�$�$�q�����2��&C�P Z"`5QlO��5*���{��v��^>ӷI{<�W���L�5c4Kt��&ۂ���������6u>^��;��7���mn������Y@?$;�7�KC�2.5)��l��)��ld�fV��'�d�V� �ƕ�J�k�j��1闠�<��8{�B�5aN�'��9����z��u�      �   �  x����n� ���)nW]D� cl����U)��͝	���<Ѽ}�3�i��*� �9|�%�rvM�k.�s%��h�1�TW�%�tU��HNj���Rҥ⤕��-0�QÌ! Z?�����G=� �te��gvp���������8`�$�h,n�&_ܴ��Ѹ)��7�~��w=���z蝵��L�,O�<N!5:�NXg�K%V���y�>������������L�3i�HO�:"�)a������ ���w�.��l␙}�',c��jL ���1�/g�Fp��C����us[·s���ti�ٸI��M�B~`��1E[%��a�u&�Iۤ�#x]iV��&j�GľO ����5���8�����7���J(AK�$5��a�?��eQ/���]      �   .   x�3��,OLMK,�47�2��L��#��r ;5��܄+F��� 1Y      �   4   x�34�LK,OM��@Fyj"� ��9�͹����8�܄+F��� 0��      �   �   x���;�0D��)|�'�P�Ht��Y�5�dbd�nO�@�4�{3�r�'�ܓL�#wWPJ�[�Y{���`k��Ñ�׷��[z�-ǷĮ��'�'K��!�;yِ�G+h�f����Q���!���5`"3T!T9����>�Tm�;:τ�F�      �   }  x��WM��F=k��S�&�3���i�h�ES��4���U��mQ��$'���mݛG �{�!i�>���t�"�_�ϼ͊�^g��~�X�뛪\���⺮Ve'?_/.�����Z<�?���ms]����+n�ś�d,�pʌ5ECJk�{f��h6翵��j󟊵 ��2��E�pz��{��Br#��~m�u�*��	`:��2���o��$$���=�%�-�gχ�=D#�MLDP�� �q �i�C�БޘC���*6�U�,�u�Λ���r����}��tS\�[�Q1��f���:x�`A=_.�Ͷ*������)���oc}���4`y)�4�������?�U]=�h8]SH4ɕ(����O�RM:jVD�p�[}�&L5�H����#j�㤄�z�ShЎ~7�f�m��{�l���z��kt�˗���g����N�7�栣�J������h�u�t3���QiR�=M��>�}�����WZ<�
�S��ӧ@>�^˒�h�Gݑ��4�}���θ�H�X��m������슮��۱�����z��|�V]wP{��'H22�)��~fF�91�����������+��^5�g�4�Ts?�d����ܗ?�H�B�2�Ϝ��k0�t���b��l�`SA�B19v��K��z����u�\\���>
l��9'N��S6�U$��=�=�Cқ�,{0�N�l��ź�dgŗ���n?Q�ACJ�}; x�?��Cj�d�!O�z}��"91�	�7G�Ÿ��2�<a��$���k�"�4-�B�[m�ce1q,�Ŷ���T	�P&�e�vU���A����M���n�S.���T��K��q�JH_�B�]]\\�h�s�      �   �  x���ݒ�6��7O��N<�_��=:�Ql�W�l���;}AR�EZnܛL�?��x;t�����׵ބP6�fl���w�ځ*Hd�F�4�	�b����.���'�:�OHVj�Q�V�Ə�-�o�� �U;�}y��s3Mw	,��ϲ�/'�W�$�$��h"���>WM�k����\S�/!��:�%&�Yj�h�a,���p^��IYM�@4��߷�_.#�R�+��!��g��a�@>��9Vc�eu<�u�w}y���:���2�� �ݬ̯J���6�`!����"�	g��t���5�e-@y�r}���w?�VR|R#'�"c�uJ�M�jN>�X����.�=lA�p��{<7�Π�Ϙ���du�_s�sF���6���;�����0�6~o�Sy����Y�JE�����*��D�kc(���w0���
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
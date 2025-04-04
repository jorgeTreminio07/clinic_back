PGDMP  !                    }         
   clinica_db    17.4    17.4 H    2           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            3           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            4           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            5           1262    18326 
   clinica_db    DATABASE     p   CREATE DATABASE clinica_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'es-ES';
    DROP DATABASE clinica_db;
                     postgres    false            �            1259    18327    __EFMigrationsHistory    TABLE     �   CREATE TABLE public."__EFMigrationsHistory" (
    "MigrationId" character varying(150) NOT NULL,
    "ProductVersion" character varying(32) NOT NULL
);
 +   DROP TABLE public."__EFMigrationsHistory";
       public         heap r       postgres    false            �            1259    18330    backup    TABLE     �   CREATE TABLE public.backup (
    "Id" uuid NOT NULL,
    "Name" text NOT NULL,
    "Url" text NOT NULL,
    "CreatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.backup;
       public         heap r       postgres    false            �            1259    18335    civil_status    TABLE     W   CREATE TABLE public.civil_status (
    "Id" uuid NOT NULL,
    "Name" text NOT NULL
);
     DROP TABLE public.civil_status;
       public         heap r       postgres    false            �            1259    18340    consult    TABLE     �  CREATE TABLE public.consult (
    "Id" uuid NOT NULL,
    "PatientId" uuid NOT NULL,
    "Motive" text NOT NULL,
    "Clinicalhistory" text,
    "BilogicalEvaluation" text,
    "PsychologicalEvaluation" text,
    "SocialEvaluation" text,
    "FunctionalEvaluation" text,
    "Weight" numeric NOT NULL,
    "Size" numeric NOT NULL,
    "Pulse" numeric,
    "OxygenSaturation" numeric,
    "SystolicPressure" numeric,
    "DiastolicPressure" numeric,
    "AntecedentPersonal" text NOT NULL,
    "AntecedentFamily" text,
    "ExamComplementaryId" uuid,
    "Diagnosis" text NOT NULL,
    "ImageExamId" uuid,
    "Recipe" text NOT NULL,
    "Nextappointment" timestamp with time zone NOT NULL,
    "IsDeleted" boolean NOT NULL,
    "DeletedBy" text,
    "DeletedAt" timestamp with time zone,
    "CreatedAt" timestamp with time zone NOT NULL,
    "CreatedBy" text NOT NULL,
    "UpdatedAt" timestamp with time zone,
    "UpdatedBy" text,
    "CreatedByGuid" uuid
);
    DROP TABLE public.consult;
       public         heap r       postgres    false            �            1259    18675 
   dataClinic    TABLE     �   CREATE TABLE public."dataClinic" (
    logo text,
    name text,
    codigo text NOT NULL,
    address text,
    phone text,
    horary text
);
     DROP TABLE public."dataClinic";
       public         heap r       postgres    false            �            1259    18345    exam    TABLE     �  CREATE TABLE public.exam (
    "Id" uuid NOT NULL,
    "Name" text NOT NULL,
    "GroupId" uuid NOT NULL,
    "CreatedAt" timestamp with time zone DEFAULT '-infinity'::timestamp with time zone NOT NULL,
    "CreatedBy" text DEFAULT ''::text NOT NULL,
    "DeletedAt" timestamp with time zone,
    "DeletedBy" text,
    "IsDeleted" boolean DEFAULT false NOT NULL,
    "UpdatedAt" timestamp with time zone,
    "UpdatedBy" text
);
    DROP TABLE public.exam;
       public         heap r       postgres    false            �            1259    18353    group    TABLE     R   CREATE TABLE public."group" (
    "Id" uuid NOT NULL,
    "Name" text NOT NULL
);
    DROP TABLE public."group";
       public         heap r       postgres    false            �            1259    18358    image    TABLE     w   CREATE TABLE public.image (
    "Id" uuid NOT NULL,
    "OriginalUrl" text NOT NULL,
    "CompactUrl" text NOT NULL
);
    DROP TABLE public.image;
       public         heap r       postgres    false            �            1259    18363    page    TABLE     N   CREATE TABLE public.page (
    "Id" uuid NOT NULL,
    "Url" text NOT NULL
);
    DROP TABLE public.page;
       public         heap r       postgres    false            �            1259    18368    page_permit    TABLE     v   CREATE TABLE public.page_permit (
    "Id" uuid NOT NULL,
    "PageId" uuid NOT NULL,
    "SubRolId" uuid NOT NULL
);
    DROP TABLE public.page_permit;
       public         heap r       postgres    false            �            1259    18371    patient    TABLE     �  CREATE TABLE public.patient (
    "Id" uuid NOT NULL,
    "Name" text NOT NULL,
    "Identification" text,
    "Phone" text,
    "Address" text,
    "Age" integer,
    "ContactPerson" text,
    "ContactPhone" text,
    "Birthday" timestamp with time zone,
    "TypeSex" uuid,
    "CivilStatusId" uuid,
    "AvatarId" uuid NOT NULL,
    "RolId" uuid NOT NULL,
    "IsDeleted" boolean NOT NULL,
    "DeletedBy" text,
    "DeletedAt" timestamp with time zone,
    "CreatedAt" timestamp with time zone NOT NULL,
    "CreatedBy" text NOT NULL,
    "UpdatedAt" timestamp with time zone,
    "UpdatedBy" text,
    "ConsultCount" integer DEFAULT 0 NOT NULL
);
    DROP TABLE public.patient;
       public         heap r       postgres    false            �            1259    18377    rol    TABLE     L   CREATE TABLE public.rol (
    "Id" uuid NOT NULL,
    name text NOT NULL
);
    DROP TABLE public.rol;
       public         heap r       postgres    false            �            1259    18382    sub_rol    TABLE     k   CREATE TABLE public.sub_rol (
    "Id" uuid NOT NULL,
    name text NOT NULL,
    "RolId" uuid NOT NULL
);
    DROP TABLE public.sub_rol;
       public         heap r       postgres    false            �            1259    18387    user    TABLE       CREATE TABLE public."user" (
    "Id" uuid NOT NULL,
    "Name" text NOT NULL,
    "Email" text DEFAULT ''::text NOT NULL,
    "Password" text DEFAULT ''::text NOT NULL,
    "AvatarId" uuid DEFAULT '03f1c228-f9fc-40a2-8a88-45d786148fe0'::uuid NOT NULL,
    "SubRolId" uuid NOT NULL,
    "IsDeleted" boolean NOT NULL,
    "DeletedBy" text,
    "DeletedAt" timestamp with time zone,
    "CreatedAt" timestamp with time zone NOT NULL,
    "CreatedBy" text NOT NULL,
    "UpdatedAt" timestamp with time zone,
    "UpdatedBy" text
);
    DROP TABLE public."user";
       public         heap r       postgres    false            "          0    18327    __EFMigrationsHistory 
   TABLE DATA           R   COPY public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") FROM stdin;
    public               postgres    false    217   ^       #          0    18330    backup 
   TABLE DATA           B   COPY public.backup ("Id", "Name", "Url", "CreatedAt") FROM stdin;
    public               postgres    false    218   >_       $          0    18335    civil_status 
   TABLE DATA           4   COPY public.civil_status ("Id", "Name") FROM stdin;
    public               postgres    false    219   `       %          0    18340    consult 
   TABLE DATA           �  COPY public.consult ("Id", "PatientId", "Motive", "Clinicalhistory", "BilogicalEvaluation", "PsychologicalEvaluation", "SocialEvaluation", "FunctionalEvaluation", "Weight", "Size", "Pulse", "OxygenSaturation", "SystolicPressure", "DiastolicPressure", "AntecedentPersonal", "AntecedentFamily", "ExamComplementaryId", "Diagnosis", "ImageExamId", "Recipe", "Nextappointment", "IsDeleted", "DeletedBy", "DeletedAt", "CreatedAt", "CreatedBy", "UpdatedAt", "UpdatedBy", "CreatedByGuid") FROM stdin;
    public               postgres    false    220   �`       /          0    18675 
   dataClinic 
   TABLE DATA           R   COPY public."dataClinic" (logo, name, codigo, address, phone, horary) FROM stdin;
    public               postgres    false    230   \�       &          0    18345    exam 
   TABLE DATA           �   COPY public.exam ("Id", "Name", "GroupId", "CreatedAt", "CreatedBy", "DeletedAt", "DeletedBy", "IsDeleted", "UpdatedAt", "UpdatedBy") FROM stdin;
    public               postgres    false    221   ˏ       '          0    18353    group 
   TABLE DATA           /   COPY public."group" ("Id", "Name") FROM stdin;
    public               postgres    false    222   ��       (          0    18358    image 
   TABLE DATA           B   COPY public.image ("Id", "OriginalUrl", "CompactUrl") FROM stdin;
    public               postgres    false    223   ��       )          0    18363    page 
   TABLE DATA           +   COPY public.page ("Id", "Url") FROM stdin;
    public               postgres    false    224   ~�       *          0    18368    page_permit 
   TABLE DATA           A   COPY public.page_permit ("Id", "PageId", "SubRolId") FROM stdin;
    public               postgres    false    225   ��       +          0    18371    patient 
   TABLE DATA           %  COPY public.patient ("Id", "Name", "Identification", "Phone", "Address", "Age", "ContactPerson", "ContactPhone", "Birthday", "TypeSex", "CivilStatusId", "AvatarId", "RolId", "IsDeleted", "DeletedBy", "DeletedAt", "CreatedAt", "CreatedBy", "UpdatedAt", "UpdatedBy", "ConsultCount") FROM stdin;
    public               postgres    false    226   .�       ,          0    18377    rol 
   TABLE DATA           )   COPY public.rol ("Id", name) FROM stdin;
    public               postgres    false    227   ��       -          0    18382    sub_rol 
   TABLE DATA           6   COPY public.sub_rol ("Id", name, "RolId") FROM stdin;
    public               postgres    false    228   n�       .          0    18387    user 
   TABLE DATA           �   COPY public."user" ("Id", "Name", "Email", "Password", "AvatarId", "SubRolId", "IsDeleted", "DeletedBy", "DeletedAt", "CreatedAt", "CreatedBy", "UpdatedAt", "UpdatedBy") FROM stdin;
    public               postgres    false    229   =�       \           2606    18396 .   __EFMigrationsHistory PK___EFMigrationsHistory 
   CONSTRAINT     {   ALTER TABLE ONLY public."__EFMigrationsHistory"
    ADD CONSTRAINT "PK___EFMigrationsHistory" PRIMARY KEY ("MigrationId");
 \   ALTER TABLE ONLY public."__EFMigrationsHistory" DROP CONSTRAINT "PK___EFMigrationsHistory";
       public                 postgres    false    217            ^           2606    18398    backup PK_backup 
   CONSTRAINT     R   ALTER TABLE ONLY public.backup
    ADD CONSTRAINT "PK_backup" PRIMARY KEY ("Id");
 <   ALTER TABLE ONLY public.backup DROP CONSTRAINT "PK_backup";
       public                 postgres    false    218            `           2606    18400    civil_status PK_civil_status 
   CONSTRAINT     ^   ALTER TABLE ONLY public.civil_status
    ADD CONSTRAINT "PK_civil_status" PRIMARY KEY ("Id");
 H   ALTER TABLE ONLY public.civil_status DROP CONSTRAINT "PK_civil_status";
       public                 postgres    false    219            f           2606    18402    consult PK_consult 
   CONSTRAINT     T   ALTER TABLE ONLY public.consult
    ADD CONSTRAINT "PK_consult" PRIMARY KEY ("Id");
 >   ALTER TABLE ONLY public.consult DROP CONSTRAINT "PK_consult";
       public                 postgres    false    220            i           2606    18404    exam PK_exam 
   CONSTRAINT     N   ALTER TABLE ONLY public.exam
    ADD CONSTRAINT "PK_exam" PRIMARY KEY ("Id");
 8   ALTER TABLE ONLY public.exam DROP CONSTRAINT "PK_exam";
       public                 postgres    false    221            k           2606    18406    group PK_group 
   CONSTRAINT     R   ALTER TABLE ONLY public."group"
    ADD CONSTRAINT "PK_group" PRIMARY KEY ("Id");
 <   ALTER TABLE ONLY public."group" DROP CONSTRAINT "PK_group";
       public                 postgres    false    222            m           2606    18408    image PK_image 
   CONSTRAINT     P   ALTER TABLE ONLY public.image
    ADD CONSTRAINT "PK_image" PRIMARY KEY ("Id");
 :   ALTER TABLE ONLY public.image DROP CONSTRAINT "PK_image";
       public                 postgres    false    223            o           2606    18410    page PK_page 
   CONSTRAINT     N   ALTER TABLE ONLY public.page
    ADD CONSTRAINT "PK_page" PRIMARY KEY ("Id");
 8   ALTER TABLE ONLY public.page DROP CONSTRAINT "PK_page";
       public                 postgres    false    224            s           2606    18412    page_permit PK_page_permit 
   CONSTRAINT     \   ALTER TABLE ONLY public.page_permit
    ADD CONSTRAINT "PK_page_permit" PRIMARY KEY ("Id");
 F   ALTER TABLE ONLY public.page_permit DROP CONSTRAINT "PK_page_permit";
       public                 postgres    false    225            x           2606    18414    patient PK_patient 
   CONSTRAINT     T   ALTER TABLE ONLY public.patient
    ADD CONSTRAINT "PK_patient" PRIMARY KEY ("Id");
 >   ALTER TABLE ONLY public.patient DROP CONSTRAINT "PK_patient";
       public                 postgres    false    226            z           2606    18416 
   rol PK_rol 
   CONSTRAINT     L   ALTER TABLE ONLY public.rol
    ADD CONSTRAINT "PK_rol" PRIMARY KEY ("Id");
 6   ALTER TABLE ONLY public.rol DROP CONSTRAINT "PK_rol";
       public                 postgres    false    227            }           2606    18418    sub_rol PK_sub_rol 
   CONSTRAINT     T   ALTER TABLE ONLY public.sub_rol
    ADD CONSTRAINT "PK_sub_rol" PRIMARY KEY ("Id");
 >   ALTER TABLE ONLY public.sub_rol DROP CONSTRAINT "PK_sub_rol";
       public                 postgres    false    228            �           2606    18420    user PK_user 
   CONSTRAINT     P   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT "PK_user" PRIMARY KEY ("Id");
 :   ALTER TABLE ONLY public."user" DROP CONSTRAINT "PK_user";
       public                 postgres    false    229            �           2606    18681    dataClinic dataClinic_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."dataClinic"
    ADD CONSTRAINT "dataClinic_pkey" PRIMARY KEY (codigo);
 H   ALTER TABLE ONLY public."dataClinic" DROP CONSTRAINT "dataClinic_pkey";
       public                 postgres    false    230            a           1259    18421    IX_consult_CreatedByGuid    INDEX     Y   CREATE INDEX "IX_consult_CreatedByGuid" ON public.consult USING btree ("CreatedByGuid");
 .   DROP INDEX public."IX_consult_CreatedByGuid";
       public                 postgres    false    220            b           1259    18422    IX_consult_ExamComplementaryId    INDEX     e   CREATE INDEX "IX_consult_ExamComplementaryId" ON public.consult USING btree ("ExamComplementaryId");
 4   DROP INDEX public."IX_consult_ExamComplementaryId";
       public                 postgres    false    220            c           1259    18423    IX_consult_ImageExamId    INDEX     U   CREATE INDEX "IX_consult_ImageExamId" ON public.consult USING btree ("ImageExamId");
 ,   DROP INDEX public."IX_consult_ImageExamId";
       public                 postgres    false    220            d           1259    18424    IX_consult_PatientId    INDEX     Q   CREATE INDEX "IX_consult_PatientId" ON public.consult USING btree ("PatientId");
 *   DROP INDEX public."IX_consult_PatientId";
       public                 postgres    false    220            g           1259    18425    IX_exam_GroupId    INDEX     G   CREATE INDEX "IX_exam_GroupId" ON public.exam USING btree ("GroupId");
 %   DROP INDEX public."IX_exam_GroupId";
       public                 postgres    false    221            p           1259    18426    IX_page_permit_PageId    INDEX     S   CREATE INDEX "IX_page_permit_PageId" ON public.page_permit USING btree ("PageId");
 +   DROP INDEX public."IX_page_permit_PageId";
       public                 postgres    false    225            q           1259    18427    IX_page_permit_SubRolId    INDEX     W   CREATE INDEX "IX_page_permit_SubRolId" ON public.page_permit USING btree ("SubRolId");
 -   DROP INDEX public."IX_page_permit_SubRolId";
       public                 postgres    false    225            t           1259    18428    IX_patient_AvatarId    INDEX     O   CREATE INDEX "IX_patient_AvatarId" ON public.patient USING btree ("AvatarId");
 )   DROP INDEX public."IX_patient_AvatarId";
       public                 postgres    false    226            u           1259    18429    IX_patient_CivilStatusId    INDEX     Y   CREATE INDEX "IX_patient_CivilStatusId" ON public.patient USING btree ("CivilStatusId");
 .   DROP INDEX public."IX_patient_CivilStatusId";
       public                 postgres    false    226            v           1259    18430    IX_patient_RolId    INDEX     I   CREATE INDEX "IX_patient_RolId" ON public.patient USING btree ("RolId");
 &   DROP INDEX public."IX_patient_RolId";
       public                 postgres    false    226            {           1259    18431    IX_sub_rol_RolId    INDEX     I   CREATE INDEX "IX_sub_rol_RolId" ON public.sub_rol USING btree ("RolId");
 &   DROP INDEX public."IX_sub_rol_RolId";
       public                 postgres    false    228            ~           1259    18432    IX_user_AvatarId    INDEX     K   CREATE INDEX "IX_user_AvatarId" ON public."user" USING btree ("AvatarId");
 &   DROP INDEX public."IX_user_AvatarId";
       public                 postgres    false    229                       1259    18433    IX_user_SubRolId    INDEX     K   CREATE INDEX "IX_user_SubRolId" ON public."user" USING btree ("SubRolId");
 &   DROP INDEX public."IX_user_SubRolId";
       public                 postgres    false    229            �           2606    18434 +   consult FK_consult_exam_ExamComplementaryId    FK CONSTRAINT     �   ALTER TABLE ONLY public.consult
    ADD CONSTRAINT "FK_consult_exam_ExamComplementaryId" FOREIGN KEY ("ExamComplementaryId") REFERENCES public.exam("Id");
 W   ALTER TABLE ONLY public.consult DROP CONSTRAINT "FK_consult_exam_ExamComplementaryId";
       public               postgres    false    220    221    4713            �           2606    18439 $   consult FK_consult_image_ImageExamId    FK CONSTRAINT     �   ALTER TABLE ONLY public.consult
    ADD CONSTRAINT "FK_consult_image_ImageExamId" FOREIGN KEY ("ImageExamId") REFERENCES public.image("Id");
 P   ALTER TABLE ONLY public.consult DROP CONSTRAINT "FK_consult_image_ImageExamId";
       public               postgres    false    223    220    4717            �           2606    18444 $   consult FK_consult_patient_PatientId    FK CONSTRAINT     �   ALTER TABLE ONLY public.consult
    ADD CONSTRAINT "FK_consult_patient_PatientId" FOREIGN KEY ("PatientId") REFERENCES public.patient("Id") ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.consult DROP CONSTRAINT "FK_consult_patient_PatientId";
       public               postgres    false    220    226    4728            �           2606    18449 %   consult FK_consult_user_CreatedByGuid    FK CONSTRAINT     �   ALTER TABLE ONLY public.consult
    ADD CONSTRAINT "FK_consult_user_CreatedByGuid" FOREIGN KEY ("CreatedByGuid") REFERENCES public."user"("Id");
 Q   ALTER TABLE ONLY public.consult DROP CONSTRAINT "FK_consult_user_CreatedByGuid";
       public               postgres    false    229    4737    220            �           2606    18454    exam FK_exam_group_GroupId    FK CONSTRAINT     �   ALTER TABLE ONLY public.exam
    ADD CONSTRAINT "FK_exam_group_GroupId" FOREIGN KEY ("GroupId") REFERENCES public."group"("Id") ON DELETE CASCADE;
 F   ALTER TABLE ONLY public.exam DROP CONSTRAINT "FK_exam_group_GroupId";
       public               postgres    false    222    221    4715            �           2606    18459 &   page_permit FK_page_permit_page_PageId    FK CONSTRAINT     �   ALTER TABLE ONLY public.page_permit
    ADD CONSTRAINT "FK_page_permit_page_PageId" FOREIGN KEY ("PageId") REFERENCES public.page("Id") ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.page_permit DROP CONSTRAINT "FK_page_permit_page_PageId";
       public               postgres    false    4719    225    224            �           2606    18464 +   page_permit FK_page_permit_sub_rol_SubRolId    FK CONSTRAINT     �   ALTER TABLE ONLY public.page_permit
    ADD CONSTRAINT "FK_page_permit_sub_rol_SubRolId" FOREIGN KEY ("SubRolId") REFERENCES public.sub_rol("Id") ON DELETE CASCADE;
 W   ALTER TABLE ONLY public.page_permit DROP CONSTRAINT "FK_page_permit_sub_rol_SubRolId";
       public               postgres    false    228    225    4733            �           2606    18469 -   patient FK_patient_civil_status_CivilStatusId    FK CONSTRAINT     �   ALTER TABLE ONLY public.patient
    ADD CONSTRAINT "FK_patient_civil_status_CivilStatusId" FOREIGN KEY ("CivilStatusId") REFERENCES public.civil_status("Id");
 Y   ALTER TABLE ONLY public.patient DROP CONSTRAINT "FK_patient_civil_status_CivilStatusId";
       public               postgres    false    219    226    4704            �           2606    18474 !   patient FK_patient_image_AvatarId    FK CONSTRAINT     �   ALTER TABLE ONLY public.patient
    ADD CONSTRAINT "FK_patient_image_AvatarId" FOREIGN KEY ("AvatarId") REFERENCES public.image("Id") ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.patient DROP CONSTRAINT "FK_patient_image_AvatarId";
       public               postgres    false    223    4717    226            �           2606    18479    patient FK_patient_rol_RolId    FK CONSTRAINT     �   ALTER TABLE ONLY public.patient
    ADD CONSTRAINT "FK_patient_rol_RolId" FOREIGN KEY ("RolId") REFERENCES public.rol("Id") ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.patient DROP CONSTRAINT "FK_patient_rol_RolId";
       public               postgres    false    4730    227    226            �           2606    18484    sub_rol FK_sub_rol_rol_RolId    FK CONSTRAINT     �   ALTER TABLE ONLY public.sub_rol
    ADD CONSTRAINT "FK_sub_rol_rol_RolId" FOREIGN KEY ("RolId") REFERENCES public.rol("Id") ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.sub_rol DROP CONSTRAINT "FK_sub_rol_rol_RolId";
       public               postgres    false    227    228    4730            �           2606    18489    user FK_user_image_AvatarId    FK CONSTRAINT     �   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT "FK_user_image_AvatarId" FOREIGN KEY ("AvatarId") REFERENCES public.image("Id") ON DELETE RESTRICT;
 I   ALTER TABLE ONLY public."user" DROP CONSTRAINT "FK_user_image_AvatarId";
       public               postgres    false    223    4717    229            �           2606    18494    user FK_user_sub_rol_SubRolId    FK CONSTRAINT     �   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT "FK_user_sub_rol_SubRolId" FOREIGN KEY ("SubRolId") REFERENCES public.sub_rol("Id") ON DELETE CASCADE;
 K   ALTER TABLE ONLY public."user" DROP CONSTRAINT "FK_user_sub_rol_SubRolId";
       public               postgres    false    4733    229    228            "     x�m�[k1���?F2�d/�u�>Y�J�
!b�@�H.����k���<L�|̜3	2��ᵲ�MV�����_�[��(Θ���ф�q�۳u1�c�v&n�1~��{��=Ptj^c��9��Iz����O%԰��}�@�̘��lI��[����M� ֈN�~��(L�RG����5S�ǘ]*I#� !yb�5-/3��\2&���`t2ˢ!c5�%�����D.$����wsk�%ҎW�����t�4�>�p�) N�D}�;����_���~�ў�      #   �   x��Kn�0 �u8EW��fl#E�H7��!&��
�����}TZ�&x�^*�D�d$e�V�η��nO�]x�D�je�I���w��>K�y��y�i�wm�<�=��b=Ǳ�ׄkvȬ���$8k��K����,����c�&���}n啮��ǂ��O�J%�)�a����򐷿!�P(; �mG� ���m��peI�      $   �   x�%�9
1 �ݿ(Y[�e����H���\�����p���0g*1�v��M=b��޵o{��`s�
\�$��	*�bkZ���tڮ��}sm�S�5��"�x��-y���t\_�����P(qI��+P��q�j�D$/�y}���n��7�4�      %      x��}K�#�u����*��~0��Z�`iz��=m�3��L2E2K�Z�������=�1���E���4߹A2I&�*��r[cgfe1�A�����s�=7+\.��<�^I�{'��M�1	'�gb�DɆ���*N
�w%�^Ϫ�I�'���J�m&���я��;<�:�~���ÿ�A�1|O�g����%c�陙l&%��"�}xZU#{�m�MU"1U<�i5��`/�x)��1�����<�_*1UB(���� sS�=Wv�-Ɯ��yT5�^Ơ{�y�]���ńઍ��I�\��}r����cx*����(m'7��>��ɨԌ���[|���~L�G���~)�K��\r��ј�Y����L��R���G�5��α�,�^�l��B�5�Z3K5�:qL#R�J'�S'��M)�}�����ͩP����#����Aު��$I��^r�R���̲#��g�K�I����t�@�
�JL�ބ�z�U�d�O!@j�i��$j�X(�/���T��#��0kQ"�pF�Z��ᑛ�$�����i�zek�����R��J�d;����%䌱V��������y8q/3q2[;9vFR���;�H�5�L�3���:������p�1��gQp��Z�8n@��k��~�^�~=8����+��;a>��+�L6
B��3<*��8?	jXƇ2<	Y{�3��k�_c�*"����<�>�O����i�O��r/��:��3�B(�W+�V}��

���x�Qg�8�ԑ!�4�Ѓ���RA��͈�5N�O"��1��y��)\Y�K���'����������_m~������>��f��(���W�����Գ%�	<�"�R����"��wr�����C��1�6��ynX�2w�p��	_ژ|��x�E��@1|�vr|%u�ล`�L�$ �y�La���μF���'��(� ��r�Q�j����*3AH><2��|��������V7=���[q�3���Y!�x?>�B�S/���Tx��x�%��Y�O}1.�./����8n��F�q��FʆG[8���CU��sP�hz��ex�YU��2��T����Hq�Ʈc��p/S���R�r8h���0Sa��ϰހ��ASNv\wЀͬ65��3�w��2f�+>������6w��pSr~�i������1�ۑYȔ�+@\30�.G�l�.M z�9��sa���jH^p��[u/�k��yU����b�6jh}��'�{D[��5����y�Zh��\ݸ����������.޾�=�O���E�F�c��Z��d8<��2@R}���@��l*43��0.����P%�~(���}�=�W�\�y�ٛR��v����9�����F�[p�^%Pr'^�/%@V��G�CS�=�~ܨ!x�J~u�%y�0d��������-�=@W��M�pŅv����HsYx�($��9l�,�W��ț7G�{���
.�5�f��z���z��ܺOu���/��Ŗ�W�C�! ��q��uȅ�����S�����
�L��5�zF����[g�'!U�4F��z/ O�*"hլ!3j<�(>N?8��j�����#+C�ip�=�\SA �6�Ҵ��v*�S����,�DYo���3� mlT��J����bU�M��=�Ӝ��E�}�D��p��A�����QJ,kJdZ�A���p�M�֌�{�M�%�������x ��U�8{�&)�|6M��?)'ڥa4�p�.E;�j����(��H���z"������f[������2N�۩���ͬ�N�O���J.��z{$�������1?�k��N���>� ���b.Hь�*;/��$�f{J�m�}9Y�2+c��bl��-��6ܕ��i<���1*��ۇo�[��GEnl�r���)������{+/��0J�Bj��� =U��#����%��ErN�6�]2>��k����<M�+h�&<:bw��	�ͮ�R3(���v/lM�6�õ'0t����E��>�`�2e悎�)�[�cFz����� �Q���#Y/���,-�$��{�T������Pv���Y~me/��JM�2��'h��HU*��fUI�K'ɜ��X����s�"�e�����t'�㬲�q�5��3K��e|,�5�&�$5B���=!:V�6���
C�� �Ki3upK��玕�<���]��sS�N�R:��J8<��2�\:�t��
T֡)HH�{3�0�H����z����s������l�k�,��E6;X�[����X�,���r�y�dM�����K�Ƴ�q�&p�m k�i�`���
�@;<'��H|�t�{+����&[w�x�'B 4��7^'e�Hm����\(#5����Ȍ�61[�! oS'Я��Ma�x��4F�������E}/�H"��
�{�\9݂�+�5�D�C������S�.6Cd��:�qr�c|����S�m�r�x��qF��N>��%I���^pl"�j��b\�Z(-�%|���+���+�T��q"�7���)��[G��c��W�CA�ly��%��O�JyP���E�z|�E��'�j8 z*C��6��o��8�~����Ws������d l�^uH�SJ�N�p<4�j����g�PY�A���怇e�h���� j�&�y��9�6��b��HVQ: �,�U�:�s�>𼻐E^0)HS��1{�ϸb �K�����y���l��Q����ϙ�D)dN��6Y9
���и�h�c2�@����fS�W�(,hX�V� 9��'� ۢ� BT� �� ����ȨV`<�Ԓ�����	��e|�a�vKk�}��$ƙ�띈�O����B���ֱ��?UQ�̠A3󀮌_�Y��P�aT/���F�B3#��G�
'�
d��20�Q%��!v�
�P�����/e'���0��/H��^�O�]���S1h���2������X�2����\ ��e�	�L���]��6��/�'�o.5 &e�D?D�'���}Ѳ���*�IÓ�s��h
E��+뷅���Ӛ��¸`���^�"��YQ{*�OV	�bY9��ז
q�8�����a!�7�`�qK9Ͷ G�C3�/�ԝ��|��L����2VQ�B�:.�~��3H�D�w�-䒌���&���7�$iC�ر�O���;��u�܄`���o�7KJ��5���R��t��++-K�I�D�UDh��m�=/�dU�NB7�G��0n�z?���,5�2s��K��kwP��g7���^3qq�t_ke�Z�8�/ �����O�U�E����%�y�Y)),p�������8!/y�����f��`uT��8/�O!�F�����z����Q��J��P^���W��a�alh�V�;n���n\8��$V��̌���b�83[���J�Ѕ��������K蠉�B�M �J��f�*�BA���+U�0�*�q��0�G����V^0iz	�p> ��^f����8��)f��si��Yl'u�u��������]�*$�b
o��E� nT�ծ�������������Xq:@��*�[%��w�m]�
b4 d�L���Y���5����x�ư�$�.X�cG�>b���9�zE���v/������$�X�ELq�����,�${�,V���a�̏f���Inr�X����O]�F?�\M�Pʜ�m � ˁ�\P�r��Spr���+��b�Z�}-!	?�d�1�����������O!t;��P>:��uS����F���@�1��� �����tC��#�4�.x�ǽ�8
�ש{|j�C�	!�Tc�g,3�@� ��
8��(�L�~<\h��j1��x�`�^�[f��C�k,��4��J��jn�7�LA3ԧY[)a�J��H�5�O@G�@a��
?�2�m	7a�x*�3Y��̓<�#G�W�h-c�57�:��j^*H])Ϟ��d��$-Uc��    <����q�X�dz/rm� �t�#���������?�����М[�9L��
����W_�z�8v�*c'�L�
�Q�n*0�3���x!�Zi ��]�IW�T����H�#������gcS���8�������&���̇co��,��@���ӝ��k&W��ӊ~
�2�8d/������-���L����Z� 0ei9��#j��\J���w�i�~ʧ�F�Gle3�F�}�@�R�6$ʁ&=��KR�і�^�*5��`/�@z�BA�I�y�d-��q�|J�� ��~Sw���k}�S8W���=�8�E=��W�dR�k�v�����KZI,���B#za1��b��g�K�h]�W��=wx���jՄ��E`7+��O)��8X�B�}�Ò4A�\x��W��jP��Z�.�ø�`J'L/��
;Yz�.Z�������q%�7e���B��l6����:+�w���=��������7CI����)0�����Dζ���׵c+T^j^y_���ڠPh����V��8A�_�V����S)s�U���w3
�T�@	 �=�2e�*MN
��j�`t�^�m3�'q��^jg��V�t�o�MI�T�~��	�@��RO�B�/��25�%^a�F�-�]v��y��|:8�kgJw_V��"��W�wG��C*S]a0��h-ϱc�f*<�ʥ~lA�ɍ0��p�O�,s_ z%l�z�>np����xQ-�0���a�0U�ww��<��� Z��� A~LY��� !�HG���bx���윏�|���>�nGy�P��|d����O�+v�r��0&���ku��^	w������,��.��n��+�|��{V4���)P�j��?�j�|{�6O�Xnew�����m���={��Ӭ\���Ǳ��G4��_*�R8B]4�)�t�Y�Qݺ����w��?|
��i0}Gń�����`���j���%�,G����@�-.��{�~��+xgY�}Z����G��뮧�#Q��D[��F9�R��E<�(o���M�$ɸ�oS��Q!4S�Ӹ$�`a��C�z*�@a,�n\�.p��a�ϗ�媣Ŧ�nD�ZN�p�*w��~�p����z���]ټ��r�.iS6�.���l�f�\<Ó�j�tl�O���H��������.ޕsqKU ���Ϛ��@rq�#��!��
E��s}��1�iW�>��0j����X߫�}�*5L�ZT���3�/x���}1��
�����]C.R'&?�wo�|�J�f9�/�]X���ҭ��m��_��ϻp�~v�ZN����� `�5������%����<<w's������I��D�@+8p/F{�5�D��Q���A1�h�^*u���Q���5�I�,�nO�|'�.te���[�nS��q�l�fy���a��C����nMcp�]��~��߃S�.�05D��x����/��p�Q��ʶ]$9gP���(�^{�)J9C�s�JH�f���6�^�ht�5�I�N,̨^&�*�A$��AF��΀��?,ݪ,�*wq���V�~�ɳ<lJ��'�ê�e�~Xw�ҥ��ƅ������?�E���_?�.��K�`6���c��;y-���a|���齐|��x:�i�Vt1m���K�����D���ܦ4���L���S��;w�V��ט�s���/Y	0IG��Ui�k^��B�S��r&g�����>�r�׻F���>���V}M�c����'�!� Ɓ��627�Ѫ��f������>���T��M�괃�m��b�>�7�����L��̷�J��xu��S�#���^�A�=���U!����#ץT2���(���A�nIk�Z�n��'ޜ4O�)���(I��L�Gr�����;ouorvV &ʩT��,�
pz�����hfr�d�j'O���+|O���_m����
��m��w��e=8l��{�;fߓ�r�%C�V��O���fT=�8�`и���1K���(�U��}���)�1%;����6�Fk���:%BU1�����ܙne�(W����C�]w��0���gt���s2ls����E�v���Ex�ݿ����	3rbw����xc0�1w�7��4��ds�4��I��J��V�\P25
_�B~.�^��;1���\���9e�&0�)�d���<�+Uc�K�}Ҋ!�hm�杁oS�巡��Keu�����ٔ�w�J!'ڴ|�6_����G��f�����z�JvG+��G]U� vL]Zʹ�b�|��R�D/�C�*��2���
e�^�s��~V�;���8������^<j�~w?��i�I������v �a�3�S�S�.>��0���T�hMxk.����BT�G�+�ڇ�R��7�'m��l0YV��@�LX�'����B��q����/�������?��o���ݷ��������|����o��p����}�7�eg�O��=���o��?��/���o�����?�p������{^���gr'�ߕ�3���A0j�>&�%���0ʜ�aR�QG&R�>ɤ$|��?�}���U�G�_����V�8��4A�J]j�Н)�瘵.�0��2y6��𢻝-�m��7���z
���]�-�t���f)�p�t�eH�V@�*uVV����2����z�,�EX� z��i����.~����n�xh7E<��L�-�x ���7X�î����0��u��?�7�;<X����O'?�x��˛B����]\����F�����2�)L'�-ֳ�����/�	yٵ���!O'<Ó��dw��,x糧[�z<+�<+ܿ�E	�b+�TC�����j�i��s�< �ew�Ų�h
�uX$|��6����r�+��{JM��'3\���vszS��rrh����Y
�`u?_v5�kz���r�@Ia��,ofx�?y5|�>e��0�Y؞�V���=�r��E��s'R��&�<�g¼]����p�^�q\/s���rS��k�"%��*�"i�����sډ�g���VԷ��
��S���p��Et ~4�����f����_�i'�?�DO��wX.fh�r��S�_R �nQ*>�|y��ey^����PzYA���W�~�zR4�+ߗ@�m�5Ռ��(�-��<&��������	�Oo9%ju�a1���첏�G3�ِ���֎a]?�I��m��m�����`Կ(�W���[ڜ\�w��r�Q�2�m-6��V��hTI!w:��aC$g����[���������װ�\�.��E.� �_�Y}{����LwEV��/,�A�����(�u�߹ R�yZ�B��nb��\��ЎOM/��Ӊ7<D�U�TI��FyX��jbԯg��+Ȣ2�yn����Ӗ�}�Z���V]�sa�	;�r�;�?�vww��\w�\�U����@�x�ˁ����_��%�q���!?��q����T�������c�r�W��ct�/�G3��\�v�'Z�v�?Y8�p�j����K�]@��Y�,z��[ؠ�y�	\$�y
��t��!�L-�;]����(�@�D��ԹR�CW����a�R���iyֈ >���7�e��U��6R�C�"mJ��"|Zy���ƶ%���ߓ>���kDon&1+]HU-T���}�IT^<��}'�0y�5ꦜIǞ�� �,����Ϛ��-C�L��\�j����U@d؉�}`D_��Lԡ|\��m��p������h���-f����n��/	_6�]V�����l�(m&`!�xd,�c�l�?�o[FJ�*9�t�d@8��÷�kg@"-�K���-�q�B��],j�1X��"��!���Җ" J� �lVC�\�5��q�$�@g�#�[P9��u�g�͓s�߻_�gyv�����gF]]!شK�	�1���O��;��9���f`ەY��p�ӟ����§^�P���a����@>$�nz��#t? ��!��ْ�>�i�g��V`���eh^SM��4x���HH�돺��[�����	&5A|�w�5j �  Ј塠^�n��t����U\�h����z�^��=x�~3���Nj0)Fgz�u�P��e���Bws0{f�����AJv���dκ<���b��^s��[��~'�zj��Ld|���l*���!��b��2��o�j7��n�����0]�I����ِ�/�8p��_�U���ᛇ9�ގnI�P�a��~�H���p/t�{�^��i�����ѭK��I,��o�:�~q��7G���0w�U���s�`��k��`�Xmm��qn�g�U��k7�2�ЖYѺ��7��GL�8.Nn�7�>������|6[�Ձ��V�9�+��-�O>{����w[|&���6� �ybJ�������ln[i
��IUb(�g@x�t�!���c^�Ev>x�}���aNR��Gzci�� �����4��|�;�����pK��G���ҋO��m�N���<{ۡ��VW��P�IP
S����PU�׵9;c�L ���䱤@}Q-z��775C���\�)R�j��qk�����L��`�M��etA�|�.�(��̊w���"�_r��.X68
Uf��]ŝ݉x����Z�X�xr��iK�.$�TF��;E��Y��Ϸ����:w�P��b��͑����:P��	��^P�L�rp��*"��M�j�~eSo�����PI=��5�IH!
ܳ�Xfڵ�%�{-�ԡZ%��h(	(|�#��5�ΤR@t��n��b�!�w��%�H%�a>^��{1�&��������V���|3��CRkh��zI��yC�a���_ޕ���{�I��">�a9�����o�������{� ��� ˞�XۤP�>{�_�of\�&N�s� ���F�A�Y����W��]����������۬�c���fHy���r_�mP ��*@�\��%r��ߠ:����c7P���T38����CN�{���g����Δi�ؕ��Q=�����f�]��Kr%f]U.�����v�F��t�M�{<��G�֖R�Q3Ԧ��S�iO$2*���f����>�6 o���zo��~�&��G`�`k������Fp[��֖vYR\óz�z:��'����di �_N�~CR�;euaU~PW�k�0��53{��Le!����k��R���z]C�@l�:\IZO`�9%��ڨ$���i�А�?��'9�=���i�7�07i}�!�-����L��m�D<^m
R@le3k��@��l�+�x�:� �u�{�ܧʀa�v�?w�<5����ʩ��hհ5}5��QP��5��-�a�7����.��v���Eh0 h��|	2�80���x
a���#*h�	ݍ�r�`�=�Sy�
�Z�_٪X�$+�H�m��]�58W�7Ԗ>q�Aw�9W�]��� Z4Y�8,�/��qk�3u�������l�]3���4��m3C��94
��)��V8-R�^	.� �Z�tLک�R�w��i��i˷��I�Qc�d��8H��ό�����g,ƕO�k�x�M�@^5+R*ڲ�i�)+�S�kP�L����Z=˜�D��R�8`���d��{π�G���*�C&�G��Q�V�~ʵ�4=��>dE�1ڬ���G�b\5Ц�j�Z�$ [�&A�:�����r��U�0|pu!�%���Q��̓�YF`�'�[ʬ�3cFi����bֽ�M7�����;ğ5M.��M�i�k���>{�,)]�-��s�^�iǯ��
DN�]�͖}�3���?��҉���A��a��1�-|����cC�";<�=xx�YT'|>�M�S�=����'e/URt_~��&�r�2�
ei$ sɮ���`�n�����q��	L2�@�]�J��=��r������cҋ-�@"_�c���c�{�lf�'Cz�g��F�)���� ��q+�'�~g��T�[9u̥�����~��2�m�ct�����ฒ��3�" ���Iz�-~x�1)���m�.q:
l�){����'!J���iY�f�@޼y3F"�]��M�N;=?�X��pF{w��On�&�t�Nr�Xm8ֳ@K�Q=�8Z5����'�sY#�=̘�?w��Q����+J�I�M��y?��*�w��^2����v�c�^j�$���q�v����ͫ�ϙp@�,�)��8��Q=�j3��]�;aA zǝ�U��ǜ W�n�1��Vr��w���(���~Aӓ[Ж�Sm�`ظ���`�R��%����
�A������ZF�~�>���s�T��?�|��L��Y�:Z��m��I����ֱ*�d�JU@��8+�X�\�܍n�`����K-V�)/�4Ep%_Z�X��R �}�ZmB�48ʌL��V���.�����[y�t,��ڀ��O�/v�RBmh�B�h1����YK���Iċw��F8���Kv";hg.[ 5�ܗ�)[-�Q!=ܢ1-��v �23Bl�S��6�'EH����#m	�ј�o���q\�W'i��� �������%�w��LM�ך]�&��|8�S�� ���V�I+	�d叄L�O`�ib1�s�r\q�/.*�Z�V��~f�u�_wwK�3� ��`9_���J���'�Ty�w��w�@�H�i3���uE��9'z�w�J�^�w�@�5 ����bW�/�i�ٳ������6�R��5R��Uʚ( f�$UHA�25�o��t�	�y�U)���O_�ZwH��Y�~����Oܕ�N�A.��<�ڄT^t���Vq;��Ë?�����p��u����yEd��GT�KZU ��4גтU{!i'���
�Jh��t0CG���"kv������}J8�:��[I��mX��*7TXU�g�4-B����h��ܕ6Y����9��h�����X��pBO����m��z��5�uua~?�~��w�"ڇr�2o��V�"<?M�w�ZW��[���/���۴�t�-4n�Ret�4: �f��h���
��Y�]���~�KDh3󲺙�. o3�m��1o�vE�!"�eq�] ����?��������N�����$��C\}�p��X?��~X�"�=�^?�	ߔ�!�H��;BK��P��5(Č���^��[�W0�
�m9�-w��5޳�Z|�������A�&�O��E�m��;X�;��^��=`�����}�\\�K���4������:$�r���,m1F�o�(�;^cɄX����msD��ֽ�}O���������U���P��q����z{��O�jP�*j*9sl�zrG���b �W�̵p
&2	�Q"�����Y/}��_����L��s[k�:2j��0?�	6�RS'�s���Yi��ɩ�T��)rZ��
�,�#$_�����Nx�"55�m���[D�ek�0�8[·�������7�cK&v����j�5���i�&`���A\l�����=F��Dv��8{}�q��5�,���y -�r��}-&)�2�o������*�É�s����nGn���#�2�^Vt��xq&$�Mo��$*�tP/#M�p��'Ɓ<������h�U�h
]ɨ"� �YL*E�aH�fȨ@n��fC?�}�]��o����}OnvņÎ���AB=�DM+���;�.�q�����?����I      /   _   x�Ʊ
� ���w�L-A��h	�ZhJQ�_g:�H�'`>^�~k�m����ug�|s`�-���1��%����y�v9pB���"��$�      &      x��\�r[G�|>�
<z���W�A$!"� �]O�K_mMx�	ɳ1�����|����-+$���̾qw��Q�jUl1�JݶnJ�N/���f�-7[GTM�S֕�J���Ig|����S��ѕ5WDkc"����R](�9m��U�P��Tm{"��_o�����o��=z�F�ʒx89��q�r�d����%���q��IE=�g��N��˦k�yQ�ޏw������sc?nld��Qͥ�lIZ墋l�5v��㇟�k}aEie���NkgL�K;�_/�s1@��V�pT�����aj�+?�up�O�˖rL���zU6��2sQ��������Gk&��N���sV.�_N�T��Ѭ�R���L|Ć,M�K��`~������ֲ���qa�g���E���]u�#�S��v�U$�T5��ڻ��y��L�<�ϑ�6��� |�)�ctc�1�x&>�-�8�ϧ�9��m�_Q���6�ӽ��,|��[���i� �jdJ*x���a��ig|+2��҂ձ*&���M1���9�'�F�H_�x��?��I�z��d�w�B��*.���׸
�=׃�����j��FQ�ػ�α�t'�Չ��,H:��f�P�$f�U����T���@?|�Ƽ��m����t8m���ՀS0�R���5�f��2d�=��Q�ZM	U�Zn���vw��{����k�(|�R�~kt6:��A*X�*Z�F4��=����Gt:�c2!,מ<��#�\FU=�pܤ�EET;P��O���w?_�݆W��^9��Rfa�3%�<G.�:�ݐO鐬q�e��r��޵�˳�_is�P{	�5� ���:3�0���*!'(�V
+�E]>��?|���#B
k0o�,�QA�}���Z� �8��F�
����_�������g�\I|�~�B�vV駱�%��J	z, k����{s�E~$�O���������>����
�i��[�����&B5�Bf���:�tq�1!�F�����G���O�������k��i���ъV���H��Ca�
q��Ŝ\@O�,�&�}�(x�0�F����B��VA�5�v�����z}�۬�7����`��gE~E�O`a��CѶ�!�+*N�� s��1�����i�V������\%dGk�^1R���:�*�h��f��
�pAnĚL���r:�����n�ڬ�����-���)�A운�/�RO]�}-�3��V$�bU��xx�N~y�}{x�?�� �0����S����@d.�VO�v��~lT7����Í��r���;m��=BcZa�3k�C�q��)v�f!W�ρ7D�D�
��5�7��9����5�H[�/iJI�.�(�n|ȱ�u���d�ֳX)�"
^�`����J�x���/��N�u{ܽ<�qY<[���=Il�i���7l1D�-_� �e��n�s6�+�B�P�%����X����!�I�K�u�\�����i��0�4�RA�7�U�=*6+Rc�K�
�jr���q�9�n�X�(]B29f�Յa�4�F���vH�Z�%�l{[^no�������v�<��<7��f;�I:4R)��ި(<�^�p���r�P	���@7��$f�.FG_����y8k=j.׌�m(�
����c��_nv�����Fw�������Tŵ�yM�|����`��2H�B{B��s{��[���e�q�v6�T-���.�z�N�@�5XZ۳U1x1c��|Խ]^�������,L��.�y���Iz%i5EV�8��PG���o�1���i� '�:y�t��]��Љ��J70�6�3�!Ö���7ۻ����kKN_�1���#�UB��d^��e�@L�l��f=������dUp�G�E�J¨%�4bW�C�4����p��p��him�ԦI��TS��
�I��P��7E���M��y����AX~uZj,�A�*�GEd0�y� 3Ñ�����a����������x���1x8Q��Q�1H-.�����$�=���A~$�ns�x�"��ÑeR�i1�K�����;#���vm<~��āb�H����L���z�Y�Z��"^6o��f!Z�����yE�$��'�]�rW&��W���h�y�N�A��g��@��2goh5f�&��e�����?��������[��ۋWH�(#�\V�Z� 
�\��H��FH�V���g:ס����A'3h�zY#	MT�݄��Yw�~��)z=��^*���ٜ��$�a��,H$Q�"v��������� �]'B���"����Pm�[*���?C�tA7X��?O�c�N.�p�4�S����@6"p�1M'��7�F����ǇY����fu}x{�ߞKċmC�ΰV$�b�5Ժ�1��)�E��R�(͎�̧[|h-H��)<��b݌����%��~�Ռ��pE]�0�VC���P������� ��ǔ���_?��$JYK!��$ڢ��9��$E4���=��5�
�nw'6�ns���]�n�;U��9؈w����Ŕ��M`{����C�+��Ց[n����ߞ6wS ��u@�v�5Kg�hsU��\��$=��Zuw1/�-h�~�>ۏ9��t���'��**Zb?� �����b��n��� A ��v:����CL�S'����;ك3[.x�%���i�l�Wx��߾8 D��n7�kY������!X?m �p\<s�x�E���\����f��ͯ��vt�/[զ�,�S��m����9�,���s���v/ �ϓ'3(�yG�2�>+���XM�\o�0ۻ�p0�3Z�{>�n�R�?.����P1{�0�eP��u���`���ΐ
�A[j�D�m���N��9�M��W���~̔�P��@G(Y�"H�h���Sd���t�> Qv��5��R�dp�PV6k-��d���*VE�z}D��yVs�aQ٥0���U� �C� �v?!�{mX���y�=�o_�'I�o_l���d����^�W�	��k&K�k:ӫ�;L��^Y���Io�
y�n�r}\�'!rZ�O�Φ�t��lbF�%gU<qGni���
�E�6�o�v�v��ݟ&Ѻ���CqL�Ux��*P�YRX��:����F�я��Y���Md�����2ok1V_!���] =�l���&�������nV/���$Nk��j~��CbN�)��,�4*JGY}�$���i'��n�j��$f3h��k�_���jF��jC!ԥ���%#�[�d{�겹M"p��~.�H��5�Y�e��,m�>k�v^%�*pqzD�|gA�f{%n`3�@���UՐ�����+ތH֪OGE$�K�/&�:������䛓r伎�
N��7����U�^Ou�U1��e;]�pCL`��(����0ȹR�����ۨ���e���ҼQm�,x#�h��
ƪ����G	�=��v#��=g֕�lF��*��ʔqj���N#�*Z=�g���k��g	4��t�<>R�,j��1rk���V0>���M�4��G0gtZ�#9<f����P?bs������(�zz�ݗ!1D;f�c�d����-�lK��?g�]�Ns��L\���|��;�e�q�E6���m���H]�_^Mw��k�[�gG8�	�ޠ�em��*SDk
���<`���,:��fz�^��1�����FC�ɚ�+p�ny��\���e�6jJ��;�6,2�ΉD�0'7׭�ɻ=������JY�ᤧg*�C��Q\�� 7U �T�����f��� )��b�8�������N��f�iڦB*A��w�9���r<\��O�����/QڰN��E�8����ˢR��Ǩz������{o���mC�镙���0����Wԗ�������9�,LÄ-�27K?�B�Y��!��U��M�Z)�Z���3�������=���n�9����˧,t����Q��d+B�6�:܅�}�����8�Y���f�T�\sQ�9��4�:���3��iO�_m����۹� ��s5_;��!6WHM� �  ���pU	?�����o�noV��[��t��^�o��ZR${>G>ɉd�U��Up-U���>���co	9���5���-�sP��L�5I]H���Mg��C�f��r|'%���`���S���A�����ˮB�R8�ʊ9���S��<YU�e���N�HA�@�������_6�)�,s���\dv~��2MfNbO*Fhl*����Xz�����fB&&�W�Z�}�����$e�G65)�O���N&��^o��s��c=Oi@/q�K{}t�+�[Ȝ@t�2K��֪����Piv0k�+���w���_���ў'�t�I�E�Zg9���8V���$o#�+oδl�n���[���2�2�G���i;w<:x���4�0"7f)�6v"JB��Kb q�Pdeݬd��rwx�;,�&>keY�B�h��01Ŀ���-@k��e~�1<5���ܤFv��ٶT:x�[��4D�q6��@�PԺ�M��^�3h�W����O�#g�١��X=OOD������m�_7���`U�v� �s��^ ��������'	Y��;/>A���nR�wt���W�fC���Ȕ��ʥ��)����EK2U6/��n9H�e���}P��JIn��T��>�l>2��ЃZ�����G��N�R��`ufY�3�H��6���t@8>������C��%;v6ȁh֒5� Vf�;�=��e�V	�ڶ[��3��lP,�,?���%k�O}% 	d˳���8��2W:w#��(�b�Q��@Q���f�Za3;�P�z��Im)*��c��-9�����g�h�c��X��(����)��s���֦�x>͔���O'�yh�H��b�L�I�#af�	˿?�L+Bq>o��዗c��a�uȄ֐�ò�d%�CD��	.����$��#�j��9��[*$��V�������c��]�P�ǟ���g�ޯF�x���A�\���ʺ���]|���u\�c�.�A��hMsG�!�U��c�{ʟ����z�|�g";ۻm��*�̲)%��j�oG�QKy,��LrZ����q��=��.y-ۙ,2��9�ڳv���m�\�BDa�,fϵ��"%�@���@)��5���K.(4Hg���(4ĳnt,�Qc<�l	!U,�愁��E3���y��t�(��x��[,
,=X<:�"w'TYt-�����v�p�r�����W�b�udJ�� &]N!u���%����Kf��
�p%�Krw��"Y�����L��fo>3P���O>��D��[�\���`�amg�)�)�:���]fs�<<V�6�4�Fk�r������=�nwP��O�eC\z��LS|%o�R����;����54#7�~	�{��]��f��i��4;��T��j��6V0���wP�����H��]&��?���ǇO?�=��dnT�>Ǔo!�]|��c��u��7��/�      '   �  x�M�Mr�0F��)|tH��K�多�eW�7�nH�8W�ғiR�x���AQ%�9)t`]��j׀�Ummt��)�%������|�/�����9/%O=�F�h��"Cm^��Ue�S���ͷ�M1�`+3��V��h��4|�Af�#�[���~���y2Z���Ae���S�p(ؙ��{��r{.��q���b��d�A1�j�B[O�@��U��f���>��u�A�$���t�=�gy�۹l�r��l���%��1@9�J�&c�����^��3:Em���Or�������y}:��z�K���,r}MLb�G��j�s0ؚ>x ��.�����o��H�� ���A�0r;��U.��t�;����=T�-���G��Ds:�\�e��y��٤J&ׂ�I����[	\�T��,z��X�Y�J����^�R'�D��:��/�����u��Ə/�4�_��       (   �  x��Zǎ���][�?1�_�F���.��zv��wט���TO��Y"�R��Iql)�Vk�EPZ�S�+�u\�����atù-q�C��~��._|��*/�z����XIq�@uw�\��4S	���%r6E�Y
A�-&ƾ���6��穒;z��\ܫ��bVNR��������d�kn������X"k�@����B�{�a�X.+���:/�vSg��3�����"�E;$!�bA���j�	�^IN�Uӓ�f�Η����8���	k�|Ad�!Hc#�-���f7�����u7̮Z���L�(*�##D@��H(#6y����A^���&\T29o�p�u�O:�/��4	Pt���0�
�ED�ci���������߬n8N}��n&�;�,FD��"4F�h��6�9oc�����V�l�.�a�fўūpo�h2�7SD�q0�#�B�'�R�F'�{��1m�8������vF�yԔِ@���		I�Ѥ�'�)�뮽uwk;6!;l/�4�%�cXioP)����:�\�&��CVJ�e��-�4n�3�m.1�>0���)���p{��T���.�ʦ�h*���n��7s������,*�wY���$�_Q�N��c���X�z6�,q3�R�|Nm��2�8�DʐG�wBYlK��7N�L[�RSo�2ܯ����~�@�a����"�A���w��Sq��z�����<Cc��e^�s"$��C`(���X$`�%c`�"��lx�ݦ�O�)�p%����m��&c.g����hd`$�ؚD5����tm�*����0G���ιK<PP8h�c����fD
~(=�����Q����������n�n��e��&s�2�R0�D���2H�"2	�( n&9<%(������@`���q�t�O�jn�ט��[�z����:ٲ��]��~MF�Q�H��z�{�T��Ψ���F8^��R�Q_IwM1U����ڜ��E�Q�iB@N1�H��F���ܨ�+��MAz1��/��5�[�����,ER(����`�a�=t���b�/�L�}�¶W{�{� "����Z(@��N�SN}0?Xg�t�����=�S��b���~Mf�%���@�a'��HD!E� ˠ_��"Ҧx���z�$�{qe}2�@�	=�`p�	x�p0�<y�ȏM3V�k�j6�M�aa�k��e��&S�C;�@
K�_Fp�1��:	f_@�U��;��Zݰm���Sб(`����y�d8�����`����2==I�W�����/�Q���o��D�b�^��ZrH<�����9�4J�����ǚ�̧��MTcE��`Z0�����s�8�桑� ���y��p����	�z@]ǎo}�7�d	[�o��Bٸ�O�Sl���������|����s��Y��6��L��2h&n"� >IO���1~Bv�0b�4��E/>��K�V���&�y��cPoPap�&z�b�D�HD�/
�2-[t�*r��v�;s���HF�G�s�=�T����I�ݳ�o�L�p�R[�m�>�e��&���t 
1� �@k�`m�`���^�0�^�S��&���E��	ws���
��O�S��í�q|T��	���idXILf}��4YR�e8
,rX.h6 ��Iq�x������%gqu��܎��i�44���r�Z#�r?ӧ"����!.qc5��Q�I�9�h20��J�Q4$ ���0�*$M4JP&�W�EŪ�XLC�Q�ض���uLt���.�4�6�v�b`�
���~B�֯�*�b�!�[����V���&�*b�Dت���"�D����4�*�ìJ��B�dµ9��hr�Mx���c�<�J+���`&�^}��k��K�z�-��a�[
������!��3�p�� |��Zj_��V��z�rO��Vr3�h�t#Dn ���Q��w�s���F{�*GS�!�M,Ŝv��e��d`RDT�A;xd< �(O�+��D˭s�qw���Im�S.wG�����s�H�vj��k?�a��qU���3�n���e�� &�5��@��:B��?�CD���S�k���ڷ��ڈ���N�� �$@�ay
�{��0�4�N8�7��wiZS5�<c�Xٸ�*�������f�*nւ�r��H`�� ���������+M3�s7�`���2��U=��Z��'@�ᑑ%ȍQhN��z\N����i�UH�C(���{�߃y��3%z�#���=�Qc%�!h��[�����,����ύ��;�ɽ��"���!�z��|} ����r�����L�����|_ �ac��2����B�:$�h-%#I�q�{ZF��T�xe����\�&H�� l-#�d�%B�F���@|�q�S�~�W!�G}�v7/��0�����s ��a����,�d��ҙ�wc���f�D�_�E.����~��s�n���9���#^X`Awuu�n���;J~�o��0��8��J>�Cd#�:{����2Yot�[�/�-���bX��_�� �0��/�!���@	~���{�mq,"aM�b;'�з��h2EF�q�0O�C�	��'���/
����f��L��c�C�"e	���k-��H-��K�G�u[L���cw��oz���o��0Y��5�H�`��9IP�������qҞ�UJ��&���.�:9�Z�d=���?d�!g�a���t�@�;�����R4�Ǫd�[����0�d�I+A��E�M����	���kDKUS1�=�B�l�}�<*������90�@8�A	�Q:�i��)M�n��-u#.�ҫ}k�� &���(����9葓�A5��VF߼��myޥ�Eg:5�\I�,qHؿ���l ���$	���ޘ���u�7$���r9��|k�� &�Z��*�p�%�s+D�(�` �Ĩ����>���J�o����|Hsh�Q��,B��� �)v=��祓+�IVk�t�!���r������d�DI��(9�L�I��EB�@��:����G�N
H,{�*��ʉVTRKy��p�AKϑ�$&�	���W�s���MU�Eh�ijw�������4gJH��1�\10HVa�b|q�R-U��j�ט���U*]�Cz�NP�1����6L"Ӂ]4������y��f2F��wU�6w|L��?Y������      )     x��Kn1��]��1�%�'%�u�H9~HHO�z����\a���l��;Q��]�~�9����@�lP�t0,K���S�u��Wl�;��2	�<8��p�q�k�W,uLsk0�*�J��	꾲c��<��H��*�������RHZ���|��}��<	X�]�u��uОf͵p-����㊵�	:�U��,
՜V�M��~�H2���;��*�<4��/+�a�ۼ?��T��^ǖ���VP��,���Џ��}�N��k���� .p!      *   s  x���A��(�����<P��l@��GzN`/�:������r���=s�rI�;��3���#���a�>�j�h�O���n^���w���s�L���3���IŖ�܋��<0h_ƚ�ߒ�np]�̀`@C��(�Mn��&��ӗ@ЃRCN�ݹ����h�k���`��1'��oriz�:"��!�j���\f����Ҷ qS;~T��e��mD��&��8�6Ⱥ�QBw�C��`M���U���E��8�i(e�b��&�ή���r�����
;�.�!��}Y�{Q.�%�ϲ�M���)���L9]lt	|Y����;��@�]]ڄU�qu��(_�����ua���S
pj[���F��w/�<�bMo9�^^�d��9v��&';�LF�����0��N�hP�|>���rH/
o(m��#x��J8�1�dG��O� ��s�V��V�b�:���i���$h���n�YDi�/�ս�y!�o㘒��ש� Ǫ��g0oJ��o��w`����{��K�#���S��:��6�DzBϷ��/��nK�v�0�ź���f"M"O�>��fTB��lϣ�Or�f�8��(-j��g&��R��r���I�������٫      +      x��\˒Gv]WEE�Үr��J��ERR3O�&+�"�@� P"����,f���[��ϭ«���[��@WU��{�9�&8g��ؤ R���M(A4,k�2��T}���y��L�JI�U��J�*�Ji�t%���5w3�po�����Ñ�mT�]�
M�p�K�;U+}T.4ڰ�(�u�M���E����,<
��q͊�J]p�Q:Yg�r%�Jq͜)��a��l�D��M�C)պʑg�q�3��U1�����%"S�s�G$�L���*O����I�z/���-O�[ɅT�Ƈ`g�֎���,�c������LW�Ʉj����<N2�*.�y:[�8/&w�c�T��WiQ^�U�kTǢ�ê�5�t��B 1�K�R��d".�$���*L��w�Z����:���Z�d����qcL�����LJ�����02�]|�W�Nf^�������:ח�&w�b#a4��h1�~*�Qv? ��k��+)�ޏC��-��I�*f��p��ۙ03�Zn��d�R0��`��lT׍�V6A�P�:��ǼZ�������@�=0���#��(�W!���,-����i��#1����B3�����o9���+!5��3-[ƙ���;���q߄0|�hq��Y麄�J���Ti��ה�x�p�4^ٳ���"C՜ʹ�i�����$*�W͘�q�zm��O�~���MQ#�)a��Ѻ��ЦK٧j���'�W髺���*��\쌉Vq��HX�n[#4�2;��!A�3�Q��E��ʝ��ǆc���D�K+#k�jU���/�����ǟ�'l>���FY��V(~�	9m[a��ei��8=����8/��dDy�G[���3.� �|J��G�Bbm�������h�%=SEA1��y�OŇt֦q�`<���šϢJ	��8��9�K��l8c�E�O���A�!X_�����e@LU_����g��<\������&`Z|.p����\�u�w��]�)�k�8��; 9f)��<\TPI¸��bI)k]�O�~z8~Z�_9�Tu�cùaظ���ͤ-Y=:�W��V\e5C���� "[�p��Mԍ1��Ȯ� ����"�����[�����7���C��F#Ë�$�NdK+!2c��B"譴��Zg�77��c�c�ҙ�jT�`�L"L�g�uT��J �e�V���׫��/�b����x��] �,R5��M�G�+D�ل͵��m����Č�I]�S�L���k����� 5�0[�S�t��$��0���[�E
����ի0Ћ�If��M'DB*�XVW9�2�*��I����x�:�p��$k��ǎ���A(��t��'���k���a�H�a"�+����lX�$o�E�",�}8_���d�*�_�Exӧd��u�$�v�T0������M�u����a�jY�u�א칒��@����o.s�ś����?�ӑp����{�EiG�q�5a�M�,Ǣ��;5/�3'����4\�Kj<t]�X.YDg%��O��9-�/��WX����=M�o����y�cXė��\��ǈص�;�V����MX�@..W��~X.���y�v�I�Ȇ��:�`;:�j��>!-���ʷS>�)�
/��7>�;��A����F���4�5�JŜO�z��W@��Ú���~��i�J̿��&h�A$1k��y>��w�e-t�?+�w��� *��a�/�	e��_�eX�q5M�����#��6��W�?�@��)?��RvTIu�!��
�'t�5�J.f���r�@�b���B�U_?��Y��E?Bqi���(%SO]!��H�]o�՞C�� )��~��q��ݲ�r�8]���h5��(^q�"�&�
�W��Fp��C�<�v��
<���&�5��r�]hD�D�<t���2\�
\:`6���B�Oa8S�t*���o�ħ�V�X�'��FE� sb�-�b9��S��Ө{;GՀ�߂�Υ[���#hǜ���#>�Ep.[�!O0�OY*M�\!s�K;��и~�M�N��rĨ�"���%��m|:�݈�����W0q;*E���|�k	�%�fK ?�ϗGo�S�_�eN��X�n3���.�O�s��kgܷ�Y�?��T�Z�p7O��j�!J�#N�d��h�:�EV�v�ϗ�6��/�Пo�5$'D̈��J[s,e��P������y�U�b-���U=�#Ƨu�B�ݑF�	Y��Vی)�Cq�SDNI�o��iIG��r��FS��"q�)d�k��4��U�x�	�zB�Ώh�qCI#P���8�R��V�/jo ��!�3u��n��z!��@p��=yJ�����0%\�c¶m�֣���x��Q�+I@���=�K݊ͤm1VdEz�k��}	"�F%A�hU�~!��>O'�0_�j\tp�ZE��K�g΋�B��zG�O��1�|�O���>Gs�V�;E�'-��lr}�̡�0�C��<�ئ���r�	�o�"N��%�wq�?�>g����	�;Ӹ�4��3��b':s)��Hb�r6��L��h�ߛK�k9[�^�`7�
y�FD�3�A�]�NC`[I�%�r�dB�������Cm��YNH|x�`�%�����jpE\.V�֑��w�P�86��%�?�H�;�6"C[ ���aw>�?p����ڴ�&�9	B�V�ݛ[*s���/�Ʌ�@���W�4�V69'x�Ux}���'#��@��0��@����|H���2��r�/���݈�5�=�,�S���g{�S,߅��)qX����;��N�D�mLI�wd>��z��Koo��Ǉ���L�
H��k~��,��dX�Θ`�5��t-�4Ę��B��T*��
#Y����,,s@��[���p*%h�����~��Iⓔ��wu݌�.̡�ِ�@`�a�k�mwXL�z�ŵ���6OH%�9�<?'��,��0�3�Kj��C�ȍ��;^[�ݚ��X���o���ĸ�Gq9�{�r�gBv�o��4ò��\�SB�q�R�;�T�� �-j�U��k�+)���6�o�z�^�����ti��T��`��m�{�86���?}SO����F	8������HHU��)iUIx&ꪒuڶ���q���{>W |��W\�AV��v�&{�t���.�%�F�N��M��o�p	*��ٸ�:d����O��e�_�_�hp�[LLjkWm��� z�Z��b^�U�v�uQ-d�ʗ�>_tC�Ew���$ۦ�o@� ܑ������QtŽ�fK�y���2� [���z���f�un��� ���(��H�x�5�Տ��|I��~��◾��Æ��a"��㝅�&r�w�y>�<�����X������K(c��<�7x��-:Ff���F�[�iך�#O�f�QO�� �)y���,GJF#����+1%c!m�'}|��`^����������Z����[C��MY���W�.�Z�9东�����[;�QcG3j��pQ9�4�o�g�z��'�J"�H�}��w0GX\�	Ms~sӹ�J��Y⮑Et�$F� G�B�s�$S=�պPy���sp�Wd�9�:�&�E�}������b��z;�-���
����*#ԨI~_�;5�;�%��3v$J�w�`�;o�!Oo؎'��q�:��	}
$�츤/V��%iĴq���脐XR�zD�7��͘M�EO��-��f��~B��=Ԫ��m��ZV'm�94��ֵN��[��U9½|�ޮ����e���Ov��S��P�����0�����J��IXo�y�����XaL�G���;6vS��xbRK\æ�(b�B����j���	��ރ������}!*d˔����F�q��z�x�;�Wc��NY[�uYW��~��b*���a�V� �%S~L�Ύ�!�m�h�������!�"Z�ն���7C~��-����n��{�a��tܶ��>�&�	���v:j��B�`Mh�Sɹ	���J����:����p޿]^��6q��vO�1����2�Ѿ�G �  ISV��T��z���P�oz�'��{�T_����6T����f�=ݏy>ߧ���LeA���;�A�#�,�
è�'���������\&�x�<̉7M穢�#�.��!(ڦ��q��_!�R=CX�j_<m?��)�v1�i�sh�M%�n�h�}B�Rݾ�z��,ڛ��-sZ˛�fv�DN����"�1I#�]��񬸄��n��e'}��������a�d�Fз~щm���;}We:����C[﵏�Eh���nG��[��~�=5zܜ/Z)�W7���aJCF�֊(s�AvT�KE�j,�[�/��+�M�,���rڠ���Agh��O�â�#�tA���Z�W��K�$��ˁ�DO�����`t�G��i����U�]'^̈́k����t��M��܈�X(a��A�(U���$��s) 4��m�c�k��6���v�����w�vz��N� ��,�����ʩ:�{�E��s�v��J:�Ju�L�P�v_��K�*E����=�����1��j��1-Y�&p��YHQRq�T�]^�Z������bI(N"j�����'c�}�\�k^��5cDJ�9��V�?��ܨ�wĀ5�&�>Ҽ��_Ж,�`%Z�6s�ު!�PZe���	��j*kB��a� �D�N�(e�4��aB���ns^���yAy@N��~������ϗ��m�U�o��z���1Ǟ���f�k�.*�an���	\5����Ks�r�~��)�P�a>�H�Q�M�I4��&V������m(��WB�j&׼-�~�Ű{�T���L��;}눖T�^�=?+�eY�k����c�MW���!b�^\�ɳ-�T��Ў����^��qi��U��h�mV<���p y*x�C��z��>��Fn!����I��6I=%-�8�{��c�u����ʩX��r�1a����XN���y��gf[R<�k~�0s(��^�M"�'��)-m����IbN��Gv�x�$��NJv/�Ի/�H�;-�ۛ��?@���H�'l��g�+([������x�T�I*��|r՟�����~��������B����XRy�yO�G��^lh�Ѻ	�R�>�"����2������jK���k�ǜ6~L��>(��E:����-t-sVJ���'	i��o�k{vv�?hkX1      ,   �   x��=�0@ṹ�Q���7`f�[�-j�����[���+4k0u��Z�6k����n�����F w�ѲJ���0Z�V�*-OwS{뺟#���暽Ad��j��H�Y�ݧ۾����K�c�-�      -   �   x��KN1ם������X��RKЍ���d_�����u�@(�؀�8�P�&�ݝ�w�>���D�P�>	�Z��ȊU��g���KA3m�Սgu`�m�2�����}���::J��@��2
,������e������eX�4���\�������=���#v��$$�j}WR�:������R���Ej      .   %  x��WIsI<�~��V���� @ �Y���Km������������O��&���;3_�|,.�(3�!�2�,��6�x���d_7�������g�_ΓO�~"��|MG�ќ��Oc�]�6�ū�����V��+�[�f�W�֤��ɏ	f�j�o�ǖ"m�F\�%�:�8Y�AD�wq$��D��i.b��&��D�B�bؖI�QɌS�y4���b*,S|IpI�V)7+���v��%�R���X����)�Bs�!R�9#(���& �5l�kL�θI��3�İ�7~;�Gw���k���<ߪ�;�[ͫ}ڪԟ��Ƅt����������	Rb� ����	XŸ�HJ��p�0�v����3q6��E��T(� g�C�`a��Jy�L��IL�?����r��[��Z�|4��)m�^ތM��vߒ�{�����݁�����c����L3�]�? 	�ƩV�I��\�1��Tv6.
a�����:��1v���eXH^�Kga���o��N+~�����S��Uں�'�j��f�/_�ykטT��ݴ�ߵ�I�	���H3�1'�k(L=G�/��d�=l�KH��UJ�C�c�\bS��$p
j$�|�����L��Ȉ��C�Ӏ�2T*�6�^�1~��z�f7~��ͺ��?�Ɨ��v�7��~2��o{O/���SLO��Su*V	�FI"-R�b@SX�5H��L;�p"�^4�H��m�ޔ���g���}#5J	r��[E,&X$F�D.���f"f@��.Yl�nY��_����ջ�f�}T��po��im֋_��v2���}v���J9��dYo�7s�HKǔ�*�1J���2��	�4�����JE����4Ma��F�_!��G`&)%g"2��)��Jt0Y0���đd���׸~k�۴̴�ٍg�ku��<�Z�&�;���rOfbu|�>Nmy1v��Y�������Q�ʔQ���y��������n0�Y��5�T�l�1r�Kh�D��|n'q�j�cT����]����Ì���u��[�a���9���C��m�77�7x~����J��8�q�+ �"�i���%������#�U��G��tt3ˈ���P���.�(�$؎&��տW)�I�>_���H�%&C�ȊX9d��	�X�������#0k'�:�He�+~X�l�9�ܧ�͖=����0�����*[Y�����|��KL��*���p�5+	�2�	����~	�@��~6gݧ���򱐷-.?��=��5��������X��c��㬺�ey��}���=�3TۻΗ}%�0�E	�V9V�� !-IЅ�2��8�ޥU`� ����0W�`�Y7�������]L��)��Qcx*xj�1h�y�'u�mb����]� ���.6˩��]����������G:����9+�/;n�;[:/Vw����y<W̿�x1!rR��!��3��
R\
��7Gp�r���m�����x_�L``֜bL�g֛��N���s�����|�>
m�����Я-�7�ƇU�����L7�c������X�㓠����4�oǱ�X�3�����1)d&GǞa@'��*͹Ɉ�8�p�_b!�, K��o��^��ļD!�I���iXq��%�af����#.�
,���P�,����P�N����ѡ~n/o�zS�M���m~�a��&��W9�3򼹾�wW�ξ��n��f+1�M�O��+˧���١�"�aZk*S�ab�y�aJRM)e������_�"�     
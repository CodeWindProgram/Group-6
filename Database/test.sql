PGDMP                         y            mcq    13.3    13.3 "    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16533    mcq    DATABASE     _   CREATE DATABASE mcq WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_India.utf8';
    DROP DATABASE mcq;
                postgres    false            �            1259    16534    admin_l    TABLE     �   CREATE TABLE public.admin_l (
    ad_id bigint NOT NULL,
    admin_name character varying(250),
    email_id character varying(250),
    password character varying,
    confirmpass character varying,
    mobile_no character varying
);
    DROP TABLE public.admin_l;
       public         heap    postgres    false            �            1259    16668    answers    TABLE     m   CREATE TABLE public.answers (
    a_id bigint NOT NULL,
    options character varying,
    ques_id bigint
);
    DROP TABLE public.answers;
       public         heap    postgres    false            �            1259    16660 	   questions    TABLE     v   CREATE TABLE public.questions (
    q_id bigint NOT NULL,
    questions text,
    sub_id bigint,
    ans_id bigint
);
    DROP TABLE public.questions;
       public         heap    postgres    false            �            1259    16602    results    TABLE     �   CREATE TABLE public.results (
    r_id bigint NOT NULL,
    userid bigint,
    sub_id bigint,
    t_marks bigint,
    r_date date
);
    DROP TABLE public.results;
       public         heap    postgres    false            �            1259    16605    subject    TABLE     j   CREATE TABLE public.subject (
    sub_id bigint NOT NULL,
    sub_name character varying(250) NOT NULL
);
    DROP TABLE public.subject;
       public         heap    postgres    false            �            1259    16608    usersreg    TABLE     +  CREATE TABLE public.usersreg (
    userid bigint NOT NULL,
    username character varying(250) NOT NULL,
    email character varying(250) NOT NULL,
    password character varying(250) NOT NULL,
    confirm_password character varying(250) NOT NULL,
    "DOB" date,
    mobile_no character varying
);
    DROP TABLE public.usersreg;
       public         heap    postgres    false            �            1259    16614    users_userid_seq    SEQUENCE     �   CREATE SEQUENCE public.users_userid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.users_userid_seq;
       public          postgres    false    203            �           0    0    users_userid_seq    SEQUENCE OWNED BY     H   ALTER SEQUENCE public.users_userid_seq OWNED BY public.usersreg.userid;
          public          postgres    false    204            :           2604    16626    usersreg userid    DEFAULT     o   ALTER TABLE ONLY public.usersreg ALTER COLUMN userid SET DEFAULT nextval('public.users_userid_seq'::regclass);
 >   ALTER TABLE public.usersreg ALTER COLUMN userid DROP DEFAULT;
       public          postgres    false    204    203            �          0    16534    admin_l 
   TABLE DATA           `   COPY public.admin_l (ad_id, admin_name, email_id, password, confirmpass, mobile_no) FROM stdin;
    public          postgres    false    200   �#       �          0    16668    answers 
   TABLE DATA           9   COPY public.answers (a_id, options, ques_id) FROM stdin;
    public          postgres    false    206   W%       �          0    16660 	   questions 
   TABLE DATA           D   COPY public.questions (q_id, questions, sub_id, ans_id) FROM stdin;
    public          postgres    false    205   &       �          0    16602    results 
   TABLE DATA           H   COPY public.results (r_id, userid, sub_id, t_marks, r_date) FROM stdin;
    public          postgres    false    201   �&       �          0    16605    subject 
   TABLE DATA           3   COPY public.subject (sub_id, sub_name) FROM stdin;
    public          postgres    false    202   �'       �          0    16608    usersreg 
   TABLE DATA           i   COPY public.usersreg (userid, username, email, password, confirm_password, "DOB", mobile_no) FROM stdin;
    public          postgres    false    203   *(       �           0    0    users_userid_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.users_userid_seq', 13, true);
          public          postgres    false    204            <           2606    16628    admin_l admin_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.admin_l
    ADD CONSTRAINT admin_pkey PRIMARY KEY (ad_id);
 <   ALTER TABLE ONLY public.admin_l DROP CONSTRAINT admin_pkey;
       public            postgres    false    200            J           2606    16675    answers answers_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.answers
    ADD CONSTRAINT answers_pkey PRIMARY KEY (a_id);
 >   ALTER TABLE ONLY public.answers DROP CONSTRAINT answers_pkey;
       public            postgres    false    206            H           2606    16667    questions questions_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.questions
    ADD CONSTRAINT questions_pkey PRIMARY KEY (q_id);
 B   ALTER TABLE ONLY public.questions DROP CONSTRAINT questions_pkey;
       public            postgres    false    205            @           2606    16650    results result_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.results
    ADD CONSTRAINT result_pkey PRIMARY KEY (r_id);
 =   ALTER TABLE ONLY public.results DROP CONSTRAINT result_pkey;
       public            postgres    false    201            B           2606    16652    subject subject_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.subject
    ADD CONSTRAINT subject_pkey PRIMARY KEY (sub_id);
 >   ALTER TABLE ONLY public.subject DROP CONSTRAINT subject_pkey;
       public            postgres    false    202            D           2606    16654    usersreg users_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.usersreg
    ADD CONSTRAINT users_pkey PRIMARY KEY (userid);
 =   ALTER TABLE ONLY public.usersreg DROP CONSTRAINT users_pkey;
       public            postgres    false    203            E           1259    16693 
   fki_ans_id    INDEX     B   CREATE INDEX fki_ans_id ON public.questions USING btree (ans_id);
    DROP INDEX public.fki_ans_id;
       public            postgres    false    205            =           1259    16657    fki_fk_subid    INDEX     B   CREATE INDEX fki_fk_subid ON public.results USING btree (sub_id);
     DROP INDEX public.fki_fk_subid;
       public            postgres    false    201            >           1259    16658    fki_fk_uid_result    INDEX     G   CREATE INDEX fki_fk_uid_result ON public.results USING btree (userid);
 %   DROP INDEX public.fki_fk_uid_result;
       public            postgres    false    201            K           1259    16681    fki_q_id    INDEX     ?   CREATE INDEX fki_q_id ON public.answers USING btree (ques_id);
    DROP INDEX public.fki_q_id;
       public            postgres    false    206            F           1259    16687 
   fki_sub_id    INDEX     B   CREATE INDEX fki_sub_id ON public.questions USING btree (sub_id);
    DROP INDEX public.fki_sub_id;
       public            postgres    false    205            M           2606    16688    questions ans_id    FK CONSTRAINT     r   ALTER TABLE ONLY public.questions
    ADD CONSTRAINT ans_id FOREIGN KEY (ans_id) REFERENCES public.answers(a_id);
 :   ALTER TABLE ONLY public.questions DROP CONSTRAINT ans_id;
       public          postgres    false    2890    206    205            N           2606    16676    answers q_id    FK CONSTRAINT     q   ALTER TABLE ONLY public.answers
    ADD CONSTRAINT q_id FOREIGN KEY (ques_id) REFERENCES public.questions(q_id);
 6   ALTER TABLE ONLY public.answers DROP CONSTRAINT q_id;
       public          postgres    false    2888    205    206            L           2606    16682    questions sub_id    FK CONSTRAINT     t   ALTER TABLE ONLY public.questions
    ADD CONSTRAINT sub_id FOREIGN KEY (sub_id) REFERENCES public.subject(sub_id);
 :   ALTER TABLE ONLY public.questions DROP CONSTRAINT sub_id;
       public          postgres    false    202    205    2882            �   �  x�e��n�@�5>�wMpf��\�:JE.u�� 
���ҧ�E��ts��?�/�@ 9�i����,���!碮�(�b# ���j���W�ɂ6nX	�G.�Uzqե#�%]��<D���\�'1TD0�
���++vJ��x���k�Y�Zjs[��@Ph�軼��9,�ȞZ.ɫ9���=d��'	�C��	\]�v���^��8n��r�j��fv��g�NSݚ��+����,�Z7�0n�x��M�Iae$(+7M䪴e�x��������;��6���MP�	Y�AV~�2�����w����׎S]���@�?"EA�Mz��ڵ������MON��
�-�КFx��ֶb�:#Ed�@���\�R{�m�������~0� 7��#      �   �   x�m�=�0��9��i��`��]Le
"MP�J��$�ج�=[�p �+�Yj�c+XA���o������3F+'+�ۇms��1]�R�� �oj�3܋a
�ZC�#a3B�G�B���ˋ=���J/��	���'(��,����9$��J���Q�      �   r   x�3�tq�V(.I�K)VH�/��4�4�2�Tx�03^���Ē��b�ļJ�ڢ̼t��4�x0P(�(JMUH�H,JL.I-*�C�Uŭ9��~�L��9����i�i����� ��;�      �   R  x�m��q�0C�T/���K��#�/+ҙ��3D��l�%*)��4���16U���pU��� �O�*�Y��(�n�U�5���e?N���X�ŒN�����ʳ�'g+5�n@9T��i@�>�&A�D/A7?i���pv�B���Kjް�+�NMVjb��[�Jw�ټW@,K�{�Q�X�f�:1)��C1[��"��:�+�^�Cl4�m8�f�%�a�]�Z��n�ѭћ���!A7WT���u�e�*C+~I!�)fC�3J�gqڵ�(�9�%�eoZ4_ubR՚)DW���9��uS���8b�m/Q.P���e �\^B��~iC+߁5~����      �   /   x�3�,�,����2��J,K�2�LI�-�2��/�2�L������� �T	�      �   �	  x�eWI���]�pѻ�$3�F,QQ��$���2ï�D��zQapOjݓw8����\���*�Ϳ�z~��7��E¿��;�Jg���٥��&�J!��NŘ����$��۳�,��-ҙ��H� ����0�	�c��bDb�[�.�Va��`}x#������jg�5_劓����H�K��P��V���g��
�T_n���"�/�q�N��$�Q��2=`��`9X�zd`0�]�E2�����Ŝa�"�gϫ���C8;'bp�%^ԫB�nj��� �(_�3�i��i ~Dc���1�t�����<s�ܫ�Z�����R�\l9�HJ��޼�N�,�uq+�`jhq�2r��|������<Ep���RXzc�Hr�z�pܙ�㈛{J�Y 5�0V�uԚP,#U�O��]Iz%��3$�PJ���诌��!�(耡9f�bYd�p����?��كkU3[��|��Y(s�:����ηfޜƪ6��;`����|_�*�Zwg�� ���5HN@�ɍ8,O�}�.�����y��0L�0#����%�����.?�c�hp*Ϲ�urZU�{�w�k��88nLq�'G<f����{�`}x#����-�N�Q�l=����iCvk��!���z����%�ʰMgJ_����) �1��	X��v採������ܻ���7�EN�����f�[�9me�ь�Tz�&�8698d��z,%��3�vc>�O1 �G*�wt��������|�LQ9�*��*�wi�Y�������=_/�����+��s��E�>������ � ��^�zAw��,$9�����@Z���ut9�Ξ�����{bvuk*�W�|qġ�NGQ����l���]���w �`p|G�������|��-����,@R�l�Á�7��J/[��z�o�3�P<�z�E��×�߯|f�K���3�U@�#%� G��D�ˑ����9�/�K��G~z|`RK�U��b�:L�E"�dk�6E/�����~��$��w�x�qY�����M@�$�Kb� ���@���Äb�w�ٛ�+���u6�ɴ�wV�I�^s�b�l�Pd����Q����L=es|=�*�B��i���w�<ǣv�haLO�m�S��=��7����8�D��Q_L�'��&�{����MUh|%��>Ć:qd7ԗE�O��9u��7�@����Q�I���~��
QP<D*yc~�p<񫜇�V1��͜����t�ȻɌ�x���3ǐޕ�1�,�Δ���������
�5�YA@�B�a5��&ϱ�'r��������<����@0.4t��DI��.��Py$)+����3�/7�����	���KZi�����%���p �I��O~������J��.�i�`Z�����qy�wmq���[���ա%6�x�O$��@���C��:��w��}; ��@��_|^����p�w{����@m�%w�d{;7$j��U}�/"�3�+��WZ�u��)��gԲc��~D��M�r�(�
�:P�@�b����Zl������*aA�۸R��%�,MB��li�}a�Rym�v�i �>GԘ�(� �ؠ��!"�oa�6��Ef~��g�����棚�<��^��^[�ە��ly����I�)5�����e��T�Ga��whPsS����$vB.���+{��y����@��l�x��0��\�I��Ʃ�d��X�N.oWo��BӜ�M�*��	?}�(W����Y��n�tݝ~��A�9.��@ ��L�[l���{]�G�/R턶3�O�3;rm�B5�5�K$1�� A3
�e���A�Y�{����Q_�,C"R4v�0�`Pvd�β:� ���:�Ѿz��Q�W������
��68�[];Wz�Z-�ֻOt��-f�nQG���0B���2?��u��C��0��D��/"=����I�pWjs�X� c�ޞx�';��]�����8��ف9x ��myxm���H���A2�nXLGM��n������z���*���D���.�z�ꨈ̪1jG
��޿s�,buF�O�f�[uX��>G@�,4�^�8,�Ro�%��'U��$��L�
���R�=%sQ.{��+�9ۻ��s��da�	�_���������ZnH�Gr�1�Ň�tϲ�n�R�������{�?���1�z���hz�<���l�!��L���'��:�ݣ�'��H�7ei�p�~�\``ŲA��]�����nY)����~��{�?�����Zj;�%�D_H��T>
y:xD8_��K��i~�om,�X�������@/$(d`D�&�_=���J���e'�E3���'������uI�Fڳ�]�x������+ǓKK���X�R��~�4���BH�=&	�r�?�h4�'���     
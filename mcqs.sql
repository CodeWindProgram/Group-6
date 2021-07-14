PGDMP     :    5                y         	   quiz_demo    13.3    13.3 `    ]           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ^           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            _           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            `           1262    17124 	   quiz_demo    DATABASE     e   CREATE DATABASE quiz_demo WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_India.1252';
    DROP DATABASE quiz_demo;
                postgres    false                        3079    17163    pgcrypto 	   EXTENSION     <   CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;
    DROP EXTENSION pgcrypto;
                   false            a           0    0    EXTENSION pgcrypto    COMMENT     <   COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';
                        false    2            �            1259    17340    admin_l    TABLE     �   CREATE TABLE public.admin_l (
    ad_id bigint NOT NULL,
    admin_name character varying(250),
    email_id character varying(250),
    password character varying,
    confirmpass character varying,
    mobile_no character varying
);
    DROP TABLE public.admin_l;
       public         heap    postgres    false            �            1259    17125 	   dbanswers    TABLE     �   CREATE TABLE public.dbanswers (
    aid bigint NOT NULL,
    corr_answer character varying(250) NOT NULL,
    ques_id bigint NOT NULL
);
    DROP TABLE public.dbanswers;
       public         heap    postgres    false            �            1259    17128    answers_aid_seq    SEQUENCE     �   CREATE SEQUENCE public.answers_aid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.answers_aid_seq;
       public          postgres    false    201            b           0    0    answers_aid_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.answers_aid_seq OWNED BY public.dbanswers.aid;
          public          postgres    false    202            �            1259    17476    canswers    TABLE     s   CREATE TABLE public.canswers (
    ca_id bigint NOT NULL,
    c_answer character varying(250),
    cq_id bigint
);
    DROP TABLE public.canswers;
       public         heap    postgres    false            �            1259    17474    canswers_ca_id_seq    SEQUENCE     �   CREATE SEQUENCE public.canswers_ca_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.canswers_ca_id_seq;
       public          postgres    false    225            c           0    0    canswers_ca_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.canswers_ca_id_seq OWNED BY public.canswers.ca_id;
          public          postgres    false    224            �            1259    17465 
   cquestions    TABLE     �   CREATE TABLE public.cquestions (
    cq_id integer NOT NULL,
    c_ques character varying(500),
    ca_id integer,
    sub_id integer
);
    DROP TABLE public.cquestions;
       public         heap    postgres    false            �            1259    17463    cquestions_cq_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cquestions_cq_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.cquestions_cq_id_seq;
       public          postgres    false    223            d           0    0    cquestions_cq_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.cquestions_cq_id_seq OWNED BY public.cquestions.cq_id;
          public          postgres    false    222            �            1259    17130    dbquestions    TABLE     �   CREATE TABLE public.dbquestions (
    qid bigint NOT NULL,
    question_name character varying(250) NOT NULL,
    aid bigint,
    sub_id bigint
);
    DROP TABLE public.dbquestions;
       public         heap    postgres    false            �            1259    17385 	   j_answers    TABLE     x   CREATE TABLE public.j_answers (
    ja_id bigint NOT NULL,
    java_ans character varying NOT NULL,
    jq_id bigint
);
    DROP TABLE public.j_answers;
       public         heap    postgres    false            �            1259    17388    j_answers_ja_id_seq    SEQUENCE     �   CREATE SEQUENCE public.j_answers_ja_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.j_answers_ja_id_seq;
       public          postgres    false    212            e           0    0    j_answers_ja_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.j_answers_ja_id_seq OWNED BY public.j_answers.ja_id;
          public          postgres    false    213            �            1259    17379    j_questions    TABLE     w   CREATE TABLE public.j_questions (
    jq_id bigint NOT NULL,
    java_ques character varying(250),
    ja_id bigint
);
    DROP TABLE public.j_questions;
       public         heap    postgres    false            �            1259    17377    javaquestions_jq_id_seq    SEQUENCE     �   CREATE SEQUENCE public.javaquestions_jq_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.javaquestions_jq_id_seq;
       public          postgres    false    211            f           0    0    javaquestions_jq_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.javaquestions_jq_id_seq OWNED BY public.j_questions.jq_id;
          public          postgres    false    210            �            1259    17454 	   osanswers    TABLE     o   CREATE TABLE public.osanswers (
    osa_id bigint NOT NULL,
    os_ans character varying,
    osq_id bigint
);
    DROP TABLE public.osanswers;
       public         heap    postgres    false            �            1259    17452    osanswers_osa_id_seq    SEQUENCE     �   CREATE SEQUENCE public.osanswers_osa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.osanswers_osa_id_seq;
       public          postgres    false    221            g           0    0    osanswers_osa_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.osanswers_osa_id_seq OWNED BY public.osanswers.osa_id;
          public          postgres    false    220            �            1259    17443 
   osquestion    TABLE     �   CREATE TABLE public.osquestion (
    osq_id bigint NOT NULL,
    os_name character varying,
    osa_id bigint,
    sub_id bigint
);
    DROP TABLE public.osquestion;
       public         heap    postgres    false            �            1259    17441    osquestion_osq_id_seq    SEQUENCE     �   CREATE SEQUENCE public.osquestion_osq_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.osquestion_osq_id_seq;
       public          postgres    false    219            h           0    0    osquestion_osq_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.osquestion_osq_id_seq OWNED BY public.osquestion.osq_id;
          public          postgres    false    218            �            1259    17435 	   pyanswers    TABLE     w   CREATE TABLE public.pyanswers (
    pya_id bigint NOT NULL,
    py_answer character varying(250),
    pyq_id bigint
);
    DROP TABLE public.pyanswers;
       public         heap    postgres    false            �            1259    17433    pyanswers_pya_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pyanswers_pya_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.pyanswers_pya_id_seq;
       public          postgres    false    217            i           0    0    pyanswers_pya_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.pyanswers_pya_id_seq OWNED BY public.pyanswers.pya_id;
          public          postgres    false    216            �            1259    17427    pyquestions    TABLE     �   CREATE TABLE public.pyquestions (
    pyq_id bigint NOT NULL,
    py_ques character varying(250),
    pya_id bigint,
    sub_id bigint
);
    DROP TABLE public.pyquestions;
       public         heap    postgres    false            �            1259    17425    pyquestions_pyq_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pyquestions_pyq_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.pyquestions_pyq_id_seq;
       public          postgres    false    215            j           0    0    pyquestions_pyq_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.pyquestions_pyq_id_seq OWNED BY public.pyquestions.pyq_id;
          public          postgres    false    214            �            1259    17133    questions_qid_seq    SEQUENCE     �   CREATE SEQUENCE public.questions_qid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.questions_qid_seq;
       public          postgres    false    203            k           0    0    questions_qid_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.questions_qid_seq OWNED BY public.dbquestions.qid;
          public          postgres    false    204            �            1259    17348    results    TABLE     �   CREATE TABLE public.results (
    r_id bigint NOT NULL,
    userid bigint,
    sub_id bigint,
    t_marks bigint,
    r_date date
);
    DROP TABLE public.results;
       public         heap    postgres    false            �            1259    17335    subject    TABLE     j   CREATE TABLE public.subject (
    sub_id bigint NOT NULL,
    sub_name character varying(250) NOT NULL
);
    DROP TABLE public.subject;
       public         heap    postgres    false            �            1259    17202    usersreg    TABLE     +  CREATE TABLE public.usersreg (
    userid bigint NOT NULL,
    username character varying(250) NOT NULL,
    email character varying(250) NOT NULL,
    password character varying(250) NOT NULL,
    confirm_password character varying(250) NOT NULL,
    "DOB" date,
    mobile_no character varying
);
    DROP TABLE public.usersreg;
       public         heap    postgres    false            �            1259    17200    users_userid_seq    SEQUENCE     �   CREATE SEQUENCE public.users_userid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.users_userid_seq;
       public          postgres    false    206            l           0    0    users_userid_seq    SEQUENCE OWNED BY     H   ALTER SEQUENCE public.users_userid_seq OWNED BY public.usersreg.userid;
          public          postgres    false    205            �           2604    17883    canswers ca_id    DEFAULT     p   ALTER TABLE ONLY public.canswers ALTER COLUMN ca_id SET DEFAULT nextval('public.canswers_ca_id_seq'::regclass);
 =   ALTER TABLE public.canswers ALTER COLUMN ca_id DROP DEFAULT;
       public          postgres    false    225    224    225            �           2604    17468    cquestions cq_id    DEFAULT     t   ALTER TABLE ONLY public.cquestions ALTER COLUMN cq_id SET DEFAULT nextval('public.cquestions_cq_id_seq'::regclass);
 ?   ALTER TABLE public.cquestions ALTER COLUMN cq_id DROP DEFAULT;
       public          postgres    false    222    223    223            �           2604    17869    dbanswers aid    DEFAULT     l   ALTER TABLE ONLY public.dbanswers ALTER COLUMN aid SET DEFAULT nextval('public.answers_aid_seq'::regclass);
 <   ALTER TABLE public.dbanswers ALTER COLUMN aid DROP DEFAULT;
       public          postgres    false    202    201            �           2604    17850    dbquestions qid    DEFAULT     p   ALTER TABLE ONLY public.dbquestions ALTER COLUMN qid SET DEFAULT nextval('public.questions_qid_seq'::regclass);
 >   ALTER TABLE public.dbquestions ALTER COLUMN qid DROP DEFAULT;
       public          postgres    false    204    203            �           2604    17833    j_answers ja_id    DEFAULT     r   ALTER TABLE ONLY public.j_answers ALTER COLUMN ja_id SET DEFAULT nextval('public.j_answers_ja_id_seq'::regclass);
 >   ALTER TABLE public.j_answers ALTER COLUMN ja_id DROP DEFAULT;
       public          postgres    false    213    212            �           2604    17821    j_questions jq_id    DEFAULT     x   ALTER TABLE ONLY public.j_questions ALTER COLUMN jq_id SET DEFAULT nextval('public.javaquestions_jq_id_seq'::regclass);
 @   ALTER TABLE public.j_questions ALTER COLUMN jq_id DROP DEFAULT;
       public          postgres    false    211    210    211            �           2604    17804    osanswers osa_id    DEFAULT     t   ALTER TABLE ONLY public.osanswers ALTER COLUMN osa_id SET DEFAULT nextval('public.osanswers_osa_id_seq'::regclass);
 ?   ALTER TABLE public.osanswers ALTER COLUMN osa_id DROP DEFAULT;
       public          postgres    false    220    221    221            �           2604    17780    osquestion osq_id    DEFAULT     v   ALTER TABLE ONLY public.osquestion ALTER COLUMN osq_id SET DEFAULT nextval('public.osquestion_osq_id_seq'::regclass);
 @   ALTER TABLE public.osquestion ALTER COLUMN osq_id DROP DEFAULT;
       public          postgres    false    219    218    219            �           2604    17769    pyanswers pya_id    DEFAULT     t   ALTER TABLE ONLY public.pyanswers ALTER COLUMN pya_id SET DEFAULT nextval('public.pyanswers_pya_id_seq'::regclass);
 ?   ALTER TABLE public.pyanswers ALTER COLUMN pya_id DROP DEFAULT;
       public          postgres    false    217    216    217            �           2604    17721    pyquestions pyq_id    DEFAULT     x   ALTER TABLE ONLY public.pyquestions ALTER COLUMN pyq_id SET DEFAULT nextval('public.pyquestions_pyq_id_seq'::regclass);
 A   ALTER TABLE public.pyquestions ALTER COLUMN pyq_id DROP DEFAULT;
       public          postgres    false    214    215    215            �           2604    17742    usersreg userid    DEFAULT     o   ALTER TABLE ONLY public.usersreg ALTER COLUMN userid SET DEFAULT nextval('public.users_userid_seq'::regclass);
 >   ALTER TABLE public.usersreg ALTER COLUMN userid DROP DEFAULT;
       public          postgres    false    206    205    206            I          0    17340    admin_l 
   TABLE DATA           `   COPY public.admin_l (ad_id, admin_name, email_id, password, confirmpass, mobile_no) FROM stdin;
    public          postgres    false    208   f       Z          0    17476    canswers 
   TABLE DATA           :   COPY public.canswers (ca_id, c_answer, cq_id) FROM stdin;
    public          postgres    false    225   �g       X          0    17465 
   cquestions 
   TABLE DATA           B   COPY public.cquestions (cq_id, c_ques, ca_id, sub_id) FROM stdin;
    public          postgres    false    223   ji       B          0    17125 	   dbanswers 
   TABLE DATA           >   COPY public.dbanswers (aid, corr_answer, ques_id) FROM stdin;
    public          postgres    false    201   �j       D          0    17130    dbquestions 
   TABLE DATA           F   COPY public.dbquestions (qid, question_name, aid, sub_id) FROM stdin;
    public          postgres    false    203   m       M          0    17385 	   j_answers 
   TABLE DATA           ;   COPY public.j_answers (ja_id, java_ans, jq_id) FROM stdin;
    public          postgres    false    212   �n       L          0    17379    j_questions 
   TABLE DATA           >   COPY public.j_questions (jq_id, java_ques, ja_id) FROM stdin;
    public          postgres    false    211   �p       V          0    17454 	   osanswers 
   TABLE DATA           ;   COPY public.osanswers (osa_id, os_ans, osq_id) FROM stdin;
    public          postgres    false    221   ur       T          0    17443 
   osquestion 
   TABLE DATA           E   COPY public.osquestion (osq_id, os_name, osa_id, sub_id) FROM stdin;
    public          postgres    false    219   3t       R          0    17435 	   pyanswers 
   TABLE DATA           >   COPY public.pyanswers (pya_id, py_answer, pyq_id) FROM stdin;
    public          postgres    false    217   ju       P          0    17427    pyquestions 
   TABLE DATA           F   COPY public.pyquestions (pyq_id, py_ques, pya_id, sub_id) FROM stdin;
    public          postgres    false    215   �v       J          0    17348    results 
   TABLE DATA           H   COPY public.results (r_id, userid, sub_id, t_marks, r_date) FROM stdin;
    public          postgres    false    209   Bx       H          0    17335    subject 
   TABLE DATA           3   COPY public.subject (sub_id, sub_name) FROM stdin;
    public          postgres    false    207   �y       G          0    17202    usersreg 
   TABLE DATA           i   COPY public.usersreg (userid, username, email, password, confirm_password, "DOB", mobile_no) FROM stdin;
    public          postgres    false    206   �y       m           0    0    answers_aid_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.answers_aid_seq', 1, false);
          public          postgres    false    202            n           0    0    canswers_ca_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.canswers_ca_id_seq', 1, false);
          public          postgres    false    224            o           0    0    cquestions_cq_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.cquestions_cq_id_seq', 1, false);
          public          postgres    false    222            p           0    0    j_answers_ja_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.j_answers_ja_id_seq', 1, false);
          public          postgres    false    213            q           0    0    javaquestions_jq_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.javaquestions_jq_id_seq', 1, false);
          public          postgres    false    210            r           0    0    osanswers_osa_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.osanswers_osa_id_seq', 1, false);
          public          postgres    false    220            s           0    0    osquestion_osq_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.osquestion_osq_id_seq', 1, false);
          public          postgres    false    218            t           0    0    pyanswers_pya_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.pyanswers_pya_id_seq', 1, false);
          public          postgres    false    216            u           0    0    pyquestions_pyq_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.pyquestions_pyq_id_seq', 1, false);
          public          postgres    false    214            v           0    0    questions_qid_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.questions_qid_seq', 1, false);
          public          postgres    false    204            w           0    0    users_userid_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.users_userid_seq', 13, true);
          public          postgres    false    205            �           2606    17895    admin_l admin_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.admin_l
    ADD CONSTRAINT admin_pkey PRIMARY KEY (ad_id);
 <   ALTER TABLE ONLY public.admin_l DROP CONSTRAINT admin_pkey;
       public            postgres    false    208            �           2606    17871    dbanswers answers_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.dbanswers
    ADD CONSTRAINT answers_pkey PRIMARY KEY (aid);
 @   ALTER TABLE ONLY public.dbanswers DROP CONSTRAINT answers_pkey;
       public            postgres    false    201            �           2606    17885    canswers canswers_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.canswers
    ADD CONSTRAINT canswers_pkey PRIMARY KEY (ca_id);
 @   ALTER TABLE ONLY public.canswers DROP CONSTRAINT canswers_pkey;
       public            postgres    false    225            �           2606    17473    cquestions cquestions_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.cquestions
    ADD CONSTRAINT cquestions_pkey PRIMARY KEY (cq_id);
 D   ALTER TABLE ONLY public.cquestions DROP CONSTRAINT cquestions_pkey;
       public            postgres    false    223            �           2606    17835    j_answers j_answers_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.j_answers
    ADD CONSTRAINT j_answers_pkey PRIMARY KEY (ja_id);
 B   ALTER TABLE ONLY public.j_answers DROP CONSTRAINT j_answers_pkey;
       public            postgres    false    212            �           2606    17823    j_questions javaquestions_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.j_questions
    ADD CONSTRAINT javaquestions_pkey PRIMARY KEY (jq_id);
 H   ALTER TABLE ONLY public.j_questions DROP CONSTRAINT javaquestions_pkey;
       public            postgres    false    211            �           2606    17806    osanswers osanswers_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.osanswers
    ADD CONSTRAINT osanswers_pkey PRIMARY KEY (osa_id);
 B   ALTER TABLE ONLY public.osanswers DROP CONSTRAINT osanswers_pkey;
       public            postgres    false    221            �           2606    17782    osquestion osquestion_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.osquestion
    ADD CONSTRAINT osquestion_pkey PRIMARY KEY (osq_id);
 D   ALTER TABLE ONLY public.osquestion DROP CONSTRAINT osquestion_pkey;
       public            postgres    false    219            �           2606    17771    pyanswers pyanswers_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.pyanswers
    ADD CONSTRAINT pyanswers_pkey PRIMARY KEY (pya_id);
 B   ALTER TABLE ONLY public.pyanswers DROP CONSTRAINT pyanswers_pkey;
       public            postgres    false    217            �           2606    17723    pyquestions pyquestions_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.pyquestions
    ADD CONSTRAINT pyquestions_pkey PRIMARY KEY (pyq_id);
 F   ALTER TABLE ONLY public.pyquestions DROP CONSTRAINT pyquestions_pkey;
       public            postgres    false    215            �           2606    17852    dbquestions questions_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.dbquestions
    ADD CONSTRAINT questions_pkey PRIMARY KEY (qid);
 D   ALTER TABLE ONLY public.dbquestions DROP CONSTRAINT questions_pkey;
       public            postgres    false    203            �           2606    17701    results result_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.results
    ADD CONSTRAINT result_pkey PRIMARY KEY (r_id);
 =   ALTER TABLE ONLY public.results DROP CONSTRAINT result_pkey;
       public            postgres    false    209            �           2606    17753    subject subject_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.subject
    ADD CONSTRAINT subject_pkey PRIMARY KEY (sub_id);
 >   ALTER TABLE ONLY public.subject DROP CONSTRAINT subject_pkey;
       public            postgres    false    207            �           2606    17744    usersreg users_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.usersreg
    ADD CONSTRAINT users_pkey PRIMARY KEY (userid);
 =   ALTER TABLE ONLY public.usersreg DROP CONSTRAINT users_pkey;
       public            postgres    false    206            �           1259    17877    fki_a_q    INDEX     @   CREATE INDEX fki_a_q ON public.dbanswers USING btree (ques_id);
    DROP INDEX public.fki_a_q;
       public            postgres    false    201            �           1259    17863    fki_fk_dbms    INDEX     E   CREATE INDEX fki_fk_dbms ON public.dbquestions USING btree (sub_id);
    DROP INDEX public.fki_fk_dbms;
       public            postgres    false    203            �           1259    17758    fki_fk_subid    INDEX     B   CREATE INDEX fki_fk_subid ON public.results USING btree (sub_id);
     DROP INDEX public.fki_fk_subid;
       public            postgres    false    209            �           1259    17708    fki_fk_uid_result    INDEX     G   CREATE INDEX fki_fk_uid_result ON public.results USING btree (userid);
 %   DROP INDEX public.fki_fk_uid_result;
       public            postgres    false    209            I   �  x�e��n�@�5>�wMpf��\�:JE.u�� 
���ҧ�E��ts��?�/�@ 9�i����,���!碮�(�b# ���j���W�ɂ6nX	�G.�Uzqե#�%]��<D���\�'1TD0�
���++vJ��x���k�Y�Zjs[��@Ph�軼��9,�ȞZ.ɫ9���=d��'	�C��	\]�v���^��8n��r�j��fv��g�NSݚ��+����,�Z7�0n�x��M�Iae$(+7M䪴e�x��������;��6���MP�	Y�AV~�2�����w����׎S]���@�?"EA�Mz��ڵ������MON��
�-�КFx��ֶb�:#Ed�@���\�R{�m�������~0� 7��#      Z   �  x�u�Mo�0��ԯຏ�Kv��nQ`��A��C��ʬA�Iɖ?�.P��N���%E��к}��ˋ����7ݻ�p&�f
�<��GK��ަ���;��m1�
��Ԙ��韬V�Cs��EN�P �+˷�Dk����ާ�çt���nm+waod��B�x�l���Ҷ*���9��z�DJh�y�%�
��';������Dj�W;�ze��EHdp�7�4�Ƣ�^Q�TLW=h#=v2J�QJ&�ys�CԶ�������{g:�n��+1w*�ٔ4��sf%	/`��#������Y�IV�RL��^��ب��>����h�ܞ@�.�ؠ�^'"�q��ic4VB9���[�Y^�ڻ��4q��=�4�$�y��D�4��M�q����S�:l�x��%4���s*3Z�Ӳ��sw��jҘ' ��MEv�'��/��l#�      X   �  x��S�N�0>gO�;������irRwJ��q}{�; m�m���]��.�J��%���b�_��LA�NY����1����ZqO3�\\@¼�y���v��#ql(Kl#���+��6�.���(jmr��`-����~�����PX�?�I�=c���1��J��0(��P�����U�)�z�w�U-���P��%��)�dZ��&A�OhPdԲF�5����m����\N����\2!�Ub�6�����XY�����a�6�c	>�vK�z�F5�T�q1jIl����dc=v�f�x?��<)�ӹ�AI���U��x�V��܇�L��i)��G�\0�}��؎!$�u�n,����lݖ�=�hi}Ƒ�AYޯV��7� *�      B   �  x�}�Oo�@�ϳ�bni{��g�ת�jb��\�xlPa���o�Y��]G������e���w�E��
�Gs@����Fck��_W�#kn�|=i���46�;$}��پf�������{���CJ��tQw�x�����#�@��W�M/�<�(����+C�N.)
]\z�"��K�,~�Cc*�Ɨ�v�b�_��</��P��I;��������V�.��ze���Pk5U,�f��lV7�w?5cVR�bE=��̲�=Z&����H�Ѡ�f��tC/�ܟ�w�����S�9.�[Q2ޕ��r�m�a����B�r(%W�uCu.���FQ�9#�̳�|��K�\D�[�m'��%X�5�JBP���P�|�}t`1�ߒ��t-;�Q^NQ������ޓ�z�U�`&'62/cJ���W��K?!!���Y#�NT�c�C��v3�w��k�K�T��Q��~:O�1l����p�V��w����TƖ��J��k3x      D   �  x���MkA���_!|詄��&i/&r��R(��;x>��L����4�֔�v/�}}t�����3F�S�X��̅8�2Oi����i(G�ta�M�ژ���Q3�H0$���Ž�)RF�g�L��e�(�/hBA>0xw �����Hp�Ֆ�i����5E~=yj�Klk��j���7�޽PU,�9�)1��P��ȭ�rNyk���]x�@�`Na����K��q>C�nb)�Y|0O"T(X?�?�u�{����L��7oͪ)���Ot_]���eS�:M)�81ܚ����VǺW��*���NO������tsZ�xЋ�z7� ���fK�����Q��s�d6�bz�������d�E��eV-����o�)�����$"[sՉ��m<�p��i|}�r�jiZk�����|IG�r��N�s�Z��M��K)�v�Z�~T�      M     x�]Rˎ�0<S_�[Ob;�ciѦhl��e/����ؒ!����K�pb�FgD���@���#�H��
�{<���H�wI(����������I�KT����ƺ �X���'�g�QQ�5X2�����{#k�0צ`s
�A���
�9������Rs�!��Amp���v*�Xm9��~�|�N�c{�n2�,������0���[R�b���j0X[�J$��ݱϺ��#��輰�N��rN����v=ZS�XS(m�a-��5�J��]�r$c���O2�g}�%�Jz�<�t������I�m�6R]�`#�t�+����˅���.���k8L+�������x�:�R�YW,`+��L�[��ۆ����6�Է����L�i�W���2��Q�g::�#�h��f�P���,^9��py�;�-�/_��H�],wR8jY���`��^d+�u<���n�/�~L�-�
,�d)��.�������"��/ħ7bY-�����u\=W��z]!���%�      L   �  x�}RKN�0]ǧ� DZ
tU���
�� ��=I����3�ZĦd�̛����uk����%�yyo� �K�=��&B�:�qH��Ѧ	���s(پ�/\5��5p��F� +z�Us���{�
"G2E���_4z�]"X_���.���󦝩�S���s O��f�uv�֘B~��� ��a�>�+��
��G�A��2$AjqJW$S��qNu����8� z�(�g��@�C��CaK�Ǻ�$��#�Uׂ{�a���C7�GG#��}�Nz�n�q'kVr[ʈ��G�=���K�<^�'M{�Q�
Pk�e�Ý*<FZ5�K�^4k����q��)�ā̙ HP�B�beP!�Jx�˳,W�AX���\)�`��      V   �  x�uR�n1<S_�H�ڇ�{l�C
�u��%YK��eiAi���Kn7H��4��P�D�|�9�Q5|�q~b����Ȱ���O�;h�V+�x]C�k��m 3�=4�T�A�QW	�A|��4!���^�K.x�V�V���HBtB�X�&��[	g�)x��uN�r��"���biI,�fv=F���sd)]~��(��E�!��DՕ�LQ��Nn��}ff��k�G<&���J��3�Cr���)/J��=&�:��N�v��λ��"I'5��$��[`���k	]:!]�]��KW)�p�����o)"7(JF�~7w��[�WM��F=�|�#��͇�%9ԯ�L5���|���j�������f�x��L��ի+�Z�׹�6h|ra�<	`*��p�¨m����p|���`�ʵ|�Q�&d��V)����      T   '  x�}�?kA��O1]�r��XH�@��"��p7�-�������3�	��;�{��vj�=�n�C	���l�&��"f��K��[33MՈ���������Q����=��ٶf))�	�m'���=���iߚ��ܬ?7[�+�:T���?��S���j'��|�P+����3%8� 4X��t]��i4ci���8�<�;F�������E�e�V�pF��K����"My6������3ܚ|�PΏл�f����?wC	�͖���O�B�{�ݡ5�W�ؽTU�B�I      R   f  x��S�N�0<��TQ�ySB@%�)C����߳vKi�z�������*
�i��p[Ͳшb,�5Z�晚��%*!p�O���A��Y�X�$����:���M��2׺���F��^:Jf���Nm��Ė�WY	K�jХKB�BfL���H�܇�{�q�er�D��O&	'n���ɚ���;�ڕz�^~���6*�=z;�F��*��P+�;�U�ZkCa�j�ZLx�4y��|ï}?���F���ql��ݢ����%i���=!���]wl��8ܛ��rp3��b)�n�µ��h��[!�U^���H��6�Bј%�ܴ���o�����(�      P   R  x���=S�0�g�Wh��mh)Sf66�Qj_+g;M��B��
��H�ޏ�z��X��@d�А�4����C1�ɀ��!9
���9[�j��J-UY��F�u�A��d���#ƑQ�=uXWjͫ%�j��O�x�q�K�Γ9�UC5�����^�����cu�&c̪g+�m�A��-z/'�-��ѲV0���o�7��_�:%�v?tly3�z(ۍ:SL��R�%��"t4`�ӻ�J�V{��xk�����ى��!�h�W��RR�-Ω^�T�`�� ��-�<g���'~K�;�6�[.n�j�`$�1#��w>?0fz�5�Rb�x,�����      J   R  x�m��q�0C�T/���K��#�/+ҙ��3D��l�%*)��4���16U���pU��� �O�*�Y��(�n�U�5���e?N���X�ŒN�����ʳ�'g+5�n@9T��i@�>�&A�D/A7?i���pv�B���Kjް�+�NMVjb��[�Jw�ټW@,K�{�Q�X�f�:1)��C1[��"��:�+�^�Cl4�m8�f�%�a�]�Z��n�ѭћ���!A7WT���u�e�*C+~I!�)fC�3J�gqڵ�(�9�%�eoZ4_ubR՚)DW���9��uS���8b�m/Q.P���e �\^B��~iC+߁5~����      H   /   x�3�,�,����2��J,K�2�LI�-�2��/�2�L������� �T	�      G   �	  x�eWI���]�pѻ�$3�F,QQ��$���2ï�D��zQapOjݓw8����\���*�Ϳ�z~��7��E¿��;�Jg���٥��&�J!��NŘ����$��۳�,��-ҙ��H� ����0�	�c��bDb�[�.�Va��`}x#������jg�5_劓����H�K��P��V���g��
�T_n���"�/�q�N��$�Q��2=`��`9X�zd`0�]�E2�����Ŝa�"�gϫ���C8;'bp�%^ԫB�nj��� �(_�3�i��i ~Dc���1�t�����<s�ܫ�Z�����R�\l9�HJ��޼�N�,�uq+�`jhq�2r��|������<Ep���RXzc�Hr�z�pܙ�㈛{J�Y 5�0V�uԚP,#U�O��]Iz%��3$�PJ���诌��!�(耡9f�bYd�p����?��كkU3[��|��Y(s�:����ηfޜƪ6��;`����|_�*�Zwg�� ���5HN@�ɍ8,O�}�.�����y��0L�0#����%�����.?�c�hp*Ϲ�urZU�{�w�k��88nLq�'G<f����{�`}x#����-�N�Q�l=����iCvk��!���z����%�ʰMgJ_����) �1��	X��v採������ܻ���7�EN�����f�[�9me�ь�Tz�&�8698d��z,%��3�vc>�O1 �G*�wt��������|�LQ9�*��*�wi�Y�������=_/�����+��s��E�>������ � ��^�zAw��,$9�����@Z���ut9�Ξ�����{bvuk*�W�|qġ�NGQ����l���]���w �`p|G�������|��-����,@R�l�Á�7��J/[��z�o�3�P<�z�E��×�߯|f�K���3�U@�#%� G��D�ˑ����9�/�K��G~z|`RK�U��b�:L�E"�dk�6E/�����~��$��w�x�qY�����M@�$�Kb� ���@���Äb�w�ٛ�+���u6�ɴ�wV�I�^s�b�l�Pd����Q����L=es|=�*�B��i���w�<ǣv�haLO�m�S��=��7����8�D��Q_L�'��&�{����MUh|%��>Ć:qd7ԗE�O��9u��7�@����Q�I���~��
QP<D*yc~�p<񫜇�V1��͜����t�ȻɌ�x���3ǐޕ�1�,�Δ���������
�5�YA@�B�a5��&ϱ�'r��������<����@0.4t��DI��.��Py$)+����3�/7�����	���KZi�����%���p �I��O~������J��.�i�`Z�����qy�wmq���[���ա%6�x�O$��@���C��:��w��}; ��@��_|^����p�w{����@m�%w�d{;7$j��U}�/"�3�+��WZ�u��)��gԲc��~D��M�r�(�
�:P�@�b����Zl������*aA�۸R��%�,MB��li�}a�Rym�v�i �>GԘ�(� �ؠ��!"�oa�6��Ef~��g�����棚�<��^��^[�ە��ly����I�)5�����e��T�Ga��whPsS����$vB.���+{��y����@��l�x��0��\�I��Ʃ�d��X�N.oWo��BӜ�M�*��	?}�(W����Y��n�tݝ~��A�9.��@ ��L�[l���{]�G�/R턶3�O�3;rm�B5�5�K$1�� A3
�e���A�Y�{����Q_�,C"R4v�0�`Pvd�β:� ���:�Ѿz��Q�W������
��68�[];Wz�Z-�ֻOt��-f�nQG���0B���2?��u��C��0��D��/"=����I�pWjs�X� c�ޞx�';��]�����8��ف9x ��myxm���H���A2�nXLGM��n������z���*���D���.�z�ꨈ̪1jG
��޿s�,buF�O�f�[uX��>G@�,4�^�8,�Ro�%��'U��$��L�
���R�=%sQ.{��+�9ۻ��s��da�	�_���������ZnH�Gr�1�Ň�tϲ�n�R�������{�?���1�z���hz�<���l�!��L���'��:�ݣ�'��H�7ei�p�~�\``ŲA��]�����nY)����~��{�?�����Zj;�%�D_H��T>
y:xD8_��K��i~�om,�X�������@/$(d`D�&�_=���J���e'�E3���'������uI�Fڳ�]�x������+ǓKK���X�R��~�4���BH�=&	�r�?�h4�'���     
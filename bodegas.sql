PGDMP                         |            examen    15.2    15.2 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    100208    examen    DATABASE     y   CREATE DATABASE examen WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Chile.1252';
    DROP DATABASE examen;
                postgres    false            �            1259    100320 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    100319    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    233            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    232            �            1259    100329    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    100328    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    235            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    234            �            1259    100313    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    100312    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    231            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    230            �            1259    100255    bodegasapp_bodega    TABLE     �   CREATE TABLE public.bodegasapp_bodega (
    id bigint NOT NULL,
    codigo character varying(10) NOT NULL,
    tipo_bodega_id bigint NOT NULL,
    disponible boolean NOT NULL
);
 %   DROP TABLE public.bodegasapp_bodega;
       public         heap    postgres    false            �            1259    100254    bodegasapp_bodega_id_seq    SEQUENCE     �   CREATE SEQUENCE public.bodegasapp_bodega_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.bodegasapp_bodega_id_seq;
       public          postgres    false    225            �           0    0    bodegasapp_bodega_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.bodegasapp_bodega_id_seq OWNED BY public.bodegasapp_bodega.id;
          public          postgres    false    224            �            1259    100262    bodegasapp_like    TABLE     }   CREATE TABLE public.bodegasapp_like (
    id bigint NOT NULL,
    noticia_id bigint NOT NULL,
    user_id bigint NOT NULL
);
 #   DROP TABLE public.bodegasapp_like;
       public         heap    postgres    false            �            1259    100261    bodegasapp_like_id_seq    SEQUENCE        CREATE SEQUENCE public.bodegasapp_like_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.bodegasapp_like_id_seq;
       public          postgres    false    227            �           0    0    bodegasapp_like_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.bodegasapp_like_id_seq OWNED BY public.bodegasapp_like.id;
          public          postgres    false    226            �            1259    100239    bodegasapp_noticia    TABLE     �   CREATE TABLE public.bodegasapp_noticia (
    id bigint NOT NULL,
    titulo character varying(45) NOT NULL,
    cuerpo text NOT NULL,
    imagen_url character varying(255) NOT NULL
);
 &   DROP TABLE public.bodegasapp_noticia;
       public         heap    postgres    false            �            1259    100238    bodegasapp_noticia_id_seq    SEQUENCE     �   CREATE SEQUENCE public.bodegasapp_noticia_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.bodegasapp_noticia_id_seq;
       public          postgres    false    221            �           0    0    bodegasapp_noticia_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.bodegasapp_noticia_id_seq OWNED BY public.bodegasapp_noticia.id;
          public          postgres    false    220            �            1259    100248    bodegasapp_tipobodega    TABLE     	  CREATE TABLE public.bodegasapp_tipobodega (
    id bigint NOT NULL,
    tipo character varying(255) NOT NULL,
    metros integer NOT NULL,
    quimicos boolean NOT NULL,
    organicos boolean NOT NULL,
    hermetico boolean NOT NULL,
    precio integer NOT NULL
);
 )   DROP TABLE public.bodegasapp_tipobodega;
       public         heap    postgres    false            �            1259    100247    bodegasapp_tipobodega_id_seq    SEQUENCE     �   CREATE SEQUENCE public.bodegasapp_tipobodega_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.bodegasapp_tipobodega_id_seq;
       public          postgres    false    223            �           0    0    bodegasapp_tipobodega_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.bodegasapp_tipobodega_id_seq OWNED BY public.bodegasapp_tipobodega.id;
          public          postgres    false    222            �            1259    100228    bodegasapp_user    TABLE     z  CREATE TABLE public.bodegasapp_user (
    id bigint NOT NULL,
    last_login timestamp with time zone,
    username character varying(16) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(128) NOT NULL,
    name character varying(45) NOT NULL,
    is_active boolean NOT NULL,
    is_staff boolean NOT NULL,
    is_superuser boolean NOT NULL
);
 #   DROP TABLE public.bodegasapp_user;
       public         heap    postgres    false            �            1259    100371    bodegasapp_user_groups    TABLE     �   CREATE TABLE public.bodegasapp_user_groups (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    group_id integer NOT NULL
);
 *   DROP TABLE public.bodegasapp_user_groups;
       public         heap    postgres    false            �            1259    100370    bodegasapp_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.bodegasapp_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.bodegasapp_user_groups_id_seq;
       public          postgres    false    238            �           0    0    bodegasapp_user_groups_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.bodegasapp_user_groups_id_seq OWNED BY public.bodegasapp_user_groups.id;
          public          postgres    false    237            �            1259    100227    bodegasapp_user_id_seq    SEQUENCE        CREATE SEQUENCE public.bodegasapp_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.bodegasapp_user_id_seq;
       public          postgres    false    219            �           0    0    bodegasapp_user_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.bodegasapp_user_id_seq OWNED BY public.bodegasapp_user.id;
          public          postgres    false    218            �            1259    100381     bodegasapp_user_user_permissions    TABLE     �   CREATE TABLE public.bodegasapp_user_user_permissions (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    permission_id integer NOT NULL
);
 4   DROP TABLE public.bodegasapp_user_user_permissions;
       public         heap    postgres    false            �            1259    100380 '   bodegasapp_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.bodegasapp_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.bodegasapp_user_user_permissions_id_seq;
       public          postgres    false    240            �           0    0 '   bodegasapp_user_user_permissions_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.bodegasapp_user_user_permissions_id_seq OWNED BY public.bodegasapp_user_user_permissions.id;
          public          postgres    false    239            �            1259    100291    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
       public         heap    postgres    false            �            1259    100290    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    229            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    228            �            1259    100219    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    100218    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    217            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    216            �            1259    100210    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    100209    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    215            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    214            �            1259    100361    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �           2604    100323    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    233    233            �           2604    100332    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    235    235            �           2604    100316    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230    231            �           2604    100258    bodegasapp_bodega id    DEFAULT     |   ALTER TABLE ONLY public.bodegasapp_bodega ALTER COLUMN id SET DEFAULT nextval('public.bodegasapp_bodega_id_seq'::regclass);
 C   ALTER TABLE public.bodegasapp_bodega ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            �           2604    100265    bodegasapp_like id    DEFAULT     x   ALTER TABLE ONLY public.bodegasapp_like ALTER COLUMN id SET DEFAULT nextval('public.bodegasapp_like_id_seq'::regclass);
 A   ALTER TABLE public.bodegasapp_like ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    227    227            �           2604    100242    bodegasapp_noticia id    DEFAULT     ~   ALTER TABLE ONLY public.bodegasapp_noticia ALTER COLUMN id SET DEFAULT nextval('public.bodegasapp_noticia_id_seq'::regclass);
 D   ALTER TABLE public.bodegasapp_noticia ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    100251    bodegasapp_tipobodega id    DEFAULT     �   ALTER TABLE ONLY public.bodegasapp_tipobodega ALTER COLUMN id SET DEFAULT nextval('public.bodegasapp_tipobodega_id_seq'::regclass);
 G   ALTER TABLE public.bodegasapp_tipobodega ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            �           2604    100231    bodegasapp_user id    DEFAULT     x   ALTER TABLE ONLY public.bodegasapp_user ALTER COLUMN id SET DEFAULT nextval('public.bodegasapp_user_id_seq'::regclass);
 A   ALTER TABLE public.bodegasapp_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            �           2604    100374    bodegasapp_user_groups id    DEFAULT     �   ALTER TABLE ONLY public.bodegasapp_user_groups ALTER COLUMN id SET DEFAULT nextval('public.bodegasapp_user_groups_id_seq'::regclass);
 H   ALTER TABLE public.bodegasapp_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    237    238            �           2604    100384 #   bodegasapp_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.bodegasapp_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.bodegasapp_user_user_permissions_id_seq'::regclass);
 R   ALTER TABLE public.bodegasapp_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    240    240            �           2604    100294    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    229    229            �           2604    100222    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    100213    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            �          0    100320 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    233   ��       �          0    100329    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    235   �       �          0    100313    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    231   1�       �          0    100255    bodegasapp_bodega 
   TABLE DATA           S   COPY public.bodegasapp_bodega (id, codigo, tipo_bodega_id, disponible) FROM stdin;
    public          postgres    false    225   Ϸ       �          0    100262    bodegasapp_like 
   TABLE DATA           B   COPY public.bodegasapp_like (id, noticia_id, user_id) FROM stdin;
    public          postgres    false    227   �       �          0    100239    bodegasapp_noticia 
   TABLE DATA           L   COPY public.bodegasapp_noticia (id, titulo, cuerpo, imagen_url) FROM stdin;
    public          postgres    false    221   F�       �          0    100248    bodegasapp_tipobodega 
   TABLE DATA           i   COPY public.bodegasapp_tipobodega (id, tipo, metros, quimicos, organicos, hermetico, precio) FROM stdin;
    public          postgres    false    223   ��       �          0    100228    bodegasapp_user 
   TABLE DATA           }   COPY public.bodegasapp_user (id, last_login, username, email, password, name, is_active, is_staff, is_superuser) FROM stdin;
    public          postgres    false    219   ��       �          0    100371    bodegasapp_user_groups 
   TABLE DATA           G   COPY public.bodegasapp_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    238   W�       �          0    100381     bodegasapp_user_user_permissions 
   TABLE DATA           V   COPY public.bodegasapp_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    240   t�       �          0    100291    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    229   ��       �          0    100219    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    217   s�       �          0    100210    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    215   ��       �          0    100361    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    236   �       �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    232            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    234            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 40, true);
          public          postgres    false    230            �           0    0    bodegasapp_bodega_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.bodegasapp_bodega_id_seq', 10, true);
          public          postgres    false    224            �           0    0    bodegasapp_like_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.bodegasapp_like_id_seq', 3, true);
          public          postgres    false    226            �           0    0    bodegasapp_noticia_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.bodegasapp_noticia_id_seq', 3, true);
          public          postgres    false    220            �           0    0    bodegasapp_tipobodega_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.bodegasapp_tipobodega_id_seq', 4, true);
          public          postgres    false    222            �           0    0    bodegasapp_user_groups_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.bodegasapp_user_groups_id_seq', 1, false);
          public          postgres    false    237            �           0    0    bodegasapp_user_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.bodegasapp_user_id_seq', 5, true);
          public          postgres    false    218            �           0    0 '   bodegasapp_user_user_permissions_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.bodegasapp_user_user_permissions_id_seq', 1, false);
          public          postgres    false    239            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 24, true);
          public          postgres    false    228            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 10, true);
          public          postgres    false    216            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 22, true);
          public          postgres    false    214            �           2606    100359    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    233            �           2606    100345 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    235    235            �           2606    100334 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    235            �           2606    100325    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    233            �           2606    100336 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    231    231            �           2606    100318 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    231            �           2606    100260 (   bodegasapp_bodega bodegasapp_bodega_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.bodegasapp_bodega
    ADD CONSTRAINT bodegasapp_bodega_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.bodegasapp_bodega DROP CONSTRAINT bodegasapp_bodega_pkey;
       public            postgres    false    225            �           2606    100267 $   bodegasapp_like bodegasapp_like_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.bodegasapp_like
    ADD CONSTRAINT bodegasapp_like_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.bodegasapp_like DROP CONSTRAINT bodegasapp_like_pkey;
       public            postgres    false    227            �           2606    100277 @   bodegasapp_like bodegasapp_like_user_id_noticia_id_6f591ae7_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.bodegasapp_like
    ADD CONSTRAINT bodegasapp_like_user_id_noticia_id_6f591ae7_uniq UNIQUE (user_id, noticia_id);
 j   ALTER TABLE ONLY public.bodegasapp_like DROP CONSTRAINT bodegasapp_like_user_id_noticia_id_6f591ae7_uniq;
       public            postgres    false    227    227            �           2606    100246 *   bodegasapp_noticia bodegasapp_noticia_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.bodegasapp_noticia
    ADD CONSTRAINT bodegasapp_noticia_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.bodegasapp_noticia DROP CONSTRAINT bodegasapp_noticia_pkey;
       public            postgres    false    221            �           2606    100253 0   bodegasapp_tipobodega bodegasapp_tipobodega_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.bodegasapp_tipobodega
    ADD CONSTRAINT bodegasapp_tipobodega_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.bodegasapp_tipobodega DROP CONSTRAINT bodegasapp_tipobodega_pkey;
       public            postgres    false    223            �           2606    100237 )   bodegasapp_user bodegasapp_user_email_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.bodegasapp_user
    ADD CONSTRAINT bodegasapp_user_email_key UNIQUE (email);
 S   ALTER TABLE ONLY public.bodegasapp_user DROP CONSTRAINT bodegasapp_user_email_key;
       public            postgres    false    219            �           2606    100376 2   bodegasapp_user_groups bodegasapp_user_groups_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.bodegasapp_user_groups
    ADD CONSTRAINT bodegasapp_user_groups_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.bodegasapp_user_groups DROP CONSTRAINT bodegasapp_user_groups_pkey;
       public            postgres    false    238            �           2606    100388 L   bodegasapp_user_groups bodegasapp_user_groups_user_id_group_id_d2621adb_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.bodegasapp_user_groups
    ADD CONSTRAINT bodegasapp_user_groups_user_id_group_id_d2621adb_uniq UNIQUE (user_id, group_id);
 v   ALTER TABLE ONLY public.bodegasapp_user_groups DROP CONSTRAINT bodegasapp_user_groups_user_id_group_id_d2621adb_uniq;
       public            postgres    false    238    238            �           2606    100233 $   bodegasapp_user bodegasapp_user_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.bodegasapp_user
    ADD CONSTRAINT bodegasapp_user_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.bodegasapp_user DROP CONSTRAINT bodegasapp_user_pkey;
       public            postgres    false    219            �           2606    100402 ]   bodegasapp_user_user_permissions bodegasapp_user_user_per_user_id_permission_id_f408ac49_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.bodegasapp_user_user_permissions
    ADD CONSTRAINT bodegasapp_user_user_per_user_id_permission_id_f408ac49_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.bodegasapp_user_user_permissions DROP CONSTRAINT bodegasapp_user_user_per_user_id_permission_id_f408ac49_uniq;
       public            postgres    false    240    240            �           2606    100386 F   bodegasapp_user_user_permissions bodegasapp_user_user_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.bodegasapp_user_user_permissions
    ADD CONSTRAINT bodegasapp_user_user_permissions_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.bodegasapp_user_user_permissions DROP CONSTRAINT bodegasapp_user_user_permissions_pkey;
       public            postgres    false    240            �           2606    100235 ,   bodegasapp_user bodegasapp_user_username_key 
   CONSTRAINT     k   ALTER TABLE ONLY public.bodegasapp_user
    ADD CONSTRAINT bodegasapp_user_username_key UNIQUE (username);
 V   ALTER TABLE ONLY public.bodegasapp_user DROP CONSTRAINT bodegasapp_user_username_key;
       public            postgres    false    219            �           2606    100299 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    229            �           2606    100226 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    217    217            �           2606    100224 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    217            �           2606    100217 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    215            �           2606    100367 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    236            �           1259    100360    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    233            �           1259    100356 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    235            �           1259    100357 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    235            �           1259    100342 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    231            �           1259    100275 )   bodegasapp_bodega_tipo_bodega_id_611cc43e    INDEX     q   CREATE INDEX bodegasapp_bodega_tipo_bodega_id_611cc43e ON public.bodegasapp_bodega USING btree (tipo_bodega_id);
 =   DROP INDEX public.bodegasapp_bodega_tipo_bodega_id_611cc43e;
       public            postgres    false    225            �           1259    100288 #   bodegasapp_like_noticia_id_bbecc94c    INDEX     e   CREATE INDEX bodegasapp_like_noticia_id_bbecc94c ON public.bodegasapp_like USING btree (noticia_id);
 7   DROP INDEX public.bodegasapp_like_noticia_id_bbecc94c;
       public            postgres    false    227            �           1259    100289     bodegasapp_like_user_id_fb077b27    INDEX     _   CREATE INDEX bodegasapp_like_user_id_fb077b27 ON public.bodegasapp_like USING btree (user_id);
 4   DROP INDEX public.bodegasapp_like_user_id_fb077b27;
       public            postgres    false    227            �           1259    100269 #   bodegasapp_user_email_ed1815a3_like    INDEX     t   CREATE INDEX bodegasapp_user_email_ed1815a3_like ON public.bodegasapp_user USING btree (email varchar_pattern_ops);
 7   DROP INDEX public.bodegasapp_user_email_ed1815a3_like;
       public            postgres    false    219            �           1259    100400 (   bodegasapp_user_groups_group_id_0cdcc75b    INDEX     o   CREATE INDEX bodegasapp_user_groups_group_id_0cdcc75b ON public.bodegasapp_user_groups USING btree (group_id);
 <   DROP INDEX public.bodegasapp_user_groups_group_id_0cdcc75b;
       public            postgres    false    238            �           1259    100399 '   bodegasapp_user_groups_user_id_9b634181    INDEX     m   CREATE INDEX bodegasapp_user_groups_user_id_9b634181 ON public.bodegasapp_user_groups USING btree (user_id);
 ;   DROP INDEX public.bodegasapp_user_groups_user_id_9b634181;
       public            postgres    false    238            �           1259    100414 7   bodegasapp_user_user_permissions_permission_id_2db88856    INDEX     �   CREATE INDEX bodegasapp_user_user_permissions_permission_id_2db88856 ON public.bodegasapp_user_user_permissions USING btree (permission_id);
 K   DROP INDEX public.bodegasapp_user_user_permissions_permission_id_2db88856;
       public            postgres    false    240            �           1259    100413 1   bodegasapp_user_user_permissions_user_id_26cdfa51    INDEX     �   CREATE INDEX bodegasapp_user_user_permissions_user_id_26cdfa51 ON public.bodegasapp_user_user_permissions USING btree (user_id);
 E   DROP INDEX public.bodegasapp_user_user_permissions_user_id_26cdfa51;
       public            postgres    false    240            �           1259    100268 &   bodegasapp_user_username_e862ae69_like    INDEX     z   CREATE INDEX bodegasapp_user_username_e862ae69_like ON public.bodegasapp_user USING btree (username varchar_pattern_ops);
 :   DROP INDEX public.bodegasapp_user_username_e862ae69_like;
       public            postgres    false    219            �           1259    100310 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    229            �           1259    100311 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    229            �           1259    100369 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    236            �           1259    100368 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    236            �           2606    100351 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    3286    235    231            �           2606    100346 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    3291    233    235            �           2606    100337 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    231    3256    217            �           2606    100270 H   bodegasapp_bodega bodegasapp_bodega_tipo_bodega_id_611cc43e_fk_bodegasap    FK CONSTRAINT     �   ALTER TABLE ONLY public.bodegasapp_bodega
    ADD CONSTRAINT bodegasapp_bodega_tipo_bodega_id_611cc43e_fk_bodegasap FOREIGN KEY (tipo_bodega_id) REFERENCES public.bodegasapp_tipobodega(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.bodegasapp_bodega DROP CONSTRAINT bodegasapp_bodega_tipo_bodega_id_611cc43e_fk_bodegasap;
       public          postgres    false    225    3268    223            �           2606    100278 L   bodegasapp_like bodegasapp_like_noticia_id_bbecc94c_fk_bodegasapp_noticia_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.bodegasapp_like
    ADD CONSTRAINT bodegasapp_like_noticia_id_bbecc94c_fk_bodegasapp_noticia_id FOREIGN KEY (noticia_id) REFERENCES public.bodegasapp_noticia(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.bodegasapp_like DROP CONSTRAINT bodegasapp_like_noticia_id_bbecc94c_fk_bodegasapp_noticia_id;
       public          postgres    false    227    221    3266            �           2606    100283 F   bodegasapp_like bodegasapp_like_user_id_fb077b27_fk_bodegasapp_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.bodegasapp_like
    ADD CONSTRAINT bodegasapp_like_user_id_fb077b27_fk_bodegasapp_user_id FOREIGN KEY (user_id) REFERENCES public.bodegasapp_user(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.bodegasapp_like DROP CONSTRAINT bodegasapp_like_user_id_fb077b27_fk_bodegasapp_user_id;
       public          postgres    false    219    3261    227            �           2606    100394 P   bodegasapp_user_groups bodegasapp_user_groups_group_id_0cdcc75b_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.bodegasapp_user_groups
    ADD CONSTRAINT bodegasapp_user_groups_group_id_0cdcc75b_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.bodegasapp_user_groups DROP CONSTRAINT bodegasapp_user_groups_group_id_0cdcc75b_fk_auth_group_id;
       public          postgres    false    238    3291    233            �           2606    100389 T   bodegasapp_user_groups bodegasapp_user_groups_user_id_9b634181_fk_bodegasapp_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.bodegasapp_user_groups
    ADD CONSTRAINT bodegasapp_user_groups_user_id_9b634181_fk_bodegasapp_user_id FOREIGN KEY (user_id) REFERENCES public.bodegasapp_user(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.bodegasapp_user_groups DROP CONSTRAINT bodegasapp_user_groups_user_id_9b634181_fk_bodegasapp_user_id;
       public          postgres    false    3261    219    238            �           2606    100408 Y   bodegasapp_user_user_permissions bodegasapp_user_user_permission_id_2db88856_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.bodegasapp_user_user_permissions
    ADD CONSTRAINT bodegasapp_user_user_permission_id_2db88856_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.bodegasapp_user_user_permissions DROP CONSTRAINT bodegasapp_user_user_permission_id_2db88856_fk_auth_perm;
       public          postgres    false    3286    240    231            �           2606    100403 S   bodegasapp_user_user_permissions bodegasapp_user_user_user_id_26cdfa51_fk_bodegasap    FK CONSTRAINT     �   ALTER TABLE ONLY public.bodegasapp_user_user_permissions
    ADD CONSTRAINT bodegasapp_user_user_user_id_26cdfa51_fk_bodegasap FOREIGN KEY (user_id) REFERENCES public.bodegasapp_user(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.bodegasapp_user_user_permissions DROP CONSTRAINT bodegasapp_user_user_user_id_26cdfa51_fk_bodegasap;
       public          postgres    false    219    3261    240            �           2606    100300 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    229    3256    217            �           2606    100305 H   django_admin_log django_admin_log_user_id_c564eba6_fk_bodegasapp_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_bodegasapp_user_id FOREIGN KEY (user_id) REFERENCES public.bodegasapp_user(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_bodegasapp_user_id;
       public          postgres    false    219    3261    229            �      x������ � �      �      x������ � �      �   �  x�]�[n�0E��U��*<��n#RE�E��i��7���3��}�4G�Ҽwc��}�X�lJ�?��V�ܾ�qp�S�k�{wwk��)����q��1;��cX��w���8ٓܝ�g����S��Ra�lV?��3�n�LMF�M���AZif�.���a(�*[j�L%Y'[0�r�H�D����tK�:e���m2��og�䱍�<K�p��E �~�Cގ�vǰ̛�P�q���ׇ���R��{$R5Y�,�H�i�E�D�vOn�����hZ���R%W$%���`HJXT^��)���a�ɜI�f[��s5 ��@�(6��8�������99s!\m7�V����R�������E�w4�*67q��~�1��V@@0M�z��!s�x�"3f�o����X      �   >   x�3�tr2�4�,�2��8��,sN�@CNc ˂��ߐ�Ȳ�����F@�4�=... ��O      �      x�3�4�4�2�4�4����� ]      �   T  x��U�n�@<�_����A�����#��
�����+˥��/ײa�Z�A�\�g����
|H�&��O�P ΢\�pT�0�(4V�Z g��������@��U�[�ݰI�Gު,�@�V��1 z~U=<�Q�{�����V���,���C�}��;g_�{۠�o���ct�^ȶTC'j�3��"T�"�Cg��'�hYGR�ilʨ����Y�D����R��Ǳ�.�cC`��J�:)��s����Q-��&2Ǳ�Br��Iߏ�#��fsQ��֗��-Eg+�D,��"�L�F��A��z-F��}���Ѯ-WS� {�K�a�}?Ϩ),���	x�ѓ(:�6Q�]�����s�Ӥ�ȳÖ3�T*�f �q��bɵ��ך��0�U�l}������蓺]I�����+wVS���'t2�o׷��v89�c�B�*q��_�X���uG�������Q�s��]!���7��,���U�0x�c��JzI,�}�^�:�@�h�ҥ��?��7�7�j> wG�Gx
���W���?��R�����y^(�Χ)UΩ��1�.���إo��v6�3�_, Q�JB      �   ?   x�3��4�LC �2��44�
����9�@b%`1C�:N'N# $jhd
����� b�V      �   N  x����n�@�5<E��3���x�����I�]��.ַo�ݴ�I����� 
r9i��+)@bEx9DE�����5!^��AA�ҿ�1�hN��{���B�68{�&���i���vp� k)�H�!ǽ%�@�Κ�XjGB-7���N[nLM���l���i�G'(V8�Ő��輐��O>��ux$�]:�9��ig��z`FS)�����1�u�0�.��E��n���b1�d�E�)��kK��4Y���(
�A�:Kۢ鏢y��\�l.��Lm�䖟����;̽0�d?_�U7P�]�UrȻ�]�bh�k6��,OS����u�,M�_[E��      �      x������ � �      �      x������ � �      �   �  x�u�Ko�0����0|7�/jIu+P$0zLsP+��N7���HhD�f���.GhH������]DoA��A�a<>�����ϧ��8���}�=<O��s�y��������>�qC�)R��,���x�6����e��s�#Y�X�gJ6��a�N�A\F�������i#k��R�����t�~9�>��Gt�:� �D�~����Vj���r����_�+5c�`%m	�\�ەT�H_���TCIuh�aM�<3xUW�A"�(��*��b��k4R��:�ʦx��%HS�R)2�g����E��ueYn�R�i�N;.�J]7�%BB�eAS�vݗE+JnI�h��\�N��C,ڪ�b����!�����d_g���:Tu"}l	=��]b[�CU),H �%V����Z�Hb�p��@���M�s1\�0�v�!�N�4�[j��b8�.Cݢ���f���*�      �   x   x�M�K�0е�0���.l��*ml�΢�Q���y��ב��Ɍ�s����!�$[1�*N�����,/ƅҸH�Y'�QV\)�x�qY�]4��T��4h��4Vco�=9/�x� �\�D�      �   �  x���펫 �۫�h��൜���uIT\�=ۻ_��~���Cbp��y�e ;�n0�0�z2B(����&C�lO��@	�d�@
Ar�����U��A��v9��G3]���A�#M��5U��X�?)oZ�m��tU�3 ����ʠWF�S�8Xש�F�����1�Ί�L���fx)�|����֬�0���*�X��4�!�T��W��a�aʨZ�����uT��d���Qc��i�m6) (Ȃa���H��~X�G�� �-��a�fecgc�D�(e��B��<�F뗁�I�I�uH��̠�8W�[�����b�w^�&]?1
E�ŌcN�j��2%(�}�/$�G��P�v~A9�j���5�)��x@�}�Ȩ޻�Ӎ!����R��f�ۮ>��-^��Kf���n�'A�l_${�2ERE�?��d� /&<0��S�C������%��C���V�ǅ����*z����~��HI�A�D1!�v��/���      �      x������ � �     
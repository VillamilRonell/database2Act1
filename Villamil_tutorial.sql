PGDMP     ;                    w            df8urmna8528ur     11.6 (Ubuntu 11.6-1.pgdg16.04+1)    12.0     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    3582425    df8urmna8528ur    DATABASE     �   CREATE DATABASE df8urmna8528ur WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE df8urmna8528ur;
                uxtupgxgkjnjqx    false            �           0    0    DATABASE df8urmna8528ur    ACL     A   REVOKE CONNECT,TEMPORARY ON DATABASE df8urmna8528ur FROM PUBLIC;
                   uxtupgxgkjnjqx    false    3835            �           0    0    SCHEMA public    ACL     �   REVOKE ALL ON SCHEMA public FROM postgres;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO uxtupgxgkjnjqx;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   uxtupgxgkjnjqx    false    3            �           0    0    LANGUAGE plpgsql    ACL     1   GRANT ALL ON LANGUAGE plpgsql TO uxtupgxgkjnjqx;
                   postgres    false    599            �            1259    3591370    activity    TABLE     *  CREATE TABLE public.activity (
    staffno character varying(5) NOT NULL,
    tutorname character varying NOT NULL,
    tuteeno character varying(4) NOT NULL,
    tuteename character varying,
    date date NOT NULL,
    "time" numeric(4,2) NOT NULL,
    tutorialno character varying(3) NOT NULL
);
    DROP TABLE public.activity;
       public            uxtupgxgkjnjqx    false            �            1259    3583123    temp    TABLE     _   CREATE TABLE public.temp (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);
    DROP TABLE public.temp;
       public            uxtupgxgkjnjqx    false            �            1259    3583121    temp_id_seq    SEQUENCE     �   CREATE SEQUENCE public.temp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.temp_id_seq;
       public          uxtupgxgkjnjqx    false    197            �           0    0    temp_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.temp_id_seq OWNED BY public.temp.id;
          public          uxtupgxgkjnjqx    false    196            z           2604    3583126    temp id    DEFAULT     b   ALTER TABLE ONLY public.temp ALTER COLUMN id SET DEFAULT nextval('public.temp_id_seq'::regclass);
 6   ALTER TABLE public.temp ALTER COLUMN id DROP DEFAULT;
       public          uxtupgxgkjnjqx    false    197    196    197            |           2606    3583128    temp temp_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.temp
    ADD CONSTRAINT temp_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.temp DROP CONSTRAINT temp_pkey;
       public            uxtupgxgkjnjqx    false    197           
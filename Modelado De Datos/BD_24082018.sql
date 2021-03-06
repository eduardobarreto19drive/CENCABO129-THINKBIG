PGDMP                          v            ThinkBig    9.5.14    10.5     S           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            T           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            U           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            V           1262    16403    ThinkBig    DATABASE     �   CREATE DATABASE "ThinkBig" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Spain.1252' LC_CTYPE = 'Spanish_Spain.1252';
    DROP DATABASE "ThinkBig";
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            W           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    6            X           0    0    SCHEMA public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    6                        3079    12355    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            Y           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16434    AVANCE    TABLE     �   CREATE TABLE public."AVANCE" (
    "ID_AVANCE" integer NOT NULL,
    "PORCENTAJE" integer,
    "ESTRELLAS" integer,
    "INTENTOS" integer,
    "ID_USUARIO" integer,
    "ID_NIVEL" integer
);
    DROP TABLE public."AVANCE";
       public         postgres    false    6            �            1259    16414    CONFIGURACION    TABLE     �   CREATE TABLE public."CONFIGURACION" (
    "ID_CONFIGURACION" integer NOT NULL,
    "LENGUAJE" character(50),
    "MUSICA" boolean,
    "EFECTOS" boolean,
    "ID_USUARIO" integer
);
 #   DROP TABLE public."CONFIGURACION";
       public         postgres    false    6            �            1259    16409    NIVEL    TABLE     �   CREATE TABLE public."NIVEL" (
    "ID_NIVEL" integer NOT NULL,
    "NOMBRE" character(50),
    "ESTADO" character(50),
    "TIEMPO_LIMITE" integer,
    "PUNTAJE_MINIMO" integer
);
    DROP TABLE public."NIVEL";
       public         postgres    false    6            �            1259    16404 
   RECOMPENSA    TABLE     �   CREATE TABLE public."RECOMPENSA" (
    "ID_RECOMPENSA" integer NOT NULL,
    "RANGO_INICIAL" integer,
    "RANGO_FINAL" integer,
    "VALOR" integer,
    "ID_NIVEL" integer
);
     DROP TABLE public."RECOMPENSA";
       public         postgres    false    6            �            1259    16422    USUARIO    TABLE     �   CREATE TABLE public."USUARIO" (
    "ID_USUARIO" integer NOT NULL,
    "NOMBRE" character(50),
    "EDAD" integer,
    "GENERO" character(50),
    "EMAIL" character(50),
    "PASSWORD" character(50),
    "AVATAR" bytea
);
    DROP TABLE public."USUARIO";
       public         postgres    false    6            P          0    16434    AVANCE 
   TABLE DATA                     public       postgres    false    185   $       N          0    16414    CONFIGURACION 
   TABLE DATA                     public       postgres    false    183   �       M          0    16409    NIVEL 
   TABLE DATA                     public       postgres    false    182   q       L          0    16404 
   RECOMPENSA 
   TABLE DATA                     public       postgres    false    181   ,       O          0    16422    USUARIO 
   TABLE DATA                     public       postgres    false    184   �       �           2606    16438    AVANCE AVANCE_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public."AVANCE"
    ADD CONSTRAINT "AVANCE_pkey" PRIMARY KEY ("ID_AVANCE");
 @   ALTER TABLE ONLY public."AVANCE" DROP CONSTRAINT "AVANCE_pkey";
       public         postgres    false    185            �           2606    16418     CONFIGURACION CONFIGURACION_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public."CONFIGURACION"
    ADD CONSTRAINT "CONFIGURACION_pkey" PRIMARY KEY ("ID_CONFIGURACION");
 N   ALTER TABLE ONLY public."CONFIGURACION" DROP CONSTRAINT "CONFIGURACION_pkey";
       public         postgres    false    183            �           2606    16413    NIVEL NIVEL_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."NIVEL"
    ADD CONSTRAINT "NIVEL_pkey" PRIMARY KEY ("ID_NIVEL");
 >   ALTER TABLE ONLY public."NIVEL" DROP CONSTRAINT "NIVEL_pkey";
       public         postgres    false    182            �           2606    16408    RECOMPENSA RECOMPENSA_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public."RECOMPENSA"
    ADD CONSTRAINT "RECOMPENSA_pkey" PRIMARY KEY ("ID_RECOMPENSA");
 H   ALTER TABLE ONLY public."RECOMPENSA" DROP CONSTRAINT "RECOMPENSA_pkey";
       public         postgres    false    181            �           2606    16429    USUARIO USUARIO_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."USUARIO"
    ADD CONSTRAINT "USUARIO_pkey" PRIMARY KEY ("ID_USUARIO");
 B   ALTER TABLE ONLY public."USUARIO" DROP CONSTRAINT "USUARIO_pkey";
       public         postgres    false    184            �           2606    16450    AVANCE FK_AVANCE_NIVEL    FK CONSTRAINT     �   ALTER TABLE ONLY public."AVANCE"
    ADD CONSTRAINT "FK_AVANCE_NIVEL" FOREIGN KEY ("ID_NIVEL") REFERENCES public."NIVEL"("ID_NIVEL");
 D   ALTER TABLE ONLY public."AVANCE" DROP CONSTRAINT "FK_AVANCE_NIVEL";
       public       postgres    false    185    1999    182            �           2606    16445    AVANCE FK_AVANCE_USUARIO    FK CONSTRAINT     �   ALTER TABLE ONLY public."AVANCE"
    ADD CONSTRAINT "FK_AVANCE_USUARIO" FOREIGN KEY ("ID_USUARIO") REFERENCES public."USUARIO"("ID_USUARIO");
 F   ALTER TABLE ONLY public."AVANCE" DROP CONSTRAINT "FK_AVANCE_USUARIO";
       public       postgres    false    2003    185    184            �           2606    16458 &   CONFIGURACION FK_CONFIGURACION_USUARIO    FK CONSTRAINT     �   ALTER TABLE ONLY public."CONFIGURACION"
    ADD CONSTRAINT "FK_CONFIGURACION_USUARIO" FOREIGN KEY ("ID_USUARIO") REFERENCES public."USUARIO"("ID_USUARIO");
 T   ALTER TABLE ONLY public."CONFIGURACION" DROP CONSTRAINT "FK_CONFIGURACION_USUARIO";
       public       postgres    false    2003    183    184            �           2606    16439    RECOMPENSA FK_RECOMPENSA_NIVEL    FK CONSTRAINT     �   ALTER TABLE ONLY public."RECOMPENSA"
    ADD CONSTRAINT "FK_RECOMPENSA_NIVEL" FOREIGN KEY ("ID_NIVEL") REFERENCES public."NIVEL"("ID_NIVEL");
 L   ALTER TABLE ONLY public."RECOMPENSA" DROP CONSTRAINT "FK_RECOMPENSA_NIVEL";
       public       postgres    false    1999    181    182            P   �   x�ő1
�0Ew�BxJ�'n���$T�]l�k �
���U✡���?��'��� ���~=O����H�](�����7�)GtΦU�9oB��yJ��v婠�-�&L�t
�Z�YAW��	�?F�κ���aؙ�l��5�����?ḯ�      N   �   x���v
Q���W((M��L�Sr��s�trt���SR�P�t�G�QP�q�su�r�}C�=�A,W7W��`�)48�1��_IS!��'�5XA�PGA=8�Q�4���PRT�
#5��<��n#����uwZbN1�2:�� ��S�      M   �   x���=�0ཿ�Ȓ��_�8Er�I��&�Z�Ipp���F��d8^8�#��2���}{>�fhƞA�H-�\3V_F�:/�ݒ'ԃ]z���j���W\4Җ0�~ByU� ��%��VU�utB���]��K "���f6q��o�1%�݁m`�O�e|��      L   �   x���v
Q���W((M��L�S
ru��p�vTR�P�t�G�QP
r�s�����t�t�A�y�A�a�>�A P��g�����P,�5XA�PG���� HZ�H#0SӚ˓��0; �#C�L��`��v��\\ Hd
      O   �   x���Q�0�����h ���襅KsƦ�&"�����S��F�}��r8��Ǆ�2&����*@�ʉd)����|@"MN���H4�
*�&�������\dR��H����*�B\>�����&gR�ht��8]3����&���[W�כ�mK�s�:8�P�T7.�]�������\�ug�t��,y6X��8o�I��     
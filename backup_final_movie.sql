PGDMP     '    !                z            movie_db    14.4    14.2 �              0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    61042    movie_db    DATABASE     d   CREATE DATABASE movie_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_India.1252';
    DROP DATABASE movie_db;
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                postgres    false                       0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   postgres    false    3            �            1259    61111    Movie_booking_app_accountstatus    TABLE     �   CREATE TABLE public."Movie_booking_app_accountstatus" (
    id bigint NOT NULL,
    account_status character varying(100) NOT NULL
);
 5   DROP TABLE public."Movie_booking_app_accountstatus";
       public         heap    postgres    false    3            �            1259    61110 &   Movie_booking_app_accountstatus_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Movie_booking_app_accountstatus_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public."Movie_booking_app_accountstatus_id_seq";
       public          postgres    false    220    3                       0    0 &   Movie_booking_app_accountstatus_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public."Movie_booking_app_accountstatus_id_seq" OWNED BY public."Movie_booking_app_accountstatus".id;
          public          postgres    false    219                        1259    61272    Movie_booking_app_booking    TABLE     �  CREATE TABLE public."Movie_booking_app_booking" (
    id bigint NOT NULL,
    booking_date_time timestamp with time zone,
    total_amount integer NOT NULL,
    slug character varying(50) NOT NULL,
    booking_status_id bigint,
    cinema_id bigint NOT NULL,
    cinemahall_id bigint,
    movie_id bigint NOT NULL,
    payment_mode_id bigint,
    payment_status_id bigint,
    show_id bigint,
    user_id bigint
);
 /   DROP TABLE public."Movie_booking_app_booking";
       public         heap    postgres    false    3            �            1259    61271     Movie_booking_app_booking_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Movie_booking_app_booking_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public."Movie_booking_app_booking_id_seq";
       public          postgres    false    3    256                       0    0     Movie_booking_app_booking_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public."Movie_booking_app_booking_id_seq" OWNED BY public."Movie_booking_app_booking".id;
          public          postgres    false    255                       1259    61281    Movie_booking_app_booking_seats    TABLE     �   CREATE TABLE public."Movie_booking_app_booking_seats" (
    id bigint NOT NULL,
    booking_id bigint NOT NULL,
    cinemahallseat_id bigint NOT NULL,
    booking_status character varying(100)
);
 5   DROP TABLE public."Movie_booking_app_booking_seats";
       public         heap    postgres    false    3                       1259    61280 &   Movie_booking_app_booking_seats_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Movie_booking_app_booking_seats_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public."Movie_booking_app_booking_seats_id_seq";
       public          postgres    false    258    3                       0    0 &   Movie_booking_app_booking_seats_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public."Movie_booking_app_booking_seats_id_seq" OWNED BY public."Movie_booking_app_booking_seats".id;
          public          postgres    false    257            �            1259    61118    Movie_booking_app_bookingstatus    TABLE     �   CREATE TABLE public."Movie_booking_app_bookingstatus" (
    id bigint NOT NULL,
    booking_status character varying(100) NOT NULL
);
 5   DROP TABLE public."Movie_booking_app_bookingstatus";
       public         heap    postgres    false    3            �            1259    61117 &   Movie_booking_app_bookingstatus_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Movie_booking_app_bookingstatus_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public."Movie_booking_app_bookingstatus_id_seq";
       public          postgres    false    3    222                       0    0 &   Movie_booking_app_bookingstatus_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public."Movie_booking_app_bookingstatus_id_seq" OWNED BY public."Movie_booking_app_bookingstatus".id;
          public          postgres    false    221            �            1259    61125    Movie_booking_app_cinema    TABLE       CREATE TABLE public."Movie_booking_app_cinema" (
    id bigint NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    name character varying(100) NOT NULL,
    state character varying(100) NOT NULL,
    city character varying(100) NOT NULL,
    country character varying(100) NOT NULL,
    phone character varying(100) NOT NULL,
    email character varying(100) NOT NULL,
    website character varying(100) NOT NULL,
    slug character varying(50) NOT NULL
);
 .   DROP TABLE public."Movie_booking_app_cinema";
       public         heap    postgres    false    3            �            1259    61124    Movie_booking_app_cinema_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Movie_booking_app_cinema_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public."Movie_booking_app_cinema_id_seq";
       public          postgres    false    3    224                       0    0    Movie_booking_app_cinema_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public."Movie_booking_app_cinema_id_seq" OWNED BY public."Movie_booking_app_cinema".id;
          public          postgres    false    223            �            1259    61136    Movie_booking_app_cinemahall    TABLE     d  CREATE TABLE public."Movie_booking_app_cinemahall" (
    id bigint NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    name character varying(100) NOT NULL,
    total_seats integer NOT NULL,
    available_seats integer NOT NULL,
    slug character varying(50) NOT NULL,
    cinema_id bigint
);
 2   DROP TABLE public."Movie_booking_app_cinemahall";
       public         heap    postgres    false    3            �            1259    61135 #   Movie_booking_app_cinemahall_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Movie_booking_app_cinemahall_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public."Movie_booking_app_cinemahall_id_seq";
       public          postgres    false    226    3                       0    0 #   Movie_booking_app_cinemahall_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public."Movie_booking_app_cinemahall_id_seq" OWNED BY public."Movie_booking_app_cinemahall".id;
          public          postgres    false    225            �            1259    61263     Movie_booking_app_cinemahallseat    TABLE     [  CREATE TABLE public."Movie_booking_app_cinemahallseat" (
    id bigint NOT NULL,
    "seatRow" character varying(100) NOT NULL,
    "seatColumn" character varying(100) NOT NULL,
    seat_number integer NOT NULL,
    price integer,
    slug character varying(50) NOT NULL,
    cinema_hall_id bigint,
    seat_type_id bigint,
    state_id bigint
);
 6   DROP TABLE public."Movie_booking_app_cinemahallseat";
       public         heap    postgres    false    3            �            1259    61262 '   Movie_booking_app_cinemahallseat_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Movie_booking_app_cinemahallseat_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public."Movie_booking_app_cinemahallseat_id_seq";
       public          postgres    false    3    254                        0    0 '   Movie_booking_app_cinemahallseat_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public."Movie_booking_app_cinemahallseat_id_seq" OWNED BY public."Movie_booking_app_cinemahallseat".id;
          public          postgres    false    253            �            1259    61145    Movie_booking_app_coupen    TABLE     �   CREATE TABLE public."Movie_booking_app_coupen" (
    id bigint NOT NULL,
    code character varying(10) NOT NULL,
    discount integer NOT NULL,
    is_active boolean NOT NULL
);
 .   DROP TABLE public."Movie_booking_app_coupen";
       public         heap    postgres    false    3            �            1259    61144    Movie_booking_app_coupen_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Movie_booking_app_coupen_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public."Movie_booking_app_coupen_id_seq";
       public          postgres    false    228    3            !           0    0    Movie_booking_app_coupen_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public."Movie_booking_app_coupen_id_seq" OWNED BY public."Movie_booking_app_coupen".id;
          public          postgres    false    227            �            1259    61152    Movie_booking_app_movie    TABLE       CREATE TABLE public."Movie_booking_app_movie" (
    id bigint NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    title character varying(100) NOT NULL,
    description text NOT NULL,
    year integer NOT NULL,
    duration integer NOT NULL,
    genre character varying(100) NOT NULL,
    rating double precision NOT NULL,
    language character varying(255) NOT NULL,
    country character varying(255) NOT NULL,
    slug character varying(50) NOT NULL
);
 -   DROP TABLE public."Movie_booking_app_movie";
       public         heap    postgres    false    3            �            1259    61151    Movie_booking_app_movie_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Movie_booking_app_movie_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public."Movie_booking_app_movie_id_seq";
       public          postgres    false    3    230            "           0    0    Movie_booking_app_movie_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public."Movie_booking_app_movie_id_seq" OWNED BY public."Movie_booking_app_movie".id;
          public          postgres    false    229            �            1259    61252    Movie_booking_app_notification    TABLE        CREATE TABLE public."Movie_booking_app_notification" (
    id bigint NOT NULL,
    notification_message text NOT NULL,
    created_on timestamp with time zone NOT NULL,
    notification_movie_id bigint NOT NULL,
    notification_type_id bigint NOT NULL
);
 4   DROP TABLE public."Movie_booking_app_notification";
       public         heap    postgres    false    3            �            1259    61251 %   Movie_booking_app_notification_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Movie_booking_app_notification_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public."Movie_booking_app_notification_id_seq";
       public          postgres    false    3    252            #           0    0 %   Movie_booking_app_notification_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public."Movie_booking_app_notification_id_seq" OWNED BY public."Movie_booking_app_notification".id;
          public          postgres    false    251            �            1259    61163 "   Movie_booking_app_notificationtype    TABLE     �   CREATE TABLE public."Movie_booking_app_notificationtype" (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    description text NOT NULL
);
 8   DROP TABLE public."Movie_booking_app_notificationtype";
       public         heap    postgres    false    3            �            1259    61162 )   Movie_booking_app_notificationtype_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Movie_booking_app_notificationtype_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public."Movie_booking_app_notificationtype_id_seq";
       public          postgres    false    232    3            $           0    0 )   Movie_booking_app_notificationtype_id_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public."Movie_booking_app_notificationtype_id_seq" OWNED BY public."Movie_booking_app_notificationtype".id;
          public          postgres    false    231            �            1259    61245    Movie_booking_app_payment    TABLE     �  CREATE TABLE public."Movie_booking_app_payment" (
    id bigint NOT NULL,
    payment_amount numeric(10,2) NOT NULL,
    payment_date date NOT NULL,
    payment_time time without time zone NOT NULL,
    transaction_id character varying(20) NOT NULL,
    payment_coupon_id bigint,
    payment_movie_id bigint NOT NULL,
    payment_status_id bigint NOT NULL,
    payment_type_id bigint NOT NULL,
    payment_user_id bigint NOT NULL
);
 /   DROP TABLE public."Movie_booking_app_payment";
       public         heap    postgres    false    3            �            1259    61244     Movie_booking_app_payment_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Movie_booking_app_payment_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public."Movie_booking_app_payment_id_seq";
       public          postgres    false    250    3            %           0    0     Movie_booking_app_payment_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public."Movie_booking_app_payment_id_seq" OWNED BY public."Movie_booking_app_payment".id;
          public          postgres    false    249            �            1259    61172    Movie_booking_app_paymentmode    TABLE     �   CREATE TABLE public."Movie_booking_app_paymentmode" (
    id bigint NOT NULL,
    payment_mode character varying(20) NOT NULL
);
 3   DROP TABLE public."Movie_booking_app_paymentmode";
       public         heap    postgres    false    3            �            1259    61171 $   Movie_booking_app_paymentmode_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Movie_booking_app_paymentmode_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public."Movie_booking_app_paymentmode_id_seq";
       public          postgres    false    234    3            &           0    0 $   Movie_booking_app_paymentmode_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public."Movie_booking_app_paymentmode_id_seq" OWNED BY public."Movie_booking_app_paymentmode".id;
          public          postgres    false    233            �            1259    61179    Movie_booking_app_paymentstatus    TABLE     �   CREATE TABLE public."Movie_booking_app_paymentstatus" (
    id bigint NOT NULL,
    payment_status character varying(100) NOT NULL
);
 5   DROP TABLE public."Movie_booking_app_paymentstatus";
       public         heap    postgres    false    3            �            1259    61178 &   Movie_booking_app_paymentstatus_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Movie_booking_app_paymentstatus_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public."Movie_booking_app_paymentstatus_id_seq";
       public          postgres    false    236    3            '           0    0 &   Movie_booking_app_paymentstatus_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public."Movie_booking_app_paymentstatus_id_seq" OWNED BY public."Movie_booking_app_paymentstatus".id;
          public          postgres    false    235            �            1259    61186    Movie_booking_app_seatstate    TABLE     ~   CREATE TABLE public."Movie_booking_app_seatstate" (
    id bigint NOT NULL,
    seat_state character varying(100) NOT NULL
);
 1   DROP TABLE public."Movie_booking_app_seatstate";
       public         heap    postgres    false    3            �            1259    61185 "   Movie_booking_app_seatstate_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Movie_booking_app_seatstate_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public."Movie_booking_app_seatstate_id_seq";
       public          postgres    false    238    3            (           0    0 "   Movie_booking_app_seatstate_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public."Movie_booking_app_seatstate_id_seq" OWNED BY public."Movie_booking_app_seatstate".id;
          public          postgres    false    237            �            1259    61193    Movie_booking_app_seattype    TABLE     �   CREATE TABLE public."Movie_booking_app_seattype" (
    id bigint NOT NULL,
    seat_type character varying(100) NOT NULL,
    slug character varying(50) NOT NULL
);
 0   DROP TABLE public."Movie_booking_app_seattype";
       public         heap    postgres    false    3            �            1259    61192 !   Movie_booking_app_seattype_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Movie_booking_app_seattype_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public."Movie_booking_app_seattype_id_seq";
       public          postgres    false    3    240            )           0    0 !   Movie_booking_app_seattype_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public."Movie_booking_app_seattype_id_seq" OWNED BY public."Movie_booking_app_seattype".id;
          public          postgres    false    239            �            1259    61236    Movie_booking_app_show    TABLE     �  CREATE TABLE public."Movie_booking_app_show" (
    id bigint NOT NULL,
    created_on date NOT NULL,
    date date,
    start_time time without time zone NOT NULL,
    end_time time without time zone NOT NULL,
    is_active boolean NOT NULL,
    total_seats integer,
    available_seats integer,
    slug character varying(50) NOT NULL,
    cinema_id bigint,
    cinema_hall_id bigint,
    movie_id bigint
);
 ,   DROP TABLE public."Movie_booking_app_show";
       public         heap    postgres    false    3            �            1259    61235    Movie_booking_app_show_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Movie_booking_app_show_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."Movie_booking_app_show_id_seq";
       public          postgres    false    248    3            *           0    0    Movie_booking_app_show_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."Movie_booking_app_show_id_seq" OWNED BY public."Movie_booking_app_show".id;
          public          postgres    false    247                       1259    62271    Movie_booking_app_showwiseseats    TABLE     �   CREATE TABLE public."Movie_booking_app_showwiseseats" (
    id bigint NOT NULL,
    cinema_hall_seat_id bigint,
    show_id bigint,
    state_id bigint
);
 5   DROP TABLE public."Movie_booking_app_showwiseseats";
       public         heap    postgres    false    3                       1259    62270 &   Movie_booking_app_showwiseseats_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Movie_booking_app_showwiseseats_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public."Movie_booking_app_showwiseseats_id_seq";
       public          postgres    false    284    3            +           0    0 &   Movie_booking_app_showwiseseats_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public."Movie_booking_app_showwiseseats_id_seq" OWNED BY public."Movie_booking_app_showwiseseats".id;
          public          postgres    false    283            �            1259    61209    Movie_booking_app_user    TABLE     c  CREATE TABLE public."Movie_booking_app_user" (
    id bigint NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    user_type character varying(250) NOT NULL,
    slug character varying(50) NOT NULL,
    account_status_id bigint
);
 ,   DROP TABLE public."Movie_booking_app_user";
       public         heap    postgres    false    3            �            1259    61222    Movie_booking_app_user_groups    TABLE     �   CREATE TABLE public."Movie_booking_app_user_groups" (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    group_id integer NOT NULL
);
 3   DROP TABLE public."Movie_booking_app_user_groups";
       public         heap    postgres    false    3            �            1259    61221 $   Movie_booking_app_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Movie_booking_app_user_groups_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public."Movie_booking_app_user_groups_id_seq";
       public          postgres    false    3    244            ,           0    0 $   Movie_booking_app_user_groups_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public."Movie_booking_app_user_groups_id_seq" OWNED BY public."Movie_booking_app_user_groups".id;
          public          postgres    false    243            �            1259    61208    Movie_booking_app_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Movie_booking_app_user_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."Movie_booking_app_user_id_seq";
       public          postgres    false    242    3            -           0    0    Movie_booking_app_user_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."Movie_booking_app_user_id_seq" OWNED BY public."Movie_booking_app_user".id;
          public          postgres    false    241            �            1259    61229 '   Movie_booking_app_user_user_permissions    TABLE     �   CREATE TABLE public."Movie_booking_app_user_user_permissions" (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    permission_id integer NOT NULL
);
 =   DROP TABLE public."Movie_booking_app_user_user_permissions";
       public         heap    postgres    false    3            �            1259    61228 .   Movie_booking_app_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Movie_booking_app_user_user_permissions_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 G   DROP SEQUENCE public."Movie_booking_app_user_user_permissions_id_seq";
       public          postgres    false    246    3            .           0    0 .   Movie_booking_app_user_user_permissions_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."Movie_booking_app_user_user_permissions_id_seq" OWNED BY public."Movie_booking_app_user_user_permissions".id;
          public          postgres    false    245            �            1259    61069 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false    3            �            1259    61068    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    216    3            /           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    215            �            1259    61078    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false    3            �            1259    61077    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    218    3            0           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    217            �            1259    61062    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false    3            �            1259    61061    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    214    3            1           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    213                       1259    61492    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
       public         heap    postgres    false    3                       1259    61491    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    3    260            2           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    259                       1259    61579 "   django_celery_beat_clockedschedule    TABLE     �   CREATE TABLE public.django_celery_beat_clockedschedule (
    id integer NOT NULL,
    clocked_time timestamp with time zone NOT NULL
);
 6   DROP TABLE public.django_celery_beat_clockedschedule;
       public         heap    postgres    false    3                       1259    61578 )   django_celery_beat_clockedschedule_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_celery_beat_clockedschedule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.django_celery_beat_clockedschedule_id_seq;
       public          postgres    false    271    3            3           0    0 )   django_celery_beat_clockedschedule_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.django_celery_beat_clockedschedule_id_seq OWNED BY public.django_celery_beat_clockedschedule.id;
          public          postgres    false    270                       1259    61514 "   django_celery_beat_crontabschedule    TABLE     j  CREATE TABLE public.django_celery_beat_crontabschedule (
    id integer NOT NULL,
    minute character varying(240) NOT NULL,
    hour character varying(96) NOT NULL,
    day_of_week character varying(64) NOT NULL,
    day_of_month character varying(124) NOT NULL,
    month_of_year character varying(64) NOT NULL,
    timezone character varying(63) NOT NULL
);
 6   DROP TABLE public.django_celery_beat_crontabschedule;
       public         heap    postgres    false    3                       1259    61513 )   django_celery_beat_crontabschedule_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_celery_beat_crontabschedule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.django_celery_beat_crontabschedule_id_seq;
       public          postgres    false    3    262            4           0    0 )   django_celery_beat_crontabschedule_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.django_celery_beat_crontabschedule_id_seq OWNED BY public.django_celery_beat_crontabschedule.id;
          public          postgres    false    261                       1259    61521 #   django_celery_beat_intervalschedule    TABLE     �   CREATE TABLE public.django_celery_beat_intervalschedule (
    id integer NOT NULL,
    every integer NOT NULL,
    period character varying(24) NOT NULL
);
 7   DROP TABLE public.django_celery_beat_intervalschedule;
       public         heap    postgres    false    3                       1259    61520 *   django_celery_beat_intervalschedule_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_celery_beat_intervalschedule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.django_celery_beat_intervalschedule_id_seq;
       public          postgres    false    264    3            5           0    0 *   django_celery_beat_intervalschedule_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public.django_celery_beat_intervalschedule_id_seq OWNED BY public.django_celery_beat_intervalschedule.id;
          public          postgres    false    263            
           1259    61528    django_celery_beat_periodictask    TABLE     ?  CREATE TABLE public.django_celery_beat_periodictask (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    task character varying(200) NOT NULL,
    args text NOT NULL,
    kwargs text NOT NULL,
    queue character varying(200),
    exchange character varying(200),
    routing_key character varying(200),
    expires timestamp with time zone,
    enabled boolean NOT NULL,
    last_run_at timestamp with time zone,
    total_run_count integer NOT NULL,
    date_changed timestamp with time zone NOT NULL,
    description text NOT NULL,
    crontab_id integer,
    interval_id integer,
    solar_id integer,
    one_off boolean NOT NULL,
    start_time timestamp with time zone,
    priority integer,
    headers text NOT NULL,
    clocked_id integer,
    expire_seconds integer,
    CONSTRAINT django_celery_beat_periodictask_expire_seconds_check CHECK ((expire_seconds >= 0)),
    CONSTRAINT django_celery_beat_periodictask_priority_check CHECK ((priority >= 0)),
    CONSTRAINT django_celery_beat_periodictask_total_run_count_check CHECK ((total_run_count >= 0))
);
 3   DROP TABLE public.django_celery_beat_periodictask;
       public         heap    postgres    false    3            	           1259    61527 &   django_celery_beat_periodictask_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_celery_beat_periodictask_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.django_celery_beat_periodictask_id_seq;
       public          postgres    false    266    3            6           0    0 &   django_celery_beat_periodictask_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.django_celery_beat_periodictask_id_seq OWNED BY public.django_celery_beat_periodictask.id;
          public          postgres    false    265                       1259    61539     django_celery_beat_periodictasks    TABLE     �   CREATE TABLE public.django_celery_beat_periodictasks (
    ident smallint NOT NULL,
    last_update timestamp with time zone NOT NULL
);
 4   DROP TABLE public.django_celery_beat_periodictasks;
       public         heap    postgres    false    3                       1259    61558     django_celery_beat_solarschedule    TABLE     �   CREATE TABLE public.django_celery_beat_solarschedule (
    id integer NOT NULL,
    event character varying(24) NOT NULL,
    latitude numeric(9,6) NOT NULL,
    longitude numeric(9,6) NOT NULL
);
 4   DROP TABLE public.django_celery_beat_solarschedule;
       public         heap    postgres    false    3                       1259    61557 '   django_celery_beat_solarschedule_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_celery_beat_solarschedule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.django_celery_beat_solarschedule_id_seq;
       public          postgres    false    3    269            7           0    0 '   django_celery_beat_solarschedule_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.django_celery_beat_solarschedule_id_seq OWNED BY public.django_celery_beat_solarschedule.id;
          public          postgres    false    268                       1259    61615 "   django_celery_results_chordcounter    TABLE       CREATE TABLE public.django_celery_results_chordcounter (
    id integer NOT NULL,
    group_id character varying(255) NOT NULL,
    sub_tasks text NOT NULL,
    count integer NOT NULL,
    CONSTRAINT django_celery_results_chordcounter_count_check CHECK ((count >= 0))
);
 6   DROP TABLE public.django_celery_results_chordcounter;
       public         heap    postgres    false    3                       1259    61614 )   django_celery_results_chordcounter_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_celery_results_chordcounter_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.django_celery_results_chordcounter_id_seq;
       public          postgres    false    275    3            8           0    0 )   django_celery_results_chordcounter_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.django_celery_results_chordcounter_id_seq OWNED BY public.django_celery_results_chordcounter.id;
          public          postgres    false    274                       1259    61628 !   django_celery_results_groupresult    TABLE     ^  CREATE TABLE public.django_celery_results_groupresult (
    id integer NOT NULL,
    group_id character varying(255) NOT NULL,
    date_created timestamp with time zone NOT NULL,
    date_done timestamp with time zone NOT NULL,
    content_type character varying(128) NOT NULL,
    content_encoding character varying(64) NOT NULL,
    result text
);
 5   DROP TABLE public.django_celery_results_groupresult;
       public         heap    postgres    false    3                       1259    61627 (   django_celery_results_groupresult_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_celery_results_groupresult_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.django_celery_results_groupresult_id_seq;
       public          postgres    false    277    3            9           0    0 (   django_celery_results_groupresult_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.django_celery_results_groupresult_id_seq OWNED BY public.django_celery_results_groupresult.id;
          public          postgres    false    276                       1259    61593     django_celery_results_taskresult    TABLE     L  CREATE TABLE public.django_celery_results_taskresult (
    id integer NOT NULL,
    task_id character varying(255) NOT NULL,
    status character varying(50) NOT NULL,
    content_type character varying(128) NOT NULL,
    content_encoding character varying(64) NOT NULL,
    result text,
    date_done timestamp with time zone NOT NULL,
    traceback text,
    meta text,
    task_args text,
    task_kwargs text,
    task_name character varying(255),
    worker character varying(100),
    date_created timestamp with time zone NOT NULL,
    periodic_task_name character varying(255)
);
 4   DROP TABLE public.django_celery_results_taskresult;
       public         heap    postgres    false    3                       1259    61592 '   django_celery_results_taskresult_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_celery_results_taskresult_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.django_celery_results_taskresult_id_seq;
       public          postgres    false    273    3            :           0    0 '   django_celery_results_taskresult_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.django_celery_results_taskresult_id_seq OWNED BY public.django_celery_results_taskresult.id;
          public          postgres    false    272            �            1259    61053    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false    3            �            1259    61052    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    3    212            ;           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    211            �            1259    61044    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false    3            �            1259    61043    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    3    210            <           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    209                       1259    61702    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false    3                       1259    61647    guardian_groupobjectpermission    TABLE     �   CREATE TABLE public.guardian_groupobjectpermission (
    id integer NOT NULL,
    object_pk character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 2   DROP TABLE public.guardian_groupobjectpermission;
       public         heap    postgres    false    3                       1259    61646 %   guardian_groupobjectpermission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.guardian_groupobjectpermission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.guardian_groupobjectpermission_id_seq;
       public          postgres    false    3    279            =           0    0 %   guardian_groupobjectpermission_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.guardian_groupobjectpermission_id_seq OWNED BY public.guardian_groupobjectpermission.id;
          public          postgres    false    278                       1259    61654    guardian_userobjectpermission    TABLE     �   CREATE TABLE public.guardian_userobjectpermission (
    id integer NOT NULL,
    object_pk character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    permission_id integer NOT NULL,
    user_id bigint NOT NULL
);
 1   DROP TABLE public.guardian_userobjectpermission;
       public         heap    postgres    false    3                       1259    61653 $   guardian_userobjectpermission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.guardian_userobjectpermission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.guardian_userobjectpermission_id_seq;
       public          postgres    false    3    281            >           0    0 $   guardian_userobjectpermission_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.guardian_userobjectpermission_id_seq OWNED BY public.guardian_userobjectpermission.id;
          public          postgres    false    280                       2604    61114 "   Movie_booking_app_accountstatus id    DEFAULT     �   ALTER TABLE ONLY public."Movie_booking_app_accountstatus" ALTER COLUMN id SET DEFAULT nextval('public."Movie_booking_app_accountstatus_id_seq"'::regclass);
 S   ALTER TABLE public."Movie_booking_app_accountstatus" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            /           2604    61275    Movie_booking_app_booking id    DEFAULT     �   ALTER TABLE ONLY public."Movie_booking_app_booking" ALTER COLUMN id SET DEFAULT nextval('public."Movie_booking_app_booking_id_seq"'::regclass);
 M   ALTER TABLE public."Movie_booking_app_booking" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    255    256    256            0           2604    61284 "   Movie_booking_app_booking_seats id    DEFAULT     �   ALTER TABLE ONLY public."Movie_booking_app_booking_seats" ALTER COLUMN id SET DEFAULT nextval('public."Movie_booking_app_booking_seats_id_seq"'::regclass);
 S   ALTER TABLE public."Movie_booking_app_booking_seats" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    258    257    258                       2604    61121 "   Movie_booking_app_bookingstatus id    DEFAULT     �   ALTER TABLE ONLY public."Movie_booking_app_bookingstatus" ALTER COLUMN id SET DEFAULT nextval('public."Movie_booking_app_bookingstatus_id_seq"'::regclass);
 S   ALTER TABLE public."Movie_booking_app_bookingstatus" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222                       2604    61128    Movie_booking_app_cinema id    DEFAULT     �   ALTER TABLE ONLY public."Movie_booking_app_cinema" ALTER COLUMN id SET DEFAULT nextval('public."Movie_booking_app_cinema_id_seq"'::regclass);
 L   ALTER TABLE public."Movie_booking_app_cinema" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223    224                        2604    61139    Movie_booking_app_cinemahall id    DEFAULT     �   ALTER TABLE ONLY public."Movie_booking_app_cinemahall" ALTER COLUMN id SET DEFAULT nextval('public."Movie_booking_app_cinemahall_id_seq"'::regclass);
 P   ALTER TABLE public."Movie_booking_app_cinemahall" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225    226            .           2604    61266 #   Movie_booking_app_cinemahallseat id    DEFAULT     �   ALTER TABLE ONLY public."Movie_booking_app_cinemahallseat" ALTER COLUMN id SET DEFAULT nextval('public."Movie_booking_app_cinemahallseat_id_seq"'::regclass);
 T   ALTER TABLE public."Movie_booking_app_cinemahallseat" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    254    253    254            !           2604    61148    Movie_booking_app_coupen id    DEFAULT     �   ALTER TABLE ONLY public."Movie_booking_app_coupen" ALTER COLUMN id SET DEFAULT nextval('public."Movie_booking_app_coupen_id_seq"'::regclass);
 L   ALTER TABLE public."Movie_booking_app_coupen" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    228    228            "           2604    61155    Movie_booking_app_movie id    DEFAULT     �   ALTER TABLE ONLY public."Movie_booking_app_movie" ALTER COLUMN id SET DEFAULT nextval('public."Movie_booking_app_movie_id_seq"'::regclass);
 K   ALTER TABLE public."Movie_booking_app_movie" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    230    230            -           2604    61255 !   Movie_booking_app_notification id    DEFAULT     �   ALTER TABLE ONLY public."Movie_booking_app_notification" ALTER COLUMN id SET DEFAULT nextval('public."Movie_booking_app_notification_id_seq"'::regclass);
 R   ALTER TABLE public."Movie_booking_app_notification" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    251    252    252            #           2604    61166 %   Movie_booking_app_notificationtype id    DEFAULT     �   ALTER TABLE ONLY public."Movie_booking_app_notificationtype" ALTER COLUMN id SET DEFAULT nextval('public."Movie_booking_app_notificationtype_id_seq"'::regclass);
 V   ALTER TABLE public."Movie_booking_app_notificationtype" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231    232            ,           2604    61248    Movie_booking_app_payment id    DEFAULT     �   ALTER TABLE ONLY public."Movie_booking_app_payment" ALTER COLUMN id SET DEFAULT nextval('public."Movie_booking_app_payment_id_seq"'::regclass);
 M   ALTER TABLE public."Movie_booking_app_payment" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    249    250    250            $           2604    61175     Movie_booking_app_paymentmode id    DEFAULT     �   ALTER TABLE ONLY public."Movie_booking_app_paymentmode" ALTER COLUMN id SET DEFAULT nextval('public."Movie_booking_app_paymentmode_id_seq"'::regclass);
 Q   ALTER TABLE public."Movie_booking_app_paymentmode" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233    234            %           2604    61182 "   Movie_booking_app_paymentstatus id    DEFAULT     �   ALTER TABLE ONLY public."Movie_booking_app_paymentstatus" ALTER COLUMN id SET DEFAULT nextval('public."Movie_booking_app_paymentstatus_id_seq"'::regclass);
 S   ALTER TABLE public."Movie_booking_app_paymentstatus" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    236    236            &           2604    61189    Movie_booking_app_seatstate id    DEFAULT     �   ALTER TABLE ONLY public."Movie_booking_app_seatstate" ALTER COLUMN id SET DEFAULT nextval('public."Movie_booking_app_seatstate_id_seq"'::regclass);
 O   ALTER TABLE public."Movie_booking_app_seatstate" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    238    238            '           2604    61196    Movie_booking_app_seattype id    DEFAULT     �   ALTER TABLE ONLY public."Movie_booking_app_seattype" ALTER COLUMN id SET DEFAULT nextval('public."Movie_booking_app_seattype_id_seq"'::regclass);
 N   ALTER TABLE public."Movie_booking_app_seattype" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    239    240            +           2604    61239    Movie_booking_app_show id    DEFAULT     �   ALTER TABLE ONLY public."Movie_booking_app_show" ALTER COLUMN id SET DEFAULT nextval('public."Movie_booking_app_show_id_seq"'::regclass);
 J   ALTER TABLE public."Movie_booking_app_show" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    248    247    248            A           2604    62274 "   Movie_booking_app_showwiseseats id    DEFAULT     �   ALTER TABLE ONLY public."Movie_booking_app_showwiseseats" ALTER COLUMN id SET DEFAULT nextval('public."Movie_booking_app_showwiseseats_id_seq"'::regclass);
 S   ALTER TABLE public."Movie_booking_app_showwiseseats" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    283    284    284            (           2604    61212    Movie_booking_app_user id    DEFAULT     �   ALTER TABLE ONLY public."Movie_booking_app_user" ALTER COLUMN id SET DEFAULT nextval('public."Movie_booking_app_user_id_seq"'::regclass);
 J   ALTER TABLE public."Movie_booking_app_user" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    241    242            )           2604    61225     Movie_booking_app_user_groups id    DEFAULT     �   ALTER TABLE ONLY public."Movie_booking_app_user_groups" ALTER COLUMN id SET DEFAULT nextval('public."Movie_booking_app_user_groups_id_seq"'::regclass);
 Q   ALTER TABLE public."Movie_booking_app_user_groups" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    243    244    244            *           2604    61232 *   Movie_booking_app_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public."Movie_booking_app_user_user_permissions" ALTER COLUMN id SET DEFAULT nextval('public."Movie_booking_app_user_user_permissions_id_seq"'::regclass);
 [   ALTER TABLE public."Movie_booking_app_user_user_permissions" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    246    245    246                       2604    61072    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216                       2604    61081    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218                       2604    61065    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213    214            1           2604    61495    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    260    259    260            :           2604    61582 %   django_celery_beat_clockedschedule id    DEFAULT     �   ALTER TABLE ONLY public.django_celery_beat_clockedschedule ALTER COLUMN id SET DEFAULT nextval('public.django_celery_beat_clockedschedule_id_seq'::regclass);
 T   ALTER TABLE public.django_celery_beat_clockedschedule ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    271    270    271            3           2604    61517 %   django_celery_beat_crontabschedule id    DEFAULT     �   ALTER TABLE ONLY public.django_celery_beat_crontabschedule ALTER COLUMN id SET DEFAULT nextval('public.django_celery_beat_crontabschedule_id_seq'::regclass);
 T   ALTER TABLE public.django_celery_beat_crontabschedule ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    262    261    262            4           2604    61524 &   django_celery_beat_intervalschedule id    DEFAULT     �   ALTER TABLE ONLY public.django_celery_beat_intervalschedule ALTER COLUMN id SET DEFAULT nextval('public.django_celery_beat_intervalschedule_id_seq'::regclass);
 U   ALTER TABLE public.django_celery_beat_intervalschedule ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    263    264    264            5           2604    61531 "   django_celery_beat_periodictask id    DEFAULT     �   ALTER TABLE ONLY public.django_celery_beat_periodictask ALTER COLUMN id SET DEFAULT nextval('public.django_celery_beat_periodictask_id_seq'::regclass);
 Q   ALTER TABLE public.django_celery_beat_periodictask ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    265    266    266            9           2604    61561 #   django_celery_beat_solarschedule id    DEFAULT     �   ALTER TABLE ONLY public.django_celery_beat_solarschedule ALTER COLUMN id SET DEFAULT nextval('public.django_celery_beat_solarschedule_id_seq'::regclass);
 R   ALTER TABLE public.django_celery_beat_solarschedule ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    268    269    269            <           2604    61618 %   django_celery_results_chordcounter id    DEFAULT     �   ALTER TABLE ONLY public.django_celery_results_chordcounter ALTER COLUMN id SET DEFAULT nextval('public.django_celery_results_chordcounter_id_seq'::regclass);
 T   ALTER TABLE public.django_celery_results_chordcounter ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    275    274    275            >           2604    61631 $   django_celery_results_groupresult id    DEFAULT     �   ALTER TABLE ONLY public.django_celery_results_groupresult ALTER COLUMN id SET DEFAULT nextval('public.django_celery_results_groupresult_id_seq'::regclass);
 S   ALTER TABLE public.django_celery_results_groupresult ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    277    276    277            ;           2604    61596 #   django_celery_results_taskresult id    DEFAULT     �   ALTER TABLE ONLY public.django_celery_results_taskresult ALTER COLUMN id SET DEFAULT nextval('public.django_celery_results_taskresult_id_seq'::regclass);
 R   ALTER TABLE public.django_celery_results_taskresult ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    273    272    273                       2604    61056    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211    212                       2604    61047    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    210    210            ?           2604    61650 !   guardian_groupobjectpermission id    DEFAULT     �   ALTER TABLE ONLY public.guardian_groupobjectpermission ALTER COLUMN id SET DEFAULT nextval('public.guardian_groupobjectpermission_id_seq'::regclass);
 P   ALTER TABLE public.guardian_groupobjectpermission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    278    279    279            @           2604    61657     guardian_userobjectpermission id    DEFAULT     �   ALTER TABLE ONLY public.guardian_userobjectpermission ALTER COLUMN id SET DEFAULT nextval('public.guardian_userobjectpermission_id_seq'::regclass);
 O   ALTER TABLE public.guardian_userobjectpermission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    280    281    281            �          0    61111    Movie_booking_app_accountstatus 
   TABLE DATA           O   COPY public."Movie_booking_app_accountstatus" (id, account_status) FROM stdin;
    public          postgres    false    220   L~      �          0    61272    Movie_booking_app_booking 
   TABLE DATA           �   COPY public."Movie_booking_app_booking" (id, booking_date_time, total_amount, slug, booking_status_id, cinema_id, cinemahall_id, movie_id, payment_mode_id, payment_status_id, show_id, user_id) FROM stdin;
    public          postgres    false    256   u~      �          0    61281    Movie_booking_app_booking_seats 
   TABLE DATA           n   COPY public."Movie_booking_app_booking_seats" (id, booking_id, cinemahallseat_id, booking_status) FROM stdin;
    public          postgres    false    258   �~      �          0    61118    Movie_booking_app_bookingstatus 
   TABLE DATA           O   COPY public."Movie_booking_app_bookingstatus" (id, booking_status) FROM stdin;
    public          postgres    false    222         �          0    61125    Movie_booking_app_cinema 
   TABLE DATA           �   COPY public."Movie_booking_app_cinema" (id, created_at, updated_at, name, state, city, country, phone, email, website, slug) FROM stdin;
    public          postgres    false    224   Y      �          0    61136    Movie_booking_app_cinemahall 
   TABLE DATA           �   COPY public."Movie_booking_app_cinemahall" (id, created_at, updated_at, name, total_seats, available_seats, slug, cinema_id) FROM stdin;
    public          postgres    false    226   �      �          0    61263     Movie_booking_app_cinemahallseat 
   TABLE DATA           �   COPY public."Movie_booking_app_cinemahallseat" (id, "seatRow", "seatColumn", seat_number, price, slug, cinema_hall_id, seat_type_id, state_id) FROM stdin;
    public          postgres    false    254   5�      �          0    61145    Movie_booking_app_coupen 
   TABLE DATA           S   COPY public."Movie_booking_app_coupen" (id, code, discount, is_active) FROM stdin;
    public          postgres    false    228   ��      �          0    61152    Movie_booking_app_movie 
   TABLE DATA           �   COPY public."Movie_booking_app_movie" (id, created_at, updated_at, title, description, year, duration, genre, rating, language, country, slug) FROM stdin;
    public          postgres    false    230   ��      �          0    61252    Movie_booking_app_notification 
   TABLE DATA           �   COPY public."Movie_booking_app_notification" (id, notification_message, created_on, notification_movie_id, notification_type_id) FROM stdin;
    public          postgres    false    252   ��      �          0    61163 "   Movie_booking_app_notificationtype 
   TABLE DATA           U   COPY public."Movie_booking_app_notificationtype" (id, name, description) FROM stdin;
    public          postgres    false    232   ��      �          0    61245    Movie_booking_app_payment 
   TABLE DATA           �   COPY public."Movie_booking_app_payment" (id, payment_amount, payment_date, payment_time, transaction_id, payment_coupon_id, payment_movie_id, payment_status_id, payment_type_id, payment_user_id) FROM stdin;
    public          postgres    false    250   ΁      �          0    61172    Movie_booking_app_paymentmode 
   TABLE DATA           K   COPY public."Movie_booking_app_paymentmode" (id, payment_mode) FROM stdin;
    public          postgres    false    234   �      �          0    61179    Movie_booking_app_paymentstatus 
   TABLE DATA           O   COPY public."Movie_booking_app_paymentstatus" (id, payment_status) FROM stdin;
    public          postgres    false    236   �      �          0    61186    Movie_booking_app_seatstate 
   TABLE DATA           G   COPY public."Movie_booking_app_seatstate" (id, seat_state) FROM stdin;
    public          postgres    false    238   H�      �          0    61193    Movie_booking_app_seattype 
   TABLE DATA           K   COPY public."Movie_booking_app_seattype" (id, seat_type, slug) FROM stdin;
    public          postgres    false    240   ��      �          0    61236    Movie_booking_app_show 
   TABLE DATA           �   COPY public."Movie_booking_app_show" (id, created_on, date, start_time, end_time, is_active, total_seats, available_seats, slug, cinema_id, cinema_hall_id, movie_id) FROM stdin;
    public          postgres    false    248   ��                0    62271    Movie_booking_app_showwiseseats 
   TABLE DATA           g   COPY public."Movie_booking_app_showwiseseats" (id, cinema_hall_seat_id, show_id, state_id) FROM stdin;
    public          postgres    false    284   s�      �          0    61209    Movie_booking_app_user 
   TABLE DATA           �   COPY public."Movie_booking_app_user" (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, user_type, slug, account_status_id) FROM stdin;
    public          postgres    false    242   ��      �          0    61222    Movie_booking_app_user_groups 
   TABLE DATA           P   COPY public."Movie_booking_app_user_groups" (id, user_id, group_id) FROM stdin;
    public          postgres    false    244   �      �          0    61229 '   Movie_booking_app_user_user_permissions 
   TABLE DATA           _   COPY public."Movie_booking_app_user_user_permissions" (id, user_id, permission_id) FROM stdin;
    public          postgres    false    246   �      �          0    61069 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    216   �      �          0    61078    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    218   <�      �          0    61062    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    214   Y�      �          0    61492    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    260   Ê                0    61579 "   django_celery_beat_clockedschedule 
   TABLE DATA           N   COPY public.django_celery_beat_clockedschedule (id, clocked_time) FROM stdin;
    public          postgres    false    271   _�      �          0    61514 "   django_celery_beat_crontabschedule 
   TABLE DATA           �   COPY public.django_celery_beat_crontabschedule (id, minute, hour, day_of_week, day_of_month, month_of_year, timezone) FROM stdin;
    public          postgres    false    262   |�      �          0    61521 #   django_celery_beat_intervalschedule 
   TABLE DATA           P   COPY public.django_celery_beat_intervalschedule (id, every, period) FROM stdin;
    public          postgres    false    264   ��                 0    61528    django_celery_beat_periodictask 
   TABLE DATA           '  COPY public.django_celery_beat_periodictask (id, name, task, args, kwargs, queue, exchange, routing_key, expires, enabled, last_run_at, total_run_count, date_changed, description, crontab_id, interval_id, solar_id, one_off, start_time, priority, headers, clocked_id, expire_seconds) FROM stdin;
    public          postgres    false    266   ��                0    61539     django_celery_beat_periodictasks 
   TABLE DATA           N   COPY public.django_celery_beat_periodictasks (ident, last_update) FROM stdin;
    public          postgres    false    267   ӗ                0    61558     django_celery_beat_solarschedule 
   TABLE DATA           Z   COPY public.django_celery_beat_solarschedule (id, event, latitude, longitude) FROM stdin;
    public          postgres    false    269   �      	          0    61615 "   django_celery_results_chordcounter 
   TABLE DATA           \   COPY public.django_celery_results_chordcounter (id, group_id, sub_tasks, count) FROM stdin;
    public          postgres    false    275   �                0    61628 !   django_celery_results_groupresult 
   TABLE DATA           �   COPY public.django_celery_results_groupresult (id, group_id, date_created, date_done, content_type, content_encoding, result) FROM stdin;
    public          postgres    false    277   *�                0    61593     django_celery_results_taskresult 
   TABLE DATA           �   COPY public.django_celery_results_taskresult (id, task_id, status, content_type, content_encoding, result, date_done, traceback, meta, task_args, task_kwargs, task_name, worker, date_created, periodic_task_name) FROM stdin;
    public          postgres    false    273   G�      �          0    61053    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    212   ��      �          0    61044    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    210   �                0    61702    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    282   �                0    61647    guardian_groupobjectpermission 
   TABLE DATA           q   COPY public.guardian_groupobjectpermission (id, object_pk, content_type_id, group_id, permission_id) FROM stdin;
    public          postgres    false    279   #�                0    61654    guardian_userobjectpermission 
   TABLE DATA           o   COPY public.guardian_userobjectpermission (id, object_pk, content_type_id, permission_id, user_id) FROM stdin;
    public          postgres    false    281   @�      ?           0    0 &   Movie_booking_app_accountstatus_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public."Movie_booking_app_accountstatus_id_seq"', 1, false);
          public          postgres    false    219            @           0    0     Movie_booking_app_booking_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."Movie_booking_app_booking_id_seq"', 66, true);
          public          postgres    false    255            A           0    0 &   Movie_booking_app_booking_seats_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public."Movie_booking_app_booking_seats_id_seq"', 80, true);
          public          postgres    false    257            B           0    0 &   Movie_booking_app_bookingstatus_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public."Movie_booking_app_bookingstatus_id_seq"', 1, false);
          public          postgres    false    221            C           0    0    Movie_booking_app_cinema_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public."Movie_booking_app_cinema_id_seq"', 1, true);
          public          postgres    false    223            D           0    0 #   Movie_booking_app_cinemahall_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public."Movie_booking_app_cinemahall_id_seq"', 1, true);
          public          postgres    false    225            E           0    0 '   Movie_booking_app_cinemahallseat_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public."Movie_booking_app_cinemahallseat_id_seq"', 3, true);
          public          postgres    false    253            F           0    0    Movie_booking_app_coupen_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."Movie_booking_app_coupen_id_seq"', 1, false);
          public          postgres    false    227            G           0    0    Movie_booking_app_movie_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."Movie_booking_app_movie_id_seq"', 5, true);
          public          postgres    false    229            H           0    0 %   Movie_booking_app_notification_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public."Movie_booking_app_notification_id_seq"', 1, false);
          public          postgres    false    251            I           0    0 )   Movie_booking_app_notificationtype_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public."Movie_booking_app_notificationtype_id_seq"', 1, false);
          public          postgres    false    231            J           0    0     Movie_booking_app_payment_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."Movie_booking_app_payment_id_seq"', 1, false);
          public          postgres    false    249            K           0    0 $   Movie_booking_app_paymentmode_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."Movie_booking_app_paymentmode_id_seq"', 1, true);
          public          postgres    false    233            L           0    0 &   Movie_booking_app_paymentstatus_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public."Movie_booking_app_paymentstatus_id_seq"', 1, false);
          public          postgres    false    235            M           0    0 "   Movie_booking_app_seatstate_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public."Movie_booking_app_seatstate_id_seq"', 1, true);
          public          postgres    false    237            N           0    0 !   Movie_booking_app_seattype_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."Movie_booking_app_seattype_id_seq"', 1, true);
          public          postgres    false    239            O           0    0    Movie_booking_app_show_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."Movie_booking_app_show_id_seq"', 6, true);
          public          postgres    false    247            P           0    0 &   Movie_booking_app_showwiseseats_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public."Movie_booking_app_showwiseseats_id_seq"', 6, true);
          public          postgres    false    283            Q           0    0 $   Movie_booking_app_user_groups_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public."Movie_booking_app_user_groups_id_seq"', 1, false);
          public          postgres    false    243            R           0    0    Movie_booking_app_user_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."Movie_booking_app_user_id_seq"', 5, true);
          public          postgres    false    241            S           0    0 .   Movie_booking_app_user_user_permissions_id_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('public."Movie_booking_app_user_user_permissions_id_seq"', 1, false);
          public          postgres    false    245            T           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    215            U           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    217            V           0    0    auth_permission_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_permission_id_seq', 140, true);
          public          postgres    false    213            W           0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 200, true);
          public          postgres    false    259            X           0    0 )   django_celery_beat_clockedschedule_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.django_celery_beat_clockedschedule_id_seq', 1, false);
          public          postgres    false    270            Y           0    0 )   django_celery_beat_crontabschedule_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.django_celery_beat_crontabschedule_id_seq', 1, false);
          public          postgres    false    261            Z           0    0 *   django_celery_beat_intervalschedule_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.django_celery_beat_intervalschedule_id_seq', 1, false);
          public          postgres    false    263            [           0    0 &   django_celery_beat_periodictask_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.django_celery_beat_periodictask_id_seq', 1, false);
          public          postgres    false    265            \           0    0 '   django_celery_beat_solarschedule_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.django_celery_beat_solarschedule_id_seq', 1, false);
          public          postgres    false    268            ]           0    0 )   django_celery_results_chordcounter_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.django_celery_results_chordcounter_id_seq', 1, false);
          public          postgres    false    274            ^           0    0 (   django_celery_results_groupresult_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.django_celery_results_groupresult_id_seq', 1, false);
          public          postgres    false    276            _           0    0 '   django_celery_results_taskresult_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.django_celery_results_taskresult_id_seq', 109, true);
          public          postgres    false    272            `           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 35, true);
          public          postgres    false    211            a           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 56, true);
          public          postgres    false    209            b           0    0 %   guardian_groupobjectpermission_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.guardian_groupobjectpermission_id_seq', 1, false);
          public          postgres    false    278            c           0    0 $   guardian_userobjectpermission_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.guardian_userobjectpermission_id_seq', 1, false);
          public          postgres    false    280            Y           2606    61116 D   Movie_booking_app_accountstatus Movie_booking_app_accountstatus_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Movie_booking_app_accountstatus"
    ADD CONSTRAINT "Movie_booking_app_accountstatus_pkey" PRIMARY KEY (id);
 r   ALTER TABLE ONLY public."Movie_booking_app_accountstatus" DROP CONSTRAINT "Movie_booking_app_accountstatus_pkey";
       public            postgres    false    220            �           2606    61478 _   Movie_booking_app_booking_seats Movie_booking_app_bookin_booking_id_cinemahallsea_469b6912_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public."Movie_booking_app_booking_seats"
    ADD CONSTRAINT "Movie_booking_app_bookin_booking_id_cinemahallsea_469b6912_uniq" UNIQUE (booking_id, cinemahallseat_id);
 �   ALTER TABLE ONLY public."Movie_booking_app_booking_seats" DROP CONSTRAINT "Movie_booking_app_bookin_booking_id_cinemahallsea_469b6912_uniq";
       public            postgres    false    258    258            �           2606    61277 8   Movie_booking_app_booking Movie_booking_app_booking_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public."Movie_booking_app_booking"
    ADD CONSTRAINT "Movie_booking_app_booking_pkey" PRIMARY KEY (id);
 f   ALTER TABLE ONLY public."Movie_booking_app_booking" DROP CONSTRAINT "Movie_booking_app_booking_pkey";
       public            postgres    false    256            �           2606    61286 D   Movie_booking_app_booking_seats Movie_booking_app_booking_seats_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Movie_booking_app_booking_seats"
    ADD CONSTRAINT "Movie_booking_app_booking_seats_pkey" PRIMARY KEY (id);
 r   ALTER TABLE ONLY public."Movie_booking_app_booking_seats" DROP CONSTRAINT "Movie_booking_app_booking_seats_pkey";
       public            postgres    false    258            �           2606    61279 <   Movie_booking_app_booking Movie_booking_app_booking_slug_key 
   CONSTRAINT     {   ALTER TABLE ONLY public."Movie_booking_app_booking"
    ADD CONSTRAINT "Movie_booking_app_booking_slug_key" UNIQUE (slug);
 j   ALTER TABLE ONLY public."Movie_booking_app_booking" DROP CONSTRAINT "Movie_booking_app_booking_slug_key";
       public            postgres    false    256            [           2606    61123 D   Movie_booking_app_bookingstatus Movie_booking_app_bookingstatus_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Movie_booking_app_bookingstatus"
    ADD CONSTRAINT "Movie_booking_app_bookingstatus_pkey" PRIMARY KEY (id);
 r   ALTER TABLE ONLY public."Movie_booking_app_bookingstatus" DROP CONSTRAINT "Movie_booking_app_bookingstatus_pkey";
       public            postgres    false    222            ]           2606    61132 6   Movie_booking_app_cinema Movie_booking_app_cinema_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public."Movie_booking_app_cinema"
    ADD CONSTRAINT "Movie_booking_app_cinema_pkey" PRIMARY KEY (id);
 d   ALTER TABLE ONLY public."Movie_booking_app_cinema" DROP CONSTRAINT "Movie_booking_app_cinema_pkey";
       public            postgres    false    224            `           2606    61134 :   Movie_booking_app_cinema Movie_booking_app_cinema_slug_key 
   CONSTRAINT     y   ALTER TABLE ONLY public."Movie_booking_app_cinema"
    ADD CONSTRAINT "Movie_booking_app_cinema_slug_key" UNIQUE (slug);
 h   ALTER TABLE ONLY public."Movie_booking_app_cinema" DROP CONSTRAINT "Movie_booking_app_cinema_slug_key";
       public            postgres    false    224            c           2606    61141 >   Movie_booking_app_cinemahall Movie_booking_app_cinemahall_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Movie_booking_app_cinemahall"
    ADD CONSTRAINT "Movie_booking_app_cinemahall_pkey" PRIMARY KEY (id);
 l   ALTER TABLE ONLY public."Movie_booking_app_cinemahall" DROP CONSTRAINT "Movie_booking_app_cinemahall_pkey";
       public            postgres    false    226            f           2606    61143 B   Movie_booking_app_cinemahall Movie_booking_app_cinemahall_slug_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."Movie_booking_app_cinemahall"
    ADD CONSTRAINT "Movie_booking_app_cinemahall_slug_key" UNIQUE (slug);
 p   ALTER TABLE ONLY public."Movie_booking_app_cinemahall" DROP CONSTRAINT "Movie_booking_app_cinemahall_slug_key";
       public            postgres    false    226            �           2606    61268 F   Movie_booking_app_cinemahallseat Movie_booking_app_cinemahallseat_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Movie_booking_app_cinemahallseat"
    ADD CONSTRAINT "Movie_booking_app_cinemahallseat_pkey" PRIMARY KEY (id);
 t   ALTER TABLE ONLY public."Movie_booking_app_cinemahallseat" DROP CONSTRAINT "Movie_booking_app_cinemahallseat_pkey";
       public            postgres    false    254            �           2606    61270 J   Movie_booking_app_cinemahallseat Movie_booking_app_cinemahallseat_slug_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."Movie_booking_app_cinemahallseat"
    ADD CONSTRAINT "Movie_booking_app_cinemahallseat_slug_key" UNIQUE (slug);
 x   ALTER TABLE ONLY public."Movie_booking_app_cinemahallseat" DROP CONSTRAINT "Movie_booking_app_cinemahallseat_slug_key";
       public            postgres    false    254            j           2606    61150 6   Movie_booking_app_coupen Movie_booking_app_coupen_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public."Movie_booking_app_coupen"
    ADD CONSTRAINT "Movie_booking_app_coupen_pkey" PRIMARY KEY (id);
 d   ALTER TABLE ONLY public."Movie_booking_app_coupen" DROP CONSTRAINT "Movie_booking_app_coupen_pkey";
       public            postgres    false    228            l           2606    61159 4   Movie_booking_app_movie Movie_booking_app_movie_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public."Movie_booking_app_movie"
    ADD CONSTRAINT "Movie_booking_app_movie_pkey" PRIMARY KEY (id);
 b   ALTER TABLE ONLY public."Movie_booking_app_movie" DROP CONSTRAINT "Movie_booking_app_movie_pkey";
       public            postgres    false    230            o           2606    61161 8   Movie_booking_app_movie Movie_booking_app_movie_slug_key 
   CONSTRAINT     w   ALTER TABLE ONLY public."Movie_booking_app_movie"
    ADD CONSTRAINT "Movie_booking_app_movie_slug_key" UNIQUE (slug);
 f   ALTER TABLE ONLY public."Movie_booking_app_movie" DROP CONSTRAINT "Movie_booking_app_movie_slug_key";
       public            postgres    false    230            �           2606    61261 V   Movie_booking_app_notification Movie_booking_app_notification_notification_type_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."Movie_booking_app_notification"
    ADD CONSTRAINT "Movie_booking_app_notification_notification_type_id_key" UNIQUE (notification_type_id);
 �   ALTER TABLE ONLY public."Movie_booking_app_notification" DROP CONSTRAINT "Movie_booking_app_notification_notification_type_id_key";
       public            postgres    false    252            �           2606    61259 B   Movie_booking_app_notification Movie_booking_app_notification_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Movie_booking_app_notification"
    ADD CONSTRAINT "Movie_booking_app_notification_pkey" PRIMARY KEY (id);
 p   ALTER TABLE ONLY public."Movie_booking_app_notification" DROP CONSTRAINT "Movie_booking_app_notification_pkey";
       public            postgres    false    252            q           2606    61170 J   Movie_booking_app_notificationtype Movie_booking_app_notificationtype_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Movie_booking_app_notificationtype"
    ADD CONSTRAINT "Movie_booking_app_notificationtype_pkey" PRIMARY KEY (id);
 x   ALTER TABLE ONLY public."Movie_booking_app_notificationtype" DROP CONSTRAINT "Movie_booking_app_notificationtype_pkey";
       public            postgres    false    232            �           2606    61250 8   Movie_booking_app_payment Movie_booking_app_payment_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public."Movie_booking_app_payment"
    ADD CONSTRAINT "Movie_booking_app_payment_pkey" PRIMARY KEY (id);
 f   ALTER TABLE ONLY public."Movie_booking_app_payment" DROP CONSTRAINT "Movie_booking_app_payment_pkey";
       public            postgres    false    250            s           2606    61177 @   Movie_booking_app_paymentmode Movie_booking_app_paymentmode_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Movie_booking_app_paymentmode"
    ADD CONSTRAINT "Movie_booking_app_paymentmode_pkey" PRIMARY KEY (id);
 n   ALTER TABLE ONLY public."Movie_booking_app_paymentmode" DROP CONSTRAINT "Movie_booking_app_paymentmode_pkey";
       public            postgres    false    234            u           2606    61184 D   Movie_booking_app_paymentstatus Movie_booking_app_paymentstatus_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Movie_booking_app_paymentstatus"
    ADD CONSTRAINT "Movie_booking_app_paymentstatus_pkey" PRIMARY KEY (id);
 r   ALTER TABLE ONLY public."Movie_booking_app_paymentstatus" DROP CONSTRAINT "Movie_booking_app_paymentstatus_pkey";
       public            postgres    false    236            w           2606    61191 <   Movie_booking_app_seatstate Movie_booking_app_seatstate_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public."Movie_booking_app_seatstate"
    ADD CONSTRAINT "Movie_booking_app_seatstate_pkey" PRIMARY KEY (id);
 j   ALTER TABLE ONLY public."Movie_booking_app_seatstate" DROP CONSTRAINT "Movie_booking_app_seatstate_pkey";
       public            postgres    false    238            y           2606    61198 :   Movie_booking_app_seattype Movie_booking_app_seattype_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public."Movie_booking_app_seattype"
    ADD CONSTRAINT "Movie_booking_app_seattype_pkey" PRIMARY KEY (id);
 h   ALTER TABLE ONLY public."Movie_booking_app_seattype" DROP CONSTRAINT "Movie_booking_app_seattype_pkey";
       public            postgres    false    240            |           2606    61200 >   Movie_booking_app_seattype Movie_booking_app_seattype_slug_key 
   CONSTRAINT     }   ALTER TABLE ONLY public."Movie_booking_app_seattype"
    ADD CONSTRAINT "Movie_booking_app_seattype_slug_key" UNIQUE (slug);
 l   ALTER TABLE ONLY public."Movie_booking_app_seattype" DROP CONSTRAINT "Movie_booking_app_seattype_slug_key";
       public            postgres    false    240            �           2606    61241 2   Movie_booking_app_show Movie_booking_app_show_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."Movie_booking_app_show"
    ADD CONSTRAINT "Movie_booking_app_show_pkey" PRIMARY KEY (id);
 `   ALTER TABLE ONLY public."Movie_booking_app_show" DROP CONSTRAINT "Movie_booking_app_show_pkey";
       public            postgres    false    248            �           2606    61243 6   Movie_booking_app_show Movie_booking_app_show_slug_key 
   CONSTRAINT     u   ALTER TABLE ONLY public."Movie_booking_app_show"
    ADD CONSTRAINT "Movie_booking_app_show_slug_key" UNIQUE (slug);
 d   ALTER TABLE ONLY public."Movie_booking_app_show" DROP CONSTRAINT "Movie_booking_app_show_slug_key";
       public            postgres    false    248                       2606    62297 _   Movie_booking_app_showwiseseats Movie_booking_app_showwi_show_id_cinema_hall_seat_79c267e9_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public."Movie_booking_app_showwiseseats"
    ADD CONSTRAINT "Movie_booking_app_showwi_show_id_cinema_hall_seat_79c267e9_uniq" UNIQUE (show_id, cinema_hall_seat_id, state_id);
 �   ALTER TABLE ONLY public."Movie_booking_app_showwiseseats" DROP CONSTRAINT "Movie_booking_app_showwi_show_id_cinema_hall_seat_79c267e9_uniq";
       public            postgres    false    284    284    284            
           2606    62276 D   Movie_booking_app_showwiseseats Movie_booking_app_showwiseseats_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Movie_booking_app_showwiseseats"
    ADD CONSTRAINT "Movie_booking_app_showwiseseats_pkey" PRIMARY KEY (id);
 r   ALTER TABLE ONLY public."Movie_booking_app_showwiseseats" DROP CONSTRAINT "Movie_booking_app_showwiseseats_pkey";
       public            postgres    false    284            �           2606    61227 @   Movie_booking_app_user_groups Movie_booking_app_user_groups_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Movie_booking_app_user_groups"
    ADD CONSTRAINT "Movie_booking_app_user_groups_pkey" PRIMARY KEY (id);
 n   ALTER TABLE ONLY public."Movie_booking_app_user_groups" DROP CONSTRAINT "Movie_booking_app_user_groups_pkey";
       public            postgres    false    244            �           2606    61310 Z   Movie_booking_app_user_groups Movie_booking_app_user_groups_user_id_group_id_1a6f6f2f_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public."Movie_booking_app_user_groups"
    ADD CONSTRAINT "Movie_booking_app_user_groups_user_id_group_id_1a6f6f2f_uniq" UNIQUE (user_id, group_id);
 �   ALTER TABLE ONLY public."Movie_booking_app_user_groups" DROP CONSTRAINT "Movie_booking_app_user_groups_user_id_group_id_1a6f6f2f_uniq";
       public            postgres    false    244    244                       2606    61216 2   Movie_booking_app_user Movie_booking_app_user_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."Movie_booking_app_user"
    ADD CONSTRAINT "Movie_booking_app_user_pkey" PRIMARY KEY (id);
 `   ALTER TABLE ONLY public."Movie_booking_app_user" DROP CONSTRAINT "Movie_booking_app_user_pkey";
       public            postgres    false    242            �           2606    61220 6   Movie_booking_app_user Movie_booking_app_user_slug_key 
   CONSTRAINT     u   ALTER TABLE ONLY public."Movie_booking_app_user"
    ADD CONSTRAINT "Movie_booking_app_user_slug_key" UNIQUE (slug);
 d   ALTER TABLE ONLY public."Movie_booking_app_user" DROP CONSTRAINT "Movie_booking_app_user_slug_key";
       public            postgres    false    242            �           2606    61324 d   Movie_booking_app_user_user_permissions Movie_booking_app_user_u_user_id_permission_id_492aeaaa_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public."Movie_booking_app_user_user_permissions"
    ADD CONSTRAINT "Movie_booking_app_user_u_user_id_permission_id_492aeaaa_uniq" UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public."Movie_booking_app_user_user_permissions" DROP CONSTRAINT "Movie_booking_app_user_u_user_id_permission_id_492aeaaa_uniq";
       public            postgres    false    246    246            �           2606    61234 T   Movie_booking_app_user_user_permissions Movie_booking_app_user_user_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Movie_booking_app_user_user_permissions"
    ADD CONSTRAINT "Movie_booking_app_user_user_permissions_pkey" PRIMARY KEY (id);
 �   ALTER TABLE ONLY public."Movie_booking_app_user_user_permissions" DROP CONSTRAINT "Movie_booking_app_user_user_permissions_pkey";
       public            postgres    false    246            �           2606    61218 :   Movie_booking_app_user Movie_booking_app_user_username_key 
   CONSTRAINT     }   ALTER TABLE ONLY public."Movie_booking_app_user"
    ADD CONSTRAINT "Movie_booking_app_user_username_key" UNIQUE (username);
 h   ALTER TABLE ONLY public."Movie_booking_app_user" DROP CONSTRAINT "Movie_booking_app_user_username_key";
       public            postgres    false    242            O           2606    61108    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    216            T           2606    61094 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    218    218            W           2606    61083 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    218            Q           2606    61074    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    216            J           2606    61085 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    214    214            L           2606    61067 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    214            �           2606    61500 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    260            �           2606    61584 J   django_celery_beat_clockedschedule django_celery_beat_clockedschedule_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_beat_clockedschedule
    ADD CONSTRAINT django_celery_beat_clockedschedule_pkey PRIMARY KEY (id);
 t   ALTER TABLE ONLY public.django_celery_beat_clockedschedule DROP CONSTRAINT django_celery_beat_clockedschedule_pkey;
       public            postgres    false    271            �           2606    61519 J   django_celery_beat_crontabschedule django_celery_beat_crontabschedule_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_beat_crontabschedule
    ADD CONSTRAINT django_celery_beat_crontabschedule_pkey PRIMARY KEY (id);
 t   ALTER TABLE ONLY public.django_celery_beat_crontabschedule DROP CONSTRAINT django_celery_beat_crontabschedule_pkey;
       public            postgres    false    262            �           2606    61526 L   django_celery_beat_intervalschedule django_celery_beat_intervalschedule_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_beat_intervalschedule
    ADD CONSTRAINT django_celery_beat_intervalschedule_pkey PRIMARY KEY (id);
 v   ALTER TABLE ONLY public.django_celery_beat_intervalschedule DROP CONSTRAINT django_celery_beat_intervalschedule_pkey;
       public            postgres    false    264            �           2606    61538 H   django_celery_beat_periodictask django_celery_beat_periodictask_name_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_beat_periodictask
    ADD CONSTRAINT django_celery_beat_periodictask_name_key UNIQUE (name);
 r   ALTER TABLE ONLY public.django_celery_beat_periodictask DROP CONSTRAINT django_celery_beat_periodictask_name_key;
       public            postgres    false    266            �           2606    61536 D   django_celery_beat_periodictask django_celery_beat_periodictask_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_beat_periodictask
    ADD CONSTRAINT django_celery_beat_periodictask_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.django_celery_beat_periodictask DROP CONSTRAINT django_celery_beat_periodictask_pkey;
       public            postgres    false    266            �           2606    61543 F   django_celery_beat_periodictasks django_celery_beat_periodictasks_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_beat_periodictasks
    ADD CONSTRAINT django_celery_beat_periodictasks_pkey PRIMARY KEY (ident);
 p   ALTER TABLE ONLY public.django_celery_beat_periodictasks DROP CONSTRAINT django_celery_beat_periodictasks_pkey;
       public            postgres    false    267            �           2606    61571 `   django_celery_beat_solarschedule django_celery_beat_solar_event_latitude_longitude_ba64999a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_beat_solarschedule
    ADD CONSTRAINT django_celery_beat_solar_event_latitude_longitude_ba64999a_uniq UNIQUE (event, latitude, longitude);
 �   ALTER TABLE ONLY public.django_celery_beat_solarschedule DROP CONSTRAINT django_celery_beat_solar_event_latitude_longitude_ba64999a_uniq;
       public            postgres    false    269    269    269            �           2606    61563 F   django_celery_beat_solarschedule django_celery_beat_solarschedule_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_beat_solarschedule
    ADD CONSTRAINT django_celery_beat_solarschedule_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.django_celery_beat_solarschedule DROP CONSTRAINT django_celery_beat_solarschedule_pkey;
       public            postgres    false    269            �           2606    61625 R   django_celery_results_chordcounter django_celery_results_chordcounter_group_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_results_chordcounter
    ADD CONSTRAINT django_celery_results_chordcounter_group_id_key UNIQUE (group_id);
 |   ALTER TABLE ONLY public.django_celery_results_chordcounter DROP CONSTRAINT django_celery_results_chordcounter_group_id_key;
       public            postgres    false    275            �           2606    61623 J   django_celery_results_chordcounter django_celery_results_chordcounter_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_results_chordcounter
    ADD CONSTRAINT django_celery_results_chordcounter_pkey PRIMARY KEY (id);
 t   ALTER TABLE ONLY public.django_celery_results_chordcounter DROP CONSTRAINT django_celery_results_chordcounter_pkey;
       public            postgres    false    275            �           2606    61637 P   django_celery_results_groupresult django_celery_results_groupresult_group_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_results_groupresult
    ADD CONSTRAINT django_celery_results_groupresult_group_id_key UNIQUE (group_id);
 z   ALTER TABLE ONLY public.django_celery_results_groupresult DROP CONSTRAINT django_celery_results_groupresult_group_id_key;
       public            postgres    false    277            �           2606    61635 H   django_celery_results_groupresult django_celery_results_groupresult_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_results_groupresult
    ADD CONSTRAINT django_celery_results_groupresult_pkey PRIMARY KEY (id);
 r   ALTER TABLE ONLY public.django_celery_results_groupresult DROP CONSTRAINT django_celery_results_groupresult_pkey;
       public            postgres    false    277            �           2606    61600 F   django_celery_results_taskresult django_celery_results_taskresult_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_results_taskresult
    ADD CONSTRAINT django_celery_results_taskresult_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.django_celery_results_taskresult DROP CONSTRAINT django_celery_results_taskresult_pkey;
       public            postgres    false    273            �           2606    61602 M   django_celery_results_taskresult django_celery_results_taskresult_task_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_results_taskresult
    ADD CONSTRAINT django_celery_results_taskresult_task_id_key UNIQUE (task_id);
 w   ALTER TABLE ONLY public.django_celery_results_taskresult DROP CONSTRAINT django_celery_results_taskresult_task_id_key;
       public            postgres    false    273            E           2606    61060 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    212    212            G           2606    61058 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    212            C           2606    61051 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    210                       2606    61708 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    282            �           2606    61663 ^   guardian_groupobjectpermission guardian_groupobjectperm_group_id_permission_id_o_3f189f7c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.guardian_groupobjectpermission
    ADD CONSTRAINT guardian_groupobjectperm_group_id_permission_id_o_3f189f7c_uniq UNIQUE (group_id, permission_id, object_pk);
 �   ALTER TABLE ONLY public.guardian_groupobjectpermission DROP CONSTRAINT guardian_groupobjectperm_group_id_permission_id_o_3f189f7c_uniq;
       public            postgres    false    279    279    279            �           2606    61652 B   guardian_groupobjectpermission guardian_groupobjectpermission_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.guardian_groupobjectpermission
    ADD CONSTRAINT guardian_groupobjectpermission_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.guardian_groupobjectpermission DROP CONSTRAINT guardian_groupobjectpermission_pkey;
       public            postgres    false    279            �           2606    61661 ]   guardian_userobjectpermission guardian_userobjectpermi_user_id_permission_id_ob_b0b3d2fc_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.guardian_userobjectpermission
    ADD CONSTRAINT guardian_userobjectpermi_user_id_permission_id_ob_b0b3d2fc_uniq UNIQUE (user_id, permission_id, object_pk);
 �   ALTER TABLE ONLY public.guardian_userobjectpermission DROP CONSTRAINT guardian_userobjectpermi_user_id_permission_id_ob_b0b3d2fc_uniq;
       public            postgres    false    281    281    281                        2606    61659 @   guardian_userobjectpermission guardian_userobjectpermission_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.guardian_userobjectpermission
    ADD CONSTRAINT guardian_userobjectpermission_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.guardian_userobjectpermission DROP CONSTRAINT guardian_userobjectpermission_pkey;
       public            postgres    false    281            h           2606    61290 2   Movie_booking_app_cinemahall unique cinemahallname 
   CONSTRAINT     |   ALTER TABLE ONLY public."Movie_booking_app_cinemahall"
    ADD CONSTRAINT "unique cinemahallname" UNIQUE (name, cinema_id);
 `   ALTER TABLE ONLY public."Movie_booking_app_cinemahall" DROP CONSTRAINT "unique cinemahallname";
       public            postgres    false    226    226            �           2606    61288 "   Movie_booking_app_show unique show 
   CONSTRAINT     �   ALTER TABLE ONLY public."Movie_booking_app_show"
    ADD CONSTRAINT "unique show" UNIQUE (date, start_time, end_time, movie_id, cinema_hall_id, cinema_id);
 P   ALTER TABLE ONLY public."Movie_booking_app_show" DROP CONSTRAINT "unique show";
       public            postgres    false    248    248    248    248    248    248            �           1259    61469 4   Movie_booking_app_booking_booking_status_id_61342dd2    INDEX     �   CREATE INDEX "Movie_booking_app_booking_booking_status_id_61342dd2" ON public."Movie_booking_app_booking" USING btree (booking_status_id);
 J   DROP INDEX public."Movie_booking_app_booking_booking_status_id_61342dd2";
       public            postgres    false    256            �           1259    61470 ,   Movie_booking_app_booking_cinema_id_ab8ece09    INDEX     {   CREATE INDEX "Movie_booking_app_booking_cinema_id_ab8ece09" ON public."Movie_booking_app_booking" USING btree (cinema_id);
 B   DROP INDEX public."Movie_booking_app_booking_cinema_id_ab8ece09";
       public            postgres    false    256            �           1259    61471 0   Movie_booking_app_booking_cinemahall_id_b8909714    INDEX     �   CREATE INDEX "Movie_booking_app_booking_cinemahall_id_b8909714" ON public."Movie_booking_app_booking" USING btree (cinemahall_id);
 F   DROP INDEX public."Movie_booking_app_booking_cinemahall_id_b8909714";
       public            postgres    false    256            �           1259    61472 +   Movie_booking_app_booking_movie_id_2c383cc0    INDEX     y   CREATE INDEX "Movie_booking_app_booking_movie_id_2c383cc0" ON public."Movie_booking_app_booking" USING btree (movie_id);
 A   DROP INDEX public."Movie_booking_app_booking_movie_id_2c383cc0";
       public            postgres    false    256            �           1259    61473 2   Movie_booking_app_booking_payment_mode_id_d7757221    INDEX     �   CREATE INDEX "Movie_booking_app_booking_payment_mode_id_d7757221" ON public."Movie_booking_app_booking" USING btree (payment_mode_id);
 H   DROP INDEX public."Movie_booking_app_booking_payment_mode_id_d7757221";
       public            postgres    false    256            �           1259    61474 4   Movie_booking_app_booking_payment_status_id_a5248dce    INDEX     �   CREATE INDEX "Movie_booking_app_booking_payment_status_id_a5248dce" ON public."Movie_booking_app_booking" USING btree (payment_status_id);
 J   DROP INDEX public."Movie_booking_app_booking_payment_status_id_a5248dce";
       public            postgres    false    256            �           1259    61489 3   Movie_booking_app_booking_seats_booking_id_d3f474c2    INDEX     �   CREATE INDEX "Movie_booking_app_booking_seats_booking_id_d3f474c2" ON public."Movie_booking_app_booking_seats" USING btree (booking_id);
 I   DROP INDEX public."Movie_booking_app_booking_seats_booking_id_d3f474c2";
       public            postgres    false    258            �           1259    61490 :   Movie_booking_app_booking_seats_cinemahallseat_id_d9e80eeb    INDEX     �   CREATE INDEX "Movie_booking_app_booking_seats_cinemahallseat_id_d9e80eeb" ON public."Movie_booking_app_booking_seats" USING btree (cinemahallseat_id);
 P   DROP INDEX public."Movie_booking_app_booking_seats_cinemahallseat_id_d9e80eeb";
       public            postgres    false    258            �           1259    61475 *   Movie_booking_app_booking_show_id_9dacef13    INDEX     w   CREATE INDEX "Movie_booking_app_booking_show_id_9dacef13" ON public."Movie_booking_app_booking" USING btree (show_id);
 @   DROP INDEX public."Movie_booking_app_booking_show_id_9dacef13";
       public            postgres    false    256            �           1259    61468 ,   Movie_booking_app_booking_slug_f7cacc95_like    INDEX     �   CREATE INDEX "Movie_booking_app_booking_slug_f7cacc95_like" ON public."Movie_booking_app_booking" USING btree (slug varchar_pattern_ops);
 B   DROP INDEX public."Movie_booking_app_booking_slug_f7cacc95_like";
       public            postgres    false    256            �           1259    61476 *   Movie_booking_app_booking_user_id_6b45b33e    INDEX     w   CREATE INDEX "Movie_booking_app_booking_user_id_6b45b33e" ON public."Movie_booking_app_booking" USING btree (user_id);
 @   DROP INDEX public."Movie_booking_app_booking_user_id_6b45b33e";
       public            postgres    false    256            ^           1259    61291 +   Movie_booking_app_cinema_slug_5bccded3_like    INDEX     �   CREATE INDEX "Movie_booking_app_cinema_slug_5bccded3_like" ON public."Movie_booking_app_cinema" USING btree (slug varchar_pattern_ops);
 A   DROP INDEX public."Movie_booking_app_cinema_slug_5bccded3_like";
       public            postgres    false    224            a           1259    61298 /   Movie_booking_app_cinemahall_cinema_id_dadad501    INDEX     �   CREATE INDEX "Movie_booking_app_cinemahall_cinema_id_dadad501" ON public."Movie_booking_app_cinemahall" USING btree (cinema_id);
 E   DROP INDEX public."Movie_booking_app_cinemahall_cinema_id_dadad501";
       public            postgres    false    226            d           1259    61297 /   Movie_booking_app_cinemahall_slug_0a446c7a_like    INDEX     �   CREATE INDEX "Movie_booking_app_cinemahall_slug_0a446c7a_like" ON public."Movie_booking_app_cinemahall" USING btree (slug varchar_pattern_ops);
 E   DROP INDEX public."Movie_booking_app_cinemahall_slug_0a446c7a_like";
       public            postgres    false    226            �           1259    61423 8   Movie_booking_app_cinemahallseat_cinema_hall_id_2edc2521    INDEX     �   CREATE INDEX "Movie_booking_app_cinemahallseat_cinema_hall_id_2edc2521" ON public."Movie_booking_app_cinemahallseat" USING btree (cinema_hall_id);
 N   DROP INDEX public."Movie_booking_app_cinemahallseat_cinema_hall_id_2edc2521";
       public            postgres    false    254            �           1259    61424 6   Movie_booking_app_cinemahallseat_seat_type_id_8410f7da    INDEX     �   CREATE INDEX "Movie_booking_app_cinemahallseat_seat_type_id_8410f7da" ON public."Movie_booking_app_cinemahallseat" USING btree (seat_type_id);
 L   DROP INDEX public."Movie_booking_app_cinemahallseat_seat_type_id_8410f7da";
       public            postgres    false    254            �           1259    61422 3   Movie_booking_app_cinemahallseat_slug_3b81a19a_like    INDEX     �   CREATE INDEX "Movie_booking_app_cinemahallseat_slug_3b81a19a_like" ON public."Movie_booking_app_cinemahallseat" USING btree (slug varchar_pattern_ops);
 I   DROP INDEX public."Movie_booking_app_cinemahallseat_slug_3b81a19a_like";
       public            postgres    false    254            �           1259    61427 2   Movie_booking_app_cinemahallseat_state_id_378ef85b    INDEX     �   CREATE INDEX "Movie_booking_app_cinemahallseat_state_id_378ef85b" ON public."Movie_booking_app_cinemahallseat" USING btree (state_id);
 H   DROP INDEX public."Movie_booking_app_cinemahallseat_state_id_378ef85b";
       public            postgres    false    254            m           1259    61299 *   Movie_booking_app_movie_slug_c24ba241_like    INDEX     �   CREATE INDEX "Movie_booking_app_movie_slug_c24ba241_like" ON public."Movie_booking_app_movie" USING btree (slug varchar_pattern_ops);
 @   DROP INDEX public."Movie_booking_app_movie_slug_c24ba241_like";
       public            postgres    false    230            �           1259    61396 =   Movie_booking_app_notification_notification_movie_id_178cbccb    INDEX     �   CREATE INDEX "Movie_booking_app_notification_notification_movie_id_178cbccb" ON public."Movie_booking_app_notification" USING btree (notification_movie_id);
 S   DROP INDEX public."Movie_booking_app_notification_notification_movie_id_178cbccb";
       public            postgres    false    252            �           1259    61381 4   Movie_booking_app_payment_payment_coupon_id_0d015278    INDEX     �   CREATE INDEX "Movie_booking_app_payment_payment_coupon_id_0d015278" ON public."Movie_booking_app_payment" USING btree (payment_coupon_id);
 J   DROP INDEX public."Movie_booking_app_payment_payment_coupon_id_0d015278";
       public            postgres    false    250            �           1259    61382 3   Movie_booking_app_payment_payment_movie_id_e37073f8    INDEX     �   CREATE INDEX "Movie_booking_app_payment_payment_movie_id_e37073f8" ON public."Movie_booking_app_payment" USING btree (payment_movie_id);
 I   DROP INDEX public."Movie_booking_app_payment_payment_movie_id_e37073f8";
       public            postgres    false    250            �           1259    61383 4   Movie_booking_app_payment_payment_status_id_f90101b3    INDEX     �   CREATE INDEX "Movie_booking_app_payment_payment_status_id_f90101b3" ON public."Movie_booking_app_payment" USING btree (payment_status_id);
 J   DROP INDEX public."Movie_booking_app_payment_payment_status_id_f90101b3";
       public            postgres    false    250            �           1259    61384 2   Movie_booking_app_payment_payment_type_id_759ffa48    INDEX     �   CREATE INDEX "Movie_booking_app_payment_payment_type_id_759ffa48" ON public."Movie_booking_app_payment" USING btree (payment_type_id);
 H   DROP INDEX public."Movie_booking_app_payment_payment_type_id_759ffa48";
       public            postgres    false    250            �           1259    61385 2   Movie_booking_app_payment_payment_user_id_a56b8a4c    INDEX     �   CREATE INDEX "Movie_booking_app_payment_payment_user_id_a56b8a4c" ON public."Movie_booking_app_payment" USING btree (payment_user_id);
 H   DROP INDEX public."Movie_booking_app_payment_payment_user_id_a56b8a4c";
       public            postgres    false    250            z           1259    61300 -   Movie_booking_app_seattype_slug_4fcfc441_like    INDEX     �   CREATE INDEX "Movie_booking_app_seattype_slug_4fcfc441_like" ON public."Movie_booking_app_seattype" USING btree (slug varchar_pattern_ops);
 C   DROP INDEX public."Movie_booking_app_seattype_slug_4fcfc441_like";
       public            postgres    false    240            �           1259    61354 .   Movie_booking_app_show_cinema_hall_id_8ba7ad1d    INDEX        CREATE INDEX "Movie_booking_app_show_cinema_hall_id_8ba7ad1d" ON public."Movie_booking_app_show" USING btree (cinema_hall_id);
 D   DROP INDEX public."Movie_booking_app_show_cinema_hall_id_8ba7ad1d";
       public            postgres    false    248            �           1259    61353 )   Movie_booking_app_show_cinema_id_c64505f9    INDEX     u   CREATE INDEX "Movie_booking_app_show_cinema_id_c64505f9" ON public."Movie_booking_app_show" USING btree (cinema_id);
 ?   DROP INDEX public."Movie_booking_app_show_cinema_id_c64505f9";
       public            postgres    false    248            �           1259    61355 (   Movie_booking_app_show_movie_id_2964cfe7    INDEX     s   CREATE INDEX "Movie_booking_app_show_movie_id_2964cfe7" ON public."Movie_booking_app_show" USING btree (movie_id);
 >   DROP INDEX public."Movie_booking_app_show_movie_id_2964cfe7";
       public            postgres    false    248            �           1259    61352 )   Movie_booking_app_show_slug_5624ed8a_like    INDEX     �   CREATE INDEX "Movie_booking_app_show_slug_5624ed8a_like" ON public."Movie_booking_app_show" USING btree (slug varchar_pattern_ops);
 ?   DROP INDEX public."Movie_booking_app_show_slug_5624ed8a_like";
       public            postgres    false    248                       1259    62287 <   Movie_booking_app_showwiseseats_cinema_hall_seat_id_948a5431    INDEX     �   CREATE INDEX "Movie_booking_app_showwiseseats_cinema_hall_seat_id_948a5431" ON public."Movie_booking_app_showwiseseats" USING btree (cinema_hall_seat_id);
 R   DROP INDEX public."Movie_booking_app_showwiseseats_cinema_hall_seat_id_948a5431";
       public            postgres    false    284                       1259    62288 0   Movie_booking_app_showwiseseats_show_id_bb1b3e48    INDEX     �   CREATE INDEX "Movie_booking_app_showwiseseats_show_id_bb1b3e48" ON public."Movie_booking_app_showwiseseats" USING btree (show_id);
 F   DROP INDEX public."Movie_booking_app_showwiseseats_show_id_bb1b3e48";
       public            postgres    false    284                       1259    62295 1   Movie_booking_app_showwiseseats_state_id_07af42e4    INDEX     �   CREATE INDEX "Movie_booking_app_showwiseseats_state_id_07af42e4" ON public."Movie_booking_app_showwiseseats" USING btree (state_id);
 G   DROP INDEX public."Movie_booking_app_showwiseseats_state_id_07af42e4";
       public            postgres    false    284            }           1259    61308 1   Movie_booking_app_user_account_status_id_dce1c398    INDEX     �   CREATE INDEX "Movie_booking_app_user_account_status_id_dce1c398" ON public."Movie_booking_app_user" USING btree (account_status_id);
 G   DROP INDEX public."Movie_booking_app_user_account_status_id_dce1c398";
       public            postgres    false    242            �           1259    61322 /   Movie_booking_app_user_groups_group_id_01e5b046    INDEX     �   CREATE INDEX "Movie_booking_app_user_groups_group_id_01e5b046" ON public."Movie_booking_app_user_groups" USING btree (group_id);
 E   DROP INDEX public."Movie_booking_app_user_groups_group_id_01e5b046";
       public            postgres    false    244            �           1259    61321 .   Movie_booking_app_user_groups_user_id_cd630f20    INDEX        CREATE INDEX "Movie_booking_app_user_groups_user_id_cd630f20" ON public."Movie_booking_app_user_groups" USING btree (user_id);
 D   DROP INDEX public."Movie_booking_app_user_groups_user_id_cd630f20";
       public            postgres    false    244            �           1259    61307 )   Movie_booking_app_user_slug_fb85f80d_like    INDEX     �   CREATE INDEX "Movie_booking_app_user_slug_fb85f80d_like" ON public."Movie_booking_app_user" USING btree (slug varchar_pattern_ops);
 ?   DROP INDEX public."Movie_booking_app_user_slug_fb85f80d_like";
       public            postgres    false    242            �           1259    61336 >   Movie_booking_app_user_user_permissions_permission_id_e40ba0b7    INDEX     �   CREATE INDEX "Movie_booking_app_user_user_permissions_permission_id_e40ba0b7" ON public."Movie_booking_app_user_user_permissions" USING btree (permission_id);
 T   DROP INDEX public."Movie_booking_app_user_user_permissions_permission_id_e40ba0b7";
       public            postgres    false    246            �           1259    61335 8   Movie_booking_app_user_user_permissions_user_id_66084dae    INDEX     �   CREATE INDEX "Movie_booking_app_user_user_permissions_user_id_66084dae" ON public."Movie_booking_app_user_user_permissions" USING btree (user_id);
 N   DROP INDEX public."Movie_booking_app_user_user_permissions_user_id_66084dae";
       public            postgres    false    246            �           1259    61306 -   Movie_booking_app_user_username_c8926d9e_like    INDEX     �   CREATE INDEX "Movie_booking_app_user_username_c8926d9e_like" ON public."Movie_booking_app_user" USING btree (username varchar_pattern_ops);
 C   DROP INDEX public."Movie_booking_app_user_username_c8926d9e_like";
       public            postgres    false    242            M           1259    61109    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    216            R           1259    61105 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    218            U           1259    61106 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    218            H           1259    61091 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    214            �           1259    61511 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    260            �           1259    61512 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    260            �           1259    61643    django_cele_date_cr_bd6c1d_idx    INDEX     t   CREATE INDEX django_cele_date_cr_bd6c1d_idx ON public.django_celery_results_groupresult USING btree (date_created);
 2   DROP INDEX public.django_cele_date_cr_bd6c1d_idx;
       public            postgres    false    277            �           1259    61641    django_cele_date_cr_f04a50_idx    INDEX     s   CREATE INDEX django_cele_date_cr_f04a50_idx ON public.django_celery_results_taskresult USING btree (date_created);
 2   DROP INDEX public.django_cele_date_cr_f04a50_idx;
       public            postgres    false    273            �           1259    61644    django_cele_date_do_caae0e_idx    INDEX     q   CREATE INDEX django_cele_date_do_caae0e_idx ON public.django_celery_results_groupresult USING btree (date_done);
 2   DROP INDEX public.django_cele_date_do_caae0e_idx;
       public            postgres    false    277            �           1259    61642    django_cele_date_do_f59aad_idx    INDEX     p   CREATE INDEX django_cele_date_do_f59aad_idx ON public.django_celery_results_taskresult USING btree (date_done);
 2   DROP INDEX public.django_cele_date_do_f59aad_idx;
       public            postgres    false    273            �           1259    61639    django_cele_status_9b6201_idx    INDEX     l   CREATE INDEX django_cele_status_9b6201_idx ON public.django_celery_results_taskresult USING btree (status);
 1   DROP INDEX public.django_cele_status_9b6201_idx;
       public            postgres    false    273            �           1259    61638    django_cele_task_na_08aec9_idx    INDEX     p   CREATE INDEX django_cele_task_na_08aec9_idx ON public.django_celery_results_taskresult USING btree (task_name);
 2   DROP INDEX public.django_cele_task_na_08aec9_idx;
       public            postgres    false    273            �           1259    61640    django_cele_worker_d54dd8_idx    INDEX     l   CREATE INDEX django_cele_worker_d54dd8_idx ON public.django_celery_results_taskresult USING btree (worker);
 1   DROP INDEX public.django_cele_worker_d54dd8_idx;
       public            postgres    false    273            �           1259    61590 3   django_celery_beat_periodictask_clocked_id_47a69f82    INDEX     �   CREATE INDEX django_celery_beat_periodictask_clocked_id_47a69f82 ON public.django_celery_beat_periodictask USING btree (clocked_id);
 G   DROP INDEX public.django_celery_beat_periodictask_clocked_id_47a69f82;
       public            postgres    false    266            �           1259    61555 3   django_celery_beat_periodictask_crontab_id_d3cba168    INDEX     �   CREATE INDEX django_celery_beat_periodictask_crontab_id_d3cba168 ON public.django_celery_beat_periodictask USING btree (crontab_id);
 G   DROP INDEX public.django_celery_beat_periodictask_crontab_id_d3cba168;
       public            postgres    false    266            �           1259    61556 4   django_celery_beat_periodictask_interval_id_a8ca27da    INDEX     �   CREATE INDEX django_celery_beat_periodictask_interval_id_a8ca27da ON public.django_celery_beat_periodictask USING btree (interval_id);
 H   DROP INDEX public.django_celery_beat_periodictask_interval_id_a8ca27da;
       public            postgres    false    266            �           1259    61554 2   django_celery_beat_periodictask_name_265a36b7_like    INDEX     �   CREATE INDEX django_celery_beat_periodictask_name_265a36b7_like ON public.django_celery_beat_periodictask USING btree (name varchar_pattern_ops);
 F   DROP INDEX public.django_celery_beat_periodictask_name_265a36b7_like;
       public            postgres    false    266            �           1259    61569 1   django_celery_beat_periodictask_solar_id_a87ce72c    INDEX     �   CREATE INDEX django_celery_beat_periodictask_solar_id_a87ce72c ON public.django_celery_beat_periodictask USING btree (solar_id);
 E   DROP INDEX public.django_celery_beat_periodictask_solar_id_a87ce72c;
       public            postgres    false    266            �           1259    61626 9   django_celery_results_chordcounter_group_id_1f70858c_like    INDEX     �   CREATE INDEX django_celery_results_chordcounter_group_id_1f70858c_like ON public.django_celery_results_chordcounter USING btree (group_id varchar_pattern_ops);
 M   DROP INDEX public.django_celery_results_chordcounter_group_id_1f70858c_like;
       public            postgres    false    275            �           1259    61645 8   django_celery_results_groupresult_group_id_a085f1a9_like    INDEX     �   CREATE INDEX django_celery_results_groupresult_group_id_a085f1a9_like ON public.django_celery_results_groupresult USING btree (group_id varchar_pattern_ops);
 L   DROP INDEX public.django_celery_results_groupresult_group_id_a085f1a9_like;
       public            postgres    false    277            �           1259    61603 6   django_celery_results_taskresult_task_id_de0d95bf_like    INDEX     �   CREATE INDEX django_celery_results_taskresult_task_id_de0d95bf_like ON public.django_celery_results_taskresult USING btree (task_id varchar_pattern_ops);
 J   DROP INDEX public.django_celery_results_taskresult_task_id_de0d95bf_like;
       public            postgres    false    273                       1259    61710 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    282                       1259    61709 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    282            �           1259    61700    guardian_gr_content_ae6aec_idx    INDEX        CREATE INDEX guardian_gr_content_ae6aec_idx ON public.guardian_groupobjectpermission USING btree (content_type_id, object_pk);
 2   DROP INDEX public.guardian_gr_content_ae6aec_idx;
       public            postgres    false    279    279            �           1259    61679 7   guardian_groupobjectpermission_content_type_id_7ade36b8    INDEX     �   CREATE INDEX guardian_groupobjectpermission_content_type_id_7ade36b8 ON public.guardian_groupobjectpermission USING btree (content_type_id);
 K   DROP INDEX public.guardian_groupobjectpermission_content_type_id_7ade36b8;
       public            postgres    false    279            �           1259    61680 0   guardian_groupobjectpermission_group_id_4bbbfb62    INDEX        CREATE INDEX guardian_groupobjectpermission_group_id_4bbbfb62 ON public.guardian_groupobjectpermission USING btree (group_id);
 D   DROP INDEX public.guardian_groupobjectpermission_group_id_4bbbfb62;
       public            postgres    false    279            �           1259    61681 5   guardian_groupobjectpermission_permission_id_36572738    INDEX     �   CREATE INDEX guardian_groupobjectpermission_permission_id_36572738 ON public.guardian_groupobjectpermission USING btree (permission_id);
 I   DROP INDEX public.guardian_groupobjectpermission_permission_id_36572738;
       public            postgres    false    279            �           1259    61701    guardian_us_content_179ed2_idx    INDEX     ~   CREATE INDEX guardian_us_content_179ed2_idx ON public.guardian_userobjectpermission USING btree (content_type_id, object_pk);
 2   DROP INDEX public.guardian_us_content_179ed2_idx;
       public            postgres    false    281    281            �           1259    61697 6   guardian_userobjectpermission_content_type_id_2e892405    INDEX     �   CREATE INDEX guardian_userobjectpermission_content_type_id_2e892405 ON public.guardian_userobjectpermission USING btree (content_type_id);
 J   DROP INDEX public.guardian_userobjectpermission_content_type_id_2e892405;
       public            postgres    false    281            �           1259    61698 4   guardian_userobjectpermission_permission_id_71807bfc    INDEX     �   CREATE INDEX guardian_userobjectpermission_permission_id_71807bfc ON public.guardian_userobjectpermission USING btree (permission_id);
 H   DROP INDEX public.guardian_userobjectpermission_permission_id_71807bfc;
       public            postgres    false    281                       1259    61699 .   guardian_userobjectpermission_user_id_d5c1e964    INDEX     {   CREATE INDEX guardian_userobjectpermission_user_id_d5c1e964 ON public.guardian_userobjectpermission USING btree (user_id);
 B   DROP INDEX public.guardian_userobjectpermission_user_id_d5c1e964;
       public            postgres    false    281            +           2606    61479 U   Movie_booking_app_booking_seats Movie_booking_app_bo_booking_id_d3f474c2_fk_Movie_boo    FK CONSTRAINT     �   ALTER TABLE ONLY public."Movie_booking_app_booking_seats"
    ADD CONSTRAINT "Movie_booking_app_bo_booking_id_d3f474c2_fk_Movie_boo" FOREIGN KEY (booking_id) REFERENCES public."Movie_booking_app_booking"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."Movie_booking_app_booking_seats" DROP CONSTRAINT "Movie_booking_app_bo_booking_id_d3f474c2_fk_Movie_boo";
       public          postgres    false    258    256    3511            #           2606    61428 V   Movie_booking_app_booking Movie_booking_app_bo_booking_status_id_61342dd2_fk_Movie_boo    FK CONSTRAINT     �   ALTER TABLE ONLY public."Movie_booking_app_booking"
    ADD CONSTRAINT "Movie_booking_app_bo_booking_status_id_61342dd2_fk_Movie_boo" FOREIGN KEY (booking_status_id) REFERENCES public."Movie_booking_app_bookingstatus"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."Movie_booking_app_booking" DROP CONSTRAINT "Movie_booking_app_bo_booking_status_id_61342dd2_fk_Movie_boo";
       public          postgres    false    222    256    3419            $           2606    61433 N   Movie_booking_app_booking Movie_booking_app_bo_cinema_id_ab8ece09_fk_Movie_boo    FK CONSTRAINT     �   ALTER TABLE ONLY public."Movie_booking_app_booking"
    ADD CONSTRAINT "Movie_booking_app_bo_cinema_id_ab8ece09_fk_Movie_boo" FOREIGN KEY (cinema_id) REFERENCES public."Movie_booking_app_cinema"(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public."Movie_booking_app_booking" DROP CONSTRAINT "Movie_booking_app_bo_cinema_id_ab8ece09_fk_Movie_boo";
       public          postgres    false    3421    224    256            %           2606    61438 R   Movie_booking_app_booking Movie_booking_app_bo_cinemahall_id_b8909714_fk_Movie_boo    FK CONSTRAINT     �   ALTER TABLE ONLY public."Movie_booking_app_booking"
    ADD CONSTRAINT "Movie_booking_app_bo_cinemahall_id_b8909714_fk_Movie_boo" FOREIGN KEY (cinemahall_id) REFERENCES public."Movie_booking_app_cinemahall"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."Movie_booking_app_booking" DROP CONSTRAINT "Movie_booking_app_bo_cinemahall_id_b8909714_fk_Movie_boo";
       public          postgres    false    256    3427    226            ,           2606    61484 \   Movie_booking_app_booking_seats Movie_booking_app_bo_cinemahallseat_id_d9e80eeb_fk_Movie_boo    FK CONSTRAINT       ALTER TABLE ONLY public."Movie_booking_app_booking_seats"
    ADD CONSTRAINT "Movie_booking_app_bo_cinemahallseat_id_d9e80eeb_fk_Movie_boo" FOREIGN KEY (cinemahallseat_id) REFERENCES public."Movie_booking_app_cinemahallseat"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."Movie_booking_app_booking_seats" DROP CONSTRAINT "Movie_booking_app_bo_cinemahallseat_id_d9e80eeb_fk_Movie_boo";
       public          postgres    false    254    258    3498            &           2606    61443 M   Movie_booking_app_booking Movie_booking_app_bo_movie_id_2c383cc0_fk_Movie_boo    FK CONSTRAINT     �   ALTER TABLE ONLY public."Movie_booking_app_booking"
    ADD CONSTRAINT "Movie_booking_app_bo_movie_id_2c383cc0_fk_Movie_boo" FOREIGN KEY (movie_id) REFERENCES public."Movie_booking_app_movie"(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public."Movie_booking_app_booking" DROP CONSTRAINT "Movie_booking_app_bo_movie_id_2c383cc0_fk_Movie_boo";
       public          postgres    false    230    256    3436            '           2606    61448 T   Movie_booking_app_booking Movie_booking_app_bo_payment_mode_id_d7757221_fk_Movie_boo    FK CONSTRAINT     �   ALTER TABLE ONLY public."Movie_booking_app_booking"
    ADD CONSTRAINT "Movie_booking_app_bo_payment_mode_id_d7757221_fk_Movie_boo" FOREIGN KEY (payment_mode_id) REFERENCES public."Movie_booking_app_paymentmode"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."Movie_booking_app_booking" DROP CONSTRAINT "Movie_booking_app_bo_payment_mode_id_d7757221_fk_Movie_boo";
       public          postgres    false    234    256    3443            (           2606    61453 V   Movie_booking_app_booking Movie_booking_app_bo_payment_status_id_a5248dce_fk_Movie_boo    FK CONSTRAINT     �   ALTER TABLE ONLY public."Movie_booking_app_booking"
    ADD CONSTRAINT "Movie_booking_app_bo_payment_status_id_a5248dce_fk_Movie_boo" FOREIGN KEY (payment_status_id) REFERENCES public."Movie_booking_app_paymentstatus"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."Movie_booking_app_booking" DROP CONSTRAINT "Movie_booking_app_bo_payment_status_id_a5248dce_fk_Movie_boo";
       public          postgres    false    3445    236    256            )           2606    61458 L   Movie_booking_app_booking Movie_booking_app_bo_show_id_9dacef13_fk_Movie_boo    FK CONSTRAINT     �   ALTER TABLE ONLY public."Movie_booking_app_booking"
    ADD CONSTRAINT "Movie_booking_app_bo_show_id_9dacef13_fk_Movie_boo" FOREIGN KEY (show_id) REFERENCES public."Movie_booking_app_show"(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public."Movie_booking_app_booking" DROP CONSTRAINT "Movie_booking_app_bo_show_id_9dacef13_fk_Movie_boo";
       public          postgres    false    3478    248    256            *           2606    61463 L   Movie_booking_app_booking Movie_booking_app_bo_user_id_6b45b33e_fk_Movie_boo    FK CONSTRAINT     �   ALTER TABLE ONLY public."Movie_booking_app_booking"
    ADD CONSTRAINT "Movie_booking_app_bo_user_id_6b45b33e_fk_Movie_boo" FOREIGN KEY (user_id) REFERENCES public."Movie_booking_app_user"(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public."Movie_booking_app_booking" DROP CONSTRAINT "Movie_booking_app_bo_user_id_6b45b33e_fk_Movie_boo";
       public          postgres    false    256    3455    242                        2606    61397 Z   Movie_booking_app_cinemahallseat Movie_booking_app_ci_cinema_hall_id_2edc2521_fk_Movie_boo    FK CONSTRAINT     �   ALTER TABLE ONLY public."Movie_booking_app_cinemahallseat"
    ADD CONSTRAINT "Movie_booking_app_ci_cinema_hall_id_2edc2521_fk_Movie_boo" FOREIGN KEY (cinema_hall_id) REFERENCES public."Movie_booking_app_cinemahall"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."Movie_booking_app_cinemahallseat" DROP CONSTRAINT "Movie_booking_app_ci_cinema_hall_id_2edc2521_fk_Movie_boo";
       public          postgres    false    254    226    3427                       2606    61292 Q   Movie_booking_app_cinemahall Movie_booking_app_ci_cinema_id_dadad501_fk_Movie_boo    FK CONSTRAINT     �   ALTER TABLE ONLY public."Movie_booking_app_cinemahall"
    ADD CONSTRAINT "Movie_booking_app_ci_cinema_id_dadad501_fk_Movie_boo" FOREIGN KEY (cinema_id) REFERENCES public."Movie_booking_app_cinema"(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public."Movie_booking_app_cinemahall" DROP CONSTRAINT "Movie_booking_app_ci_cinema_id_dadad501_fk_Movie_boo";
       public          postgres    false    3421    224    226            !           2606    61402 X   Movie_booking_app_cinemahallseat Movie_booking_app_ci_seat_type_id_8410f7da_fk_Movie_boo    FK CONSTRAINT     �   ALTER TABLE ONLY public."Movie_booking_app_cinemahallseat"
    ADD CONSTRAINT "Movie_booking_app_ci_seat_type_id_8410f7da_fk_Movie_boo" FOREIGN KEY (seat_type_id) REFERENCES public."Movie_booking_app_seattype"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."Movie_booking_app_cinemahallseat" DROP CONSTRAINT "Movie_booking_app_ci_seat_type_id_8410f7da_fk_Movie_boo";
       public          postgres    false    240    3449    254            "           2606    61417 T   Movie_booking_app_cinemahallseat Movie_booking_app_ci_state_id_378ef85b_fk_Movie_boo    FK CONSTRAINT     �   ALTER TABLE ONLY public."Movie_booking_app_cinemahallseat"
    ADD CONSTRAINT "Movie_booking_app_ci_state_id_378ef85b_fk_Movie_boo" FOREIGN KEY (state_id) REFERENCES public."Movie_booking_app_seatstate"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."Movie_booking_app_cinemahallseat" DROP CONSTRAINT "Movie_booking_app_ci_state_id_378ef85b_fk_Movie_boo";
       public          postgres    false    3447    254    238                       2606    61386 ^   Movie_booking_app_notification Movie_booking_app_no_notification_movie_i_178cbccb_fk_Movie_boo    FK CONSTRAINT       ALTER TABLE ONLY public."Movie_booking_app_notification"
    ADD CONSTRAINT "Movie_booking_app_no_notification_movie_i_178cbccb_fk_Movie_boo" FOREIGN KEY (notification_movie_id) REFERENCES public."Movie_booking_app_movie"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."Movie_booking_app_notification" DROP CONSTRAINT "Movie_booking_app_no_notification_movie_i_178cbccb_fk_Movie_boo";
       public          postgres    false    230    3436    252                       2606    61391 ^   Movie_booking_app_notification Movie_booking_app_no_notification_type_id_73fb1c36_fk_Movie_boo    FK CONSTRAINT       ALTER TABLE ONLY public."Movie_booking_app_notification"
    ADD CONSTRAINT "Movie_booking_app_no_notification_type_id_73fb1c36_fk_Movie_boo" FOREIGN KEY (notification_type_id) REFERENCES public."Movie_booking_app_notificationtype"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."Movie_booking_app_notification" DROP CONSTRAINT "Movie_booking_app_no_notification_type_id_73fb1c36_fk_Movie_boo";
       public          postgres    false    3441    232    252                       2606    61356 V   Movie_booking_app_payment Movie_booking_app_pa_payment_coupon_id_0d015278_fk_Movie_boo    FK CONSTRAINT     �   ALTER TABLE ONLY public."Movie_booking_app_payment"
    ADD CONSTRAINT "Movie_booking_app_pa_payment_coupon_id_0d015278_fk_Movie_boo" FOREIGN KEY (payment_coupon_id) REFERENCES public."Movie_booking_app_coupen"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."Movie_booking_app_payment" DROP CONSTRAINT "Movie_booking_app_pa_payment_coupon_id_0d015278_fk_Movie_boo";
       public          postgres    false    228    250    3434                       2606    61361 U   Movie_booking_app_payment Movie_booking_app_pa_payment_movie_id_e37073f8_fk_Movie_boo    FK CONSTRAINT     �   ALTER TABLE ONLY public."Movie_booking_app_payment"
    ADD CONSTRAINT "Movie_booking_app_pa_payment_movie_id_e37073f8_fk_Movie_boo" FOREIGN KEY (payment_movie_id) REFERENCES public."Movie_booking_app_movie"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."Movie_booking_app_payment" DROP CONSTRAINT "Movie_booking_app_pa_payment_movie_id_e37073f8_fk_Movie_boo";
       public          postgres    false    3436    230    250                       2606    61366 V   Movie_booking_app_payment Movie_booking_app_pa_payment_status_id_f90101b3_fk_Movie_boo    FK CONSTRAINT     �   ALTER TABLE ONLY public."Movie_booking_app_payment"
    ADD CONSTRAINT "Movie_booking_app_pa_payment_status_id_f90101b3_fk_Movie_boo" FOREIGN KEY (payment_status_id) REFERENCES public."Movie_booking_app_paymentstatus"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."Movie_booking_app_payment" DROP CONSTRAINT "Movie_booking_app_pa_payment_status_id_f90101b3_fk_Movie_boo";
       public          postgres    false    250    236    3445                       2606    61371 T   Movie_booking_app_payment Movie_booking_app_pa_payment_type_id_759ffa48_fk_Movie_boo    FK CONSTRAINT     �   ALTER TABLE ONLY public."Movie_booking_app_payment"
    ADD CONSTRAINT "Movie_booking_app_pa_payment_type_id_759ffa48_fk_Movie_boo" FOREIGN KEY (payment_type_id) REFERENCES public."Movie_booking_app_paymentmode"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."Movie_booking_app_payment" DROP CONSTRAINT "Movie_booking_app_pa_payment_type_id_759ffa48_fk_Movie_boo";
       public          postgres    false    234    250    3443                       2606    61376 T   Movie_booking_app_payment Movie_booking_app_pa_payment_user_id_a56b8a4c_fk_Movie_boo    FK CONSTRAINT     �   ALTER TABLE ONLY public."Movie_booking_app_payment"
    ADD CONSTRAINT "Movie_booking_app_pa_payment_user_id_a56b8a4c_fk_Movie_boo" FOREIGN KEY (payment_user_id) REFERENCES public."Movie_booking_app_user"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."Movie_booking_app_payment" DROP CONSTRAINT "Movie_booking_app_pa_payment_user_id_a56b8a4c_fk_Movie_boo";
       public          postgres    false    250    242    3455                       2606    61342 P   Movie_booking_app_show Movie_booking_app_sh_cinema_hall_id_8ba7ad1d_fk_Movie_boo    FK CONSTRAINT     �   ALTER TABLE ONLY public."Movie_booking_app_show"
    ADD CONSTRAINT "Movie_booking_app_sh_cinema_hall_id_8ba7ad1d_fk_Movie_boo" FOREIGN KEY (cinema_hall_id) REFERENCES public."Movie_booking_app_cinemahall"(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public."Movie_booking_app_show" DROP CONSTRAINT "Movie_booking_app_sh_cinema_hall_id_8ba7ad1d_fk_Movie_boo";
       public          postgres    false    248    226    3427            9           2606    62277 ^   Movie_booking_app_showwiseseats Movie_booking_app_sh_cinema_hall_seat_id_948a5431_fk_Movie_boo    FK CONSTRAINT       ALTER TABLE ONLY public."Movie_booking_app_showwiseseats"
    ADD CONSTRAINT "Movie_booking_app_sh_cinema_hall_seat_id_948a5431_fk_Movie_boo" FOREIGN KEY (cinema_hall_seat_id) REFERENCES public."Movie_booking_app_cinemahallseat"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."Movie_booking_app_showwiseseats" DROP CONSTRAINT "Movie_booking_app_sh_cinema_hall_seat_id_948a5431_fk_Movie_boo";
       public          postgres    false    284    3498    254                       2606    61337 K   Movie_booking_app_show Movie_booking_app_sh_cinema_id_c64505f9_fk_Movie_boo    FK CONSTRAINT     �   ALTER TABLE ONLY public."Movie_booking_app_show"
    ADD CONSTRAINT "Movie_booking_app_sh_cinema_id_c64505f9_fk_Movie_boo" FOREIGN KEY (cinema_id) REFERENCES public."Movie_booking_app_cinema"(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public."Movie_booking_app_show" DROP CONSTRAINT "Movie_booking_app_sh_cinema_id_c64505f9_fk_Movie_boo";
       public          postgres    false    248    3421    224                       2606    61347 J   Movie_booking_app_show Movie_booking_app_sh_movie_id_2964cfe7_fk_Movie_boo    FK CONSTRAINT     �   ALTER TABLE ONLY public."Movie_booking_app_show"
    ADD CONSTRAINT "Movie_booking_app_sh_movie_id_2964cfe7_fk_Movie_boo" FOREIGN KEY (movie_id) REFERENCES public."Movie_booking_app_movie"(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public."Movie_booking_app_show" DROP CONSTRAINT "Movie_booking_app_sh_movie_id_2964cfe7_fk_Movie_boo";
       public          postgres    false    3436    230    248            :           2606    62282 R   Movie_booking_app_showwiseseats Movie_booking_app_sh_show_id_bb1b3e48_fk_Movie_boo    FK CONSTRAINT     �   ALTER TABLE ONLY public."Movie_booking_app_showwiseseats"
    ADD CONSTRAINT "Movie_booking_app_sh_show_id_bb1b3e48_fk_Movie_boo" FOREIGN KEY (show_id) REFERENCES public."Movie_booking_app_show"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."Movie_booking_app_showwiseseats" DROP CONSTRAINT "Movie_booking_app_sh_show_id_bb1b3e48_fk_Movie_boo";
       public          postgres    false    248    284    3478            ;           2606    62290 S   Movie_booking_app_showwiseseats Movie_booking_app_sh_state_id_07af42e4_fk_Movie_boo    FK CONSTRAINT     �   ALTER TABLE ONLY public."Movie_booking_app_showwiseseats"
    ADD CONSTRAINT "Movie_booking_app_sh_state_id_07af42e4_fk_Movie_boo" FOREIGN KEY (state_id) REFERENCES public."Movie_booking_app_seatstate"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."Movie_booking_app_showwiseseats" DROP CONSTRAINT "Movie_booking_app_sh_state_id_07af42e4_fk_Movie_boo";
       public          postgres    false    238    3447    284                       2606    61301 S   Movie_booking_app_user Movie_booking_app_us_account_status_id_dce1c398_fk_Movie_boo    FK CONSTRAINT     �   ALTER TABLE ONLY public."Movie_booking_app_user"
    ADD CONSTRAINT "Movie_booking_app_us_account_status_id_dce1c398_fk_Movie_boo" FOREIGN KEY (account_status_id) REFERENCES public."Movie_booking_app_accountstatus"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."Movie_booking_app_user" DROP CONSTRAINT "Movie_booking_app_us_account_status_id_dce1c398_fk_Movie_boo";
       public          postgres    false    220    3417    242                       2606    61316 Q   Movie_booking_app_user_groups Movie_booking_app_us_group_id_01e5b046_fk_auth_grou    FK CONSTRAINT     �   ALTER TABLE ONLY public."Movie_booking_app_user_groups"
    ADD CONSTRAINT "Movie_booking_app_us_group_id_01e5b046_fk_auth_grou" FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public."Movie_booking_app_user_groups" DROP CONSTRAINT "Movie_booking_app_us_group_id_01e5b046_fk_auth_grou";
       public          postgres    false    3409    216    244                       2606    61330 `   Movie_booking_app_user_user_permissions Movie_booking_app_us_permission_id_e40ba0b7_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public."Movie_booking_app_user_user_permissions"
    ADD CONSTRAINT "Movie_booking_app_us_permission_id_e40ba0b7_fk_auth_perm" FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."Movie_booking_app_user_user_permissions" DROP CONSTRAINT "Movie_booking_app_us_permission_id_e40ba0b7_fk_auth_perm";
       public          postgres    false    246    3404    214                       2606    61325 Z   Movie_booking_app_user_user_permissions Movie_booking_app_us_user_id_66084dae_fk_Movie_boo    FK CONSTRAINT     �   ALTER TABLE ONLY public."Movie_booking_app_user_user_permissions"
    ADD CONSTRAINT "Movie_booking_app_us_user_id_66084dae_fk_Movie_boo" FOREIGN KEY (user_id) REFERENCES public."Movie_booking_app_user"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."Movie_booking_app_user_user_permissions" DROP CONSTRAINT "Movie_booking_app_us_user_id_66084dae_fk_Movie_boo";
       public          postgres    false    242    246    3455                       2606    61311 P   Movie_booking_app_user_groups Movie_booking_app_us_user_id_cd630f20_fk_Movie_boo    FK CONSTRAINT     �   ALTER TABLE ONLY public."Movie_booking_app_user_groups"
    ADD CONSTRAINT "Movie_booking_app_us_user_id_cd630f20_fk_Movie_boo" FOREIGN KEY (user_id) REFERENCES public."Movie_booking_app_user"(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public."Movie_booking_app_user_groups" DROP CONSTRAINT "Movie_booking_app_us_user_id_cd630f20_fk_Movie_boo";
       public          postgres    false    3455    242    244                       2606    61100 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    218    3404    214                       2606    61095 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    218    3409    216                       2606    61086 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    3399    214    212            -           2606    61501 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    260    212    3399            .           2606    61506 O   django_admin_log django_admin_log_user_id_c564eba6_fk_Movie_booking_app_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT "django_admin_log_user_id_c564eba6_fk_Movie_booking_app_user_id" FOREIGN KEY (user_id) REFERENCES public."Movie_booking_app_user"(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT "django_admin_log_user_id_c564eba6_fk_Movie_booking_app_user_id";
       public          postgres    false    3455    242    260            2           2606    61585 U   django_celery_beat_periodictask django_celery_beat_p_clocked_id_47a69f82_fk_django_ce    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_beat_periodictask
    ADD CONSTRAINT django_celery_beat_p_clocked_id_47a69f82_fk_django_ce FOREIGN KEY (clocked_id) REFERENCES public.django_celery_beat_clockedschedule(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.django_celery_beat_periodictask DROP CONSTRAINT django_celery_beat_p_clocked_id_47a69f82_fk_django_ce;
       public          postgres    false    271    3547    266            /           2606    61544 U   django_celery_beat_periodictask django_celery_beat_p_crontab_id_d3cba168_fk_django_ce    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_beat_periodictask
    ADD CONSTRAINT django_celery_beat_p_crontab_id_d3cba168_fk_django_ce FOREIGN KEY (crontab_id) REFERENCES public.django_celery_beat_crontabschedule(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.django_celery_beat_periodictask DROP CONSTRAINT django_celery_beat_p_crontab_id_d3cba168_fk_django_ce;
       public          postgres    false    3528    266    262            0           2606    61549 V   django_celery_beat_periodictask django_celery_beat_p_interval_id_a8ca27da_fk_django_ce    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_beat_periodictask
    ADD CONSTRAINT django_celery_beat_p_interval_id_a8ca27da_fk_django_ce FOREIGN KEY (interval_id) REFERENCES public.django_celery_beat_intervalschedule(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.django_celery_beat_periodictask DROP CONSTRAINT django_celery_beat_p_interval_id_a8ca27da_fk_django_ce;
       public          postgres    false    266    3530    264            1           2606    61564 S   django_celery_beat_periodictask django_celery_beat_p_solar_id_a87ce72c_fk_django_ce    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_celery_beat_periodictask
    ADD CONSTRAINT django_celery_beat_p_solar_id_a87ce72c_fk_django_ce FOREIGN KEY (solar_id) REFERENCES public.django_celery_beat_solarschedule(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.django_celery_beat_periodictask DROP CONSTRAINT django_celery_beat_p_solar_id_a87ce72c_fk_django_ce;
       public          postgres    false    3545    266    269            3           2606    61664 Y   guardian_groupobjectpermission guardian_groupobject_content_type_id_7ade36b8_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.guardian_groupobjectpermission
    ADD CONSTRAINT guardian_groupobject_content_type_id_7ade36b8_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.guardian_groupobjectpermission DROP CONSTRAINT guardian_groupobject_content_type_id_7ade36b8_fk_django_co;
       public          postgres    false    279    3399    212            4           2606    61669 R   guardian_groupobjectpermission guardian_groupobject_group_id_4bbbfb62_fk_auth_grou    FK CONSTRAINT     �   ALTER TABLE ONLY public.guardian_groupobjectpermission
    ADD CONSTRAINT guardian_groupobject_group_id_4bbbfb62_fk_auth_grou FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.guardian_groupobjectpermission DROP CONSTRAINT guardian_groupobject_group_id_4bbbfb62_fk_auth_grou;
       public          postgres    false    279    3409    216            5           2606    61674 W   guardian_groupobjectpermission guardian_groupobject_permission_id_36572738_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.guardian_groupobjectpermission
    ADD CONSTRAINT guardian_groupobject_permission_id_36572738_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.guardian_groupobjectpermission DROP CONSTRAINT guardian_groupobject_permission_id_36572738_fk_auth_perm;
       public          postgres    false    279    3404    214            6           2606    61682 X   guardian_userobjectpermission guardian_userobjectp_content_type_id_2e892405_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.guardian_userobjectpermission
    ADD CONSTRAINT guardian_userobjectp_content_type_id_2e892405_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.guardian_userobjectpermission DROP CONSTRAINT guardian_userobjectp_content_type_id_2e892405_fk_django_co;
       public          postgres    false    3399    212    281            7           2606    61687 V   guardian_userobjectpermission guardian_userobjectp_permission_id_71807bfc_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.guardian_userobjectpermission
    ADD CONSTRAINT guardian_userobjectp_permission_id_71807bfc_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.guardian_userobjectpermission DROP CONSTRAINT guardian_userobjectp_permission_id_71807bfc_fk_auth_perm;
       public          postgres    false    281    214    3404            8           2606    61692 P   guardian_userobjectpermission guardian_userobjectp_user_id_d5c1e964_fk_Movie_boo    FK CONSTRAINT     �   ALTER TABLE ONLY public.guardian_userobjectpermission
    ADD CONSTRAINT "guardian_userobjectp_user_id_d5c1e964_fk_Movie_boo" FOREIGN KEY (user_id) REFERENCES public."Movie_booking_app_user"(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.guardian_userobjectpermission DROP CONSTRAINT "guardian_userobjectp_user_id_d5c1e964_fk_Movie_boo";
       public          postgres    false    281    3455    242            �      x�3�tL.�,K,IM����� -��      �   `   x���1
�@D�z���e&������V�Jﯕ�62��{R�
��6DPütV��¢CRC�������X�YF�&>f��-3��C���N%�|��"�      �   &   x��0�43�4���2��43�43-AL#3F��� |]5      �   .   x�3�J-,M-.IM�2�tN�KN����9����2�r��=... }<      �   q   x�3�4202�5��5�T04�24"=CC3c#mS+c�
|K�K9�K��K83rSS�S8=�R29----,,����8sA
�s3s���s!|������T� W� �(=      �   K   x�3�4202�5��5�T04�24�22�327342�60�26�������א��� �sK�Ku=srtA�\1z\\\ ���      �   >   x�3�t�4AS����D݌Ĝ�\C]�(��P�b�0��0�0BL�P1z\\\ ��      �      x������ � �      �   �   x�}�AN�0E��S�G53c;���T�r6lB����#�)��; �}����02��]��#��xl$F��h��_�� Zy��v��6�k��p>����AxLS<Mݐ�1M`a;�0�S~:sG�źaύ�d,�U}x�o��!�%�'"����#�ͼ��I:甥��
l�uv�3
�څ��Q�U���C2��n���9���K
j��y޳�r���4�i!��"�_�Fy�      �      x������ � �      �      x������ � �      �      x������ � �      �      x�3�,-������ �;      �   *   x�3�,H�K��K�2�LN�KN��IM�2�,H�L����� �(	�      �   (   x�3�t�-(��2�t���NM�2�tN�KN���c���� �L	V      �      x�3�JM/�I,�,��\1z\\\ X��      �   �   x���A�0�u{���
펅Ko�����	��ނbJLg�3��4	"����F����}hH
��]iO,ܲ�ؘ�:g٭r-�ݣ|��!�o\m�~5bE� DE ��eIz|̶�wW\5wMb.�]��B��b�M���5�U��V�L`��5*c���D�T�t��ù���R�
�rD         %   x�3�4�4�4�2�@�e
�i3Nc ˈ+F��� S�a      �   -  x�m�Ao�@��˯��7�XI�Զh$c��Ƙ4���]���w��;��9�o�=��LF��wE�^Xɨ%��̟�Tf��-v.�:�yD֤WV�QT{�*W5ѵ&�  ��M�(��������ы$�KU	-0���r{��e2�SVr��&���p��8+��W'�y>u/�_vy"�'����n�/��.71:n�F�ՆQ��C����c՛��=����Kg!>ǃ&9~��M�Ĩ���E�;� ��{��-�|
>E�z �]~Rg':�����4��p`�{����-�0��1w�      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   Z  x�}�[n�6E��Ux�����n�@��j�ƶKN�ݗ�9����s�KZw��̟��0].���~�����T�=��ã�r���ﳠ���&���:��&� ~-��|A]r����eۖ�n�`�쉛 �cl��	2v ��7&�����0M0~���������{��A�&+.�u��������<f�#��[l�r;
FW��7ţE��Ȩ��_����6��v�0>�j�f�A�	�G��^��#Y#(�JH�M���r�}�_�9c�m����RiD>2ZV�L�+�R󶮟��=�}6FZ�'�(�F�(��(���)S�Q(�Ru^��m2|���6"W���0B"Y	��-B,[	���F99|L׫��`�6�Q��.�ia�6Y�ȞՂ�c�W���'��D$��Q�>R)�j�<���A���`a	�	J ZAF$&1h��D��q_���<�.�P�*XO��P�Z����R�����R��0+�QZ��͗��zqX���7�N$G�q���"-��&�Di�N7�s,U˽cY�ڒ{RH�QԕF@"9�(:� 	G��l؍9�iS�܀ժ�ɴ�%X�mN�[�Ob��(�r	��S��N�h��Nu�3r�&�M�2��$����d0J���~���S�
曠ŞDJ}2\$S��+�Y~J	|m��T�\�߶����"c�@C@�P����m�|�jLe�VO�������O���IN��f���ΰ��<��
���̫��BR='#j�cNO�Tځ�r^/M]e��c�x���A|�ZQ(�v`��泪nJ [�CfL]���o���BI��B@'2Q�e�бp�TjgJ	n�L��]�EV$w�v�a��}ڑ�Q|�iGJO8Pַ��.N}-��-? ����?�彈��?潰�����zQ�J�.ն\=�ZW�U���QW�r�>f}Tǣ,��.R	-t@�c����s�^W�e�:雠ő�z(*xQ;��<��������� w�~���Јm��5Cb��Y/�&��B+�PH^ݩ��8���y�"�qa
���0��(%���n�>�����?���:;T��S�	乑q�3?:�������_��4���g��s�$"�\��s	���0�N�ua^��r�1M�C�os�Hn&��C���4t��5,��"�'r�+�b3M�cs��U��@�J߆*Ua(^5��X�&�WP���:=�߰5��&��͎��UID��$nc��Z	`_�p���z��/���Uxd�L4�1љ@&�1љ�'�pHt�S�?�|/�ܿեC�o�N ϧ����L�Ts;N0�B*���$�a���7vp      �   �  x��\mo��,�
A�Z�:����i���"	n>0c+�����A�{g)q�8w�;�@ �c>���̳3�s�3t��.^�t�^�4>:�_��ȝ�ٗ�w�7���7�^���6W��_���3�g�
-��dB)�|X� D�. B�1 ��!\~����|=@I�����zr��?�߭o��=(�t����,W[��ݿ�p�����������_��39߅Fnĉ>h��J����X�w���y�p�'�sbP��E$hBr���}�����bE��n�Ґs������<SH�k�V��=�t����g V.5$(���n��^�[����{سQ��a������ŭ�}����M������-ܾ��վ�!�{;�����������'ɠ��.++pj��i*��{]�����4^r����>�G����{ExZ������ս���E�{�m�#=tB�Lޏ1>C��ݵ��.P��������N����r�MYU���^, ��[���=͋�U���yc���#��yT>��Q�&�l`��BL�Ң�^���}8�W������_|u����v��Y��`HӱX�5����@�Gf
����o�nnn6W���F�_1Qi����G��FU��Y@3}m �ъZ^Z�71�.�������&q�����M�T��2=C
�ۙR��z�H��V�v�".M`ق�ⲃ��i�
h�a��cO�� �@ϙ�k��x9�_"�ԑ��M[<�#�A|:"V�9F��;�){8K��#qE�x�	�2��Q��,f�T8��R\��π!���� ��hDZ4��N���ҿ����ˌὴB��Y�_�íJa�4��ܙd�bx�R�r��=��O=�וR.�l���S�]]S��u������S�ۖ䳕�f�R
]w�5ن�"�k4E�3��]�>�Iâ���}a�A9O��qV��^�,Vm���!�Af)ou�����&�jc�'�y�F�"j�]X�le+�GR��cI��d��\I��P��k�$���S�����J�J���y=�㋘V[V��+�!L�6��,W ��(�V2��X�ڸ:����	�#z�%��d̓�x��Yu`��&��J{���tI�:<#FJ���� ZuȈ�Q8ݻErL���ۮ1 ��.�L�
���\w���[�PDФ�yMR�xĄ|������}�|����$n�i�;��w�f�1��m�-�M��R��aq�͋းB�&�^���!V�xNm�7W����BslsB�^�}F����q�Х#N%c�=��m��|Ѱ���Y��NG"Y�r�Dq��R�Q4�E�z	� ���	 PQ�4�psY�\1�������
�����r)�X�_��&h�^[�׷W��ۡK�@B�4�п���2ۯ�|�c
��x���A�|}�p����f�1��_�����������OO�zZW̺�����I��j�ӗ|�K���Ak�"�ln��}�*X�3[��
��Hu�4�~8D�rc	��ޙǉ�i�����hz�%E�W��Y<�{�4b�&a_l���[SF��������S%�.?�y3��-0)VG�Wr����Af���b�i�� ��4f�x����q�q�V@�.�Z�J(-c���ϓ��i�e�$�ʩU�X�MY%X>ۤ%	��F�"3��9<�()b��y�5)-���g���Xĕ�̂�����I�.N�I��S��-����n�NF�=>);�?	��ÖO>k�Pr����MKb;�� �z��F�]>�i�*[yv����f����!�<9+�&�����-՗�D��K�E)>�A���-s�YB>w|d��CHs��Mq��P�.�<�E�.��!�%6J�[j��
��^ .d�d��6B��K�f[!=����8p�����,qr��P� �c,I��L�af6��E�c���;rKN�R�P��qZO��2�/# gh h^�x�?�E XB�7*E�qGH�+J�YR싰�����*Wҧ5YB��녅K�NƋJ�YU����H�����ơW �M������j|����N�M��GGf�!t�V�sI�1s��\�Y.7�\mE�}��r�.��^�q��;�x��3 К��x���\�5��9#[���Pn�N���.��}>�xSgv%�5D�D���5�9-��&˟���"",�O�%�'P���U<�Qq�F�ݶ��]�+��f�i��t�%X��k��BM�=.�2aX`f	ZS��<��r'�tʁ\�Ԑ�����K��(��RѕCq��E3�Z@hy�vtZx�C��KY�=�)�.!�ZWʻ�2^q�܊�İ�|\*=�a�}�b��G~�j�}�b�?�Xއ�� �� ��`܎�˧t�l� �X-΄|�k���F��b�|a�ѕ��e��ܖ[F�"��X*��
�Ԇ���,�oD��F[�%�s�)�p8%+�ʃX�Ri������?�\
+	�܁8%����'�����/gin9�V^�e7Ք�4��*�|Е|ŏ�4�hd��y&1�/�q
b��1zJ��K3�[��S��(MJ૊�G{}+��>k�0;�Xߪ'�v�>q%�C׷������	��$��S�2�����/?l!���*�jԃB�B��D��X�����e�e�)Q� �>�aq��n ҇���TH�L�^LJ�+$�Cz��l�R�B� $��OӪ�
���a-�
9<އ�-��_����c,M�i��
9<��X�hR_�BO��FǴ��
9=�=v�Wag z�����P+�@�H�}�i��r zb��8h4�BDO����x�`+z�@�D��� ����	���x<z�=a z��Fٞ��V��I�L��G��'DO��G��'DOJRw|<z�=�?z0��k���V�����o������V����ApHe>a<z�=�?zP+mw��b��Ե�Ȥ	ъ�<�,���x�b'�;:b��؞4~]��s�xД1�����H\�Io�4�����I�eU�g�ҵ���YEpq���EW���ww��	�x�-ΗX���kE�n�P_������"��$��3,-Ȟp�8p��9iw6�D���zp���S'X��Ģ2m��/DC�@�:��_l������~��^���o��ի��)�f            x������ � �      �      x������ � �      �      x������ � �             x������ � �            x������ � �            x������ � �      	      x������ � �            x������ � �            x��}y{�����S8,a	mZ�JBVCB�	B����!����L�3�'1�����?y��LwK*I��*����C��.���dUUיm�:�{ӷ��Epa�ܷK�߼vv�?{�d����k��o��ν،��{�7��l�~�.���nmmey����qym���ͽG��<��䶻�o����M���EX=?��ͯ�m·Ƀ{��ѵ�œi?��\:y��ا���dca���wsE^Yn��͛z1�3�����j�P�s7�}:߯�z���9����9��'O����Ë�V���-?	�{O/޻ws#�oܻ��7_�����	+�k��ݻ�����l|���r�67f�z���8�����/��{��ݻ������������d�{���'}Zx�z�ԓ��0_����������~ceҧ��k�'���y2�#�X=tį?�8:���o���t}c�����ʽ{˫����tQ���ȫ�@,���u�zX���Б��.�Ƶ�~��kO��ͤ���}CG'����"���j�ۆ��/�W���͢���ܖX�7m�o
ÃɆ{�@u}#<�뻻���?&/�X�^=[^;��h�����e1��F�6��������8Ov��M޾��0lZN�����g���qbl��}�1��<�yV�����Շk�u�I8�x�����Xm=+~9�棵A��8B���~h:W�Sƽ1�����U�4��Yۍoڵ���f:�����e��[�����Y�N�-��L��[����a=�N$��ws{�5��3����}�n��[����P�u9'��)q��/�]�S̅&��&žiG-����G2�J_������<}�������x��O����Κ��Q�=jՍ=��h˪�j[��j�<s�鲦�f��l��G]�m�����Q�\��Ǐ�6-��<|ꗟ,�����������/ƍrp7�_|:����w�b�|Տ����|�Ë�M��G#w�~m&�Mh6~�f��la�C�~���k�)E�'�;4n���;��(����>�\�[���{������.�}l��p&sC�ge�
ZW��ތY��B^�e��˭ܭ�]/��syQ���>��ʪ��̷�ΚֵM(Ba���1W��[��6���AW��\��ɞf�΋���&���q�M���L_CkC9���^V���s�w��lۓ=�\�Z?t�8�ʔY5�&�����Mc
_�e?e�����E^V?�f7g|���s&��!f}��/�.s�쳼��ָ��]�)o&t������nws���7W�Ƹ8Jξ�E6�Zf���>�0
�P|Ҡ�ź^h�;X�v7��v=�c�ܗE��|��Ye7Nw]�˾�l㛡o�O�]4ł���z���5�'
�mi�g>�f0C�J�w#������ʨ�C4e�
��dg�6ow�c�nn��z�ǌ:k[ƺ�����(O��g�mV9��������F^6�L4���׬�O�޶%�S��1C=ru��q��D�&�Y�JmB>E��b�/mQ�,:���۶+{L5g}۔y���Q�u�f��&�/mgCk�OYu��ʅQE,�����ȷ�d��犺���M�{�a"޺Q��X���Gc�Sͤ�zaT�f's^����Е=����18~;�������u�0��߹΅Q��S���b�l�fG�^��з����5��G�lȂ�#���+�g}�yc�m�ͧ(5e�XTM�Z����ղmW�;W�R��B,�ߘn4[�vb��ؗ}S�Oar�Y��q��q9�ɨ��̶��c�\y���<3C>L�]���Ə�Cg�8��Sh_/��B=j�LS��ۮ+{�|��[�z�3��7A���ج���#j�O2#ʉ�P��߰�ɠ��W�6��S���/�*�&S�jd=J��Y���w�m_�OqД��H.����/�n7��m��g\O��M����������`bVV>�󶭪�S,�����VU^�����U�-�圳�?����Q����N��@,�jT�̧�B���j��l�v��v�_�mW�՜�y�O���B7#��G�.�Ă��D����|P���\���E>�>�>�>�>�>���������D��r���G���`F-h5P;��G{���9�ݪ@e�[0�*L�Y��
|V>��U�Ϫ�?Z����6q�
4sѻ���dCה�*�̙�<rW杩�Oq�W�b�,����]���\ܮ'{�vn��"����u�r貮�MV����ڇO	����Ba���<b�?�ۖ{
;盡+۲�B�YU�6Z�E�Įjk�O�}�/4Ea�b|��E�ζ]�S��j0�0Lо�$�]LR�r�dfu�-�1�nջ],���h��N�Ϛ�g�����Y���y��5�b7�N���t�|·�(��Y��"�"��7����mY���Hd�s��T�k��@��sڶ+{J3W�Ր�nȚ�ɳ��L6��!���];*M������Pצ��}7qN�veOY̅�MU��M`&Un�̶���q��e�7n�b�Su���V�c�������'��S�s�h�6�p��B�U�w�$⟍�/��j�O!�h]M]T�����+{�j.-��YK�U}V�vbm�:kJ_��e�||J������B[T��Kw�x���5���B�=e=W�<����\[Y&�X�Yr�zb<��k�H���r'<��5;�O���l�Fֻ��,FSe�틬�7��+�*�黏�sO_�~ůo����k����ǎ��k�S�h~�>�,��>� Ϧ:�6���G�O�φ��[�/��Fַصv�(둳4`5����v�g���]�����k�Q��i׃Ȕ��~��j/и�-o����ά�/&&��^o���M��BX�Gk��ޥ�?f��.3{�2m=l�x��ߙ��?�1]MF�t2�����&�x}dӯm��GG�|�����DN����!t/N.я#{0r��Ӗ���������Etȸ0�m1?�ȱ3�O�<�����{6�m��\5�E����Q��wuփ�Ɋ`c����}?z\f���rr9�/o�/��b�/Ƒ|�ч�T凱` �%����I�x�&��`z��������G]���2���uml�5��5�͠��N�͍-s��ϯ��x�����tzҎn3����qی�����ٓ�j5I��p�~��܁�3��"�6_ɘ���YP����^��8����?Z�������r8~����������ۻ_���5�G�qb�se5ت��i�.�b�2�&+��ua�B�|f��\�Xڅ֍[}'��v=�veOi�b��1�6��	Y��1s��27te^��<���<7��z��ۇ�?]�ؘ�	̨9?1����q������h'L5�	�b�ǧ���m\݋�'�˫���bU-��6y��Y��Y��Y�/u�8����O�#� ���;�p�	�us���7Ð5�����5M����
���_嗝����(��?��ϼ�3�����ώ�ώ�ώ�ώ�ώ�ώ�ώ�ώ�ڐ����.��S��˼�K�ۘ��b��h ?��΢�EVU.Ϻ�����bU�mݕ�<�c{u�`ڢ6;�Mڽ��ҕ=��+\UTE��h=��1�Y�º�:�q@A���������Ʒ�5Pp�U^�m�Կ Ğ��s�0�Eg�!�����:�6ϳ&o���q��U���W�犲�A��bw�O��+{�r�}��]��	�*'�]�PgU[����v�㶛i�'��E�,�uiv����I@�ҕ<-X_Us��ESw>k����.�mo���ڌ�-��Gn7�W���u��5$��q�n�iB�6�y����yk}�uEh�*!�l�~��:Dc?�Ĭ�7)uX/�����!���&�B$do�Ba�M]UY����L�g�6yV��醲+�}�K�P�mw �/w���֮���۹q�E��m�$�cƷ~RB�)��	}��+�(�U�0o�毹\���o��+�!��^ٹʎ�v�1�C�Զ&�c�<��՛�զ�x�b�ip��E�v��/w'�lkW�Ҹ����hr��)�ˇ"U�<+cF)�7��    ���7�b�&��<o����/'��Ny��]�u���jS����3��B�Ə2����6U0�+?����7���=�L�ʷ�Ы�;�c$����8e��4Y�ڹ�h*���b�\VŢ��04���`K_����P���O���A���}�.Vn���C9쏉{��y�?6uH�?���fވc�86�E{��{�z���j�`�c�)qLh~l�˱]��z�?D�����c�q����� ���!�'�/���`�8�?��cS�u�O�p�oH�8��Af\��*Yۢ��?����H�|��2�*Q��|�����!+��Z��b�\WvY]��7M^���m��=;9t�n�kw�2^�N��֮$lm�zg���I��jz�ԐY�,�-��vu��#
&͍�����4u���w'Y~kW�$[smQV�W1+�nr������jS���GU��J�pȷn�����JG���
�g��sbߟ��C�ϖ �U�E]�ž��̄a��]�d��UY�׭�C���������e�PL����:"Iw��RM|A��]�D��j��˦�}�ż*������2W4��a(�G����ŲX���������'/9ҡJk��qɵm>�uΘ�jl�Y7�����]Q�C�?�ek7	$���;R[w産�]I��u3g�86_�,T�$��C��8�3[������GV:��WL����^��׿;��l鈱�۫n��v�36���쵮�t_d}nb�����GF��=;A�+�������9^Ӯ�g�۹�l|W�<+�_���v�4��֕11&~��Ҝi&�AQW��>�]
c뮌�W2t7��UU�q�z7�&lJ7Ziy��"�1~�c�)C��T����w�پKQ�-=IOnl򹼍6����0r�*���+'�y;����*~$va�^QOEYi��ڥ�ޖ��H���!�m9�~r�V5�2su�e�m��m[���J��=+x��Ag�K��-]I�M1WLQ��&sf�ڨ�:��D�]`[cp����r��m���R�;fKWRU�)���Uˬ��3.��YQ�ƻ���HO��7�T��F5��d��?Fw�L覚��ˇPf���횐�nf�ݨZ�*@>R���W��sE5��}��-]I^Ϲ��6�T�r���wy[de�j���s�r����S������qiW�t��\_uee�<��fU;���.�k�oGu�,?E��S��]����M���_R!��O,uF�\m�vԦ���]��JT���=�5���v!4fB�O��Q�-˺�;�1T��O�]iS�Ε�(m��r0�մu漟D�G���1��#�3�ޤD������W�K���� �R�
nkF�W�hƍ?����Q�u�lF)�k;4>~�97ŨVV�NN��vO�O�b�Ĭi���*�ޏr.���S���}�Fs��2�f�ǋ�rRdr$KՔc���&���?�%54�r��[C�gyWL��6ϺXY9����>A眶W��*\���=+�M�m5���1�警'�����R�a��-X�aٓ��b�,�Q�m��o��o���+0%K��j빢(�E9q ��M��i�~�L�K_U][/�����(��N��ֻg�]I��j���*׏Z]7�Ы~U�O�l�!�ҕ��[=v�=4�B�T��u��7X�
<:_|�"�Q&O4����?�<#�G�g�^m�YG5��''|�Ky�^]-�c{���&#���9�ޘ�ڹ�v����6؉2�-X��0�&V}���c��v>o''�Vn�MQ��R�� 8��:�B��$����1�eB6�|r��(���ɢm�I��r�J�0U>ɖ�����w���7)4��syS4�R+2_��p|ȕ�w��a�W�]?�rsuyRC�L���OA*�''?t����r���_���N�3�ÿ������g�m���^����r��N����_�7[n�>��z�̷7^M��z�j�O�����/��a�)�Vz�7�׾�����o���HK��BnD�+i�B�.|sႴg��Fp�
_K��e����ЕC�m��J~����������w��m�.�<�������A���݋�>�� �I'�5�x[~U)�✢_��K�}�wZ����1S���ސ0��n�c/�AZ�iM^֕�-tN���'ܙ_�k�q�P(��Q�
A���Q��~	r��d�˿����F�^����M.���_!s�+EU!�������R:�5�����|����|��?�3�ʯ���iE��"���|�޹.��ґ\�s�N
������koO���E��Nt
ErG�-y���4"I\�����I��%�/��&�D*��������Q�<:!c�P���p^~�"���_
���=���F/=�h����$m�)�:{���}2OA�04�2���f���^%�9:U��EVC����*�����D�:m#/6�֌�r�7E�3C���_�k�Q�ۂ�E�X�ݞK[�-f�n:W�H��
�N��*��\�{&o������f��e�P�"�Z?X���e�߾�#�As��0p�C�(�� ��O�����U��*=0�G@�k��E!��ing �<,=�A�J���fL��nB�ú�R�z�+�f�K{`��#�K4RQ:����Ң�&/�ދyO�[43��Et�ܐ�1�B��uO�2��f�Z�����@��r��� `m,Q������8��s��ra�a^��t�B��ro���"VK'����>�@p�0�w�׆�K�>��~M��ҧ(�f��r[g�@�C���٣tz`��^���P�q�b'�?oҞ:y�3��p��c�� L�����f�Rڶ��������Pt�R��0j�	�,��l�r6���H�Hu��+� 	�3x����w�\r	���e:ʠ�����K71+EJ|JF�K:O��h	�q	�a�C���h���U���J��������s�7���X���L`=��V�E����*���b�&��ӻ��z�'����`ur��׿?J)yd���"��"�B-7�tW"x��^���3�q�b@LѶ�n�����Y����Ȱ�z�S�6��Ap�p|�`r����������!��W��<np�9��Ɓ��giSiiT�Z�>��O�^�5�~�������K[]��p ����Ѻ\���US.X��k}��I��諘�hoAk Ƅa�]��Y������~���\nr��5BQы�B�v�2�aC�Re	������A����V,��a�ac��-|(�\M�R|r�Yt=�IS$j�s�R�_��sb�H�v�FaB}<����Ih+	���a�7��6SJ��s�����_a�rȫx=R�?�����|S
�<�~���ɷ��X=�C�t�~���R����+e>�7S*&�����{���R��*0�^8d)�	�΍]�co�&ZV_��a����C�o���rZ�P���[csBɵ���t���ۤ-�YC�AnPLa�mz�i�3v��=����k����VJ�8<I���v��Ey5�V�R�؄4�i����E�c����L�D/ ����;� N���J�=;��ߚx�,ڽ�O(��V�Ra�C���X՗��N��K���~TCW6���?��;yn=m"����,f�w`l}y'6���]������8&B�������=�T���t쇽$W*��ѽoEɣ��g�@WN�;�]��!��;�3���}���4`�T�e��n@\\ϗ�|���z�+�}�u�Y�w� ^>�J�o˒��H�'����+A9z�����[F��q{� 1���$�ck�c�O�g]!�R
7�M���=?��3l�Ml��4���]�N�����M{��#���%9� �/��y����5�
�߼���/��d�o��l3Yݰ��~W���J���@�#%ڃp�(�P	Ǳ�~r+�>1Д]Q"b�?�I�N���,���/������e'������8���%��_�/�X���(���E{�ӈ��.�Kiˡ_�D��OE�E���� BP���
l����C���� ]��P��Q����(��"    [�x-E�M�F2�����NH4�X(�7�����+�{!�D)E���t�b�~�'/����b8�i@�����F_.��~����2�K���@�ei�bu�V�A�J(� �~Z������r#�?��k�s^�Ul�¡����r`Y��^�ư?}V�r�:f���D������//D���$������a)R��a���H��/�rۈ�?��l�(�tWi'�etf!������_��Re��.�����������z:Q�H�9�%:�8��@��
,D��
�uc�o�W���T5�t>������j3�ƾt���v%��z�O��yL�4�9�?�o�b�-Qt=��)U�p#%�0��%�j�y�&/md�����?9���Ay�?�,]�׮\�?ͦ��I.�~�*��u���^xLf:da�n���"L�l��-�8�'k���_�6��*tH K`ル���|pO���@� ��c�������-�3�L(�<H'���S:B/���!q7�p�+/�X�&����}�(��(���\�ȿ�F�a��A.�NW(-؀	B=&m���&m���{#�ұç�ˢ��t�d�ܥݤ�}]C�-܍ʧn
�;X5068��2�aD�G��-X4t���:X�~(�y������Q���1��N����2�+ŝ�/,d�`��Q┰r�Y�L.n���t��؄m�:n�Dʫ�,����[�Bw<b ����7b�������3�K~��/�X�~-݀��'��v��=��:v�Z�m]�@�^�#cBy��౥��X
ٰ> �g��䲮&������u�OՋq����S���_Lh�Nه�-��X��2�C�`=�h=�,a3@���*�^��IT�&�1"�O��_<_Dt˚
���P2�7��S�C���}�����!��ü�L��w��Uq�6jN�%�"�U�e�����L/� �X�D�;��A� �$�����a$����f�{+�@{�ƤJ{�F��Ҏ��6r��>�Rj�v�,4V�n#�W`�K�yÊ�B��K:�2�&�w�R�_.ğ�s�P�A,�L�@�\�꡹2�"-G���х���5H�J|9EC4##a,E���n����ߔ�Kq�����!��A��|�ߗ���'�cn��wO���cp1+~Q�C���ƫ���/����_����R���H�r��
B�e�Up�t2:Fv��
��e�n�S�y�+w��C ����!����N+�P�GX��!�aU��I`t�"�>�	�a�nC�l��qK�t`�W�c�'�7���B�,������ѥ�A�~f��{,�)HЕLR�H�/�}}f#L�6�t4u�~���/�J�}�(R#`"�����3a�=�Ĵ�ҡ�5���-^�}���!��/����ܝ�4�����C8�p_xOn6O���÷״��t'����3E_��)'4�k��*�b�/��?,;5��
�l�_w�_(����<|�>�٫�g�����`7�$�1���Ҫ���w��X9%��Ԭ��`x~GxRn��R u,���0-\��b2;�ɷ�p�}��
V7E��Q�e��>����'�6}K����c|���8(c{m�x�-Qc�>h�\!_1����Ɛ��3�� ��sLw ����BUŗ��2�����}q+f?����h�1�@Z�K/����[��N�N]�m��_e�9{��0�dXz���.��X~A&;߇��]Vp�4�%F�U�Ep��������*�zWo��a����6|솾O���T�[!]�t2DMs���%M�'w�~�`�]�7�pʭ�닧����6Ӂl��6ܽ����E;$}u�,���.������0��Go�`�N��:�@SЩ�`��?�?�:,%�I;7�>���<p�����Lk؀�激JH�Qi��X�I(��3�.�*C�
#ݕb�+���NE�E�}K�G��B�p����mSZ9�K�T0`R5��/�s�-�?�҉r%�T?�(ҙ�BA��' �t Vfb�c}a�͑�xS!n�

��lir�x$}\y8|���e��ᛷ���/�VgD�_<'F�R��ʧx�.�,<�]�!S�45���e�m��NYg��|C9l�bt�]��."��� M�se1� 0�IIC������W���i��̓e!(}��(S4���i���D��������P@	��"�ɫV:��傉�@�a��j��L�BiI��_�vM�0%�`��	Q�%�yrG��>X~[��!)AI�ioʬQ����is�����b"�w��Ә���[�m�bt�t����7J'�G?�/:����0FH���4p}VO��!��Y@���_+���Y�a��@T�\��	3�fJ�����LA�7ku�O F���E�$؞0:�Ym�P!XU�#t�>j!�k�R*�[#� p�6�A�8:�����8yl�0���/��:�����6�)m^)�-���+雟қ���k���OŚ���UJq��K�	 �l�Q}�_����[��f:JX�6<���;�B@�D�ȯT���6�%��hWݗ�'�2.F^.BI�B�ȫ�l�o����Ke�ߒ���p�,}x'�����T�� ���b'u�+�Gt�{ ���|�U��&t�E�_� T��m���"F=5��V~����2Ꙙ l3&��-�#���
���������Oҩi���r���q��
�H�2�	��s�c>�O>�\��G�ڦ3�O0#zd}�[�x��#�2r8D�����=ܚ�Bad�:�-�UyH���Ssws�)0�(�#CQ��Ƶ���ήd��λB4,���_+�Q��M�����R>�+Ke�07SS*�5���cq��7~Q#���w�Ĕ���N�C҅�p�o�O�<�r,/*�S��N��%�(�|Z>Ԏ��0�p-��$С+%��j�aT)o>������������7#�$���G�t5u�\�(���W2, �
zH�qhz9<�^�aJ����'���@�8�����	�'�����l2b�.�t���@Y�KБ��b�0��{�&6�Z��-R�x���_!.���X`y:� Π�aMC����ݤ��b@w'4� ��>�	i�^�6�z��(�9���1��Ԧ����D��˃b�M>���=w%T ﱹ���b/wD�N�S���!�M_�M�D��,o蜚n��Z`&����
T����,Lk��ަ������4�K�CC�2t
�S�	��\��m w�|E��2��>���`�z�rq���R�?D!���n���܅8�
w}�>mh��
0�'�\G��"D!�Bi:`�ᄼ'�#l#���A2����L���n"y�m�H��!����uJ�1�Q2����4� ��t��y��v!on\<%AЮ9���$�,��A��1�����q*Z��^wJtFQ�U�h�y�)_s��U�?���nB
����$���Tr>o��M�O����W�714�����jRJ�a����CbPL'�W�D:;}��5�+ا9J,��6�A��y���G��Ӏ���v���Gu%,*��v��a0W��B�3��\�M�h$�������{�c�Є��?��kYdx���U��|�?V��c�\Jo��9ثp�S��o�4i�S�T�!���E��z5�\ֽK��	�ݻ�{o{���h�$`�_4�z���X�͢3�	�F�mK�G���������\�W�gg�i�O��U(�ώy���Ӏp���\�Bp3GIn%�]^��`�K��G2ޜ��3�|A�`�.�v_L�B�`h�G�HS+�HY�3�شgp� ,�����u9�>������䲊Rq�8v#��|�,r��z�<�W�V����.��?V���U�Y��C�v��C�W.=D���0�@::���s6Tv�����G˲ �    �L��Q�"ߢQ�%#f�~�oR&󂞡m������y��Ң/��V:;ՆK'^��+�fJ���+���nL:=ۉ�E(D$zVn ���W��됏�*:���D'z��OH�JFl%��ǃ"�����]C�__Xك��"�� ��x�m��s����b��^��̓<K`vG@�+x�Z?sH�
��2Y�G�.u�@b��J�ߣ�E��5$(L~d}�J��{�?o�5V/�����^H��¶2)���1uiR������|����������G�����)�
�P:��q%���<7����XY*>;�ߗ��X�J��&�U�f�)¤�	�mjn:m	ή);��ā�ۅ����Ję}@�sI)1a�_e��f���%bZ#�������w���RP/��ә��zV��'�d�۲h���~ �6N�+�ͤb�~;P�ݬR+s����*		�^	����j�(S�ł*��W�6��e�ȤAs`aqX`Uw��N#I��xqiE����fy���U�l�<�K`���M7�p:w�}-�t�њ�E�<�與H������œ�!u�PJ��ͯDs�w��X<�����DPN��4n@nһ�^���f�tק4�%R.�A�Kv�*�,��!ʙNh7+-h�%�(%9�-Ϣ��$��ғB�����9��oUI�Ȇ>2�	�N%�����5��u�n�A�'�Bb.��WE�4�؊m�葤�<@����E�g�Mq���j�{,L$�R�iM����D̹>�aɰUa��9@l5eP�e��=Z�g���j]��Zy	�ǳ�!ap����"}�uo�J��ٖKd>V�&���i�>�PĜ��h��@C"6 ������/�L�2��N�g~��2#P�U����u�Z�>JM�u0�J��+�̀�+ 3>�oK��J�(q竻y��B͂rC�{TKι�xF--b����/��@�`�El��n�J�p�������" @<�ѡP]��8j��>�~t�&|J���&X4V zK ��(�м��G�U�	��~��������R��V�f�[�\�zF#_{UF�WN��`6��]r�TJ��������R_�A���q��.�rdJ��`���lVpVv�%�H��?��!oC��h�
L
�����i<�^Y���rϡ2�R�Q�X�{��*
LQ,�E����u� 잢4��N�o:+�"�Q��Y�Sj�� y�7o�Ž�(�T���D����!\���v��'���H��,C�%���)q0����gn��A�h���F
D0dJ�z�1#�� 4WI�bd��IkLS��؈��P&�~@��H�t:�Q-�Ke��X�_���6!�:ư���qD>c"����3��(�0�2��a*E��l�X֯�a��3H��6��/)�����lB�&9�#�'W���nJ�zH�
�����eM_���=3'�Pw��!,~(� m���{�Ca��j#C�v/����دF����A9X��a�b�F�14��5#(�/h�	���'���ȇ�	u_%;�5(Ib:=Zi�,و�Jm��Ey�L/$�,DSN������H��%$�3�O�����4��	S� �I�*Ո`�J`n�N��l�Y��ğ�f���rq% �����(B+v�[����J%JO⮀�y0����R++�lQ� Q-�N�=���p�Ғw+�3�=�9��aB�<V��XՕEb�6a��H�F�{K�]�`o��m�̧�X'�C���X�dG9��L��H�R�̡���(|�{�((u-�עi�9=�7�w�MӨ6|����Ʉ\N3`����K$j���P��J}��M'y\eea�ᡢ����������)��歼�H9��-��Ip�:��1�{g_J�{H>h��}�P��0�4ɟ�t����hr��b,���\�3�J��t�h��!0�d���\�#`�A�kpu1����jτ�}:["�D�"`�<u�d�d`�ET]��o�S�DY[�I{�����w`����KS0�(w.�C"�ȽI_�
&˟O����[e���!��앪E�xprx=�m!O,����~�9�4�m&/����8Қ��&@�q�d�&H=&	��͠��8A�都b����y�� �5��{�/*�`сٿ=��@�R�؝���Kf:���Ӫt/wJH�dl��,���e�쫄2���El����Ө�S?�hQc
���
�#U$��~�9y~നU�|&.�X��N	TL�����b�yqڿ^�2D��[S]ʠ�J&J�BKѹ<ʨ�����eTQ�(�(�p>�
�����2�xoo t	  fz�n��(�G���k3D9�K�V�ܰ@��b�L֝J;hat�$_D+��xm:��s�䁚��X斘�>��$�P�4\�RO���AKW3|�1��3���*��1�"ʝ�d5����1�l��f*g
�~�=�!	˥��}x��0�An����*�c�A֧v���
;��fT�B�`��'�j��]��-P���=�߈��j|%�t�ǡp-
J+�?D`���W����cV� ��z6�JV���]Ig¸è�AW�(VtC�`���B��j�D��2��0��O�/"�`�\�v?W��N�E_�L�ɋ�a%�����V��7��!�,�`i��G-$�`������eRN)���C�� ���8�ᔁ��:���=F��2V�N�횤� ������px�ϠfW)Y�b�䭇�1��
1y���۠gR�U�BJ�:�#��Å�Ԉ�LA!H��}!ܠN�`�
�G��U���7^�<��	L�I	��qX��1�qTj����+G�1Z�Vò�9k��ˢ���[�4�w��f����]��ճÑ�?��d@�1Z칪�<���K�b�UH�5�o���-�o�I`�U4p�h�(�)[��T�c�+喂8�ۇ0�������E��c�"�FD����R���P�L���4�,�`���`]R�e0Ӈ�2���P��*�җWO*_0s\��tֆ���6�Zp��^��͙w��N,�BCm�(H��p\M�&^`�o��(Ul�5��g�T��o�-@&�A�r��k���"������t�qد����*��ZUZqp��6�����T�Q}������ȭ�ZXy `���� Gگ�QC�pâ�%"��(�>k%��>>��ÁR��7x-�8���a����f�lK�
@ˌH�}q��Br��m��yJy&~�.z<V���N�����Qe�2n�
@rqsH���7'%e�tЛ�e�uT@ Т��-�q��1	ҐJh�j�S��b�:�=J;0M��R�$�~��t�X���5��&�(� _�"���bP'�t��LF��������Ջ�Nf�Ց���S�jO�b+��A}��� >U��`��0	�	`�Ah�&��O���N�w�K�f�J��ɓ �*zOQ9��h��p�F�v0��:!w`w/ӹ4�$��(��"��Ȉ�M�ZIJ)���;��ڏ����H�5H7�x�ɟ�R�2qU�٩8���s�/��܇�����^:�@j��
7"�F~m#( �;������L����E�fDV�ʠ��Z4�A>C0�����(�sT����ώ;�����K��
��-p��M��y`�7V���!�i�o��p�IDbb�e"���Y��QU!��öT\��� \T�#fX5���@��H�Jt]̮���uK���|�­��醶<�E~d*7c��0�<Qz��P}����
N�TY1S��R:��,����U	���C\_�}�@4�����J��B����+����y���,��p�Ae̓2m!�[�s���eq�s�`	���JPQ���e�m{��r�q��|��Y�&$\=,7S���?H_���b��y`gh�L�����ʣ[�t߽J -.v���׀�'B[��{ ��+��d��V(?=*���_�����?�>���6��M�gMR��i)��7n�}�Oy��*��Fo�I�    if}��ԯ ��%d"��h��i���l�M�)8��1��������5C[7���a�Ȼ�yYd�*��)���0r(s��a:�����
�H��_,]�e���$��L1�J�hM'�7BϬ~�ۤ[mJGrl�e�df[�p=��'� t��×!�WX�X�[���p~�ʙt^��+�j�5r��fp:�+W3Y��)(���Rww�����]U|
�M�����ʏ e�9T�A����>��ȭ3_#�:��)U�R��^_C7�2�h�4�<r1�%Q��H��g�CSk���,jO��5*�
�;}t�M���K��kL� �Q�^�������<�j�t;O�F`��'��fr[�*Ϊ��x�d�,U�'��/�S���Y��<:�p���P��ꄌ5��;p_��gK����+�w#�18���
~оĤBT�P9��2FC~�]'�U4o�cQƜG�`���jސk�ml ��B�P���5>t,!��*�_�m�<�h��(D�m`�!l��'5�uDb���o%�_m�X�8�%�c&�w��ϝ��*ꈹ�xv�P�Y_�C�D���h�	Ct��[1Yb%���t�!�� ����W�?lAЅ�G�6؛ghA^��RX�+�xĴ�6��H�z�x�P��z�ԙ7�(M�ڇ�W૩����@��A�:<��)n8mX��h;�AJb�*�T��ا�
����Ċl�\���P���uݽo��jA�nJ��v�E��b�g��X����c��]�_�ӯ >��*j� k���?fz�	�*i�~2j�cy��t���E`2p�W��5��Y��z�;"R�G)[��=F���C��B��g{��+�4Х�"3��T�D�18 >��UM�k�[�pW���>:s�Pa? ���]q_w�l�'�900"�b�r�r�d��4]�o&%^��_�__>t�@.?�fCq�D�~�^��f�DX�)f6GU<�O�ݬ<�tq\XbP"վ�����v��n���C��F�}�2�𺧧fú*ί�~��z�����4X2{Q�LY��'��;bR"0B��a�C߼�5��SQd���m�iA+�@D	*=sLn�Cpu�fe�.�]����&��&Ҁg&r�pu�(!g ��U}^��5i,~��)��O�{pe5�W��N�H&v4\a5W�B`5ģI����.��E7���A��/�Cd��t�{���S(��+k���7+�t�
ĩϚ���6����b�5��k�)QBe�;���Ξ�
ռFEJKR��h��S X�Q��B(�oo��"79���7�\J�_#Q.L�\KZ��i2�Ye����*ې��[�*�J�]���
k���|� �t�f*�>?z�����q�'6U��+�=t�Ԧ�fؼ�vJ��>G�$�
ػ`!Dr�Vys�|<m]���x6[�j[H��u	yfl��n�{��|�6\K������2'jd0�!]�,d��������G�֤�	�D�"�Lh"���B�A/	*RY@�6B�D�b^�Ӎb��� -)(Xmz�k�R@g�Ӈ+�KK�̠�ʓ��2�D�|=�C
K(5��☰!�o�O1N�?�]��E�B���>���u��vX�\�W3�ot�X0P�X�|x�<���WsJM7������RU^���S� H� ĉ
':�����%�=$ xqp�b]r��7�f�.Q�����'\uZ�~Ĺo�����<!�h+,"]��)ǋ
��܏�d�V2*LH�����ߡ7�`/݆t��2 �l��}1H+�E{�}�/K`� ^�a�nX�B�CnY!D&��6�'�L/�i/\��d�P�k���~��
��
u������n���'dl_7(�׀K��#���-����t��ZO���'/Tr!�(:o���	[]�wo﹫�<�y�N�j���|�d�k ��w��#�>��ǩ@[M��<:8W9������(wVΛ����i���@�Ŀqm�֤�z:F��v�A��� ��|c�8��Ggg
��=�'�9�ق�R"  
���.�@yڂ���ܮ��>�s�uD@������X���x������uP�qfb�yh�.��D�B_�3�J���&�|*�D�	�1*Fp5�%���z����%�J��GV@#�0xڔ���zED�4'�9���N�]�R��2�}�dE�����%Uނꌌ��0�� ���X��M��<�B�`��;����I����dȋ!�����Ú(hi�xHtO``����BP�ŷ�P~E�	1�M�h�����& �¦7sKN�Y=�bM�r&��M��VFl���0!E!�4d��m=�<�'_��\�f�%�P8"R?��4����R���Bؖ���j�pq��
z161aEK�M,(Jօ6q2�!��Q�����
?�&��j��2�(�V_�0]P:�K�,�p��e���}���v`����0,�Gq�Duf�^>����X��.�y]:+̡b4���zo��h����C�c�_+?���I+�&"apoLߣ����YZt��ޠn�-�f\��M��h��7;��s�A.{��RZ�qa�v�GӇ���8o:
�N8��q?��H��J�Nh�DO��?aW������Z:�D���o{�9_y�}�V����2:���N~��GĚu�*|�(��v*�ǿUc�c��-��!�`1%�P�}������Y��ҁ0�8��%�D!�N����ظ��Y��yEJ��r�6݀bh,��(O�B�B�C��QPy_==+2�X<���ߖ(��<aШ�e�oT�V��>����JO�K��1��5NDd_G���&?J�B�9�C�+��bh�,��gj+����i���(��s<��$�᭴V���R,�%h�Mڶ�9��m&u���~�Or6J=�-�pO$��Q��
qL�߄ds4�@ܴ2��ĕ�ӱ8
�SqCefhTt�~tT2U�E�X� -
FQ| P����H*&ʖ܌ⴂ����D���[!�!,`���'��N�F<������sX��g_�$	��P�X�P]�R�g'������%h~*&Au�ňa���e���ufH��6�{�!�f��Rų� ��΢V�Q�Kq:%L�σA��T�q�� 6P������1�E:(L�jEQ�wL ބ���� ?�	�܃�,��N����Jh"6�0`��x��K���0�f�E�q�^����h�A�b:_L[9�򕨁�r$��8�&x��F7�D�3t>G���LfE��r3/I9��JT�y%��VmJ���d�xx 1�vm�z�q�K+�%OT�>kq����5TF�ҙ��������fW��
�]�`t������zQ�0�ܖgQ�뗉P�"�S2���'	&��OX��KGcX��O��kE&�H��ha�J82�6���q1}�A1���+]�*2[��	�P��؋�0���i�{���㌯a�������2�!�>�uzsU�lh�@$����Ԗa���q��f�~��bV�\�C��_���T�
�ը����%e��Fq'�����[��X����{P��`2(�>W��T�//�N��9h���Y��s��Ww��>jf�j��r��r�ƠԍYU�/x`���?I{?9�`&ǟT�'��&y�WL�I�z�<��ul����X�*2�U��)�"�~��o�q �!�G�/K������]��e�5�Ѩޡw�~���p�X�������=_�6����8��<rY9�h�����dɫo���S{0X�F9��U���:x���*�`�UU�YA��	��7�#4L�p:���G�8C���r��x/�[Y��G������$a��q�H/���E�H�M��J@�E��q�{ŕ�:�\��oB�G�qk~�{�
��m�}:�R���)�~��5`�;T���"p�0��w�Bl�6�?/�˼UC��)&�	'��8�\��2�NY�Ĕ����'�(�T����    (�_Ī�ƪ�T\E��0S,Q�#rnM�D�_�;�
������SX]�@����6�
S^�H����ś�ݙ�v@�ھ��� $DdڽL�"�:�dA�{�y�%��t��֥ҵ���j؃��3�!�S�f�*����_q{<�8�a�t��ۅ�1�/U�+xa�Nfh߼�0��0���S`��J�;��e�p>Tط8Z�)����Ѿ$�}	M��L��
���O�<fJ�=�A�b~�5~���6ϊ.(aH�J�-k�u�� ���Iv���><���Y���n֔l<�+N%f�1�~lTP���b2��`����T���r�N�FޞG�[5y���י�,��?���4�R�5��+D,n�J]�g	�&�a����c�(E�5�2TJ��y8}�)�b)k�2A��*Rч�j��G�h��ҷϥo��-1�ըz�}��,>�^�L�����g�~2s7�U=�i�8y�V&=��G`�deO`�7ֈ��鮠8A�2�]��`-N�A�a�:3$ ������Ȁ1��T$���:;R��We�̦�W*��M�a�X�	�$b���x=L��c��~D��J�*L ����ꇴ��=D�Cz٧cZ�3�)<`}��q�}N���e��ܠ*$Ӛ�f��)"s�!�a�(愱9�z�w[}�X�`(����\� �LQ�c�i�lM�c5���*7��G���$
�3�ޤ�W�x;e
xT�am~垢Z]2�Fb���5 � �!�ﳨ�M�HMb,m*�s+�	&��]�N5l��ͯ�= �c���p����0��#���P�U�����R�I�x�>��5���q22�)>8������D9ܒ�]�,e	z�G!��C�_PjgE��pQ��M��8Z���� �����n����_ ӻ���e�f�0�Y��l��	��00}�F�͋�0�.@���`30б;_�
���U���jμ7A�p�f�U!7k���,�S����+^����o��O=Ua�^e�P�.#zY�fr9��j .�/>} �U�9�o�Z��h�`��t��
L9ֺ*�C�uJiƾ͔���4�����Y�Qp�ˊ4�wSZ���;��rV`F��ݑa�R[Q�Uac�2���|��9xf�^�]a�TU60x��W�A��̘��R��xj��Gtʎ�����{T�`P�2��^��U ��Q��Wm�z�Z ��qQ��/�n���8��'�L��<�f�"N���:>-,|���6hlQ��45܁�?,�������d�[_��<f�p�6^'�`����R�T��4���H�#�4'ҡ�i�L��HJ�F$��C��%h�L�xw
mu�V$d�V:[���:+.)�I��6<��+aKێU[` @��e�,/��Ћ�q5�3|��('ᢚv{�ۈ���	C����;���_0^���KoD�G��� �ߥ-�߁�.�� �E��U����ʅ�ޠ�D3�M�¹@D�$��S��!�����yL���۠Н� �κ�)	?�����~��c+�Q����kk��d3]o�l�� [$��&��X#&N ��C�
�V{�PO�*j�5�����w�2�J},3�^���E���� &B�"`ѳ2����Af+Ѥ��r�Q��i���w0��m�N��NV��.���`{Q\nL#^�60��`�2YRڨ��(k�w�VQ���n�햆���1}�M'��v_�SYl��?�< d�Y�NN��c���M(���oA�qa̟��qz':�����2�)�"�f��1It�DU~�|J�=%�Q�ަ��5a&��"<N��)��8�hƒ����qP,*�qV���C�<�B�Z���T��f3!�Ԓ'�p^<ϼ�Q��9x�:���=*�T��N�çN{�Ar�_�����Wj;��p����s`Pi�-�>D���@��\�K����Xf!�|)2x��dt]��RXP�cvTv�L�z[Dk�1�G�i���?_<*��� �
w&6������!2?���F����_p�@	K�9�a4*������QR�!�����0l8�p!��D%-!Jn�C�`lx�E="�a�������W"�'� ��fI;�`I�J�^*8b(�m�[�0b���1�82�}��Լ���x�"B�(��*���Q����2��`�9r%}P�{g�J��#�H;e��l{�M�g����:���X3Ś!��J��3����_L�Y�K((�� M<�g(Ѽ9��)��zZ������<A��(�h$K��Y�o�����rx;�E��I>1��]n�����|&lme
�8��3�qa*,ΊH��e&�t����@{6�$*���[5�G�Ҟg$0�y:%O�b&	3��׊f���sj�d�R�ˮ0],�����߮�z���93����Sig�` �a�1�FO&�����m0GAtaz��K���:�|ZĜ�R�~~|V�<O��r�C���Di{(o��C�ToֻSWqf������#.9���7*|�,�}�H�*�5��0�r>��Բ�&
�;W��Y|�����=�	�@P�oo#2C]�K�ƌ��|ĺ�Jɽ9�J�8s��tL8�:���U�}��qF��
ڱ�Om�i#T������e�hQ��y+*$�TC<f.��pm��%:����v���� I�5��ԓx���2b1�o�`�
����&T����ڸ(m�Tii���u��0y�Ьz������Gڪ����PǷ(|�V��Ll@���g_�s9�Yh+����pk�I�6����y�!}SВ�R�.\��a�y{��)��"���VV��Є�h��!<~�5Ń|��qB_�~��R[�N�*y�(��B�!��.%��U>����R���jW���ND�'����~P��w
{lY� pH��ǽ�E�����(]�ޘ��1}>��X=��t9|�X�d�:`��O�^ʭy:�C�������2��-Y���oio���U��YU��C�ŋW�!�t���
Z��)��A?	
���ɋ�Ŷ�1�ǐ�Q&��O����B����@�Q�^��SL��c�%ɥ#���Ē��M�9أ�D��r�5Êč*O�� �A�\EA&N���ʥ����� 9(��|�N�]6�珧��#U�*߱��W�E	J9��%.{�Ơ�eѤ��Y-��P��nw-k�"���2���|��-ȁtT��=aʑ,�BD4�͐�JL���tiR�(JYm���E.2֏�y�`a)�Ę�`��o嵪��T�,^E�2�{{e�'I_I{�ʁ̡P��Y�/�/B����C.`��M�"�z�rH0�|���p-�e��\�D������-B���]�ݵ4%l�q¦ �A��Qk����.�t��>����( Z�*I��Õ�{�ṓ�uʵ>��Lh���J���phN�����*�2���q�ע��Z��C��pFE�y��c�gxo �2��g~L�����(77��a����~��p��˻H��"f~i�
s_��Cg"��1b������)����"#�E�
�7)B/��?=��� �d�Ap[��F�2�;�(L֠t���_:9A{o���}�>0���h�?�C�!��Z;��r������tn�PK,�᮴@�nL���P�wT�H�Sb��^�KB_�H�/�?�P���:�ZC�#��g�Q�����_˴�
8���1���.6�����X�Z,�7�s!!���B�B�Ys�8�.1�\Fvu
Y>C:s]�B�:�U��
����ܳ��
�����KLK��H�+��Z�ö��㯡��2$������F�5L�� `��Hc]��'�̀*�q�A�?t� ��Rb�:���7�� 㜫e9+��#����Eپt�)Y��n�e�
����c�E-I�\��,�W^�$$��9˶O;��(�a �b-h:��f�T���3Ղ;G��4�[���`�� ����n��j���    ��2�D��Iݍ	�M�&	�`�;� IX�?�M�V�k�Ȓ�����X�e3�ӽc�
�V��92x�5��⒌e4�Q������Ö�u�����ON�����Iy?�
aj���'R:{�r��������y�!�qp�2�X��U�N�^������k�wX��a���Q�a���-9��*[�HdW"H! �@;5�rjL��:�>�YmKi�
�c_���+��������qPL����� �}18l�i��
`��Β��c�rV/����f��Z�FHg��8���O�J�������J�U�o�✥��~<ǵL��bx�3��Sد8|�s��B���	�����Ya�ؾ�
���Vf���( 9R�{d�T5Ȅ� ���%��i,+8�pj��a�P]w�p~-����E�gD�����d�+D�:�^3��]�ǋ��;*82<��5#�'%!agCշ�^�aa)�i�Ԩ�\��x�������{�|u	��X�v'Z#ćE%Ik���5��ǋl8���x�YX���IUM�Ɣâ�Y6Jrٺ�����2�ʚ��Ļ�\�%�%Gi�O<=J�1���QF�����c��� ��Cට�%1�4N=��Sj�2�Ħi7����3:nYݸ��S4�dW�m�&O��������v�C붵��.4.�b���;��ã" �YR��EȲS7gi����ۅ��.�@�[��H=^�#�R.jv+g�L2	��)����B�E$U�7B�G/�C�(�#9VnY�zqѤ)+������
 *���	�(�nw�8��L����uz���3,��#<��
�w+�X������/�es
}iD�$;�S_�Q��!or*o�qՋb�u�$]|�|�UD�v�ʸ"�U��&J�6�/�CT֦�(�I��d���>�m���ɗh�!��D�(��Io����װ	m�-�'��ѡ����D�>��i���+���\+����F!8%�Uq̼����>�~_�]�l��l�xx'��4;~�%޶�x��it���X�2a��˽�C�s��H�%�y�?��� �Tb�-	ζ>��3�����P�T����eq��&ZsV)C�zx9�Մ�o�7Q>�Y��L�铹 ^L=�Lf�B6@	�:�̞��Kӳy�~�f8�}��V�N�{��Du�8�^}��Ń��Բ�Y���3�%8{�}'U�e�(�a��l b��~��_���H'�A�P��5��N��&ĕRq�B��d@54�.��u#���]���~1y<=6�W�o>T\�\�^!��F8���)�U���-j�Ї���SP ����z*��f��#P�QK��No�ך�݆�)���误�r2|d�ګ�[qh��j�H��1��yq×��9�r�$�6������+��L��1v����*eq횫G��"��y��u�t���e��D+�TB�<�oD��B$��\��xK���I�u(s�&���4PV��6)�u�"�1�Y�%st:b#�"�3��/��Ȗ���!n�ΰ,y��]�#j�����;�8�us�z8��m�qI��3��?J���0��>tm�����ڈ��]�d��MW���K
o��hLkc�~`R�x�d��d�d��$�hU��
[�l��˰����{�w~唧("�4H���@d�M�N�~�⚝��c7*l�!��CdK�I���r�TRe�����=�V��r6�i��[V͂�:����wE}���Mz�,��0�¡P!ja�n����:J�K��������7,q���U6�]�?(w�5�5����x�N��ޭ�$.�G����p>�'V�@��&�&�� �2U栽C�PzE��>��)Fůg��Z8*�F�( <���h���9�_Ok:z��A� ��]p�|�����'���gŎt���R�������d��� ���=Q�?8H��^zj� �C�+��V�5腒-/���E��A�?tm;7�G���-	Y�%+A�Wg�f*0?�
�LN�3��$�/�e�9 A�]�BI<��6'�F�����d�<����Q&�� �2P)Z�����S�H�mx{�,"�禮D%� �$Td����>�\lυ�<Y��M�ӷa/��m.��Y�QJQ��A��Y�<(o�Ck��Вd$���A��12U}���Ktn�[Xc3j�SSjW�y����z�"��.)��� �-��I)�Ή22e�/��`���)-��n\L��
|B�vN�$q*J)�^Bn0{?�tT��	���{��4�]R����W����T �$�W0K�� ��R2KPI��L�f���{l�2�F��]�8-�����&P֩=[�ܞ H�?��(Z'�����m�c^ym�A�Q�R�_]{�lX�bmC����V��K(p���1Q�5 ޠH;���U?�Y��I�W��|���0C!g?w�r�͜����ު�PU������.o3��a��z������S��3=Dh�t������)߿����#A�Q���.�&^�u˜�2C4��`�=4W����e�h�>c���|{�I8oh�}��G�TaG�t1�Qz�H��jH1r�pK��R�?Q���a�f%K9�'�4F6����s
�]���)FtV"���t�^!o��l`�-h�d��^�!v.Zm8�m�<�E�:�n��a�!�d�*+:�x#�E�>��xޯ�~�Ȉ]������G`�w�F��P==Ή�� c��a�\%6f[�P�E��z1�>Z�G(z[Ǎ��{�����V>:����e�]�Qԛ6�P���q�N�d�։v�8`���R��]���#U�x7���-���s���uBl#\�ƍ�*U��i�~���]5>,\J�T"_>TDU���ѷ�t�T$����i߅a��<O����1��'��%�S��"ЀN�?;CMI��6�,�A"�����-�)V\U̟ OQ�*��'8�r�D����څY^��<y�<R�uƵE�}v�}���\�d�3ɪ��hl��$A[wX´����b���T��ߤ��J���(�����-oU�!b��g����Q����EB�g$�bٗ�iR�3�nn����M`q���S��}Z�2+��`����~�u�fe�����D;�#�r�M��|�c���I���YDi�X�C�� t*{��M��)q�����p>!�=�p΄�6���3uR֔�}���}�$�ȓp�e�o��r�.����eh	�j�(�Vqa>TF�P�!��8`�������g>',r
.��X���͋��6�~ؙ�rE����a.�m=J�S�٨���1D���\do�����[��ދB�K�e�E������:g��`Nu�b��Y��
�Ǉ���� �}I_n���W�
ӟv��7OV�r<�d=��u��p�����X��2�P�|ʑ���p� Ք�l��7n��@�o�M�������Tn�{���XW�S��Fʳ��I����x�Ĵ��u������wK�N��h;�x48��S�qH��Hn�'��|/$��8|���ä���`�L�Wsa����1�#�L�D�aT������8�����L��p����*�C��X�p:���@Ù�,{���^)a�tѓ��-�A��h���ƪ\ ].+ř��@l�d��o�+o�� (�gn椰���w4 3ڄC��C���{6ݗX���_M�ڬ��,řM���J�ƁJ�F���g�Dv�FT��T`s�9����/˩$`�k+{���I��qi(*;�DR�%����9b��%�m��T8����2��*T�OV�J�ڴ��ӭ����O](+�TRkBL0
jsRL�3���
�-7a�[�վtB�s�����-m��v��by{�=�dt�|OM�1�p�U��
rr��Z��p�{n�](7wr�M~���g�k��jt��P
q �r�8�F�sch�=nL�1E,�mAe�Е:��r�a�2d�,���M��������G?@m.N���A_.��P�_��gt���^8C    m��w�60�ē3/ȝzµ�zGЗoP��p�G�;~��
6f6)@җ�<@�N.�K`@q-������kx�X�]����B��Qz��7��n�
�]U����L����s�h��_"]�SM��?�A��o_+��Z�;����c��c�>��ej�Ap���=��~����@7�^��~��g�-
$��}�����#�Fm�򔍙roæ	3��y�'d]͟Z���ipze��W���5�8<�M_������	�cH��y�SXg�¶)Q0:v-���c?uHb��J9�J�7���E�es�� �11G;��N"&b�)� �.��1S����������x��*Q80�'�!��Q�t�,�� 4V�H�cB�4�IU�YLV��}X��	��P9�t����q��z��J��bT �MJ�w��7'�]�_�M�9�#k(��(��U���a�� ��(�g2����rfH˳�B������Z�k\�J7�;��eO�?`����B��^�z�[�Aʲ�۶JMb�-�PJ�Q~����1m�<�������+pfeG�������ᐩ�S�b�^�e��ÄI���fT�!(fN1߂X��%p�0{;���3�1��R�s����q:r�8(���R%���ƅ��:29�g��V���k��_���3��T˶�����A*�_�ɒNC�6�<��G9��h���k9��h8��H�׷@�؉%�X��i�vM��Q�p�u��N���9���08���.a[@h�[��E�P[!S��,�(_�(t�G�^����Dr�'�����^E����Ug��C��`�m��L���Ȉ2_��KNd�=lE5���� ��p�X'>�Τ�j�j�'� v���(�sx*|�P_������O���~{����e�@�.���:W�[ʏL�����Qe/�'g~��͢��C�VX>-/o�a�A�f`0�v�Z�ݐln^��D��.nn��'�=3��H�<���Q����E3��'?�7���Ű��(w�U�����}�Ǽ���$����TL��&����q�d�G��M��������8��j8��H�|m�p��@r� ���P�﷧��lr`��j�k'rD7��P��r�仨F��nkB_��:�k8ҫȕ9��	F֊R$�q9�rYu� k1�8	�2��@M�a�ܰ��8q�>O��bDܹ�~%�G�TA1X����G��ov���ߛ�TZ%�r{�ns���uE�"a�	���
�A���eϕ�R�<*X�Z丕��z�-����*�H�f�9PT�/�1c��2�J��`�Q̮w�t��6ŭ*��Y�\`���=�^�Y��
�.�l&|�h��
zf)��\��OK�N E�������a����/a�Qqz�v9^A���G.���ШOE8e��]^pJ�N�ѨM@"Q��A�R�c)�e{Z��
{�cZ�:���pZ��?h=$圡埲'�'+OI�;�E�� �����y��i���d���;~w��)/%�\�t��1�����-������/����W�Q�,�����o�"�����N5��ݨ�.s�ߨ��������u���ri�C̠
*W���ݣ�tvH�'��
������7:��G���xM{�}n�r<
iZ�\�����3(�P�ԭ��i �+V���l_9v�A�wOih8�#���T|{$�˃!nO�Õ��ų߻iB����o���ޢ����n�q5�PmZ���a��lSĸ�/v�#�=ie�:����	��a�oq�s	�����V���:�	tr��%�4yV�K4��|�Rh�|�M�:DS]:�{�0��4Qs����Ö�	�XP11H�)UTGH�w�&E���t�&�5�ޞ�y^>� '�x������89�,��)��sN*?I���*�����t�0p�J���U�NYүl+f7��"'K�J��M�.5�^� X��ČZE����)��,n��׵��u��7.��
c?g���<s�B#'K,�k���6��{렘{��dU�(�)��y9'ٝ����^"�,]܏O<P��=xώeE����O���X��F�,��J��a����� �GJ	Im��C6�xD�q��}��-X�F�N~%�p/ʀ�����o=���[)@��\\l�cysI*�םO�?��T����'���3 o��B��U��d��� +O0.���I0��[|�I���P��~�4��	Mu���◵E����`M��9�_`���sJ�2��!�R^R�&�k�eꒌV�BuT1͔DH&f5\X�f*=*n� 1]>~zA8���� ѽ(d
喨�}�.'{��ǫaO:�.������-=�����,D��9�@>ެoֆ�X��4{(O�`4��~���G
g1�x3W�����	h������E�I)9�e�Ģ1����=\��.lfq 	�0m'b�8
_��M�TKPG��Dp��p�����ۆ�� �p��y���"�n�������e#I��a��S�-;o��
O����i`�yuI�e�4�g�d]wR�R�F��e���Q�z���Y��E�O��4�Ux��Ek�7J��?�-�-��.�"�]�Y!22���p��w�	z���͊;�~dس���A����B(N�Ճ����̍$���q�:j1(���ᐖ}�㖏e�E�Q*�1lȹ����܊秶.��`?\��T�(4��OI��pC�kɾ)��ڍO�R���%?�\��Q�]N3U���*���D�
��s�bR�1H�p�������J�ȟT�}��2���,�a���S�YN
�4֧b ��Z)}����o�aWK'����yy�� �Ńכ��\��2�Zf����*n�ޥm�΄͒[C�P��3^�Åh�
�߆Òզ$(x�D�<~�1��	)u+�KOQ����f8^bF�3_����G|�v������~/o�-�|�!?Λ��w+�7��Lg1N߹_�+qiG+�w=ʯ�*�=��ݶ.�y-���]昐�����p��_����A�R�wc��B�?>P�_�8#�U�ED���p����>�
�9d�Nei�3ĝ�Ǜ�kwځ�����b5�V$�'��� ެ�F����m��+��![�x�4J�9v�R���h�e�S�Ñ&�́��K©Q�#Y-��fV(y|��DQʞ>�xV.�]%�4|�T��b�f�<ؾ��ʑ��sa�2�%p���&�G�Ʋ���i%{NR�^V���!FPA�뫉0�.$e�y�ev0��)2*�����F�h�)(�3"��Iu��,Z���f6�-�d<Q8���a�T�[�3��Axiڿ�]?�sl�3��*�%}J�b�X~.KB�A�c�l�´�4{�.�S��`�ǔ�V}��r�d8�y��H9�s��:|��1��R7"�-���o߭Ʌd/,=B!⬫���D��O30���s�q2�Yz�n
��u�؊߉3�LAl�q�fǊK_M� 9xp��~?�Y�l��qs�Lf8Vŕ�	�EN�� ����J���G��-w���d��D�ˊQhF:1�.���/�Z�P�4V�OW��r�H{���x���e���I*���DQ�����`a�O6%�.FI���\ff��J�*�<Q�A�(:�'�B��1��K׉�:�����\��7 
*T �U�[�4L�~���\Z܄�t8��!�Rd��]8���ĹYNy)�����T�	��ܩ+NB��Tur_�̶Jѿ̨k��;���������,�ˮ`��P�\��8��rd�p� ���	��4��V�'!��y�ϧ/J���M;��{��
�0|��������Rg�V�'mFEwI|�l^������Q�[�"�_��z�@�>��Ӗ3WDPi���.	O3<� \��{��m1|p�� y��(��ɖ��R�.���F�����9w��,�ޯ��*��@r�.���*��R֔� *�ۃg�?6��T��    �E��ѡ��V��ڥf6�����sp�2~N�`�1+�J��'Ŷr�^\XD������9&%�\n\���pL��:�V��ud�ʧ'%���Ժ!��\p��?���}I�ѣp�'�j���?r�d�=�s�l�����������)T��*����_I� �<���:�FL�7"7��s�HiBv��Bؖ���%��T�hN�w�ܐ�qJ�q;��j^|�p9�/�is{�v�1M7�A����p[v��&�A�&eZ�5���I��߇����{G�/�]���ʃѣ�a4�.շ*p�0�N���Ȅ��H���>�s����#�]⸒�@��s��0|�v�e��yt�lu?�"p9H��t�\C(úg�4G�D�Ѽ����b�����	�m�f�\�M�<�鏪'�pjL �O@b������/��>8�a8z��g_�ue�@	�N=�}T�uac۲84�!��a�r'sU}Nl,�u6N��ҨE��� �������@3���AIA�_�+n���̬c�����PIIW'�����(@�Q�RH��D�Q)���l����yT���֧��s{|��JTJ���p#yy�W�3�Dx���)N�t%L��$�ș�� a�f�[�c��w���6��6�W߄�P􈥸���϶쪔�"�!f^���f�&����W%.��T�����'��vZTCb<��?R�"����n9�����
;�82�yp`�B�,�Yx�MmB�����ac�� 9�-�����؅� � �_9�ՒMN��۹�1��M9G�3G��f�X$O���ցz�����x.���JS�hw���E�h#��ܦ ����1C9G�axr�d��n��i����lUG���U^�f~���\�΃�F�b�ci��E8�Kf�L�L�d3`,��}��V��|?�҄s"8=`�g���Ȼ�L�	 T+�h�����'��V_.�ǅ�$�|���#K�*ϑ��ցC�a>l�Xɂ�+N� �b��o�&be��L#�`�x�Qp��.�=�~Z�����K�E
@���fs�aqD�L_�Ζ�[f
�*�&}�Aq�>�a^�v�����N���	�R�N����-�CCXڃ�4y�{���d��ܛ�0�OG�wo_�.�s��ρL�H��l��w���9.*9��fu6i��V�?ix8�˕S�kh���[Ч�ˉ�-d�^X��%T8h���r��2����I���������Ii��y�g� �DB�� �P�v`Ť.��-��X��N'q��]��eig����g葵�R��K�����.�$6���3t5�OxqU/�/¢��@WK�I����``Um��@�Qژ�
������g?���J{����'ub)��]�U��]������ōK�&G���{�4C7����km�~�J���2�����r���5ֵ�����R����%H1���&�q�&���e��߲ǩ���AS��5�[�fsΈ,ߤ�8�Rr��+�T?[r{�ܝ�#�hZ-�����PGq��wX�R�.%M��v����|B���U��r�P*	���質����frA<i�Ȼ���k�i��h2���1���M���EʡE�T�\��`���(��Ay��a����nٴ�YN��8��.�\{j�\<F���E�r���Zy>0i�@Z�,�~HI:�>��InS7�-kE[#�1��;iҔ�ny�� �]�]Z|k�Ta��Oޕ����Z<����r���)�S������\�H�L����+��
�ǌfr_٥���;>ĉ��/=O���]���n51��'�������ʣO�&�>�\r�B����
/�����B���d�g���n��ˇ�{+ټ�����=��6B	)��޵�ˢ���U,OpM0N8 ��/s�̤��[h��-�'�s6y� �	�7���&~oS~N�.U��3Z"�bߖW����LsQ�-ÁP��2�lE��We�'� ���J��}�e�.�U��u�� #�@[P6�YS-RYD>!�/��r�|u���U[�eqă�{IP��<�9*~�Yv8�}�Y��#�g6��)F�P�M����cQ"�؄����3�V�1N����U�B��Eaُ\!�G��TP6���@�qt_Vd�+�?����Yj��Hج:����U`���K����@���CN���G�bju��sX��j�(9�������'�ݫ΁��F栉�kUH�����|Tt)�����~�O.b�ڍ���Xmp(N���k��8v+� S�JD�A��iY�]7�Ks��i���mYՍK뗦R�#��a�ĸ���Rz���J����hܪ�!p���THE�#�A�TT�P�qx�lH�9���DH��'�-g������f��9Z6���k�M�C<=�,{)"��Ռ�fv�l&��yD��Mn�#��esm�]��2���@��8i��Ė`��\JQK�HQ
<�ĭ�������\*;����e��+z���?�Ǭ�r������Qm+�+����R�- �U֯��|Axm/"�=Rd̎*��Z�<M1�t�A���*UD���焅�S�H%ǉ��Oa�[�N�N@�2|�ul�@9WUn�9�I����O������*�<��
��Ay|2����R���Œ�
O�r��#s��rL�L*���m��L��>��r���>�Pe�)qj�������SQ�0g�μ|��^
(���I�,{��I;A#�q h༏��@�F�讄�*������/(�b�&%M�÷����c�����o��c5�3(���&B6t�>U��}+B��By��',� ��X쯊[ڭX�c�9������/�yh�� ����S�� ��	��>aK_�+P���EV�5D�&�ae7a@T�GA�������jA�b[2�S��&3c��C���3ѫ�����V�y[=>uU�(��^ �SM�����b����6�%l�H�/�)b��9�qrͭ���E-����Is��d^���S��I���eŖ����.VtoJ∛��Ԯ>��|�e�g]�dD!U���Ȼ��S�󊨑�`�k�L�.�c.��_*sTlen��C�i]��'"K���V���Kf!{�
oS7�?m��f���C-��S���ޱq{�V.A^t�N�͆LAK��d��L�ʤw���XD���}�
�D��Α #����b%��ۘ��~J�p�61&D߽6��J >q�����3l�~�]�\2�C����J)S-�F'?\^0qTe`��:�x^�ss� L��v�Kq|���ﱅ�K���e�R�A��Gg�4����ӎ�Q�QE������|'���t�� k�ap8�l��l;���hm����XyYJ���;������(����#q����-ڄ�dP���<(��J�Q93�dݗ�1���k��f�������M�4���E(����f��nxvˮrd�R���*��-eQUP���nG�}&`RI�?�F���zAY(����t�&�)�(�R��X���]��Y�
b��{Ѿm����8�@�rn�c���#�7I�,aF������OjgDJG�2�-@b�܄|j�2l ��*������q>�C|����]��Çԥ�]�T,�Z�w�K�)� �,_vP#���a��Zi�^��?����KT�u2t��>-�9e�rzX�l���|<�G[��TB����Oqo̪�$k�	��#����:���ۋLi2kjS�{�� ����*�1��t��9�<����}b�x3��m��j��řk�v�_�9X�n"M�Q���\�
ɼ.Dσ�Ϣ�[�T���E|�%�5$V&��΄�|�*-K��޷�韘Fa�������>�@�\�%Go9�!��A"FZ'�T	��LY��n�t/��� vF�/���2}i��A�)>�i[V�!�c�RG*ؤ��2��Y�J�P>�}*w�����c$uxf�;gx}�A�� ��/�@5��+��A��u�8F,�%���/�&_3�@i��i�u"�c    ?���Z��i]�j7Ϣb�8�˴��5�ƈ��x�x�B����(����z{P���E�8���� <3��Sq��w儇�׍��q��s��U��1�Q��,a�����r^��`*��f��j�ᇋ�QQ5��.:R�7e�'�' Jj��]!�.34
<�zM�W���	�q�[�E��-i�O��{\H�*plp9>���O��U4B�O_D_�S�S����5I�D�D/��a��e~�,N$���D,�y,�9'�� 6U�,	Ƿ���!���o�ea�| 6K0��{&�����P����gw靡�Y�k?D�փQ�����~�o�-�����
���8��m��������>�߇�����O��U�(_�e���OQ)��qr̾\�p�Ly�P׽C���E����s��W_�/����q�>�+ގ�}�&�oʥ��j�E���ܾbs��xyuc߇ozQ�7��q:%'��a|"��8;O��o��e]����+k����W�se���܋|c|��o�ss�_�s������g/�מ��x�U��j��r�������j�D-l,������Oꍅ�~Q��]�_�\o?��˷�μX^���I��W禟/����O���3wzҊ񤟓4������O6��=������|V�6&�[��Q=_X^�O����ڪ4���[Z^]�׭i��z��Q>�=�˫��k�R���2���y$�����dd6���A���cƛ�s͗��J�g&�&�OnWWK��si�5h�~ќX��z���j�^*�֞/�>Y�>|�7�I���-Eӆ�+���]�7ޮ�֌�WO&vc�^�+'�L�f}�ȉ�.ת�?~[]\]���������O��7�项��ɶ[=4��_Lw�\4�y���rm2^�I��N��U�����}����z�:}�f���%th�OZ�lm��r�Ó톟�,�C�������ܨ�M��l�ɡ����~[�E��d��r��|������Ǐ�N&`�q����ӵדwU>���+���ޖ=��҉�J�p�������;<����u>ޘ|�p"z�>��;��}3Y�Ւ��7�N~��j�٧�[?!�~�����tP�x��gM�Fq3��I>?��i�N$�h�}sw�ܹw�~3Y/���Xx�����t��Y�|�b�y��dopb8����}^�LX��O7u�~�e�.������5�=`'�e:lk��{߶&�����Ž~���|g��AQ���`��2j��&��ERs��+��\�T��OϘ�ۗ����x}���*ާ��ؘl��^���_���ݟN��(�t�D�7�ɿ�ӿ�ӿ��O�x��iy��	���ɿ'C6ٮ+k�o��5k�+������O����?Wm����-7so�6�'�.�����g�\�67~:Y�5��oo�+�w�/����X
�5�1��c4���������1]�����j�R�ߺr}��v��U'�h�t�{)x�6�OO�1�8������@���!��&-�$��fr>e��A3h�|�gi��)����=y^|2NO�Ѩ��vwD�����~�M��٠*�Ө7QP�Qo��'CP'E2(�ASV���?N$�Q/�{D�{D�{D�#������|�o;�%��,N��7��ɇ���h���� �''T/��Y���^9ʒ�?9��'�����pw���k��mk����o&���(�Ӻ��I��gy��ɤ�a5̢to���맏��]}27�>�+ۧ�?S�u|���x�ж�g�О���Az"��6�����������ypG6�ۍ�i�#�:`�����&����{�l�&�Zz��V�e1U!&�y9�o��/�E�Z}2mƭ�O�W��Xe��>��yy������n�x�ʹ��[�}rnWb��E�M�hO�Q�O�I��4���zr���pr���`��ôJ���w���yÓ��Ĩߏ���+���W���A��o�2�%u���v���D���|2ÿ��ì��h�oL���%�R.��5����p�%q��Wk�Wk�Wk؛֐�5���ɂ}]O>z99F�'.߻q��)���W^��gir������XX����xi��Y:me��@3��jr
ͧ����'�	:�VN��K_��n�ޡ������oƓY*_l�X���ҋ|������k�)Nmh:�$m+yK5m��'�xi{�oK���5?�r㋵�����8����FM�����W6˫�v��������D���ش�듽\��6��si"_�����D�lw���O�U��]��ܓncrP��\ۛ�����h��SO�Չ±~+���W������4�ȴ�۟L����JկިS&�δ����"_)����j|���P���T��l˹��P^+�}����1}�69����k���6^n�3��/�_O��1���K���&��s��[-���_���[�7��O�̹���ѣ�ӧ���:^�����/3|>*ѡK1�&M�~Z���f��'vO���2�o�4kⲬ�~������h8&�3|үh�|lM�#B��d�7�a3ʛa>߯&�ΠH��ᓌ��ޠ7H�,M�ho��_�u]���/��(��]7��u��8�z��EӍ�K��]�;W�4�(:�<r/��Y�28�]�2n��U��#�c���~�t,]�����ˎ�}A�ڠ]�)�l��4���o��;��wx�)�x0�;��N{�N���/���VW�Ҷ��|�������_بү��My���w���}�@��~��;>T�ϙ���9t�v�ҍW���8�z:p���<m'p5���.
����X����á{����|ءW���t��6�1�mܿ��^u���ŬqrREڦu��2��x$�3B�<���ֵ���lh���3�&:|��`8J����.^�|���{�����eU7O�.?�o�z��-�$ݒ��C��ૈ�
�jɊ�AWހL��UP'XuqH�7���葽��P�p}�t凐��R��B�/�$���I�.�d��bJ�	z�:&X��"�q�U� �*=Ap@:��>,�Y(TAf��Ur��@�
0eA,��j�(w����������r�K/p��;�����vN�Q���^ƽI�Nr���g���]9��^�8�3�߇��)"tLI�#������[ ��g/���+��ǥ�g��/"w*G[.u�K�NU���lx���[&=�l��~��g�~��g�ş���EeAO!O�
�H�����=3�G�L8�\�A1q�s'��H�J��#i��ڥ�_g��~M��F�1��r�����ƀU�;˾���?Ut���R��ؘT�[�.��h?ڟۗp�4=�iR*\Tဋ�=�q#����RL:�K:��������L&�/���"���{��Њ\mf^q��#ܞ���$�����=�?-6������Z�7}�M�L��Ā�CXh�V>6�%�"\�B	~����d--��M��b�#���pk_cN�ܕ���/�Qb����d�k��
�}�/1-K߅�14�~A�-��@�+/��f�w���(1`��e�����Ga�*ʷI���c�X����t��W]��owS_���sE
�bv��4��w���ғ�w��;oo��TM��dzuq���Uo�v�qN��m���� ���˲;�ֶ�;'�Қj�YJ��yi���S8�M�L8�=E�d:����;��wR���>I�ug�a�G<X��@��s�ț��d�of66.ظd�`\.�f\�u��pO��Tl�8�{�8iv�X>R�ꎠ����Q?1��<g����m
�c�/�>tv���5*�ɀ�v=i�O��l>�L��pʮ��ݹ�:.�@t��	�P��3u�E����g:����'���g;O@�7�Ȗ*_�z�
O�����1�	Mӟ���S��P-\������(D�):��5�F�;vV����Z_��7�~�x_
‮��V��o���U�U�����������(1�/�c}���`/���b���������[�̲�nw�!�Y�^y@5���4=u����7g�y� ��jj    ����e�WrI�J!�˝�V�܁7���O���<�4Ga�D4�>iJ����CD����c�Ri���x�8]k'3�ZC��y�5oᘅ�u�V��lZ{�=���x#b��(]]i
��p��v�@�폵�����=����rz8:f��Վz�a7|�PT-t��3*Ɉ�%�;B���#�:�ǧ�'����Xە�c�8*�q����lW�H�
���q*P6t'�(��
�rk?����=Rϣ���EE�~~w�������4��0DYqa$_��S��23��#g15�nϒ��T��Kw*����)؁�c"=׺�޼)��Pә�K�U3��R�jխy�v�k��Ɲ�mq7Ti�s�	���̴�&X8sI�K�[Pʺn>t]ccM)�dI�գ�o���UA�5.*�h��X��Nchgq�q�Q��j����i�TnK��ى�>e?�V�D�V�%\U��u|�e^Y�M���8���F7}��W�5	�j��o@���q8�:�]0�*�9�?r�x�`ۦk��`s�]���)fݚdyj�d�1���T]|��y��3�����O�l�g�D�*���}Q-;׌����t�y8�~��^v51s����x��K�V����m��yc�TSS��:
{=r�>:.�ѳ�3�3��S�(Y�yuXu�َ��U-��E2���G��V�U*/��gN�x�����T��Fl�[�]'�Ĵw�F�6����짜�LCD�KSRA%�X����Z�TIQ-U)�ٌ�D}��h)+��܈�kW"�H��`��K�?ī�FG28��k|	���7��{�q赖�j��i;V��J�: +%�V#F����`�����~+�
ə�Vf���Pԉ��O��4 �{&�ř�蕢��O���Jip?UI�~9��3����Tx��I~���i|(_�){[���]��
��qizV�)ۡ2��?�Mhi��]1����G�+9 #ܔ�zp�շ���4��,��4�L% �Ԯ���z����Q{5�<N���v7�|�SN����)��Ի$�rۤes	�H`7V��Og��O
���X8@u��_�⚭3�X���F�~E��
M��n�Mz�� {#ml���o�K"���y�й69�A���c;�5�j��{�����q+M[%+v�i��w���R�6��wM���#�9[a��n�/KW&����9\��M%�+�E7���v�g�4.��M�3'J�����bH��>rXHi�R�X�Uo=�eS��X(�rT8�3�1 lF<����"g���s�͜Gφ� �*��J�d�뮇�n�f
}�"����2���r��0��90�X��`��ߚ�z؇"A��R��7\&�����[�E\B�U4@%��"qȀ0j�J�� ��7(��Ǐ�_�S}c�=n,P-��f�f�䅝���GS�w񔽏gU�%Jw�.����v�Uv�>������וs��N�zl)�˞����P�l���2;}>NS0����;��U��lF+3�Vիa��.M��b���\`cŦ��q�]�.��U);�� 5�<p�Wa�ЬwŞ�}��]��q�BB�X��1�
�T��)�`z9d��#2ST��Z�ԁJ�X�^خs :��u��P�O�,_��zO5��s��u��Vj^��*��'�2y�(�
��@�tg}�����C���:U��y�ĵ_kS��NE�
Uٟn�\`�������*�:[R�N��I8�R8�T6�י89���\9��~1�#��ts�Y�;>ENq���U���%�����V��{:Qm�f��*��2�_���ltw4y�>�b$��W7wR��ҍ�m�}�&�ֿݸ5�W�A����px��/?�7��[L�|����dW���� �4�$.�,��t�Onִ��_L ƕ�.wu��vکnd3zQ�v*	M���L*�.�g�P��(����!`N��4E��*�O�/��	��$�oB4�7qSwơzL
�y:2�ݟ��-F�P��` ���W�QD��_���;�����+�HՇP��p���ү[v�K�hq?�m�P�� �Y�Es3����- ���1E�\WwM3.*;ͥd��δ'#H���(��m�Ѳ:�ϝQ�2cST����2�w[-x�VدT��dQd��Z>05D�����0�'�Ӕ��Xdlw�p�1��Jk���D��623��-j�q���?�[����y���� `��T�2*�f��*�GRMVa�������~�O��p�
�'�1�����g�G\څ���x�1�fUb�;�Jg��4ͬ~���i�
0Q+WJyF<d����Vi=7�[*������˙��_���zx˪#0��d�ȫ��4>z�k��7����6�q
J��k�*�'�{�E&���Tl���~��++��a_����p�r�L
I���M���5������#�5�R+0�0���=Һ���k)j/u������|��\ڴ���ȷ����5��{o�!hm���y�L�z�"��)�!A��"�F�m�N���-�����Ѣͷ���B+�g/
�٧̤�I�C;Ld`N_�;�[f��c�s�l��3x$c+��0�2��u���o+w�8�g]s63? PȜ��mաj��u8Lں%�7�	ζV������oX|�G��n��	�5L�oN~����_HGN+O���
l�rv���0Z�3W�w:��ҷ*�)8$�_���/fV�ܸ���v��b�:�ʹ�LV�ܿ��F�I��G��{�?��k��4z��1��!���)vJ�ހ/�p&���	Lg�E���l�΍��x}��gæ@�wr��yNr��}sp#������_c�`�)����RՆ�l,i��ǻ��.�r�u��"}G����jx�D_s�*����g�`i	���ذw���\���s���Ԭ�##��×� �[��C�J�C��x���ŐA�j�UN��r��1��q�u��ٯ�:Y���E������5��_��Ñ^�<��(c�޹�R����M��޵Q1e�}o$}�e�d��p�둃�����0��Z���3޹Y��~+�ˤ�x6u祷t�`�cn�ѣxd�R ����q�!q���e�~�d%��T`�溧�<{T�^ݲ�9�ع���y��8xw�s^��+����9^�y;.�R�:%�$(��I�/uV��c�aNP��E�?l��C� &�A�$�!h� �'���^���F� �Q|˒���y�n��u�AXF���u�.j]T���F��n�0���G�M�d������7�X���\�P�m�D��^�˯է̛�:f�Zi�b��?�A'���L�܋�v�؟3���>��~�Y��nQK�a��!8��1:)�|�u�4_�с>�x��9�б B,r`���S`[>�o�t�Q�-f,�Y��V/����M�aO�\�F0#B��P�n���x*
I�3�K��M�͝7�i�߄7�{�9�=���u�p�s�*�WI^�f�b"���E��4c݈�N��w��j�D�n|���E�9swH�L�^�`_W��0� �y.� ��-\{}G�Ý(�8��Đ�z�a64�ݲ�y��r�.M�^>e��0_���Ly|��H����u����ΏRgo���oJ����Pb-�3w�P�{ڧs�3Tw�K�)��'`DNǭc�NtA�Զ&�i�f���HH��d8;J�t��Z�z���.2��	>�,�Q9=����c�0!|`���?�۲����Ƕ�����^v�T���:kL���N��70:ȥ�x�o�Jх�����L4֑2��Ħ��������8��p�D9[�o	$���1�z_�����d�K�s�Y�svW�9.E�ه���mY�:-y���|��������\�G��:�P#��3��$�$v�3�.���XY\䨰��ʵ%;�,�_k�9 @�����/}l�n����gX4�$�V7yʫat>V��w��$������J.t���>gȟ�$�7���ᠫ�n kOSB]�C�m����;�vfF=�m�e?�)�P��C��A�zt�[    "e�h+��7U����5�v�3Y��g�L�ڨ�+{!4Y3}_�@6jB�	K������V���p��k��N�2���p,|����K��|�Ixs��B����#�q<�]�i��寉	���[e��L�l�4�t�g��� C�c<%p/Q�Np�ҧ7�S��
s��������_b,W�c�޹�0R�6�r�ݨ����,|�G��b��tV�?������*Yo�i�����#�a��G�K�zF<<�-�����Um��`~�x�O��=��P��v����AH�t�AՊR�bu�\,C"�ַK��^(ceR���CD$l�)`*k!:H�P�U(�K�� k��"g��g�.�RD����Q
Z����D�~Ms����|��V��;�ӳ�7������ ��<�,�a��-�1u�o���?����mfحiޕ,.~�$������siq��K�m��Yg�n"0
r�il	SL���wS�)汐�
T&��~��p�1gG�t���(|0jA��9��l��U'�<��>F�@�l�z&R����W��YSiu��	�b/�c&�Œ��g��P�GO��B�Am!0������b2L�{A�oY��D����y˲�aG�S'��ʇ`���N��-�#v�[���G��D�c���.o���R��0Ji8�rW�^�O�B��o��H7�.��}pZf��u�ۏ{�r8������t��H�.�(�%�k��e	�O#�)��jCv~
�����֨�>ҝ���t�V(B�D�V&�ʕ")ݱ���a8��g��l(��e���R	>���?���VφOW jK��e����F݄1Bu?:�W�'���3ȧ�O�w���k�����e��R*��mguR�F	����^�I�Шp��Y��n� *M�����ϼV׹���h��aR��wq�'n�JsP�$3�������p�>]6G_A���hp��u&�'����.H�?H�/�K�e��K�XB��J��{8>��x�G�>�b��i{殜���d u3;8"�/��О{cv��?�CG��浮V����~�0�8�����c�����rߎ~�����n�MUԟ����	�rA
�;{ņ�_H�4/9��?�z�����8|t��E���)=��	��9v~���:lRE�y�?�-V��������z|���#~wN3�ӳ���W����V0e{�Լ��
QYw%�ڊ�Y�B�d��X����ݩ���z�V�}X�{��gr�#�k9mE"!�t���8�^4"�l�������-q�_��23��j�V�ܦ��%��Oǵ�*��M�d��(!���;�X��� �F�^�+��Z�<�3Z����,���;���"��]n��Ȣ:
���yW@���a��%]8_�'�M=�
�Z��f;�Ź�֦���&��Y��ճ`m�<�����=JD&�,���4
{��ݦZ�ƙ���?v�F���ֺc����^!.�Ψ�|gbIQy[c���[��N"�����E[J-�7�Z���o�.�Kک}ۍ�Q���6��/��@^�0�'9��u���sB� k�a�r���*ja���t��e�e���߂������.ҝ����J�:��p;%����O���p���נ銝���U)����n9�>�qTC ħ���Tn�YH��x؉��k�w���5�6f�%T�]-�}�e��B�n��8-!�(6��$���ʞ�����a^r���O�g���(�魞�4~��0E�J�=�}�����M����g���ʇ��0����+{�8n1"[� <K�;��#ŀ5���L�p��:�!�#+n�k�ُv��am�I��S����6mԪ�=t�V�6A�J��
���0��::�[fFq�� �<�]�T��o�K*5N������s�T$������S�d�����y6$����K�ˮO
�_�BP|0�KT��0Hّe2���U���U�qc=��c��|���7
^F~��-���F{��)�L^p�Ι�$�eq6&�l΅��
��(��<�,���*E���:^������3H�|���;�j� W�q��P�¥�]�l��G݃$a��G�$*N��|(�ó��ճ��8��(�#�U�B����������l��'�
�G�ҋ��E�'`J%�#U��6b6.�R�����O��v��;��i�K]:�BQ8�vO�=[��>t��d�ǥ�&%Iؾ�n6����VbV�5$,����*����yKYԻ��O5�b��Y"�f8*��9�_(�!k2+���R��!S��E�A���Z����;kr$;`\[����z-���|����XR+*�3��4�Y�
zlѵn&��FaS��]4�:�p�gNh�8�廹����Y��p(3���~E���k���qY���/.�ஶ���k��3#�?����-���w���s�^�P�j�U���}�B\,_�Qyӳ�)܆\�wG���NR�$�k�>r~8��y�R��R��@�b�pH�˕�\HE��Ș�4
7~��172,s�-q��w��-Fg ��o��q�I������,��jʆ�y����z�`��A6"��|ٟ�_>��Ri؎�Wj&*s��7���������
�`|ث8'��v_����a�DљpO�J�c�y��q��5�$�]�L�^覙����`�aOS�Z�x�x���6ᷞY�!"l{��V�:d9��[b�8��g?���K�.��o�'��Jk�Pq�%j��������&�I�P��2(�L�V!#I��bA"e(;��"y13��t<x
�ֆ"T	���Ѭ\�M���#���gp�(���go$C<̭r�ק���
�����p�8�Q�;Z�O̓��)��ZT��ȟ��<������kf�݀*E�h*��5��jW�UO�&�X/�.(a�%�	������ܹ�*���ؒ�OϘ�.�b��1{�>v1C�(;?��QB���]5���^���p��L�#�+^��fT߽8��ӈ|�X�L@����+`iT-���^5�Z���)|W~��q;���˞����l�F���|��k��Uq<���!k��c'���������i�E���A�s�EO�[V�Cb&3��O�`VVmJ�H;UFrW"���6֡%;���0H�i�f�'捁��B�p�u��]�)�#'�	�����(ݸ���t��������A�r;�3ր�%�I��,�X_�M��9�9���vq m�WQW�^�P��x���n�]f[�E}��v_U*�[�ۮ��jW�R�_��{�w� +u�qp��=�\7<��l�~�| ����zI�H�]��\V�&2�@�n*�]�=��[sJf�r���RprO�sD؆���=�f�"����� ���6����`ޮ>`�$`��M]_u�_��N>~�Z|����a�06�3��ƹ�����iq�˒`�%�ō���6B�Jup+OB/��x"��働��7.��n�>#C���R��7�NB匫�2�ܘ+�<��b,��d�Z7v�Aj�g��J5(�@�H�Ȗ!�tHB�v'3n��"�i�A�\DN�I�S`��Yҋ��M6"l��{B��o�^Xy]j)#��?-;?������J �׫����KUg��G0��:�Y�{�nz���ғ���츬�_	�ǉFWOYD��09�~E�:#��R����t���2b���@Z�LM�-��ߨL�!��w~���ɡ�ԩ�)%H��D\4Z���Wu��n�9mz��bƭ*�N����b��4o|�ynC�w9>ED6� 1��UZ�
Y�4�p��"չ��!�x�\��m�����\`�E���?:=׾�b0��#t�&>E�Py�=j�V��=b�e�&P�9=A��2�O�(�
���|�OWvV<�K�����ڕ�#��/wuZ[��|�պz�S3+]�G���H�"%|��f��Z��@��@��V�M��LB�g׶�f���Ї��\�Y�Si6|!g���1>�S�{:����|eA��4���j    ���.݆`�P�d���p|BM����<�X4����gj�$t�
g�v���׺���NFW��'��9]�j� fv��g���р !Y/1�g6�^��ǰ*]i��$���h��3�e�d�2�\�����ߙ&��V}��$�XpMl�z��\��[��	��}�N�~�=�Ip4�φ��YT����3�0^��g�854�e�d�ɶ���i�g��6slF�������US?�b`�f��*����w<�����y*`aN����c6��m��W�PD;vD1�+ȁ�@�Q�3�?ۄ�
����������q�:�b��P�=~�n3�d��R�C���bi A�NB�.a�a�ѩ$�)&���C[6��Ҩ��=[�]ҟ"_��h�%'h�v����I��(E%*r�_�Nv�6����xp(�&��$�|dS֧�l�}��U
�I
Zkl�Z	G;塹L-{�#��D*K`���m%�ݗ'��"o�})�N�l��_�w;.�9t��r��eW��=�Ũ����v��Z,�3L�O��|�Jb��/ɖ]���2f�����΀�
�b��Q�Q��H�Q�Ϋ�2���H�nn0�=~D���B�aʄ��`:���S`v�[��Vd$BJ��Q:�`�˺��#C�\�Fa���?�/~q��Eю)tkG�������J���ϙȤ��,U��Gƻ����� �v�ܴ��$͍�t8;�g�w��5�K,n�Ebh��4�P�?�΂{J�A�����zC�:�Za��Z�e��&��b9�8�|��:�[��S�U�Τ��<��j��Qp�Q$/`���*3;¥~�&�3�&n��� �Ed�%/T�w�,�vK;����)�����ж�*{�l���pW��RZ8��#[��`3��,Ca8��ON� A������%�2�h��ĩX=�{gF���^�������'�̊ՙ/V���rgk���O��g�ɲ�
X��������b�`�8'^!'���:��1�Y��*Zye�>U��m%�z8uk�v��@©4e�K�4=�H����8����+������Z��@t�m�Ti�gf0:���-l�~)�2�yp'�H�k'��i3=וk���eСOL2ط�E� �pf�"��Ȏ���~\� �\ ���p;�W���Z��M�εQA�# ��!��&�s���Wn ��-�4�z�h����p�.ֆY3��pR�.yU9"�%�����������,*�������Lt�sV��!�[��62}A=���)�e��Y3v�Dp���N9禋d�NZ����T?����[��I)�XW����]ƨ���E��=����a�d����u轑'˾�
�E��}�b�f4����X��W�C s0����G_0�I4�,�
3��,���7�@��NF�
-1p.Ю=�"���2\a�[%�z��J �5��k:��<M8�����׹2�b����BN+i�J,Q���p츁�=��zOE�dB��"�ٰ�<�������E�P��p`$bC�t���U��gQ����*���oA"�ft>2�L�V-����t%S{�Px���BMR@E�.�p挻�����![��
�T7�M��7��Ea�z1%^�"Zn?�����!+� ~����_?&�$M®J�8��3���c%�~�q���}͟T��ͻH��w���u��Π]-ׂ�Dq�T��}���'k�p�ݪ�},��)b�ƛI�էR�km�ND.e:i��#y�=��Х�{�U47d�6�8���xq�~���k�H�BξH�V(z��W�s�HHo����S�2�l����K���qQ��SA��C�Yr�o�-[k��AOby����Sэ[����sڵL��:g:�L��]	Ļ� ��л���^��VT�K��,�t�-�����{�d
� 9!c\��9g��S��[ ��r	M�'����y��a*l�聰�F &�p㓺�)@���
fٷ�3������TqSe�{D�~čGӛw]qF;�f]B-�
EC������٢�]-a����v)ݡZ8Me\�笠�K�Y��8XD[�u|�t�,��L�x�gr�$���2�sMU-U�q��8LEw]������/B���8]���`;�)��(	/���1Gn.��!�����8���SR��Nw'�xw�sQ�А�i6g#��:8��ec�Ik�n���y���b������hN7�~yW�[ĽPK[��ۅU2�g�	.�y�n���/�gӋؙu�7�f�c��B��(�l*���pQ.���p�����\)�UX(Cf&he�t����y�{g���@F�a#�X�x�IߢpR���bE.�nж��*z�,�	ğۻ�"9T�hO�t;�0�q��3�l�,�r!�p���?l�L�߇�JpT��u��$�6�����j�*:׀
	I�١���pC�r�׎���ԥL]��R�^�K;�ꮈ���K8CL>�F7�+���a���D�Y��Tvq��+V�
����SS�?�]f�/uF���(}��EK9�p�t�T�B����X��^�nU��>r��}��^ؾ���i9�c�;�,�I)X�e��&���~ti���q���o��%d���j8��3E0@h�KGU���ø�i�5�K�I�m֔!�5�]������l�Q�c�0�����'���"����R�ܨL��ܹ�UU�mo_`g��I�ZT�HA����⑤h.�qض���b���){�cv��+!j�ٰ���-h�*���?6z����Џ�4���ٕY�������luM$��{(���QlQ%^�H�CQ|G�������CW�;r�[�q�F����#�*��r�Z-���KP	ꄩ��_�4����t:��`Ǧ��,t\CJ_\��=G�R�-���ܠ�r�����Y���]�%5�&T��TΧ)D�E:	�H8�Y�I��,Ȋ�Q�2�B\�]���Dݹ��a����v�͔��	Z\�Ü�Q5�1��?`���
�D��L���B���}<K��
w�t��i0$��������^�E>�\���i�U����~����!B��-*ڨ��Tǈ��2H�g�X�YQg��*(���_��4�b8�>{X{����l��������)�O�/ָ�؏D�S� �`��;bڛ�#�mB������1� V3����q �"��MmȐrB�
�d�qj~����p����	8le1DL���its[�'�,	ɦd�/A�^��nq�t:�=<����<r���fKl�~�	ݗ�_:��i��a����R��5<�cTlB+���7�ЩGgLL=w��Ԃd�p�V���6�E�f��:�w��.�%4_'�8�����Ł)Cf���-_�|g���J=8`S�k���c!'g[��y�����n��0pTWC�b9��0"W 
������b����f�&]� ]Ү#����9҆��-��P��v~�\T���������7$A*N�ci�U�r�P�\��dp��\�I��ɡ�q�-i'2Wr�p<��_��0&D��7O� -o�ܿ�Z��]�g�2��9E%�l�Q��W�$���W'?�$B�!+O8��81d2��"5�:�X����+h�J��m�+�g�������y%L2W��G����?*����)W��Y��y���	x�N\��d!W�u<$g7?�Yd(b	v��B,�Q�Y�O}�y�t���;�M.��n�6Ԙ�ED�by�"�6��cq*��v,�E�����u��(�bQ��y�Ճ��&���R�Κ׿� �e�>�k�(EO�tx�ܒ��*<ReKaG'�)�[�D����M3�oC)��o�xO��c��$����P<����P�Pa��4>/Go�`E_�F��4���[���`n��o�}P�qz��b�V�G����U޽S��'�W;c�el���	��"����k�d�6�V R��7�@���I�E�99<pNq�Kq��$z	$Q� n��C<U����ݵo��*M�ɷ<g��n���>g�    Qr�T�p`��!��<V���F����PŭU��� o�CQ��(koԞ�%HD�N4��e\��êj~���p�dq� �ʝi�\��il�Y�މ�2��*�8�cwΦ훦#DDhyt��mv�ݤ�&��6D����|�|9�N�p�Rʐ�K����i�7n��4Ch�!��7��xJ��a�H�ߨ��q�eX�r��j�V�9�Hw��-��6BFl6��'�T����QR��SiN�oBSV�!�-����VL��dQ
"���e�&y.O����?���"��#�pWo�e�V���h�O�¢D4N�,�	�v���E.��o�EC~B���E�2!��C�h�Y�t��B�^���9 kY�;��Yn��x���Q6؛������>!/�-�|���h�4>�:fg��/��h�Lń�s�O���4��k��2�}	'�2ӈ�	��ko�J�S�q*�-����r�^��>z\.�4��І$i��	�3�����?^HB+"E��v-���AZ�����0��h�B`�Z���;+ �� ܓy�!����O��-���:����L��+*��k_m��+�.�]���PpU{"Դf�h2���ǲ6���IP��0aY}��0e��a*����qG�8�"h��fI`�Ab��)ߢ��L����Ge<�^K�Qz���Ul����`k��D�C[ڄ����=Ķ�����I����K<u�X� �$P�$����UT�R����9\��ˣ�=���L���s��i�:-iҧc4I�Xγ��7C �c�X>2���Zo��.�0��O�Zu"f�Ƿ{|�R&)��:��m�jN��1'->�	w�
�SmB���g���d|Z��䜞�Vm=�k({��[ǓG�|7��{��!�������0�h5�ƘN�X'�*k7zw��њ[�d6C��-�����@c����i54�`���"��l�>yĴC�M�����7��+o���ԯ7���п�����N��;sm��V�ZW�Q�G��d�-�Z!%�	���,�I�����_~�E�2�X���j��j�m:c�6��M)��o�Rf�6���<��w�a�������1C�ʻ�FA �̌�c�!Gj��Ƀ�a^o���5�B��c&�ǅNLx\.2k gp����gT�8/�󈓃q+�8:KwF3�W�W�k�+��Τ	=��ߑQ��mN�U�_3��M�O3@oX�*+��,���@W�qSF�\�L��-���U���yf���N�6C�1��3F�N`e��6��]�xG�J�^K;WXw�0$>���r�7�gl�on�A̤n�s-ӣg��ǐ��2�����\���dqX���`0�j�D�=/S���(d<�:�9M����w�\�J�J��6+|�S���Mobg��s����2�~����C���5A$�K�zK2�Rq�Z8ܫU���{�*> ��y���p��#��qA-������Kg����\z�Sd�ŷR)����C0��^��Y��2����������?����G�o]�H�z�b:�l����n8(�)�� �0��/��	��� 9�Z�!f�������3��o(l��,Se���V.Anl
̏E5���Ш�R�
��c籼��6��/ۍf�N���=&�W��ycQa�10�F$�7�&�u7=�.�$<}f�aHLO��:бX����\O_�ڳ~����ȶ��J@�ܤ�g�D�ٛ�:�o7UxwE��Q�x���Ī)�%[�|Rb���!�׾h �ђ���h�YN�DL\N�}��Aŏσ[N�,xҧ��t�
-?����f�9������j�;�J�P�����%�
P<mq<T����SX��
�"6p�'ն[�5Ĩ�4�c�x�r�K��>�Z�&.���6m=���1�"�x����~���q�[?�]�㟀\������E����i�-'������L	�4��^�<7����X��[S�8��<���^TV�U6(�*g��3?��f��ۻY�;�I�z��g���Ｘ}�~�A��1S�2Ŵ��^�.�yTߤ��a5��X�K��}�����0�[9���ǣW�A���;(�G��@�4v��	���I��̳��.P�Oi7^'�O ���z�=�>�1t1�*�/��VN򆹚�щS�j�������e{�a��h�� �PB��~gȜ��� [簼�*C����+Eo��3a��K{>�4�cN�1Y�X�]iX��Q/f�1#$.����f
�5m��'����@���.�*]�A�7��"�i�6r��?���C�пi�H�B�Y1��Ϡ,�tql�g<�K!�<���f�n�p	W0yEs�ls�r(��L��D���g�?
og~�b��Ӥ4d�X7>X�!��׶2-��:<��A�v9����Z��x�[
�)�S9Gq�ʕ1��i�Z|냸����O$�AnF����t�=,M�|ܴI *��@Q�C}�Nq��e{&�/G_3���#���,��_2�j��/�7�7�OY�,�B�3��ʓ��������`���5��`AS��X�g�`�{v���j�|�EM�8Ƈg�i�ŏϻd�S�i�5��e�������EIK�p�;1��ހ�|�y�C�����D��V:��ݏ&8��w�\�e���x��������9���h��V�&@{}�
{���r���GHML<
��s~
�����G�{���[e��XD�h�c·'����IQ��Iv��Y��XB�H9s� ��N��%�N��4n�T�p'N%���~�"�!��x.|��)�)�[���,���l���2�]��aS��gPm���ץ�_N��&���G�(yꦵ,��wb�zy*c�&�I0�8 ������Me�� �����W�w������3��2��>��;i�J�2ɏ�;�	���d�rJ&�:N��Y�]r\֪-���(7_O�����S<e?D�&>W�����A�=ߏ�߶#���.�)�^�rK��F $
�����Y���r[��).vx����W/���5Q��I*�����0H��OrE\S
�KG󳈪�MѬN�/`9ȅ������BpטE�H2��%�I��T[
��=�O���O��ڔ</�l��۽�Ŝ����W3��wʣz����L�Qi>�k֩�g��	)-�� ����2���]y�vڧ�G�r�@����ٱ���٬���:�P< ֡LY�z������b&�t�͖���}\*����Ո>a���p�HXSv.;����Z+8FaR
��m G��]('�Y�x�: 1�W�H���8���AN K���Z.�2��Η�6��.�Q�
�u=mykӈ~#��a+@&u�kɶHd��'Q�n�W6Ui�rE*��9�J�i�}���l<�8�ƿQ����n�(�r*�PD@v���!#�w��d����M;���VU<N�]�u��������d�[���t�O�#\���{Pv��|��[qs�k�m�{�5T J�es:��5Q����=7�_�6N`�,�}Y�rl=e(�9圭N+�yH|/��p�|�~Tihx�PB�0~[�=qL��ū��z��D����g`���T)Z�`@�+��V�Hق��}_q����^���W�+|�KK;�Z����Kؓ/f�q�� �W��rF�D�b��F��e�\_!
��$|�*9dN�B�Y�B����Ԡ
�P^ej����r�$?qV ��s��RD�GJ ���'��h�
�T�7'�gx�+3֊��ָn����	��J�Wif5�ϴ4�庫Z��^�y��O���Q{�Hu��g��Z�͕F(u��랧����v�V�ԳK��z�!��-��C6��b� ,e���[X �I��Ы��*d�"�Ǭ<�S:-xQuV�wq�m+�v�M�MvB��C쟭�r��Q�V�Dl@Yf=�:�9T��,OƘ�W��&ԥl�3�\��GO���^�E1��"�g����4�6��W��I�|�iͷ�nH�a�1h�3�ƑiZf��n�[ƺ1/    �T�}�
2�!	�&H���y��Ղ|������1 �q���R�HkdƴƉ��V��a��un�-FNUSI_'�����_>ԹUڸ���J��^��d��&�[E�_O{��g
���n�����+}��g�R��T�.��g���Je�:�Z���T[E��B9�y��f��xtu[����=U/�q�ȷ�)������[�ʠ�>���]�
K�r�)ݵZՕ���ٻ����̪�يA�&"��
�Z��T�_^d\�g���αlp"1y�O��!��g��f�Mh���krgV�����G<����X��^#�FTG��O3�0��G3�7����V�X��W�N�(�ƾXx�%�)w�����9������ ��Q����u��C����x���X�Di@���s�+��,`ҟ��
dso�rը�-��$`9V-sS�u��!��pt�ߦ�>��od ��%�7aİ=ʐB*A��; �)���S�����>� .ц��rd�e�}镈ˎƩ���^E�l�4��'3i��nݒ.����wq�X�b5?{�U!�-��; @#B����y$��1�%��Ȭ�W�?�Ȣ�K>��'�H�B���8.�e?!d�C#nS�����[ߥ}��a��5�����м�9������lJ�춍�$hd:�4q��-���+���'4��TkBj��M�3��ƀ��k�.��(�ϼgB�3�_�w�BL���O�}q�In� F�@0��W9����#<�ι`>�t��t���\h/���ϧ�1�Ť�{����<{��;��X�=QM	�H��6�N��4^gq�rq]P��y&����>��sэ����-��M6���o4 oRS2�"��-'	���f�@&S
���d�nj�l����K�>�T	�u���UG7���#5n��	@�q�����-�_]�4&孷.��.����+o�z�������5��$�� ��;{&��oN��V�ų)��ž�a,���0�eey���9Q�2U=��)Կq���8�=Nr�mJ�*C{A�E'!�˄[,&G����޸���<N�I[S�,�G����� kۺ�#���2�w��t�/鐍	�qS�3\��d@�Y�vW��0�t[�\�\4�U?k��X�Ku
�Ϙ�:��L���;�X�&04�w�s�9U��ѕ�|��th'/����������YE�Hg
�;�o�}'���5髏�/t0?}Ӿ��C� f~��~���S]���<�ڔ_�~ĺ�޼���B�V�Ѻѓ�}���]�v��+d�ɿ�������f�9�׌*NT��/�c7f\`p��G4C����������h�*��\Π]�3_�Q���tF&��Z���ķx�XN�s׬� ��b�Q����<�����r��Ž�3�6K��r�2�gh��Gt:�9�8���5�%~�)`.4s��(����m��m(؅%��Q�\�=��m::~�4��m��F�p��8A�!X���9NmFfq�ֲ9p�M�x+�Fpt0on���̓���Nr���qb�������� 5��T�V(󖐖N��0��[Y�"�	L�X^�tj$��2�oQHd}����O����*��:i����B�9�� ��|��v�q[�5x�����k֔T�[%L�w*ƍ�u#�s4u�_K��1� �HhLx��9 ������>wUR0�-Y�6W�vf1PGw�ۯ�����"���0�����\�ۏ�j�Ǿ�0�e��������WN�?s$�l���V#���A���I�r�g1>6���|4�&)`S9ݹ\�k���7J1����K&��U%�Er0�V��;���:�{"8u��ʤ���EU��ߺ=�g�R��)�P�s����s¼S��2���Z��A]�la4��N����y,�5^�o��tOI>g�<�"�D������֊3B 9�J�9%
��L&�� ,��������U�?�S�7���o/3�M�B���	��$�pqs�a�R:���q�ly���0��Z�������E%�$3e/Z�m��o���\Z�x�r���&���\%�����@�TJ�̕[�	�+&�h�\4ߒ�H��E�'.�eq�0FEƳC�!�dC��PF�I�	Â��CDǁg��(�h�b�E�:�d6�%Z|��]�0����T_g�@|KM�����@{
�LFM` e�x
�������&�UrΈ�څ�i�Ɠ5+���:ь�f���*5�!�N�����S�+���%� ��]\�9�����f��ܩz�͐9�(�Ze۲���rK�⃓�d����8�������Ӵ-�e-�6�_�N��
}��{:!<Vʫ%�耡s�+��@�"-Ǵ{�{�L�>���pCk�/�:_8m���#�����S�c΀��yHGaԭ?2�c��l`5
ҳL��]�C�������Ђ��U��n�\��خw��"kK��u|X�M�>�Q�""n�����_n^I'��%U��PM7v_� �a�s?���%�=L;���˹�XDV5�V��Q�*xm��0���z�[�,�B7�]�S��V�-	[��і}���r��M�1&u6�|��1��Y�zځ��8����h���E���&��#Ò�C\@�TI���7�#*'�hQeq�4z,W�aD��[*�* ��!�a�lH�'��䞈���vJ��M���iz������S��A�ߺ}x#��z~�ފ�1��x"�`�d �]FEc�N�<4��e�`jY�?/���6mb���G&����fCx��Ix%�n��h��$��0a�s%��@����\��;;:�잽f�o�	Ȍ�f��lt��v����%\����Nx0˨#=����?Dܿ��E�`S������)����,sH%�Ey'(�nL�#*���������.��h��O��e�şu��Q����^�H篝e��x(��ÞY[Eq������J/��@5�O6RT�%h,��o�X�$]şz�w�%ja:N�*1����}|��gկ������<��Ԙ�Z�Z!NF_~lL^��ݚ2��
�X�W�,�u�H�7�eޱĖ��D�&��rN,��_�k�S��(T�T�Xi��Sʀ�2��'��������*�����%�O[���+�@�܄xvNbs#V�λA=1!1P�P~���[�b&zp����ظ��~�cֲ�KE����ⲷֽ4�k���.̾�cL<H�q��ީ� �Vu�ۯip<���h7|�M�f1�
+�����Q��זuf,}�L�>���g�:���#�9�M�J�g'd�W�R����4����q�"�������y�������~���~����H�FY��z�����޿IB��Ή�-rPs��ˏ�%I��@}�Z�X<)��/�J���~9�����^�F����qN3�fh鳙J��E��!v"74�mX����1\a� �E� ܮe�H�6�'^�B�,6��z�j:M�]i?�Z���+��e��!��r�I�{+0���9yn�`���T�~y[�˸`i��S<�����vMɃb�g��;��L`QYHw���z�^=ŧ_����*����l�z�$���t
Њ:�w��Aր�>���3�J�n�	L���%���!���Fڷ�!�]~��\���}ޭ�x�X5B��ԥ��Տ2��g[>*U��ߧ2�[.Ͼ��Ž����B�7�<�PŢ�UjЃD�&���t=J�^<�N��^�����*���' c�@�����;�z< ��j��.�5�W'���Ч��P�	�z<PX�x)'�x�r\�� y܆y(�Q����?��\ľ�( �it�;�NJj�La�\��ĵldy/d�w������D��dV}�\Ś
���N���;(��_�Y���e��t[�!#%���[�A��7@x�:��"�`�6)��h	�o|n�0�u-?��k/���o�J*�8��,�������#mF�'D�g��$�s�$��oV�R��K�����1�V�n���~�ݧ���ұd�p�"p�m�Wc��Q"#%QAU�|�3$�>X�<�o_��1�.q=I��X.���?����$BL0���D�    ��*�	K�ʋt�ű��擄���|�JwBO̹.�%\�˄~o	-��ۑX*���-^|(����3+^��F݄�C
��(Z��V�~�H�̲&��,�_l�DZ7nz�PJ�H�L1y�����Y8!�Y5�J�Z�*����MG�:|
���7�-�E[HP߽4-�E�hG�Ȫ�o�{c�k�Q������@�L;LFY[pe�YpTy�ȡܖ����K�ncPt㖞 �- UN�J��&���]t�o���_�y�Wh󲾑����@��8P%,"?����G��Y:v�h�5�� �IA���sX�^��[��������-�z����i�dG��͖�����wF7h���*��^�Tj�}k�e��M�DY�SUI[��~��(#�r���)F`vW,14����F��x݆�w�X��s��M�N���[��'F�B��s��>��f��V�!��lR|?f�Ƶ��w�ə��Y�T����>��F�B)���0�$�!. �#JIY~�L�Pt(��p��KҪ(N�@sVE�r�=�W�f>H��5�F������I�P �� S�d7R�uGGe����G>��N��n��V�up���	�4����W�����G��*,�а�1�8{�����D�@����B�[�����q�D{�*�wdSޖWC�Au�	\%Jv����":=N��*�Lc��!Ń�*���]��Ӳ�ǽ8"G��QsbǮm�ˌS΂,�b���2Fk<�  [�ᮘ/'���w�����=M���S����϶��@����O"���{KJ�T�� }$�Y,��u�� 9�C?����y����e��`7�J1ĺ��PP�1sݻ��9UE�g�7!�d�����q�<��L�16��ݿe�Uko2.��_�""ִd��H���&�:,������t"�������}ˎ�����49��ED�|E<:=�9�[%(B���xB��^TG�Y���,W6�m�O5�!�pt�d^�D�Q�T������L0�Z�u�S�F���u�5�r�,E0�N������"\.�ԓ�U��Swg�[)I��j�Rw&�G|`�Ԩ�.B���^�"��:�?M3���qdÝ��,�q<	��>ti���6q��z�۫��z�m!�����Nf.Lu�*��j}���#�V�K|�ʤSKF�\���-S���&��K��;� ���Y��4㘜8��ˡ�����6�@�$'�m("��l�<[&���*c��t�q�Ez�)ފ�E�"��U�vm&���&�ȇI��x�BR��ȸ�8�j�z��m��=�P�NN}k��хw�mƊ
]�_�븋LB��8H����r`]�Y�8	A��0٤�!�<�(�b����zI@�ݞO��*9F-�N�T|���Y����O-�`��!��2e�`�@���p(*W\���?���0"��.ܽy�"��,A���N��MU#\������Ǚ@$���V�6򒖡N�:��	s���V��G�@�t�K��Tb�]!�[H�j!������c����È�ik�b�]muc�e}�,�)���gc!�{S�O��_�b��1"�^�&ȝ�5-t
�9��|�0y��<2�K)�I���B���Ŏ�S%��9P��^d�T�?>��):�A���@���_�9Q.���=�u��Xt���U�hH?��fϋ;��g�b��+�4އl�g-�O�Y�D$�D,%.�^�u�t�x�)�	�)-&wt�5�S�d���"�ڐ~{z�A�d[c!Ul>��/�=mќsٔ�r�z:�G�9c	D��� ��ƿ�^a-��Hhc����W;ч��'��W��#�0��w�>�դ�NÖ�1�L<"���"��+��G3��3Z�Y�!3&���0��!2ڲy˥Q��g̗y?1u����lI�)��Gi�@���!��C����E9��d=D�D�1q`!�H&@��Ι=��m��/N��,}?��-!�ցGN=��^:���G������U��C��W.G_p�*�I�?Z�k�������[�N!�%:(��iL���(Z�?�%��n��%%��$)�{�p�rz��ޭ)�¹E��������#��S9�q�$�nt�q�Ǻ	eS�X�N���Fj� �<��b��P�E�XQ=i�К�b[�R\T��4�^�oy�R�sr�!�����/��E68X�w��&V��Yz��Y^�9�4�	/=a�u�U��V����W�*��i ��:�J�o�)g?h&X��Q�A�ϼ{���U�,p��i�#��z�[���B��yl�wb��7��C��n���� �r��q�����}şE1F^*;J9�Ο;�����R���6���N��7�W�ҟ��t����a�k��SdmP��G��L�'�X6�=,�s�����虬t!$u�J{�_��XWu�ē��,Ιx-���u�%S�q���Iѧԙ�x�z#���\6��$G2
uP�%�����
EW�ǜ����R��[�T�пP�f�'T�1�CLԽ�����4��J��b-�b<��:pZ֨��~t�2�1�&�j����?M��p��;U��ঈn8v��\}����`�k.�����{/�c�����WU�~x5���z�o��n���ߵh�$C�6D�� ,I��cR{-׮d`~Ͳ\~�O��\�m��z��I�IC�����}�k�;Է�e���G�.��ʲ=s**u�&��Ɵz^a\���Ac=�xO+v�N��M8US���hֻw��t��s�M����d�c_喹j��TTv��9�ҟ���+Up���T�j���9�����p��������g۠#��lELZE���|���5:��VQxV����Ӝ�r���$X�J<�G���9a5v�@�e�Rό��2)���(D�ߊ�j��fS½�lδ�+~��ET��e�Q�v��T� �IMO�S���X@�\�8.Pҙg�y�9���I�jMv�V�����͠����Stv�zO �x�,S�F�'�ך��2�r΋	����J���`�A.��L4�ٜ�~�v�?�A<SU��N�#�5y`�f�[�?�B�3=�P�%�8��x�4�z'�"�V��iY�ϳQ�f��3�&�?�*7o�j������n��i�M�+���}��]��G���t��6�܅0]�}�M���$%��O��ɿ=�����U���YV�����k�?��񭠘�(6r���t��6���l�D�s'm����g��t<��`���o�I0/z,fu��*V�N1�>x*����F��IKv�Y����4s���4�8�W���05˷�ŜեX�V�2E!��;�w�y����b��1P�a�b�����W��F�ܦ� ���éT+���>�[9W3��)�~�ҏ9i��`�	��6-�P��B汛���2�H�A�|{*s1[v�Rp�+��rT5�H��4�>'���f-���q#�?��*�\��.T�V�����q4��/��m�q����_��wU�:��sk��!9�n*x!M(K���}4�)�p��!��R��������ۯ��| �.�����R����rD�U����<[����cd!@�<:(�B�#_�B{"��4�T�'��<w��Z�"�]���<���I��k�2�Y�}����F>����5f�X@�m�s2~�����^��,�͐^���9�P5���1���!��ZA�:O�.���.C��C�i/%pXl��?�P.�34��uN�����j<1;��2&d��ЩN�����N���"z�DM�:�ɵx�`�R��������q�u�Kp��ٲI(��9�n�ܑ��_d~E��֩	$P�i��d���u���[����*:����n��v��~iAB�AR������c��^`'��'l�4����c���_�O�8SVb4�~;�,	�e.��/?���,c����'�|#�#f>��fS��wr��v}��((�+��ޚȹX�c����	Cs![Qm	\A�D�{]֡��ƻ(�j�U�ۺ�    ��>}���¨�T�rb��~��
o" 6���p�_�\��e��M����5#�`��rn�'��aa���qD7Í��V\�� ��;e%��ۗO�7�2�&�w9ټ���S�z|�VZ.�?��NU��L�6�B6�pȳ{�s�#u48���l}�`�^u'��q�<�ε�W/�(���冗U��?)����9Fg����ꊜ���Ѻ/fcƹ�XDYԼl�xh�nRe���ȕ/s���f�8X�厽�0��T����ު6S�l�U�
�?���������-U�Ud<3�qsX�xx��d5F��>��r�%Cz"�~L�R֏�pF<"�SQA��[^�Ԧ�JDvWϩi������������{t�����.aM!�l>�~Ñ��&������AbŊ���T��Y�'D�%{��!��o�iϞ�??p������FM7�0XT��g�|�UE��r#��0s�E������i��}�@]����f�5���o����&Qϲ��]'9�75;��o��Tn�Q���ep�Q\!�0s�b�a����Q(�����5�J���wMHj��7A&X�����|,է셆�ލ	�$QS�E�3Y�8�z
�ҽ���:�f�t$�^\�Bm��k���Ē���n
���:ww?�~�9�]8�rbׄ Q}����9�32�&L��8<0_�\67������v�@C��jOE.�#˗w�P�K�mbf�ħ��x���2�Pw 3+_����o�9X�8*Gk�zh^2-��`����'eo?����[,,O'薺�������,`��*0��������0�1�u��4�O���C�k�]����,��Yp5��z���W��T<�C�`�2���w�N�4L
��+��ۗ���IS������㵋)��ML��դĥ�,8}�苩�U�(��t[	�8?�n5qŎa)W�C��^f�]��o3�����1�a��>�h rO����e�R� �-t0;O����℞HW$��#A���[u£κV���p�!���WYBS��W�T�K:�{ܓGPz���Q=�G�8�o�=m֧�2�t9ņ2t�ԃ���5�W`�I������<��B��8	�-�9i���?iI���w{_Ғ��~����S��h=,�4�?B<z��RT6��0�M-�j�ؑ?��ʐ��$��t�^9�R+wrY�՜,˃c��t4��D�Y��NlM����h�~ѱk���������cQ9�a�v@�b�ׯ�6U�Q!rd��U���e�s���y%�n�����u{��#��f���3/G�'�>�����Е)�R2��������d�~�xQ1��Z��V��7s-�V�h��-�9M��S�b�s4-<w������X�x�p�=�D��%P��"�m�@�v���
���'U�բ�F�ʴ�u� 4ĜY�-��&OjBݨ�ЕG��0N���4�clHD(�ץ�_�Te�?-�qFc�����Ꙙ�cS04.�X��3�8۸̦l�=�r���z�!� �m�Z���1G>~ݐ�]*ǣ�V"�PuW�T@>������>������|<1w2��@}��މ�a����}�f�[~y��2��u�V&�!�I;�X��
���h����9���?m��1Y�q eR>���̵���-q�w���Β�����J�ȽSD--p򬵗�}�l:�u��rP��kf���p��l��0��C(*"oO�],� �ѿ)�uqDu����?�X�\������hvʩ4�AF�
�p�(-:~4o�j������4��s�.Xc����	�	�_��lR9PG|Ǚ�$�D��@|�4�%K���-���A��)� �y:�S����J����D����^7g�G*��������+Ğ����Y�q5~����,�����뜹TV�Cee��~}O�.V?��E��A,w��?ӭhJ���q�Ds�+b�=�{f��� wo��o@�c:��m �IC�۷ˀ_��򄲥V� �}wn�6��"�����8@E�׉o)>Е��W�-�Q#�Lu�̷�p�ޫ�.5M{�z���}�@�dZ�p� k���L��ӬW������ߏ�>a��t�	Я-"�,[]����O����Y �ܦ��P:E%T�A�(�?�P�1��&BdF!8��u��ѳgg���F�WZ�L��k6��z,��l��������Z|F~ż<����$��������o���T
%����ݗg�ƃN��Ь'�W<ٵ
y�5�y�/Y�5�Ǥ�;�c���e�ٕdɽ}6���-�l�FG�� `n�������6D��Gq���iO���%?RP#Ĥ����)롰R��ԍď4�:r��$�FBS?�XU4;gr������LCA��ӡY?�N�)��e�w���	mw��S���=w���x���$���dS���\���d�ԕ���Jg	,�I��#�&ב��Y��4dS'���_ƠJ� {�F%G��Eʒ5H2��M:x��r`q�J$���R#h���lU��L8��	3�0����@�M��[,r`k9[ݗ;���&�	�gǝ��fpt���n'n1صJ���xx�Bs�}hP�zx޿�΢�܏lO���ygdq��xz�J�7o��B|��������(UԨ=�3DY�+�om�J`�-sS����^�	{�X��*��qq"����Xf��4W�L����N��8��q��AG�f�k��!�u��d�ns�eL��!�i5xx�!�V��`&�Z��(�X+�GJ�6@�3�*�E��RYrVI2I�4$����Kۛ�$*rtH���I�Pl݀hh�w�/C]�b�-N��̤o��.r��J���[��v��BUj,�~�/ʴu+ACP�tJedEc�O��(|�'gIԼ}�Qz�x��N���PLר� �mޗm;���' �Tn܎W�km�2Oڿ��6�$\/${xj�-öv�@��N��7��/�z2�qBH�,Ω"��w�^#�4��\�-�譴ϚR���U�~�v��d�^I_��?d�~�����UYf��4�Hi��\/2���!��ab(񎼂ʽ�͜���r?����b���p@�[��Έ�%�����ʗ���Sf��ft�J�H餚{4��2����ӧh�z�A����t�F$�K�<}V�sc���j���팎rVs���th�� 2'��:_P
w�Mrf[eU�]0;q�y�j�ʿթ����Caq�q �[�0���:������{�da�4��'v��g���G��ϙ�Lt��ڼ�;���1S��_(T#Nڂ�!l�쓥\e�kW��㴓�,�a�Ub31��
=�^�w.����g��6��@�V_]?��&�V5ٗ��=�������@Y�*����S��haWA�4n=<z��V���r�=2��DE��|F�;T��Ī�oT�t�O)�&��{L�>�`1�^�3?���
�yެ�kҟ�W0����q���!+�g��Kׄ�C���đ����6��Y�����խ��3�$v֊����TN�k�P� b|��"܏S9�L���4��4��Wz�ȋ��`��$�?����<E��ЙG�O�Zx�����<�����K'�)�vFzo1���2���{�a�B ���w��tPp^�-'��UM��n_n1A9��/��XJ����T̧�����M'��t)B��L|n�%��I�vPg{���VN�>3O���Q4�p���)��������քߩ,^�>���$R���K�~���:��3k�>�L�Q
Qh��@�"��x�(͎""
����X�]�"���mh�X�[{KE�"m[�ʉ�ËNd�%�ex�^�WrZ���R�x����_20�}��8Ea&8�&�t�2>��`��Y�?�(�D`y�	ޓy�
B�bz
S-Ǣ��%VZ�CCY���e�dӰ��AաO"�Y��ek&J0;5�X2q�O���+�'#��<���ciA$zܺ�^�*x�5g	cSR�	{��9?����/���޻��Ͱ^� ���2��c��i���O̍x ��m�3��m    :M����h�;Q�'�p�Xk���)�e�L&nw��wI9��0�	T��!����{~�S���seB	�?n�{wΝމ6)�]eèn1;�w�S�s�|�uRƋ��KZ\�619��3	���ǳq�pB��#E.vu}���r�)R4�J�DT�dϔ�kJ�j3*/ٜJ��R~Yk�����X�8%T�&N-��*P���6hL�_Rf�^<��Mv�t&ً#8W��u{�\�q��;�
f?e�1򐭅`��۠��qj���#��Jbo�-:R����1:�m����������Of۱��ڸ��u �����#qM��&FV\�
V�R׮����hX�" ����Kk�"}�D>�_��C�ܛ�'I���@���Zr���(,�א	<�$��b ��}yhzy�XX3�4���a�'�N��ҧ��/|"'��M���}I�!��JSw�pȚd\\���oҹ ���zv��G�Dt�~���4j}�eG�  {�,rV���$ �R,�;¢6����f�NL}����э&�2.(I��Ã?jH�fZ�a�Y#�r����6G`�oɸ�o��3O��7y����� �+�3����a|~�#U�TS1BT�������!L�W6}���ز���e$|,8>O_-���
�Q�g�0ZbΨ��C	�j���?�����Fe��+Ⱥ�.aG�}̥.;Y0���$�Lž�ӷ��\��!���ݩ����e?N#�1���4&�Y m#%� �l��xM�g,��@��β&�e���3�ު{>�n.���A�C���-�y�ll7��DTE��f�/����� �L���
t�T����˧y�2�C��\��3���2A���̿*����*��}il�݃����Ov$b]@7%��� �ꮠl*�P��b�d�$W<���Yrte���S��j�8�KW�P�K" �Y��1��4�"����/t�ً��}����,�pE��K:�!�{V/	_Y����	)V���s��v�NzkW\�>�7���w!%o�����Oja)��0,�5΢?�����9�`�Ky0U+��eu��ȸ�*����$��"���xMax8<D��^��&kv���Sˋ��Bϓ�l��T�>`�b��݇Ǒ�,q����t�r��nH�𽑜�)ݲ�M;�?.�6ʂ>80/���j'X۠��v�c�!�`4�C�pK���f���7MP����?*��u��x���|J�	�!�C2�Xg��>���Jn�N|+t<Dd�΂$�L�Ɵ����p�73׻�.ˑ���*�Q�^�
uf�_bk�MH�T}���������c���能d_gi���X�Y-�.]����0ڣc1~����wvr��:��c��2j�2���	����˙O�Q����oh�S̈e�-G8&����\�}����W��bf�-�d�.��$����	�?������T~a^S��Es���J����7w�����~Êcğ�&Ņ�l�M1��aNz�l)��2,`�Yi���l(��T]��/�y?��gp�Bb"n<J��E�L*{��,�=���o�@Ҡ���j9���c�]c�����ⱝ����+G\\Ϧ�P�eV��^�4��Io~�"�p���!���;}���!�C�>�d�5,.6IN6��mes�E��8�.��qڳ�O9my�U�_�MoՒў�����6S��+����b�d�g��ХTt�r�H�LJ'Z�{�m�v�MB<F5�SEu^I�L0O��T�1��*9�q�9�Eu����Q�l�� 18��d|�}쭴��Z��BhtGfN��9���=���g��������d �h/X�=��C��.tLe!����{��bR�4$�N���
�ȶ���§{�{c��~q��9��&�o�/B��-	���_wҩ�@\��cF��D��Ѡ��=lP�`�CV�d���OzT"�{�����E�&�=�(����ܸ8V��e�V��ě�ӗv;"[r�1�]U�%�nk:Zw^~y�+ǎ?��<�*%[nB�D�e7\�]�D�w$��2��>�!����I�8T�&��
'9H�	9qI���:F
T��Y�ӫh�S�q\���a�t����.�
H�:���w_���m�v/�'D ��^I>�A�[�Nr��tב�o!����)Y$?(\/�ӍrZ�0�2�e�H akq��h�����vEk�'������FaS��Ko�[�a%�"���A�<�&�vF"��Gc%{= B�ny��:��>U��L�*S���E>f�wֈ�d�~p�?�����=|�үyYf��D P��7K?��TD��k��Mҝ��׍Ո���1)�hq�F�b��%R*�/�b�lgh'���\����-��t���nEiAV!=JCC+�cG����?���d��qr��̇�!3#:�$�����]'�\Dҷ����*�Y9�q{�A]岜U��M�L� ���/w�SU�_>���`��#�fm �l�p�Toe�.���x��h7t"��I�*"~5`�D�2��Z�#�}os;%I;|0��*��O��ؑ� ���&�������~1�i1�x�Di�fZR+�c"v̢����n]�ܮ1�馵��a�'����wui��������.N���GEu��l���*��,[Ҫ*e�d���f:4���G��l�]$�K0�L��NPB����L@��5�-4���ȿ>�l�4@�;1�4[������T=$�0S|���4�n^���1zV+��x���.�e<E�Xm�1�{)��M~�<W�<�#B�9$"�s��3w8v4��ގ��yH!#�ߘ��ZL��O�9��X�d̶J�4:\��ZR��r��8�Ѻ6Ξ�e0��<��8���U_��~G��q��?�z�'c��ey��\ha���W�CE"�ǄS� gZ΄rrVH%O�S	�#��h��-���ΉL���	r�c����݋�}��H�\���-ĿѢ�&/��$��j'�b��v.�e�z]�O���eq��1'x{1 �>�N�����2L�qg|�����Y�ñO�(*��/\z_6���b,c����>>�"���8iը���j�/U��(R�HcUK�*6�+��Ġ ���Ti�C#{5l�{ƨ�{:�(�(I^�O4<|@�Y2��\�}��C"TsH����-oy�0����YO���M���}Q;yx�,�	9a���\cQ�Jo���0�R��*� x��נt��gE�vX�H��P�7�s���.��xs������ILR⋰q�X�+^�"��A�V�?�ʗ����c���N�_1{���,9�Wb��)�}T�l�cФ}+��d}w�蟬�N�v"%�/[w�����T�04�@�<G)�t���p�vB+���U)���:_�4���ƌ�u|��8����uC���È*�o_ȍEy�����0:p�թ���]P�	����uh_kH&�4>�>�z'-�l$�0+��y~��	��0�&}=�H�뎣��ܘ�m��'%{kW����a�I��V �M����d잛(A��0H�2���P�}�;�vsT��cՈ��8��7�X�8�	�>���r�ɧ���������c�7�ΤңD+�ز�1��I*@���S�;���eOK�t�"� 0#�'�sgkP콿�:�#�����I���#��2uE�������ڧhd��#:�h}~>D�
�)�
�.�!c�0ГR�R�d2�T;��٬xK���dyv����䃈L{�!�O��c� �T)W��8ew2��53��Ru��-�0	u�ҙhm�P�y	�G�T7t���W�CZ6o)��E��l
M?oM5+��<��_މ?K�����1! 'F�P�\�[��ي�G���m	��G1�"��7+u��6z�q�]�h�������ӽ�zڨ����73˥��3�Ѻu<�K�i�a��˻�n��� n��Q�������/=��3�2trQ]�6}��u�T�
vK%�C��z��IZ;���|h���s�&T>����,���o�L�r�0���    ���ٯ�xW �÷1�fL΀���
�y����~����i��(�����l�F8��� s�~BW�}�%�(����:
��w�|d��s^{�#O^�����iMC�/A�_�I��J���>m�+��gR��)��Ȧ0t��<J�x���g�	cuи��SS�p:m��$3��0����E����i��$�����گ?L�6.�9�ofݖ�	
U�YI�L�5�g�{��o�O��9�ߜ?X]H�,��d[�� 7̡����(��m�uƛ�Թƈ	�1&Ba��%���<=��v�:����e��U/��/����@��j^��V��ϙk4O'��C�h�I4F�=�pq�����.YvH□��˫����e H'�D4�Te�|�Tߛ%�h����D��
3�W���tг�T\�WK�x���'�h9g&a"�bd�G�g���0�P� ��+Gsu�*۱8�d��{��w̟����d�C�:��{��������^kifx���H
/8�����Y�El����P��\�kyn�9�KN�Z�Vx����'��X �h��2�_�в� e�[f�Ry��$����yQ� ��Ą�=�n�4�ҩ+��׀��a���:g�@'(���A��t��.~���F�*������W��X`�7,��_����}v &!�m�0����y�+��K�zSH��J�I0�s=_���aP�5�K�L�t�?sY��K:u�|��n�=�� ��H�`, ?��э[JҌ�	��NUr,.[��N�;XD��'B5�(d����I���y���oiWf�Tf����, -:Αj-G�]���E Okq3�&}�(s�w+*�D��T.z����ʊCd�MBS���B6&��t���Z+���#J��J<��>Y�b��-6RZ�<��á�9���	���*t�E�ρ"I����1�B�/���:�r+ *��O���𖹿&��B�WL�ԡ�|��H�m*7Y�r�"�Xވ�}�x��+ʎ��{U��+T��MN�'-�WsC�'��`�?f��W���-��J��:�D�D���q�S��^�_U7�I�\<���qL�6q)�Í�-�����yפ�2ŘJ�IYs��W�ܔ�يb�-�����Z�&�ߺ	�_�t���FZ'}��cQ���z'��nP���B�6�9-���8L'����@�?�_��{ɢi�g!�󄵥�Sg
�H�֤q6�G��c�y�k�%�o&�~����D(׍��LR�P!EP	��2���R���hF�2�]��6�Z�˝�l�g�̍D�"���w�sh�o�4��u�D��I�N��&%�sZ��O�}jELZ�Hi��->rB]M\���KU��[+�J%��
�O_����&��~p���*$���ba����Q�+���6�a4i�Ad!�䲫�bjn�hs�N_��!S �m��9Lg����ߑ�c�8�bV-�|+�i#�-Q�ū<�6՜��҇�F"�/1r�d�s1)Jc�Rosj�>����Z�qE���
��g{N����x�m獺]�p�0�JsͶU���Q�����p(�c_	�k��j~��C}8٘f���߈��n���3�N:��J���`K�.���y���@�+ќ,�k����)ٺ
)�t-�LN�����+���y�a5�l�Hq�N`�pR�F$�#c���$N �$g���NpwV���''!�B�ʷ>���J;�d�ѳ���� ��P;�_�',lLX��U�Ο6���\�Q��no�� ��4>v+󈶊�v&Nl�>Ď?�7@����mE��>7�jt�e��-R4�����z�Q�n_���P�6�A�ɭ䌔�d|�T���:��k^�<_!܆%��#���)����?�q'mnc�Θ	�՗����[��D�t�V��U:����p,����Y ����U��g���$��,w�l�&i��m�5gy�耜����H��ޙ��
�.p�5C@i73譭|D��.}L=Nq(%�oVl�p���U�:U �X��$`�}Ǧ2��PU��O���mm��24���4�VA,�"���%	��u�H��x�pMi��5�b5��7��Ӟ��{ig+��Y+��ۣ���}�oeVi=�^.�Ѷ��y����6� ���}3��v2j/�=�`�����Ě��ψ�8���ɠڶC��94�j�ϓC_:�tک�h�@�<԰Hj�K�LBY�-l��Q�T��A�UR��Vzv��i��)��j������N�/��&��g'H59A�[�ϑY�.�\?�A��	�C�"� $J�p�$h�!'���+��v-2�����9S�:|d;Ov҇�~Q�pM���oĕ�%�0�QV|D�m�%ֺGZ���9Ŷl��_m�к^�nI����|�΍�L�'��X,��l{���L*����G?D٫��+;r��E�z"m���{��0��N�O�d��ȝ�-��ue��#Iq�9Rʤɤ����^x��t���Vo��g_J��JVm���O}�aU��[J��(r�`�la����R<���_�S�.3��a��؍�ٸ�&�K�L^h��J<�>�epK�DQ?p�
Lu=}b�r/��#�% �38��a��f�W�Bڣ���N�*X�sR#r �3a&�f��(�%d���F�#[~J�������&�gc���OWu���0hl^���X ��	��s�bR�����61�+PKkq�E�r���ٟ�+Z�|.��ϼ�R��ˤZ����lLV䞁����c��hVŇ��c\9���<�;�q���6�5N�����������z�h}n�(BZ��C2�ǚGe�?*�{,C}�챈(9�t��G���:��"gS���,s��8��T������l�ɓ�u `kvWo��F��Q�m�, ������ޛ��D��(�ZA��\gUO���x�7�~��U��\$��Uo~�>X	�U�V̺f��}A~BÒ"d�S���J��a��w���t�4��Δ�v�9���É�ږ{��p�i9W�1p
\dȡ��1�b>��G�n�-漕�m�D䊼Z���S�@M��[T�r��K�6�2��0!�׈�BoA�H���Pd�"OA���[��)��+���?pب��9䕡�"U�oa\'0�ޜ�:��>mް�,�	`��r�U�9���K����v���_	���
���Ʒ�'*��t:���'
C_�em�P��3l�7,�O�X�l��X���r�	� �)z���o9\0eY�	�{�2l7K�)D{oP�<�;��}���-��`j�:S�&o�/_��' ˏ'��4�tm��Ɏ�Ar �b�+�en����A��-!��ǘH�N�~O9>|�� |kO���7U��O�T�W����--�t�<��;qg�4� z� ����o]������p��w�����̈́�Z�f� -v�r!��"�,q{�ioKNSd���ᶹ������3���p�V٨��'&�f?=)P�v�W�RY�����c�Iu�5Fcj#����(K� Oh�����a)fN-AnP�Z��»�8:v�JB~1�13���oG���
q�3�J�M_����*?t[{��w:�0\A�'~��}������k�J�a��h��Ɔҵʐ��	,��DP4�� �_��ԉ]}!�R�cș�j�m���d�[�&4�I�)�u�׎�74�����nT⋌�[ր2?I�>�ѫe�����uN��V/��)������ڛ`i��G鰩����o� �,E�MD�XZ�I7�'��L�^ ����9.wjr�I��y3��r�s\�*�1U��5:a��o\O/o�M�^g������/[�+�ȩR�θ�^���ڤ_�ƽ����7��ұ����y9Y(�h��$�������ˢ3J�H��������jq�a�	��Y��t�?U�le�lpL����=�n�>��練�����=��Ŕ�5��W4'$a��]�R����l֌�l�Խ�������xѴ�,
q��s6)�.gM"����煵:�    ��\����o�=P)��i)e��1t)��?.1���%��"{m��`��;���2����l���BnV{��[s�����%t8F���=}��B�]~�ٮ}�O:ٙ�D}�|M���s��O?�	z ��M�V:(ҦW���ѡ�t9Z�B��ٚ��&t�u!���Y��1��5�J2��O��!"��q.��1���Ex*y�c%�r�D�`h9"L�(d(���%b���;�I/���d���_,�1]��m�ܮ�;����r��2����֚�� ܠ����%i~d�)�<ZX�r�p����{�]�L�o	.�b4d���g Z��H!(w�,i*�%�i��Ak�lV�J?tw~��hV�nG��r�F��ћ��Y �a����)xg�%�p�$�3�������u_���vT�<�	U:���W��Y*}>\t���w�rĉtÐ"4��(�s���C�9�%z�������"B�b)���!�N���#[�C����L3^��j�e�[�#�r�^ѩ�����ԖdK
s�vD����B��I�c0�bf�&	r��j�Mc�yVU] ���[W�I����Y!� o��Xi���\���5�E��T��}� t�)M#��cs#F��mۛ�TT���i���[I�1��񱑀����nm^��U��Bv�V6%:��eRL��«P�
��V���#f�X/�<L�kh0�˻�kd�)~��Z��si�O)� ��2�o�X��jArGN����I p"�531<�-�,���jON1LV�.x ޶�u�5����Gg�Q�,F�Z8gr ���3~�ys۲1�0O՚/����h�ZYdcE��;�?9��"�^��AtT��FhU��|$��ېw�
�
'+\�8��{��HvG�"�%��K�<�A�4��fUK��̊Ȥ�N��)�b>��4�-DR���f	��#{ǲ�&fuy���d��9���HSpǜ����D��2;-�aZ�9f��=d�+i��NB�����-}��d��x��+��0���cx�X��BEmҕ'i7�i��=��m����T�j��pK�n��4�Duc)�EX�u�$^y$��~w��x+�����P���9�T������o���R���Bk�ʃ!��Rz�)����g��齳��f3)����:��`�V��y%��.Է;ߊ嬘Cwʲ4���UK����L�6��K�NΑ�p��i��ǻ�� �,1�½Sb�˟���z1mYa=�*�gY|T鵓�:b)�l��ҁ���ł8��g�I�����*����������'��"�q�k�'��Q�N$ގ5�%^6�Q�1�y��l� �W%[Y�II㍧\N�3�B�w����x��d�o��3@�'ĔQ��6��Lt7tB����E]���&�/������31��w�/���d4i�GQ��H��k�Л�g��`�d��"ψqN����j��(�Y��Ni&���6�F���Ԏ�����GfO|�[����~�-`q�e�ϣ��!-`�Ll��5����nn�OZ�0��bV��
f@T�-q��Q�5�_һfK<����<�k,�93H�3Y
u/��� Wbciz�h#8frIR��騢X�GE�:N��k��'�k����G�T��Ũr�e}xZ;���D����
�F� ���8کFO���̢!�U�����,Du�
���-,���x���S�����)��Y��:�9��3������ATUelC��G��ʥ��Yb�U�dJ�+�����s�D�:|'r���yK��X+����qQ�BC�8W�:i�>�b S(.�c��)�t�� �P8����3xCZ�}ݼ@�ў8�rf���bZ�/��^�tDݽק#�S�$��]N�m���x�/�X�Y�"[Đ����]���D�|Q�DXg��ؚ��3�2�&���h�B�͗?J�%g]d��O�.�Ḏz�w�/00F��BU%�D4��1����f�:%n�o7zz�?�ow����3V7o\�>��[�s�����@ɋ+��2�nE���7���Z���{씢�[7�ˈD��/�
hf猸�-�1w;B�u��4��� ��9����&���� �w-H�N\�;g�O��g?g��ȉIp��+�ou�KQ��앵����~L=)˻�ZeL
�-�j~;�W�O��H���.�6��~���G�²m��e��Q�9ȵ�ޞ8�^|�!�$$�̓Xh3cc�@h�e�{ �_���İ�_�^A��[*�VL���֨��*���ɓ�_�;�-��q8��3IO�����u��7l
'��jq(��c��)�8�8����Z:J#^H^�������T�F�ah�śK�gN�)�e_`K������h�K�Ց</.fqwA"� p(Ǌ%��]��g�E:"�
�����D1F��c1�r8�q����[��M4��k�`)�s��;� ��%����f�w�[	Qn9享�;BWG a3QZ�mg�&<1�'�nSB�+N���(E&Q�n�c��KV��qw�l�|�i���C�[��K�	��hT�����(�:$�coP���߯$^��cf=��+�,�i!z"��-A��O�?�
��0S8:_�4�D}vrצ���J�<K��\Z�'��j�����7)�a��D�m�ƟMR�>�XK�U�\!�#�x?�,7Q�5��@4au����,ʓ߀�*����(N3��)ew������:[;3f��'GΦ��{��L�����ay�w��+i/TQ��[4�8�k�R/|����#� P���u���G�P`q�Ŵ�kJ�*j�j<b��p�Z��92L�Mgc�n<m�3ԋ�����]1�˰�z��تż���@�l�>����k�GG7�5),0$���������oq�O�ON�[�^U�rY�?��Y�$�
#�m��n�MP)P�	�ntǷ.�ZX�>��^!�R y�q��6FӮ}�]Uss0��+ɓ&1��0��42Uֈo4�������t`׃W���`%+$���R����i"W.Qp|uX�l����[����o޶ў	�n�j��c ��f#g��җ��򡶮�+�l���y�m0�z�]�N?���{d�!��z��:���i9biݕfL4#c�0����o]����i�N��'�Q��tT	Q)C��U>e�ƫ�-U�=eS�JZ�q/o����P4<�y~�<+M�a��H
���\�6��m����?�1*X3�Dwęa�����y���Є�YE2.����}�Υ��}z�-��s�����:Y��rix���B��+͎�ez�?k����G�2������Cn����i8�B#��∨��J��b$��	/��y�S[�1���l��jg7揑�eYo�9R�P��k�����f�Ʃ�+�*��Ї���Yʵ�ZRT9�Zf�5�n�K�ʕ"�ĥ�V���7�͢�I[��Eӿ:y�Y�)�")�p0��m�Me#���IGy���- �wҿ=�er�}Y��Ob���х��
ۧ��a}w�"�<���G9	A�"%�!�g�sl�\����7,_;٤��<����(b�5�]]���Ft���.���zaB�|��J��Q@L���-�����Nnp6ꪛ�Ȑ$�gi�[��4�-��3���{
y%m�Sxd�}���Q��,T�f悀�iٔV�l*�dL�-����^՟y��;]a�x��=�]	�m���9W_K�v~?��T�lj��T��;Y!�1��1�@����Lᆤ��zH|Prq�L�A���� E����񉊜�( �|�`�hǬ"�da��1�XQ�x�B��҇Go�:h�s�9�#�_*�{��c�Ӻk����m��V�ݕ�i
*v:��8��e�-)l*�+D�I�C��i�Is�s��I��v_z��Gc�ԓ�>�΁�Feխ���x�;C��N&�zF��"td�5ƚ����8�Zß��{cn���籏E�ͨ��~�����>�>f�R�q�>V�'2ͮ;�&�N���()�>r��t�9�<oӺ�D�q�*\������n(qU}��uB�p��_~�JR6��w,tQ�� �  :�y���̒�Bmp��/���t.TY���!�����RF�=�&�M�%�a��&jǯ�
��w}�$�#ܻJ_�h�p�5���.��ɦ|FW�{k�������_����~�߯�����~��t�+}��/o��׫7~��ڽp�N}��̓;�_/=����n_��������/���{��;Wo����g>��ߜ�o����y��|��V��f[�ϖoo���/o�m����^�~���n�m��m��O/�T߾�����x���Կ��?ܼޟ��㉟o���o�����뉟�6'~~p燛7��*f'n_�����XKo�F>ӿ��E����P @�czh�S��iˤ!RI� ����-�H*�l\v/�r���o��vV�
>h��;�q�_N���I�=UW_ �U�ĒH�n����mw�=����/Ey�"m��#�^v������:�Gu���ˢ'u�����u��:
�b>����&��C[ǵ��xp�����X�����ȿ�v���^���&�; c~ B�Y7e��u�A�n*��������Ž���J�����m���׶u�\΁��ɭŷME"�H���j`��v_F�i	�u����@�M<8�B�m��i������f�n��r��ҳ2�<4]3���7��.1�@�x�ZP����%�)����zֱ���[� �t��B$�mwV�W�vD����:�tq=� �s��.3�2Xg�e6yH��f���Eo�Lg �`&�֝���*�>��e��� +�q�A����3�|w�`�9� n����� �@?~;�/��~�/��aqx[\��Ր:�+uӜި��o{�>H儒KBW��1� j$�\�C*޽��ͻw�`U��!Nλ�)��f��ޟ��*����J\gt\抐ۼ��^5P��\�k`x��2(l��0��h�eO���)Ĕ��sk��A �g�D*H����s\)l��;���C����m�`c�Y�CЁ�t" ���"�X㔘�I�)�+�u��0F�^�& [d$U�����%c7j��E�Z�	�7�\U�
.ͣ W��`ף�E!R��Ӏp
��)d��IA�IVg'd���JpL���g  w@`>^�`ǥ�s�@y�G�b������S���Y��P����0�"#����TK�E4�x�rhG$�BY坖0"L�˂���=N �
�]4D��ׅg�+�<RKı���1r<QصLr�N�^�1��bL�v��9�JF��� )�EAy���"�K\J؎�4�)�Lx����+/K n����¸�5#�������e�P�H��& f�T 7�G�\���m4�	�`R0�	�N�p�(a�@��eLMH��9֕��G?0�"�3P�; #Oo0�x�t@q(�k,2��|���i�3QI	����^��!C0�)aN��!?�A*E
�4�SJA�N\���8`O�w�`6N����&>+G��S8Yb �,�4�̹�a�>0��b�sЀ[ �{ /���� ��h�\���g�Y&i �;Ƚ�x7�$ip�����"*�rE
��@���C�9W:e ��ȿ⁁lW%�Cl�`�z@FZn8V�:��z��H�$Ī��K�MF�H8�=0���3�3 �B=q�z$��y��Ș�!DK�>L�<���L<��/N}����Shi%l�Ef��Ed�ȑ #���x��A\Ω��]�W���puW��joo�O\�      �   n  x���[n� E���T;�Et��	�6	f,���bǑ�v����̽\K��`�p������z1�0�-y�+]�<B-4�T�tM|����f����']�iND��Q�֔}�	S��g��^�Ch�̀p|���9��_TR2�aZ����d���Td�je�P#އb�@m���"Mn$���ξ����.�tK�<h�3.G@r�M;Aq�-3��,{���� ��8ߖT-�����y�����F�]�I�_`'�3��m�	�&��]�"a�<jP�7��)�s<�M����'{u���H�CI	���M���j�Qv��n�$�q�Z�'P���U�1������ۑ��v�؀���l�ŧ��� � �-��      �   �  x����r�8�������q��w�7�*�[�<r��߆ �0"�ܐ
�O���o5�P�n��0��l@a�:78�"��?����	��G���w������D{��V/��Dw�j˴�3Z-4z0�p���8#ry����6�`���pu}�|7����U��;ï�4�Q�']hc{5����I��D�4]�M��З)1)U��Қ~Э?;�plw�$��L��5��
4WNO�+c*�(Y0*a�e;Ϧu�|�imC�A_mߛ�݉O2&�0JDYLӝ�+Ho��q��?��%�R�I�a��������h����k��x�tY}��-Sj9W�S�b�qR:&yx?]�j|���������'ם����Y��U�8�7W�}�5�*��Q���IƠ�����'-9#�c�ȕCWΤCS�����wuQ������uh�3���ڶH���c�b22�a����c,5�L�q�S�pxG3��T��Fvh,�*@��"�B��� Bwp|�A�[��b����>Cu�O�Qr�p�i�QB4R�Թ 7�'-���ǧ�%)�EB�ы�2Nf8��Ɗ�w'�,���%Ї0�ٝB��h0"wq�q�o\=��	����oe"��%��YC}$^�il(�WQ��Hwl2��%`5��`�b���?6"�c�+�Cq洈#Z�.��	������t���Ҧ4p�X5Mw���	�hrs�(�h:�?�c�]��Z_?�f5ag[[j��x�7ݱ��6n�[o��J�q˹V�M�cZ`pW��w��RA/�譓���v�;ײ#����í�2���,���5��맗�O.K��)�=]b^�.����RFd��!���R7bG'XL!ۚ)�9���Ň'ʼ
�45���2�ȁ�dTÎF��`|�ح�2l��/�ilW�J"�ܭ�2��D�ڏ0;�C�e{��(c��y��N%%�2J�mM���k.�6�u��F�5�f��Y��c�}f���o�~��i���y4�q��ȏ0e"T�$�;X��G�)F�Zf��%���ѡ�˔}w�b%қ�<#����OËi�T�������Ӯ�W�I����,�p� '�U�g�̗̓��Dɉ�N��$-/�N�>�Y���<��ȧ�*��+���B�F��Իũ�G8+��w�^�	�:v��� >��Ʒ��Љˣ��h6.����o������'�ND9����=><<���S           x���n�0  ���{_0m��X-�˪�YB���
~���>+0��l�J-g@�%�����g��>V�;G7���բ�"�Qm��v��@7^�!a�¸�|�>�b�s.��� �u3���"D�����=��2������.Up��]���5�M��@�����Mc�w�fa���D]���6��	��6��/R�Y��KO�c�&�=g9��e�iJ����I|�W*���Є�qs�H���-�k��D��H��Ȅ�����t��/���V� �%8^�            x������ � �            x������ � �     
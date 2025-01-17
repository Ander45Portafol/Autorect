PGDMP     "    '    	            {            autorect    15.1    15.1 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    74850    autorect    DATABASE     �   CREATE DATABASE autorect WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_El Salvador.1252';
    DROP DATABASE autorect;
                postgres    false            �            1259    74851 
   categorias    TABLE     �   CREATE TABLE public.categorias (
    id_categoria integer NOT NULL,
    nombre_categoria character varying(70) NOT NULL,
    imagen_categoria character varying(50),
    descripcion_categoria character varying(200)
);
    DROP TABLE public.categorias;
       public         heap    postgres    false            �            1259    74854    categorias_id_categoria_seq    SEQUENCE     �   CREATE SEQUENCE public.categorias_id_categoria_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.categorias_id_categoria_seq;
       public          postgres    false    214            �           0    0    categorias_id_categoria_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.categorias_id_categoria_seq OWNED BY public.categorias.id_categoria;
          public          postgres    false    215            �            1259    74855    clientes    TABLE     �  CREATE TABLE public.clientes (
    id_cliente integer NOT NULL,
    nombre_cliente character varying(50) NOT NULL,
    apellido_cliente character varying(50) NOT NULL,
    dui_cliente character varying(10) NOT NULL,
    correo_cliente character varying(100) NOT NULL,
    telefono_cliente character varying(9) NOT NULL,
    direccion_cliente character varying(200) NOT NULL,
    usuario_cliente character varying(30) NOT NULL,
    clave_cliente character varying(200) NOT NULL,
    imagen_cliente character varying(50),
    estado_cliente boolean DEFAULT true NOT NULL,
    codigo_membresia character varying(8),
    id_tipo_membresia integer
);
    DROP TABLE public.clientes;
       public         heap    postgres    false            �            1259    74861    clientes_id_cliente_seq    SEQUENCE     �   CREATE SEQUENCE public.clientes_id_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.clientes_id_cliente_seq;
       public          postgres    false    216            �           0    0    clientes_id_cliente_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.clientes_id_cliente_seq OWNED BY public.clientes.id_cliente;
          public          postgres    false    217            �            1259    74862    informacion_contactos    TABLE     .  CREATE TABLE public.informacion_contactos (
    id_informacion_contacto integer NOT NULL,
    correo_contactante character varying(100) NOT NULL,
    mensaje character varying(500) NOT NULL,
    fecha date NOT NULL,
    estado_contacto boolean DEFAULT true NOT NULL,
    id_cliente integer NOT NULL
);
 )   DROP TABLE public.informacion_contactos;
       public         heap    postgres    false            �            1259    74868    contactos_id_contacto_seq    SEQUENCE     �   CREATE SEQUENCE public.contactos_id_contacto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.contactos_id_contacto_seq;
       public          postgres    false    218            �           0    0    contactos_id_contacto_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.contactos_id_contacto_seq OWNED BY public.informacion_contactos.id_informacion_contacto;
          public          postgres    false    219            �            1259    74869    detalles_pedidos    TABLE     �   CREATE TABLE public.detalles_pedidos (
    id_detalle_pedido integer NOT NULL,
    cantidad_producto integer NOT NULL,
    precio_producto numeric(5,2) NOT NULL,
    id_pedido integer NOT NULL,
    id_producto integer NOT NULL
);
 $   DROP TABLE public.detalles_pedidos;
       public         heap    postgres    false            �            1259    74872 %   detalle_pedidos_id_detalle_pedido_seq    SEQUENCE     �   CREATE SEQUENCE public.detalle_pedidos_id_detalle_pedido_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.detalle_pedidos_id_detalle_pedido_seq;
       public          postgres    false    220            �           0    0 %   detalle_pedidos_id_detalle_pedido_seq    SEQUENCE OWNED BY     p   ALTER SEQUENCE public.detalle_pedidos_id_detalle_pedido_seq OWNED BY public.detalles_pedidos.id_detalle_pedido;
          public          postgres    false    221            �            1259    74873 	   empleados    TABLE       CREATE TABLE public.empleados (
    id_empleado integer NOT NULL,
    nombre_empleado character varying(50) NOT NULL,
    apellido_empleado character varying(50) NOT NULL,
    dui_empleado character varying(10) NOT NULL,
    correo_empleado character varying(100) NOT NULL,
    telefono_empleado character varying(9) NOT NULL,
    nacimiento_empleado date NOT NULL,
    direccion_empleado character varying(200) NOT NULL,
    estado_empleado boolean DEFAULT true NOT NULL,
    id_tipo_empleado integer NOT NULL
);
    DROP TABLE public.empleados;
       public         heap    postgres    false            �            1259    74877    empleados_id_empleado_seq    SEQUENCE     �   CREATE SEQUENCE public.empleados_id_empleado_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.empleados_id_empleado_seq;
       public          postgres    false    222            �           0    0    empleados_id_empleado_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.empleados_id_empleado_seq OWNED BY public.empleados.id_empleado;
          public          postgres    false    223            �            1259    74878    estados_pedidos    TABLE     �   CREATE TABLE public.estados_pedidos (
    id_estado_pedido integer NOT NULL,
    estado_pedido character varying(30) NOT NULL
);
 #   DROP TABLE public.estados_pedidos;
       public         heap    postgres    false            �            1259    74881 #   estado_pedidos_id_estado_pedido_seq    SEQUENCE     �   CREATE SEQUENCE public.estado_pedidos_id_estado_pedido_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.estado_pedidos_id_estado_pedido_seq;
       public          postgres    false    224            �           0    0 #   estado_pedidos_id_estado_pedido_seq    SEQUENCE OWNED BY     l   ALTER SEQUENCE public.estado_pedidos_id_estado_pedido_seq OWNED BY public.estados_pedidos.id_estado_pedido;
          public          postgres    false    225            �            1259    74882    estados_productos    TABLE     �   CREATE TABLE public.estados_productos (
    id_estado_producto integer NOT NULL,
    estado_producto character varying(30) NOT NULL
);
 %   DROP TABLE public.estados_productos;
       public         heap    postgres    false            �            1259    74885 '   estado_productos_id_estado_producto_seq    SEQUENCE     �   CREATE SEQUENCE public.estado_productos_id_estado_producto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.estado_productos_id_estado_producto_seq;
       public          postgres    false    226            �           0    0 '   estado_productos_id_estado_producto_seq    SEQUENCE OWNED BY     t   ALTER SEQUENCE public.estado_productos_id_estado_producto_seq OWNED BY public.estados_productos.id_estado_producto;
          public          postgres    false    227            �            1259    74886    idiomas    TABLE     �   CREATE TABLE public.idiomas (
    id_idioma integer NOT NULL,
    codigo_idioma character varying(2) NOT NULL,
    idioma character varying(50) NOT NULL
);
    DROP TABLE public.idiomas;
       public         heap    postgres    false            �            1259    74889    idiomas_id_idioma_seq    SEQUENCE     �   CREATE SEQUENCE public.idiomas_id_idioma_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.idiomas_id_idioma_seq;
       public          postgres    false    228            �           0    0    idiomas_id_idioma_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.idiomas_id_idioma_seq OWNED BY public.idiomas.id_idioma;
          public          postgres    false    229            �            1259    74890    imagenes_productos    TABLE     �   CREATE TABLE public.imagenes_productos (
    id_imagen_producto integer NOT NULL,
    nombre_archivo_imagen character varying(50) NOT NULL,
    id_producto integer NOT NULL
);
 &   DROP TABLE public.imagenes_productos;
       public         heap    postgres    false            �            1259    74893 )   imagenes_productos_id_imagen_producto_seq    SEQUENCE     �   CREATE SEQUENCE public.imagenes_productos_id_imagen_producto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.imagenes_productos_id_imagen_producto_seq;
       public          postgres    false    230            �           0    0 )   imagenes_productos_id_imagen_producto_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.imagenes_productos_id_imagen_producto_seq OWNED BY public.imagenes_productos.id_imagen_producto;
          public          postgres    false    231            �            1259    74894    marcas    TABLE     �   CREATE TABLE public.marcas (
    id_marca integer NOT NULL,
    nombre_marca character varying(70) NOT NULL,
    logo_marca character varying(50)
);
    DROP TABLE public.marcas;
       public         heap    postgres    false            �            1259    74897    marcas_id_marca_seq    SEQUENCE     �   CREATE SEQUENCE public.marcas_id_marca_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.marcas_id_marca_seq;
       public          postgres    false    232            �           0    0    marcas_id_marca_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.marcas_id_marca_seq OWNED BY public.marcas.id_marca;
          public          postgres    false    233            �            1259    74898    modelos    TABLE     �   CREATE TABLE public.modelos (
    id_modelo integer NOT NULL,
    nombre_modelo character varying(70) NOT NULL,
    anio_modelo character varying(4),
    id_marca integer NOT NULL
);
    DROP TABLE public.modelos;
       public         heap    postgres    false            �            1259    74901    modelos_id_modelo_seq    SEQUENCE     �   CREATE SEQUENCE public.modelos_id_modelo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.modelos_id_modelo_seq;
       public          postgres    false    234            �           0    0    modelos_id_modelo_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.modelos_id_modelo_seq OWNED BY public.modelos.id_modelo;
          public          postgres    false    235            �            1259    74902    pedidos    TABLE        CREATE TABLE public.pedidos (
    id_pedido integer NOT NULL,
    direccion_pedido character varying(200) NOT NULL,
    fecha_pedido date NOT NULL,
    id_cliente integer NOT NULL,
    id_estado_pedido integer NOT NULL,
    id_empleado integer NOT NULL
);
    DROP TABLE public.pedidos;
       public         heap    postgres    false            �            1259    74905    pedidos_id_pedido_seq    SEQUENCE     �   CREATE SEQUENCE public.pedidos_id_pedido_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.pedidos_id_pedido_seq;
       public          postgres    false    236            �           0    0    pedidos_id_pedido_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.pedidos_id_pedido_seq OWNED BY public.pedidos.id_pedido;
          public          postgres    false    237            �            1259    74906 	   productos    TABLE     �  CREATE TABLE public.productos (
    id_producto integer NOT NULL,
    nombre_producto character varying(70) NOT NULL,
    descripcion_producto character varying(200),
    precio_producto numeric(5,2) NOT NULL,
    imagen_principal character varying(50),
    existencias integer NOT NULL,
    id_categoria integer NOT NULL,
    id_modelo integer NOT NULL,
    id_estado_producto integer NOT NULL
);
    DROP TABLE public.productos;
       public         heap    postgres    false            �            1259    74909    productos_id_producto_seq    SEQUENCE     �   CREATE SEQUENCE public.productos_id_producto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.productos_id_producto_seq;
       public          postgres    false    238            �           0    0    productos_id_producto_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.productos_id_producto_seq OWNED BY public.productos.id_producto;
          public          postgres    false    239            �            1259    74910    temas    TABLE       CREATE TABLE public.temas (
    id_tema integer NOT NULL,
    nombre_tema character varying(30) NOT NULL,
    color_primario character varying(7) NOT NULL,
    color_secundario character varying(7) NOT NULL,
    color_focus character varying(7) NOT NULL
);
    DROP TABLE public.temas;
       public         heap    postgres    false            �            1259    74913    temas_id_tema_seq    SEQUENCE     �   CREATE SEQUENCE public.temas_id_tema_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.temas_id_tema_seq;
       public          postgres    false    240            �           0    0    temas_id_tema_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.temas_id_tema_seq OWNED BY public.temas.id_tema;
          public          postgres    false    241            �            1259    74914    tipos_empleados    TABLE     �   CREATE TABLE public.tipos_empleados (
    id_tipo_empleado integer NOT NULL,
    tipo_empleado character varying(30) NOT NULL
);
 #   DROP TABLE public.tipos_empleados;
       public         heap    postgres    false            �            1259    74917 #   tipo_empleados_id_tipo_empleado_seq    SEQUENCE     �   CREATE SEQUENCE public.tipo_empleados_id_tipo_empleado_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.tipo_empleados_id_tipo_empleado_seq;
       public          postgres    false    242            �           0    0 #   tipo_empleados_id_tipo_empleado_seq    SEQUENCE OWNED BY     l   ALTER SEQUENCE public.tipo_empleados_id_tipo_empleado_seq OWNED BY public.tipos_empleados.id_tipo_empleado;
          public          postgres    false    243            �            1259    74918    tipos_membresias    TABLE     �   CREATE TABLE public.tipos_membresias (
    id_tipo_membresia integer NOT NULL,
    tipo_membresia character varying(30) NOT NULL,
    descripcion_membresia character varying(100) NOT NULL
);
 $   DROP TABLE public.tipos_membresias;
       public         heap    postgres    false            �            1259    74921 %   tipo_membresias_id_tipo_membresia_seq    SEQUENCE     �   CREATE SEQUENCE public.tipo_membresias_id_tipo_membresia_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.tipo_membresias_id_tipo_membresia_seq;
       public          postgres    false    244            �           0    0 %   tipo_membresias_id_tipo_membresia_seq    SEQUENCE OWNED BY     p   ALTER SEQUENCE public.tipo_membresias_id_tipo_membresia_seq OWNED BY public.tipos_membresias.id_tipo_membresia;
          public          postgres    false    245            �            1259    74922    tipos_usuarios    TABLE     ~   CREATE TABLE public.tipos_usuarios (
    id_tipo_usuario integer NOT NULL,
    tipo_usuario character varying(30) NOT NULL
);
 "   DROP TABLE public.tipos_usuarios;
       public         heap    postgres    false            �            1259    74925 !   tipo_usuarios_id_tipo_usuario_seq    SEQUENCE     �   CREATE SEQUENCE public.tipo_usuarios_id_tipo_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.tipo_usuarios_id_tipo_usuario_seq;
       public          postgres    false    246            �           0    0 !   tipo_usuarios_id_tipo_usuario_seq    SEQUENCE OWNED BY     h   ALTER SEQUENCE public.tipo_usuarios_id_tipo_usuario_seq OWNED BY public.tipos_usuarios.id_tipo_usuario;
          public          postgres    false    247            �            1259    74926    usuarios    TABLE     �  CREATE TABLE public.usuarios (
    id_usuario integer NOT NULL,
    nombre_usuario character varying(30) NOT NULL,
    clave_usuario character varying(200) NOT NULL,
    imagen_usuario character varying(50),
    estado_usuario boolean DEFAULT true NOT NULL,
    id_empleado integer NOT NULL,
    id_tipo_usuario integer NOT NULL,
    id_tema integer DEFAULT 1 NOT NULL,
    id_idioma integer DEFAULT 1 NOT NULL
);
    DROP TABLE public.usuarios;
       public         heap    postgres    false            �            1259    74932    usuarios_id_usuario_seq    SEQUENCE     �   CREATE SEQUENCE public.usuarios_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.usuarios_id_usuario_seq;
       public          postgres    false    248            �           0    0    usuarios_id_usuario_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.usuarios_id_usuario_seq OWNED BY public.usuarios.id_usuario;
          public          postgres    false    249            �            1259    74933    valoraciones    TABLE       CREATE TABLE public.valoraciones (
    id_valoracion integer NOT NULL,
    calificacion_producto integer,
    comentario character varying(500),
    fecha_comentario date NOT NULL,
    estado_comentario boolean DEFAULT true NOT NULL,
    id_detalle_pedido integer NOT NULL
);
     DROP TABLE public.valoraciones;
       public         heap    postgres    false            �            1259    74939    valoraciones_id_valoracion_seq    SEQUENCE     �   CREATE SEQUENCE public.valoraciones_id_valoracion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.valoraciones_id_valoracion_seq;
       public          postgres    false    250            �           0    0    valoraciones_id_valoracion_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.valoraciones_id_valoracion_seq OWNED BY public.valoraciones.id_valoracion;
          public          postgres    false    251            �            1259    74940    vista_pedidos    VIEW     w  CREATE VIEW public.vista_pedidos AS
 SELECT pedidos.id_pedido,
    pedidos.fecha_pedido,
    concat(clientes.nombre_cliente, ' ', clientes.apellido_cliente) AS nombre_completo_cliente,
    estados_pedidos.estado_pedido,
    concat(empleados.nombre_empleado, ' ', empleados.apellido_empleado) AS nombre_completo_empleado
   FROM (((public.pedidos
     JOIN public.clientes ON ((clientes.id_cliente = pedidos.id_cliente)))
     JOIN public.estados_pedidos ON ((estados_pedidos.id_estado_pedido = pedidos.id_estado_pedido)))
     JOIN public.empleados ON ((empleados.id_empleado = pedidos.id_empleado)))
  ORDER BY pedidos.id_pedido;
     DROP VIEW public.vista_pedidos;
       public          postgres    false    224    224    222    222    222    216    216    216    236    236    236    236    236            �           2604    74945    categorias id_categoria    DEFAULT     �   ALTER TABLE ONLY public.categorias ALTER COLUMN id_categoria SET DEFAULT nextval('public.categorias_id_categoria_seq'::regclass);
 F   ALTER TABLE public.categorias ALTER COLUMN id_categoria DROP DEFAULT;
       public          postgres    false    215    214            �           2604    74946    clientes id_cliente    DEFAULT     z   ALTER TABLE ONLY public.clientes ALTER COLUMN id_cliente SET DEFAULT nextval('public.clientes_id_cliente_seq'::regclass);
 B   ALTER TABLE public.clientes ALTER COLUMN id_cliente DROP DEFAULT;
       public          postgres    false    217    216            �           2604    74947 "   detalles_pedidos id_detalle_pedido    DEFAULT     �   ALTER TABLE ONLY public.detalles_pedidos ALTER COLUMN id_detalle_pedido SET DEFAULT nextval('public.detalle_pedidos_id_detalle_pedido_seq'::regclass);
 Q   ALTER TABLE public.detalles_pedidos ALTER COLUMN id_detalle_pedido DROP DEFAULT;
       public          postgres    false    221    220            �           2604    74948    empleados id_empleado    DEFAULT     ~   ALTER TABLE ONLY public.empleados ALTER COLUMN id_empleado SET DEFAULT nextval('public.empleados_id_empleado_seq'::regclass);
 D   ALTER TABLE public.empleados ALTER COLUMN id_empleado DROP DEFAULT;
       public          postgres    false    223    222            �           2604    74949     estados_pedidos id_estado_pedido    DEFAULT     �   ALTER TABLE ONLY public.estados_pedidos ALTER COLUMN id_estado_pedido SET DEFAULT nextval('public.estado_pedidos_id_estado_pedido_seq'::regclass);
 O   ALTER TABLE public.estados_pedidos ALTER COLUMN id_estado_pedido DROP DEFAULT;
       public          postgres    false    225    224            �           2604    74950 $   estados_productos id_estado_producto    DEFAULT     �   ALTER TABLE ONLY public.estados_productos ALTER COLUMN id_estado_producto SET DEFAULT nextval('public.estado_productos_id_estado_producto_seq'::regclass);
 S   ALTER TABLE public.estados_productos ALTER COLUMN id_estado_producto DROP DEFAULT;
       public          postgres    false    227    226            �           2604    74951    idiomas id_idioma    DEFAULT     v   ALTER TABLE ONLY public.idiomas ALTER COLUMN id_idioma SET DEFAULT nextval('public.idiomas_id_idioma_seq'::regclass);
 @   ALTER TABLE public.idiomas ALTER COLUMN id_idioma DROP DEFAULT;
       public          postgres    false    229    228            �           2604    74952 %   imagenes_productos id_imagen_producto    DEFAULT     �   ALTER TABLE ONLY public.imagenes_productos ALTER COLUMN id_imagen_producto SET DEFAULT nextval('public.imagenes_productos_id_imagen_producto_seq'::regclass);
 T   ALTER TABLE public.imagenes_productos ALTER COLUMN id_imagen_producto DROP DEFAULT;
       public          postgres    false    231    230            �           2604    74953 -   informacion_contactos id_informacion_contacto    DEFAULT     �   ALTER TABLE ONLY public.informacion_contactos ALTER COLUMN id_informacion_contacto SET DEFAULT nextval('public.contactos_id_contacto_seq'::regclass);
 \   ALTER TABLE public.informacion_contactos ALTER COLUMN id_informacion_contacto DROP DEFAULT;
       public          postgres    false    219    218            �           2604    74954    marcas id_marca    DEFAULT     r   ALTER TABLE ONLY public.marcas ALTER COLUMN id_marca SET DEFAULT nextval('public.marcas_id_marca_seq'::regclass);
 >   ALTER TABLE public.marcas ALTER COLUMN id_marca DROP DEFAULT;
       public          postgres    false    233    232            �           2604    74955    modelos id_modelo    DEFAULT     v   ALTER TABLE ONLY public.modelos ALTER COLUMN id_modelo SET DEFAULT nextval('public.modelos_id_modelo_seq'::regclass);
 @   ALTER TABLE public.modelos ALTER COLUMN id_modelo DROP DEFAULT;
       public          postgres    false    235    234            �           2604    74956    pedidos id_pedido    DEFAULT     v   ALTER TABLE ONLY public.pedidos ALTER COLUMN id_pedido SET DEFAULT nextval('public.pedidos_id_pedido_seq'::regclass);
 @   ALTER TABLE public.pedidos ALTER COLUMN id_pedido DROP DEFAULT;
       public          postgres    false    237    236            �           2604    74957    productos id_producto    DEFAULT     ~   ALTER TABLE ONLY public.productos ALTER COLUMN id_producto SET DEFAULT nextval('public.productos_id_producto_seq'::regclass);
 D   ALTER TABLE public.productos ALTER COLUMN id_producto DROP DEFAULT;
       public          postgres    false    239    238            �           2604    74958    temas id_tema    DEFAULT     n   ALTER TABLE ONLY public.temas ALTER COLUMN id_tema SET DEFAULT nextval('public.temas_id_tema_seq'::regclass);
 <   ALTER TABLE public.temas ALTER COLUMN id_tema DROP DEFAULT;
       public          postgres    false    241    240            �           2604    74959     tipos_empleados id_tipo_empleado    DEFAULT     �   ALTER TABLE ONLY public.tipos_empleados ALTER COLUMN id_tipo_empleado SET DEFAULT nextval('public.tipo_empleados_id_tipo_empleado_seq'::regclass);
 O   ALTER TABLE public.tipos_empleados ALTER COLUMN id_tipo_empleado DROP DEFAULT;
       public          postgres    false    243    242            �           2604    74960 "   tipos_membresias id_tipo_membresia    DEFAULT     �   ALTER TABLE ONLY public.tipos_membresias ALTER COLUMN id_tipo_membresia SET DEFAULT nextval('public.tipo_membresias_id_tipo_membresia_seq'::regclass);
 Q   ALTER TABLE public.tipos_membresias ALTER COLUMN id_tipo_membresia DROP DEFAULT;
       public          postgres    false    245    244            �           2604    74961    tipos_usuarios id_tipo_usuario    DEFAULT     �   ALTER TABLE ONLY public.tipos_usuarios ALTER COLUMN id_tipo_usuario SET DEFAULT nextval('public.tipo_usuarios_id_tipo_usuario_seq'::regclass);
 M   ALTER TABLE public.tipos_usuarios ALTER COLUMN id_tipo_usuario DROP DEFAULT;
       public          postgres    false    247    246            �           2604    74962    usuarios id_usuario    DEFAULT     z   ALTER TABLE ONLY public.usuarios ALTER COLUMN id_usuario SET DEFAULT nextval('public.usuarios_id_usuario_seq'::regclass);
 B   ALTER TABLE public.usuarios ALTER COLUMN id_usuario DROP DEFAULT;
       public          postgres    false    249    248            �           2604    74963    valoraciones id_valoracion    DEFAULT     �   ALTER TABLE ONLY public.valoraciones ALTER COLUMN id_valoracion SET DEFAULT nextval('public.valoraciones_id_valoracion_seq'::regclass);
 I   ALTER TABLE public.valoraciones ALTER COLUMN id_valoracion DROP DEFAULT;
       public          postgres    false    251    250            �          0    74851 
   categorias 
   TABLE DATA           m   COPY public.categorias (id_categoria, nombre_categoria, imagen_categoria, descripcion_categoria) FROM stdin;
    public          postgres    false    214   �       �          0    74855    clientes 
   TABLE DATA           �   COPY public.clientes (id_cliente, nombre_cliente, apellido_cliente, dui_cliente, correo_cliente, telefono_cliente, direccion_cliente, usuario_cliente, clave_cliente, imagen_cliente, estado_cliente, codigo_membresia, id_tipo_membresia) FROM stdin;
    public          postgres    false    216   ~�       �          0    74869    detalles_pedidos 
   TABLE DATA           y   COPY public.detalles_pedidos (id_detalle_pedido, cantidad_producto, precio_producto, id_pedido, id_producto) FROM stdin;
    public          postgres    false    220   [�       �          0    74873 	   empleados 
   TABLE DATA           �   COPY public.empleados (id_empleado, nombre_empleado, apellido_empleado, dui_empleado, correo_empleado, telefono_empleado, nacimiento_empleado, direccion_empleado, estado_empleado, id_tipo_empleado) FROM stdin;
    public          postgres    false    222   �       �          0    74878    estados_pedidos 
   TABLE DATA           J   COPY public.estados_pedidos (id_estado_pedido, estado_pedido) FROM stdin;
    public          postgres    false    224   h�       �          0    74882    estados_productos 
   TABLE DATA           P   COPY public.estados_productos (id_estado_producto, estado_producto) FROM stdin;
    public          postgres    false    226   ��       �          0    74886    idiomas 
   TABLE DATA           C   COPY public.idiomas (id_idioma, codigo_idioma, idioma) FROM stdin;
    public          postgres    false    228   �       �          0    74890    imagenes_productos 
   TABLE DATA           d   COPY public.imagenes_productos (id_imagen_producto, nombre_archivo_imagen, id_producto) FROM stdin;
    public          postgres    false    230   ?�       �          0    74862    informacion_contactos 
   TABLE DATA           �   COPY public.informacion_contactos (id_informacion_contacto, correo_contactante, mensaje, fecha, estado_contacto, id_cliente) FROM stdin;
    public          postgres    false    218   \�       �          0    74894    marcas 
   TABLE DATA           D   COPY public.marcas (id_marca, nombre_marca, logo_marca) FROM stdin;
    public          postgres    false    232   $�       �          0    74898    modelos 
   TABLE DATA           R   COPY public.modelos (id_modelo, nombre_modelo, anio_modelo, id_marca) FROM stdin;
    public          postgres    false    234   ��       �          0    74902    pedidos 
   TABLE DATA           w   COPY public.pedidos (id_pedido, direccion_pedido, fecha_pedido, id_cliente, id_estado_pedido, id_empleado) FROM stdin;
    public          postgres    false    236    �       �          0    74906 	   productos 
   TABLE DATA           �   COPY public.productos (id_producto, nombre_producto, descripcion_producto, precio_producto, imagen_principal, existencias, id_categoria, id_modelo, id_estado_producto) FROM stdin;
    public          postgres    false    238   �       �          0    74910    temas 
   TABLE DATA           d   COPY public.temas (id_tema, nombre_tema, color_primario, color_secundario, color_focus) FROM stdin;
    public          postgres    false    240   
�       �          0    74914    tipos_empleados 
   TABLE DATA           J   COPY public.tipos_empleados (id_tipo_empleado, tipo_empleado) FROM stdin;
    public          postgres    false    242   ^�       �          0    74918    tipos_membresias 
   TABLE DATA           d   COPY public.tipos_membresias (id_tipo_membresia, tipo_membresia, descripcion_membresia) FROM stdin;
    public          postgres    false    244   ��       �          0    74922    tipos_usuarios 
   TABLE DATA           G   COPY public.tipos_usuarios (id_tipo_usuario, tipo_usuario) FROM stdin;
    public          postgres    false    246   d�       �          0    74926    usuarios 
   TABLE DATA           �   COPY public.usuarios (id_usuario, nombre_usuario, clave_usuario, imagen_usuario, estado_usuario, id_empleado, id_tipo_usuario, id_tema, id_idioma) FROM stdin;
    public          postgres    false    248   ��       �          0    74933    valoraciones 
   TABLE DATA           �   COPY public.valoraciones (id_valoracion, calificacion_producto, comentario, fecha_comentario, estado_comentario, id_detalle_pedido) FROM stdin;
    public          postgres    false    250   ��       �           0    0    categorias_id_categoria_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.categorias_id_categoria_seq', 10, true);
          public          postgres    false    215            �           0    0    clientes_id_cliente_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.clientes_id_cliente_seq', 10, true);
          public          postgres    false    217            �           0    0    contactos_id_contacto_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.contactos_id_contacto_seq', 10, true);
          public          postgres    false    219            �           0    0 %   detalle_pedidos_id_detalle_pedido_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.detalle_pedidos_id_detalle_pedido_seq', 21, true);
          public          postgres    false    221            �           0    0    empleados_id_empleado_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.empleados_id_empleado_seq', 10, true);
          public          postgres    false    223            �           0    0 #   estado_pedidos_id_estado_pedido_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.estado_pedidos_id_estado_pedido_seq', 5, true);
          public          postgres    false    225            �           0    0 '   estado_productos_id_estado_producto_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.estado_productos_id_estado_producto_seq', 4, true);
          public          postgres    false    227                        0    0    idiomas_id_idioma_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.idiomas_id_idioma_seq', 2, true);
          public          postgres    false    229                       0    0 )   imagenes_productos_id_imagen_producto_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.imagenes_productos_id_imagen_producto_seq', 1, false);
          public          postgres    false    231                       0    0    marcas_id_marca_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.marcas_id_marca_seq', 18, true);
          public          postgres    false    233                       0    0    modelos_id_modelo_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.modelos_id_modelo_seq', 24, true);
          public          postgres    false    235                       0    0    pedidos_id_pedido_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.pedidos_id_pedido_seq', 10, true);
          public          postgres    false    237                       0    0    productos_id_producto_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.productos_id_producto_seq', 11, true);
          public          postgres    false    239                       0    0    temas_id_tema_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.temas_id_tema_seq', 2, true);
          public          postgres    false    241                       0    0 #   tipo_empleados_id_tipo_empleado_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.tipo_empleados_id_tipo_empleado_seq', 5, true);
          public          postgres    false    243                       0    0 %   tipo_membresias_id_tipo_membresia_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.tipo_membresias_id_tipo_membresia_seq', 3, true);
          public          postgres    false    245            	           0    0 !   tipo_usuarios_id_tipo_usuario_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.tipo_usuarios_id_tipo_usuario_seq', 4, true);
          public          postgres    false    247            
           0    0    usuarios_id_usuario_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.usuarios_id_usuario_seq', 20, true);
          public          postgres    false    249                       0    0    valoraciones_id_valoracion_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.valoraciones_id_valoracion_seq', 10, true);
          public          postgres    false    251            �           2606    74965    categorias categorias_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.categorias
    ADD CONSTRAINT categorias_pkey PRIMARY KEY (id_categoria);
 D   ALTER TABLE ONLY public.categorias DROP CONSTRAINT categorias_pkey;
       public            postgres    false    214            �           2606    74967 &   clientes clientes_codigo_membresia_key 
   CONSTRAINT     m   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_codigo_membresia_key UNIQUE (codigo_membresia);
 P   ALTER TABLE ONLY public.clientes DROP CONSTRAINT clientes_codigo_membresia_key;
       public            postgres    false    216            �           2606    74969 $   clientes clientes_correo_cliente_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_correo_cliente_key UNIQUE (correo_cliente);
 N   ALTER TABLE ONLY public.clientes DROP CONSTRAINT clientes_correo_cliente_key;
       public            postgres    false    216            �           2606    74971 !   clientes clientes_dui_cliente_key 
   CONSTRAINT     c   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_dui_cliente_key UNIQUE (dui_cliente);
 K   ALTER TABLE ONLY public.clientes DROP CONSTRAINT clientes_dui_cliente_key;
       public            postgres    false    216            �           2606    74973    clientes clientes_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (id_cliente);
 @   ALTER TABLE ONLY public.clientes DROP CONSTRAINT clientes_pkey;
       public            postgres    false    216            �           2606    74975 &   clientes clientes_telefono_cliente_key 
   CONSTRAINT     m   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_telefono_cliente_key UNIQUE (telefono_cliente);
 P   ALTER TABLE ONLY public.clientes DROP CONSTRAINT clientes_telefono_cliente_key;
       public            postgres    false    216            �           2606    74977 %   clientes clientes_usuario_cliente_key 
   CONSTRAINT     k   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_usuario_cliente_key UNIQUE (usuario_cliente);
 O   ALTER TABLE ONLY public.clientes DROP CONSTRAINT clientes_usuario_cliente_key;
       public            postgres    false    216            �           2606    74979 $   informacion_contactos contactos_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.informacion_contactos
    ADD CONSTRAINT contactos_pkey PRIMARY KEY (id_informacion_contacto);
 N   ALTER TABLE ONLY public.informacion_contactos DROP CONSTRAINT contactos_pkey;
       public            postgres    false    218            �           2606    74981 %   detalles_pedidos detalle_pedidos_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.detalles_pedidos
    ADD CONSTRAINT detalle_pedidos_pkey PRIMARY KEY (id_detalle_pedido);
 O   ALTER TABLE ONLY public.detalles_pedidos DROP CONSTRAINT detalle_pedidos_pkey;
       public            postgres    false    220            �           2606    74983 '   empleados empleados_correo_empleado_key 
   CONSTRAINT     m   ALTER TABLE ONLY public.empleados
    ADD CONSTRAINT empleados_correo_empleado_key UNIQUE (correo_empleado);
 Q   ALTER TABLE ONLY public.empleados DROP CONSTRAINT empleados_correo_empleado_key;
       public            postgres    false    222            �           2606    74985 $   empleados empleados_dui_empleado_key 
   CONSTRAINT     g   ALTER TABLE ONLY public.empleados
    ADD CONSTRAINT empleados_dui_empleado_key UNIQUE (dui_empleado);
 N   ALTER TABLE ONLY public.empleados DROP CONSTRAINT empleados_dui_empleado_key;
       public            postgres    false    222            �           2606    74987    empleados empleados_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.empleados
    ADD CONSTRAINT empleados_pkey PRIMARY KEY (id_empleado);
 B   ALTER TABLE ONLY public.empleados DROP CONSTRAINT empleados_pkey;
       public            postgres    false    222            �           2606    74989 )   empleados empleados_telefono_empleado_key 
   CONSTRAINT     q   ALTER TABLE ONLY public.empleados
    ADD CONSTRAINT empleados_telefono_empleado_key UNIQUE (telefono_empleado);
 S   ALTER TABLE ONLY public.empleados DROP CONSTRAINT empleados_telefono_empleado_key;
       public            postgres    false    222            �           2606    74991 #   estados_pedidos estado_pedidos_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.estados_pedidos
    ADD CONSTRAINT estado_pedidos_pkey PRIMARY KEY (id_estado_pedido);
 M   ALTER TABLE ONLY public.estados_pedidos DROP CONSTRAINT estado_pedidos_pkey;
       public            postgres    false    224            �           2606    74993 '   estados_productos estado_productos_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.estados_productos
    ADD CONSTRAINT estado_productos_pkey PRIMARY KEY (id_estado_producto);
 Q   ALTER TABLE ONLY public.estados_productos DROP CONSTRAINT estado_productos_pkey;
       public            postgres    false    226            �           2606    74995    idiomas idiomas_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.idiomas
    ADD CONSTRAINT idiomas_pkey PRIMARY KEY (id_idioma);
 >   ALTER TABLE ONLY public.idiomas DROP CONSTRAINT idiomas_pkey;
       public            postgres    false    228            �           2606    74997 *   imagenes_productos imagenes_productos_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.imagenes_productos
    ADD CONSTRAINT imagenes_productos_pkey PRIMARY KEY (id_imagen_producto);
 T   ALTER TABLE ONLY public.imagenes_productos DROP CONSTRAINT imagenes_productos_pkey;
       public            postgres    false    230                        2606    74999    marcas marcas_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.marcas
    ADD CONSTRAINT marcas_pkey PRIMARY KEY (id_marca);
 <   ALTER TABLE ONLY public.marcas DROP CONSTRAINT marcas_pkey;
       public            postgres    false    232                       2606    75001    modelos modelos_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.modelos
    ADD CONSTRAINT modelos_pkey PRIMARY KEY (id_modelo);
 >   ALTER TABLE ONLY public.modelos DROP CONSTRAINT modelos_pkey;
       public            postgres    false    234                       2606    75003    pedidos pedidos_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT pedidos_pkey PRIMARY KEY (id_pedido);
 >   ALTER TABLE ONLY public.pedidos DROP CONSTRAINT pedidos_pkey;
       public            postgres    false    236                       2606    75005    productos productos_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_pkey PRIMARY KEY (id_producto);
 B   ALTER TABLE ONLY public.productos DROP CONSTRAINT productos_pkey;
       public            postgres    false    238            
           2606    75007    temas temas_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.temas
    ADD CONSTRAINT temas_pkey PRIMARY KEY (id_tema);
 :   ALTER TABLE ONLY public.temas DROP CONSTRAINT temas_pkey;
       public            postgres    false    240                       2606    75009 #   tipos_empleados tipo_empleados_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.tipos_empleados
    ADD CONSTRAINT tipo_empleados_pkey PRIMARY KEY (id_tipo_empleado);
 M   ALTER TABLE ONLY public.tipos_empleados DROP CONSTRAINT tipo_empleados_pkey;
       public            postgres    false    242                       2606    75011 %   tipos_membresias tipo_membresias_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.tipos_membresias
    ADD CONSTRAINT tipo_membresias_pkey PRIMARY KEY (id_tipo_membresia);
 O   ALTER TABLE ONLY public.tipos_membresias DROP CONSTRAINT tipo_membresias_pkey;
       public            postgres    false    244                       2606    75013 !   tipos_usuarios tipo_usuarios_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.tipos_usuarios
    ADD CONSTRAINT tipo_usuarios_pkey PRIMARY KEY (id_tipo_usuario);
 K   ALTER TABLE ONLY public.tipos_usuarios DROP CONSTRAINT tipo_usuarios_pkey;
       public            postgres    false    246                       2606    75015    modelos u_modelo 
   CONSTRAINT     ^   ALTER TABLE ONLY public.modelos
    ADD CONSTRAINT u_modelo UNIQUE (nombre_modelo, id_marca);
 :   ALTER TABLE ONLY public.modelos DROP CONSTRAINT u_modelo;
       public            postgres    false    234    234                       2606    75017 !   usuarios usuarios_id_empleado_key 
   CONSTRAINT     c   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_id_empleado_key UNIQUE (id_empleado);
 K   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_id_empleado_key;
       public            postgres    false    248                       2606    75019 $   usuarios usuarios_nombre_usuario_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_nombre_usuario_key UNIQUE (nombre_usuario);
 N   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_nombre_usuario_key;
       public            postgres    false    248                       2606    75021    usuarios usuarios_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id_usuario);
 @   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_pkey;
       public            postgres    false    248                       2606    75023    valoraciones valoraciones_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.valoraciones
    ADD CONSTRAINT valoraciones_pkey PRIMARY KEY (id_valoracion);
 H   ALTER TABLE ONLY public.valoraciones DROP CONSTRAINT valoraciones_pkey;
       public            postgres    false    250                       2606    75115 (   clientes clientes_id_tipo_membresia_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_id_tipo_membresia_fkey FOREIGN KEY (id_tipo_membresia) REFERENCES public.tipos_membresias(id_tipo_membresia) ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.clientes DROP CONSTRAINT clientes_id_tipo_membresia_fkey;
       public          postgres    false    3342    244    216                       2606    75140 /   informacion_contactos contactos_id_cliente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.informacion_contactos
    ADD CONSTRAINT contactos_id_cliente_fkey FOREIGN KEY (id_cliente) REFERENCES public.clientes(id_cliente) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.informacion_contactos DROP CONSTRAINT contactos_id_cliente_fkey;
       public          postgres    false    3302    216    218                       2606    75120 /   detalles_pedidos detalle_pedidos_id_pedido_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.detalles_pedidos
    ADD CONSTRAINT detalle_pedidos_id_pedido_fkey FOREIGN KEY (id_pedido) REFERENCES public.pedidos(id_pedido) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.detalles_pedidos DROP CONSTRAINT detalle_pedidos_id_pedido_fkey;
       public          postgres    false    236    3334    220                       2606    75125 1   detalles_pedidos detalle_pedidos_id_producto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.detalles_pedidos
    ADD CONSTRAINT detalle_pedidos_id_producto_fkey FOREIGN KEY (id_producto) REFERENCES public.productos(id_producto) ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.detalles_pedidos DROP CONSTRAINT detalle_pedidos_id_producto_fkey;
       public          postgres    false    238    3336    220                       2606    75130 )   empleados empleados_id_tipo_empleado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.empleados
    ADD CONSTRAINT empleados_id_tipo_empleado_fkey FOREIGN KEY (id_tipo_empleado) REFERENCES public.tipos_empleados(id_tipo_empleado) ON DELETE CASCADE;
 S   ALTER TABLE ONLY public.empleados DROP CONSTRAINT empleados_id_tipo_empleado_fkey;
       public          postgres    false    3340    242    222                       2606    75135 6   imagenes_productos imagenes_productos_id_producto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.imagenes_productos
    ADD CONSTRAINT imagenes_productos_id_producto_fkey FOREIGN KEY (id_producto) REFERENCES public.productos(id_producto) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.imagenes_productos DROP CONSTRAINT imagenes_productos_id_producto_fkey;
       public          postgres    false    230    3336    238                       2606    75145    modelos modelos_id_marca_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.modelos
    ADD CONSTRAINT modelos_id_marca_fkey FOREIGN KEY (id_marca) REFERENCES public.marcas(id_marca) ON DELETE CASCADE;
 G   ALTER TABLE ONLY public.modelos DROP CONSTRAINT modelos_id_marca_fkey;
       public          postgres    false    234    232    3328                        2606    75150    pedidos pedidos_id_cliente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT pedidos_id_cliente_fkey FOREIGN KEY (id_cliente) REFERENCES public.clientes(id_cliente) ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.pedidos DROP CONSTRAINT pedidos_id_cliente_fkey;
       public          postgres    false    216    236    3302            !           2606    75155     pedidos pedidos_id_empleado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT pedidos_id_empleado_fkey FOREIGN KEY (id_empleado) REFERENCES public.empleados(id_empleado) ON DELETE CASCADE;
 J   ALTER TABLE ONLY public.pedidos DROP CONSTRAINT pedidos_id_empleado_fkey;
       public          postgres    false    222    3316    236            "           2606    75160 %   pedidos pedidos_id_estado_pedido_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT pedidos_id_estado_pedido_fkey FOREIGN KEY (id_estado_pedido) REFERENCES public.estados_pedidos(id_estado_pedido) ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.pedidos DROP CONSTRAINT pedidos_id_estado_pedido_fkey;
       public          postgres    false    236    224    3320            #           2606    75165 %   productos productos_id_categoria_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_id_categoria_fkey FOREIGN KEY (id_categoria) REFERENCES public.categorias(id_categoria) ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.productos DROP CONSTRAINT productos_id_categoria_fkey;
       public          postgres    false    3294    238    214            $           2606    75170 +   productos productos_id_estado_producto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_id_estado_producto_fkey FOREIGN KEY (id_estado_producto) REFERENCES public.estados_productos(id_estado_producto) ON DELETE CASCADE;
 U   ALTER TABLE ONLY public.productos DROP CONSTRAINT productos_id_estado_producto_fkey;
       public          postgres    false    226    3322    238            %           2606    75175 "   productos productos_id_modelo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_id_modelo_fkey FOREIGN KEY (id_modelo) REFERENCES public.modelos(id_modelo) ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.productos DROP CONSTRAINT productos_id_modelo_fkey;
       public          postgres    false    3330    234    238            &           2606    75180 "   usuarios usuarios_id_empleado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_id_empleado_fkey FOREIGN KEY (id_empleado) REFERENCES public.empleados(id_empleado) ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_id_empleado_fkey;
       public          postgres    false    248    3316    222            '           2606    75185     usuarios usuarios_id_idioma_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_id_idioma_fkey FOREIGN KEY (id_idioma) REFERENCES public.idiomas(id_idioma) ON DELETE CASCADE;
 J   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_id_idioma_fkey;
       public          postgres    false    228    248    3324            (           2606    75190    usuarios usuarios_id_tema_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_id_tema_fkey FOREIGN KEY (id_tema) REFERENCES public.temas(id_tema) ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_id_tema_fkey;
       public          postgres    false    3338    240    248            )           2606    75195 &   usuarios usuarios_id_tipo_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_id_tipo_usuario_fkey FOREIGN KEY (id_tipo_usuario) REFERENCES public.tipos_usuarios(id_tipo_usuario) ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_id_tipo_usuario_fkey;
       public          postgres    false    3344    246    248            *           2606    75200 0   valoraciones valoraciones_id_detalle_pedido_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.valoraciones
    ADD CONSTRAINT valoraciones_id_detalle_pedido_fkey FOREIGN KEY (id_detalle_pedido) REFERENCES public.detalles_pedidos(id_detalle_pedido) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.valoraciones DROP CONSTRAINT valoraciones_id_detalle_pedido_fkey;
       public          postgres    false    250    220    3310            �   \  x���MN�0���)| ���U�b���L�%��S��� ,8C/�8NۤH-�����ތ3O1{�Na��4D\�7�*t:����T���%U���&VSP-xP��yG��S�"5�4V^���>B�q��'�9B���_ �P|���䥨,�W�fY���Q
���1���8���ِ�6�>n�F'�䕨������d�M�T��?L�o䝱ٹ�ۀF��s�0���������7b���<����p �$�j3G~���4M��p�VTT��C���E.�Ĕ%�{��Q�r�:�M%y/^1z��B�5@����~�;��䜟A�;bq�:��J)�3;}      �   �  x�UT�n�0<���@�Q��,R��I�"/I�C��Zfl��R���뻔��>�������.18�ٕwp����E����Bɲ�9�B|^t��y;Ѝ�e-L���]F���Ö"<���TZ�B�($LÜ��!��M�0]l�����=���M)!���W�<)+y�9�pA�C���}MZ׷�]�������#�tvX��^VY��FI�@
�co٨�C˷���� �e) �pĜHjT�������k�,���y�lnٵ���H���OR���lT�Up���~��G���nݎf��@��$둰"��ckj-�R�D��+�b����-v�g�v�L�z�ƹHet��bc�l:sb��6���i�}#��xt�c�@�c'��ѩjy(��w4�tƎO��3M�:"μ���+S�Z�*j�s��zO��v��BxWA^̓[l��V����B�*�'���$�2k� �i[�~X=ظ�AD��DU��p�čMT�Hő+��!B-^���~�?�D�r��n�ݺ�M��n��2�(3�@j�����Er���l�%#M5 ��&�� J��bSGW�w-�)����$����'�÷�G�3���0ؾ�"���^%z�>��1�Ա�]�yܯ�Kʳ�vX�x��T�֍����d��+�i��)�.E� ʉ$4��w�_ ���O��i�ě�c�DV�o���(��e�$      �   �   x�%�YE!C��bEq����:^�&Fdh9�Hp��"-1��G�>l�>�T�61q�+�J�[��e-��#��m#%��c���)3\���Y�+���>� ���j-1���̦�93�SEc�t��|�%��;�q+��^�f�������2��g�B�MW����Ϫ�����jP,      �   D  x�eS�n�0}���?�B�|}[�Y�fڡ���p�����ԗ�׏t���^E��sH�кa�!�����Ӑ>PG��6X�F!������:����&�P�U���:W�Ѱ�������&�����SL�4xF�ǁB���;A��-�(�e��^j+� Qy�x!��x���ߙaX(,�xt/�Ӎw�<�aK�į��EQY�hb.Q�R����T�U���Li�4�G
�ϐ'�R�O?���ѝ�}�] �^aY)-�AXCm��ghcD�޽vnb��<SY�sc��n|�x"�X�@O���Mq�ϵ�c���^$<����$|���M�b�ا��cIU��2h���t�Q%V��,asd���%�:���N�|qC�]:�W���?�������� m��k�Й�>Q��5��.L*��K�Oz���d�\�wd5�pŮ�g��K�j�QK(�h��^���y��KG��܍$W"G���A�U]�����z{+U�<x���,&΂o�����8/ғ�f��;���d�y�wӁ�2X�b�.��Wb�_7I���'      �   E   x�3�t�S((�ON-��2�tN�KN�IL��2�JM�L�2M8�2�s2�@⦜�y��%�e�\1z\\\ �I�      �   ;   x�3�t�,.���L�I�2�tL�/IL��2�H�K�L�+I�2���KL.�,������ ��`      �   '   x�3�t�t-.H<�1?�ˈ�Տ�3/='��+F��� ���      �      x������ � �      �   �  x�m�1o1�g�Wh����'[� Zti�.���А�+%m~})�q�@ .���=>vҀү�Oc
w�����$<T_�ar\F�M�@^��.�>ك�@� ��p��M��W��N�����WH��ff�]B������.F���i��<��B�����8_��٤�1��Ѯ�p�(0V
 3��Q���M7b၏z��:ke���D#	D�3��JC����Fp>�G���3��[ڍ�7�
��$���,8�4�(h��ig���m�Fo��	5�=��'��/����BG�E�)S!���T��nM�2@8h��gz�qϢ8�����]o4�}0$ �Wx�����1�R���W<'��*���D�o���U��=L�݌�_>]�[(fm��9@)��$�G��܎0-4@�`�v�^Y"|��W���tQ[���Z����      �   �   x�%�[�0���&��.'yXꄜ��͠���Q_�6����3�|�
� �|�e��-"�.�2F6�Tf#A+We��a+E�s�䓍
mnVd�Q/�W���5A����m��\V���$��NP!j�)B5�H����=�.T�✢�C����y?�8      �     x�E�MN�0��3�� yl�I�(�¢j����L�X�⒦E�sp1�8����͛�eϝ�)���& ԰q�;q�P%�@��>�4Z��sHn�9�k���`py�R�`{�
Kh��]Vfu����bX)��U�\�Rz��fbR���v�K
�D��|p������|;�����~C�_��zgU\MJ�@Z��o<�|����G�ie��%<�����a}�wY�:f�A�z�޿����)�Kɢ87~�[�V����I��\�L�j�m�G�����z[�      �   �   x�E�]J�0F��]E6I��GP�D�'_�L�D���}�7��Lہ9|�T�!��w
�!Q8�|�`���6Ri�P�F���ۊ�=�ъg����Z�
�+x�ٍ���_V锜�5R+���ֻ��%�S��R�c9����씏Y��Ɇ1�լj�4�n�����{�x�aZ����sG�b��E��|}Z١v�v�o�S��!���/Z蹯��.�#-�2������yj���}��&l�_�y����i"      �   �  x�mS�n�0<��b? D��c
�'�0�sYI�À"���U��?�%m9�@�hɝ��I�斑pVx�ʺ���p�E����<��<W��?�)8<F>q��,2�q�2TeS��/�; jE?�-jK��QỞ���-ד�K�	�|��]�'�N��BA�젭ʺI�
$tP<.�}�|�U�����[T�(���F�^X�-�HJ��|&g�Ȳ=4U)�4J�P�d��>N�M�d��%��V\�k�&f�2g����U	�������'��<e��nd��W���<���{���l�d~-;ߧ%����w|�lV�i���(�^Y�Ұ�����y�M���s{���p�2�@���X���:e��U�D���Y��.%��;loR���dE�ą�t��˶ˊ�SB�墂CT>��l���,rR���.H���SǤ��	�F;�X��� �r�&�rD�:Es��-�}W�pѧ��I�sY�#�	�      �   D   x�3�tI,���OI�T6r3646�FFF���n`�e�铙�QQ�T6tANe##s#s�=... �f      �   l   x��=�0@�N�	"�'��t�l�:P������n����B���;�Rش8I��(w�d|�K�9>���O��6��:')ż{�W�y|%�Um��� ��'\      �   z   x���1
�0���>����I�!�O��E�A�\ņ����~�7��ZAq���΀ �I��y�Q���ڨ}OMW���3�K�/+�Ϸ9���]��!>]��z�Cy���w��� ��\�      �   A   x�3���/�2�tL����,.)JL�/�2�tO-J�+IUHIU(2��L8}S��2��b���� 5�7      �   �   x�=�Ak�0������1������`Pj�G�d���I�:������d- ]B����Z8`[��^��7d-#g��p��T���S
��q��+��E��pAJ|�+�i|��;f{�g1.q���R�B:xZ�z�;3Ed VL'V��>��]&]��d�����S�xCq�1�=�@\Q����[M�E!7�C�\	[1S�k�R�WYi	_�N�."۔H��1�d}a�      �   @  x�]QKN�0]ۧ�R�8�.� ��-���FFn\�$j����m iV�yߩ�J<^{n;V����B��^�բԢZjQ�VE���,�(9�A�W��{���#�k�����znIu��)f��d��"74�T�Vr	kO�y��L�X�G�6o�9ۛ.��B	�J�`��#yP�%��_b�9�Q,�1���[�5�r�">�@�������,���D[���~�Έ
��n�i-������Bѵ����l'wB���W���&�^����M8���D5���9��Y�9���P�	nq�	��r|U��)�7ۥL     
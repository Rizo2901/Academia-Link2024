import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['es', 'en'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? esText = '',
    String? enText = '',
  }) =>
      [esText, enText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // Inicio
  {
    'vfohfc48': {
      'es': 'Academia Link',
      'en': 'Link Academy',
    },
    'dhu1wgw5': {
      'es': 'Conectando conocimiento y creando futuros',
      'en': 'Connecting knowledge and creating futures',
    },
    'j6wfpwn2': {
      'es': 'Continuar',
      'en': 'Continue',
    },
    '33chlmo2': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // Login
  {
    'rztyp4gw': {
      'es': 'Academia Link',
      'en': 'Link Academy',
    },
    '1490di54': {
      'es': 'Inicia Sesión ',
      'en': 'Log in',
    },
    '0enpxqf0': {
      'es': '¡Gracias por volver a Academia Link!',
      'en': 'Thank you for coming back to Academia Link!',
    },
    'cyi0uypf': {
      'es': 'Escriba su correo...',
      'en': 'Write your email...',
    },
    'peaya8h0': {
      'es': 'Escriba su contraseña...',
      'en': 'Enter your password...',
    },
    'pxldxy1f': {
      'es': 'Iniciar sesión',
      'en': 'Log in',
    },
    'hb63nwok': {
      'es': '¿Olvidó la contraseña?',
      'en': 'Forgot your password?',
    },
    '1pfdlmjc': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // HomePageProfesor
  {
    '76fkc81y': {
      'es': '¡Bienvenido, Saul!',
      'en': 'Welcome, Saul!',
    },
    'koz4tbzp': {
      'es': 'Mis Grupos',
      'en': 'My Groups',
    },
    'sfgof2wt': {
      'es': 'Notas',
      'en': 'Grades',
    },
    'h7b68dzp': {
      'es': 'Anuncios',
      'en': 'Advertisements',
    },
    '769ysalm': {
      'es': 'Estudiantes',
      'en': 'Students',
    },
    '9dcmrvxv': {
      'es': 'Tareas',
      'en': 'Tasks',
    },
    'bryj21om': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // RegistroUsuarios
  {
    'm7230ohf': {
      'es': 'Academia Link',
      'en': 'Link Academy',
    },
    'qjvufueg': {
      'es': 'Registro de Usuarios',
      'en': 'User Registration',
    },
    '7m9p95gn': {
      'es': '¡Ingresa los datos de un nuevo usuario!',
      'en': 'Enter the data of a new user!',
    },
    '6j1vojhr': {
      'es': 'Cédula',
      'en': 'Identification card',
    },
    'szlnbj9t': {
      'es': 'Nombre',
      'en': 'Name',
    },
    '20telw6c': {
      'es': 'Primer Apellido',
      'en': 'Surname',
    },
    'qbd9aowh': {
      'es': 'Segundo Apellido',
      'en': 'Second surname',
    },
    '7ojydtve': {
      'es': 'Correo Electrónico',
      'en': 'Email',
    },
    '9dukvljz': {
      'es': 'Profesor',
      'en': 'Teacher',
    },
    '6qutjji5': {
      'es': 'Estudiante',
      'en': 'Student',
    },
    'aymhcll0': {
      'es': 'Rol',
      'en': 'Role',
    },
    'x0ac9fwh': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'iafi4bcr': {
      'es': '¡Registrar!',
      'en': 'To register!',
    },
    'uhk4uofo': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // MisgruposProfesor
  {
    'fqy9ve4x': {
      'es': 'Sección:5-1',
      'en': 'Section:5-1',
    },
    '40vflgv9': {
      'es': ':25',
      'en': ':25',
    },
    'ocz937zn': {
      'es': 'Pasar Lista',
      'en': 'Roll Call',
    },
    'm16epqbx': {
      'es': 'Ver Grupo',
      'en': 'See Group',
    },
    'jx3mvuf2': {
      'es': 'Sección:7-3',
      'en': 'Section:7-3',
    },
    'ipy83ta5': {
      'es': ':21',
      'en': ':twenty-one',
    },
    'sq01zpif': {
      'es': 'Pasar Lista',
      'en': 'Roll Call',
    },
    '3nzy3cek': {
      'es': 'Ver Grupo',
      'en': 'See Group',
    },
    'q2govzap': {
      'es': 'Sección:7-2',
      'en': 'Section:7-2',
    },
    'tfqbqp93': {
      'es': ':24',
      'en': ':24',
    },
    'l4g8teh3': {
      'es': 'Pasar Lista',
      'en': 'Roll Call',
    },
    'a6hpimrj': {
      'es': 'Ver Grupo',
      'en': 'See Group',
    },
    'v3watfvf': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // ListarUsuarios
  {
    '7yvsww3v': {
      'es': 'Usuarios dentro del Sistema',
      'en': 'Users within the System',
    },
    'qaietj14': {
      'es':
          'Debajo encontrata una lista para poder observar a todos los ususarios ingresados en el sistema.',
      'en':
          'Below you will find a list to see all the users logged into the system.',
    },
    'avi9htf5': {
      'es': 'Buscar usuarios...',
      'en': 'Search users...',
    },
    'pjdmkw5g': {
      'es': 'All',
      'en': 'All',
    },
    '1gaosw3y': {
      'es': 'Estudiantes',
      'en': 'Students',
    },
    '8ru7ai61': {
      'es': 'Profesores',
      'en': 'Teachers',
    },
    'j28b4atz': {
      'es': 'Administradores',
      'en': 'Administrators',
    },
    'doiusece': {
      'es': 'All',
      'en': 'All',
    },
    '54ygb3uh': {
      'es': 'All',
      'en': 'All',
    },
    'n6vffhlq': {
      'es': 'Nombre',
      'en': 'Name',
    },
    'blmyaeko': {
      'es': 'Cedula',
      'en': 'Identification card',
    },
    '6mjvcz8u': {
      'es': 'Titulo',
      'en': 'Qualification',
    },
    'ovoo5dw1': {
      'es': 'Estado',
      'en': 'State',
    },
    'kbcqfrd7': {
      'es': 'Saúl Hernández',
      'en': 'Saul Hernandez',
    },
    '8hzmwhpk': {
      'es': 'saulhernandez@gmail.com',
      'en': 'saulhernandez@gmail.com',
    },
    'alwz1cxd': {
      'es': '12837612',
      'en': '12837612',
    },
    '7t98f6q1': {
      'es': 'Profesor de Español',
      'en': 'Spanish teacher',
    },
    '92s13b5j': {
      'es': 'Activo',
      'en': 'Asset',
    },
    '2ya5rg8w': {
      'es': 'Andrés León',
      'en': 'Andres Leon',
    },
    'xusn6gxg': {
      'es': 'andresleon@gmail.com',
      'en': 'andresleon@gmail.com',
    },
    'lgbcx8u7': {
      'es': '219387129',
      'en': '219387129',
    },
    '8sp7qit5': {
      'es': 'Profesor de Ingles',
      'en': 'Professor of English',
    },
    'kfw1j2yh': {
      'es': 'Inactivo',
      'en': 'Idle',
    },
    'g8nkc0n5': {
      'es': 'Ian Rizo',
      'en': 'Ian Rizo',
    },
    '3kmpwyxo': {
      'es': 'ianrizo@gmail.com',
      'en': 'ianrizo@gmail.com',
    },
    'keddcsri': {
      'es': '21376512',
      'en': '2142-05-12T06:00:00Z',
    },
    '7dulgg2e': {
      'es': 'Estudiante',
      'en': 'Student',
    },
    'w2gzb1ok': {
      'es': 'Inactivo',
      'en': 'Idle',
    },
    '7tsvjuqi': {
      'es': 'Luis Pérez',
      'en': 'Luis Perez',
    },
    'qtsqtmt5': {
      'es': 'luisperez@gmail.com',
      'en': 'luisperez@gmail.com',
    },
    '0i5w0n88': {
      'es': '1927837290',
      'en': '1927837290',
    },
    '3ap2ivms': {
      'es': 'Estudiante',
      'en': 'Student',
    },
    '367mh9g1': {
      'es': 'Inactivo',
      'en': 'Idle',
    },
    'ljfcql2r': {
      'es': 'Ariel Ramos',
      'en': 'Ariel Ramos',
    },
    'g089f916': {
      'es': 'arielramos@gmail.com',
      'en': 'arielramos@gmail.com',
    },
    'kz1sct6t': {
      'es': '41929182',
      'en': '4199-09-20T06:00:00Z',
    },
    '33nxgwss': {
      'es': 'Administrador',
      'en': 'Administrator',
    },
    'oa3vhok6': {
      'es': 'Activo',
      'en': 'Asset',
    },
    'vyjn3wn8': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // EditarUsuarios
  {
    '4oysvcsi': {
      'es': 'Cancelar',
      'en': 'Cancel',
    },
    '84u8ir6u': {
      'es': 'Editar Perfil',
      'en': 'Edit profile',
    },
    'fmaya8f0': {
      'es': 'Guardar',
      'en': 'Keep',
    },
    'lxa52eeo': {
      'es': 'Cédula',
      'en': 'Identification card',
    },
    'vz9gp7mm': {
      'es': '1-1624-0337',
      'en': '1-1624-0337',
    },
    'sa4rhc44': {
      'es': 'Nombre',
      'en': 'Name',
    },
    '0djusxrk': {
      'es': 'Luis Daniel',
      'en': 'Luis Daniel',
    },
    'd0xtwbn7': {
      'es': 'P. Apellido',
      'en': 'P. Last name',
    },
    '0oenk9gh': {
      'es': 'Pérez',
      'en': 'Perez',
    },
    'o6qwcflk': {
      'es': 'S. Apellido',
      'en': 'S. Surname',
    },
    'hwgg7evn': {
      'es': 'Sánchez',
      'en': 'Sanchez',
    },
    'aa5h8r1c': {
      'es': 'Correo E.',
      'en': 'E-mail',
    },
    '5tczjpxd': {
      'es': 'ldperez.0711@gmail.com',
      'en': 'ldperez.0711@gmail.com',
    },
    '650m0mlo': {
      'es': 'Rol',
      'en': 'Role',
    },
    'ovwxzdmf': {
      'es': 'Profesor',
      'en': 'Teacher',
    },
    'xl3fracl': {
      'es': 'Estudiante',
      'en': 'Student',
    },
    'chtcyd33': {
      'es': 'Profesor',
      'en': 'Teacher',
    },
    'gufksge5': {
      'es': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'owv22lt1': {
      'es': 'Eliminar Usuario',
      'en': 'Delete User',
    },
    '4gy00qjp': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // HomePageEstudiante
  {
    'q5k3msva': {
      'es': 'Mis Notas',
      'en': 'My notes',
    },
    'jfsddhcx': {
      'es': 'Anuncios',
      'en': 'Advertisements',
    },
    '205no9wa': {
      'es': 'Tareas',
      'en': 'Tasks',
    },
    '2vilfimz': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // Anuncios
  {
    'yfec0vh5': {
      'es': 'Anuncios de la semana',
      'en': 'Announcements of the week',
    },
    'j0tmp780': {
      'es':
          'Recuerda que este viernes es viernes de COLORES, todos los estudiantes podrán utilizar ropa particular. Atte: La dirección\n\nCosto: ₡200',
      'en':
          'Remember that this Friday is COLORS Friday, all students will be able to wear private clothing. Atte: The address\n\nCost: ₡200',
    },
    '24da1euu': {
      'es':
          'El próximo 16 de Febrero del 2024 la Escuela se encontrará CERRADA de acuerdo al comunicado del MEP el pasado 10 de Febrero sobre el día de bienestar mental. Atte: La dirección',
      'en':
          'On February 16, 2024, the School will be CLOSED according to the MEP statement on February 10 regarding mental well-being day. Atte: The address',
    },
    'cjdd784u': {
      'es':
          'Les recordamos que el próximo 20 de Febrero será la primera reunión de padres, esta se llevará a cabo en el aula respectiva de cada estudiante, NO utilizar la sala común para estos propósitos. Atte: La dirección',
      'en':
          'We remind you that next February 20 will be the first parent meeting, this will take place in the respective classroom of each student, DO NOT use the common room for these purposes. Atte: The address',
    },
    'm1qg1s38': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // TareasProfesor
  {
    'tzb5hd7f': {
      'es': 'Tareas',
      'en': 'Tasks',
    },
    'yeu8wq3u': {
      'es': 'Nueva ',
      'en': 'New',
    },
    'tb6zu1fg': {
      'es': 'Tarea 1',
      'en': 'Homework 1',
    },
    'n01o1nw5': {
      'es': 'Estado:',
      'en': 'State:',
    },
    '8p9ghl0m': {
      'es': ' Activa',
      'en': 'Active',
    },
    'sk731lo2': {
      'es':
          'Deben realizar una investigación de los planetas del sistema solar y dar una referencia bibliografica de 3 fuentes con un resumen de su preferencia. El trabajo debe contar con portada, introducción, desarrollo y referencias. ',
      'en':
          'They must carry out an investigation of the planets of the solar system and give a bibliographic reference from 3 sources with a summary of their preference. The work must have a cover, introduction, development and references.',
    },
    '6g9gp0po': {
      'es': 'Tarea 2',
      'en': 'Task 2',
    },
    'xm8aus4a': {
      'es': 'Estado:',
      'en': 'State:',
    },
    'ti81v808': {
      'es': ' Inactiva',
      'en': 'Inactive',
    },
    'xbrtstef': {
      'es':
          'Deben realizar una investigación de los planetas del sistema solar y dar una referencia bibliografica de 3 fuentes con un resumen de su preferencia. El trabajo debe contar con portada, introducción, desarrollo y referencias. ',
      'en':
          'They must carry out an investigation of the planets of the solar system and give a bibliographic reference from 3 sources with a summary of their preference. The work must have a cover, introduction, development and references.',
    },
    'qihnjemw': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // CrearAnuncios
  {
    'v50819zs': {
      'es': 'Nuevo Anuncio',
      'en': 'New Announcement',
    },
    '75mv3s4r': {
      'es': 'Descripcion',
      'en': 'Description',
    },
    'k94g18o5': {
      'es': 'Escriba aca todos los detalles de el anuncio a publicar...',
      'en':
          'Write here all the details of the advertisement to be published...',
    },
    '9ydmp47i': {
      'es': 'Publicar Anuncio',
      'en': 'Post Ad',
    },
    '2zm9udh8': {
      'es': 'Crear Anuncio',
      'en': 'Create Ad',
    },
  },
  // AdminVisualizarAnuncios
  {
    '0u41urly': {
      'es': 'Anuncios',
      'en': 'Advertisements',
    },
    'nagpesk3': {
      'es': 'Nueva ',
      'en': 'New',
    },
    'anuu03iv': {
      'es': 'Anuncio 1 ',
      'en': 'Advertisement 1',
    },
    'h0cq9dl1': {
      'es':
          'Recuerda que este viernes es viernes de COLORES, todos los estudiantes podrán utilizar ropa particular. Atte: La dirección\n\nCosto: ₡200',
      'en':
          'Remember that this Friday is COLORS Friday, all students will be able to wear private clothing. Atte: The address\n\nCost: ₡200',
    },
    'fmsk22yy': {
      'es': 'Anuncio 2 ',
      'en': 'Advertisement 2',
    },
    'f1r5hx8x': {
      'es':
          'Les recordamos que el próximo 20 de Febrero será la primera reunión de padres, esta se llevará a cabo en el aula respectiva de cada estudiante, NO utilizar la sala común para estos propósitos. \n\nAtte: La dirección',
      'en':
          'We remind you that next February 20 will be the first parent meeting, this will take place in the respective classroom of each student, DO NOT use the common room for these purposes.\n\nAtte: The address',
    },
    '38w9os49': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // EliminarAnuncio
  {
    'enyxhdqt': {
      'es': 'Eliminar Anuncio',
      'en': 'Delete Ad',
    },
    '48zk1b3f': {
      'es': 'Descripcion',
      'en': 'Description',
    },
    'bu580dav': {
      'es':
          'Recuerda que este viernes es viernes de COLORES, todos los estudiantes podrán utilizar ropa particular. Atte: La dirección\n\nCosto: ₡200',
      'en':
          'Remember that this Friday is COLORS Friday, all students will be able to wear private clothing. Atte: The address\n\nCost: ₡200',
    },
    'e5mantiv': {
      'es': 'Eliminar Anuncio',
      'en': 'Delete Ad',
    },
    '7t0lmqdl': {
      'es': 'Eliminar Anuncio',
      'en': 'Delete Ad',
    },
  },
  // ModificarAnuncio
  {
    '39eh05my': {
      'es': 'Modificar Anuncio',
      'en': 'Modify Ad',
    },
    '83p7nyj9': {
      'es': 'Descripcion',
      'en': 'Description',
    },
    '3092a997': {
      'es':
          'Recuerda que este viernes es viernes de COLORES, todos los estudiantes podrán utilizar ropa particular. Atte: La dirección\n\nCosto: ₡200',
      'en':
          'Remember that this Friday is COLORS Friday, all students will be able to wear private clothing. Atte: The address\n\nCost: ₡200',
    },
    's0dt8kvq': {
      'es': 'Confirmar Modificacion',
      'en': 'Confirm Modification',
    },
    'ck7318d8': {
      'es': 'Modificar Anuncio',
      'en': 'Modify Ad',
    },
  },
  // CrearTareaProfesor
  {
    '8pw5486q': {
      'es': 'Tareas',
      'en': 'Tasks',
    },
    'o0zoahev': {
      'es': 'Nombre de la tarea:',
      'en': 'Name of the homework:',
    },
    'oa8j9cu5': {
      'es': 'Tarea 1',
      'en': 'Homework 1',
    },
    'k8v9k01w': {
      'es': 'Descripción:',
      'en': 'Description:',
    },
    'z8gsxd0x': {
      'es':
          'Deben realizar una investigación de los planetas del sistema solar y dar una referencia bibliografica de 3 fuentes con un resumen de su preferencia. El trabajo debe contar con portada, introducción, desarrollo y referencias. ',
      'en':
          'They must carry out an investigation of the planets of the solar system and give a bibliographic reference from 3 sources with a summary of their preference. The work must have a cover, introduction, development and references.',
    },
    '3nsjec9b': {
      'es': 'Fecha Límite:',
      'en': 'Deadline:',
    },
    'ebuv62lj': {
      'es': '16/02/2024',
      'en': '02/16/2024',
    },
    'z639ivu8': {
      'es': 'Calendario',
      'en': 'Calendar',
    },
    'w0fb62h9': {
      'es': 'Estado:',
      'en': 'State:',
    },
    '2tqihs79': {
      'es': 'Cancelar',
      'en': 'Cancel',
    },
    'xxdsjvk6': {
      'es': 'Crear',
      'en': 'Create',
    },
    'vdek2wqd': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // EditarTareaProfesor
  {
    '772yryrb': {
      'es': 'Tareas',
      'en': 'Tasks',
    },
    'jmqg9i7y': {
      'es': 'Nombre de la tarea:',
      'en': 'Name of the homework:',
    },
    'pk23ukla': {
      'es': 'Tarea 2 - Editada',
      'en': 'Task 2 - Edited',
    },
    'dbhhamlv': {
      'es': 'Descripción:',
      'en': 'Description:',
    },
    'ca8ovjny': {
      'es':
          'Deben realizar una investigación de los planetas del sistema solar y dar una referencia bibliografica de 3 fuentes con un resumen de su preferencia. El trabajo debe contar con portada, introducción, desarrollo y referencias. ',
      'en':
          'They must carry out an investigation of the planets of the solar system and give a bibliographic reference from 3 sources with a summary of their preference. The work must have a cover, introduction, development and references.',
    },
    'ev4rjtpr': {
      'es': 'Fecha Límite:',
      'en': 'Deadline:',
    },
    '28j8i5ly': {
      'es': '16/05/2024',
      'en': '05/16/2024',
    },
    'e0rjn190': {
      'es': 'Calendario',
      'en': 'Calendar',
    },
    's0eq44ai': {
      'es': 'Estado:',
      'en': 'State:',
    },
    'jqx8hhty': {
      'es': 'Cancelar',
      'en': 'Cancel',
    },
    'hnvmt8sx': {
      'es': 'Guardar',
      'en': 'Keep',
    },
    'pmg2t1hv': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // ListarAlumnos
  {
    '3je7jaka': {
      'es': 'Alumnos',
      'en': 'Students',
    },
    'r94wa7ha': {
      'es': 'Alumnos de la institución',
      'en': 'Students of the institution',
    },
    's5l2iuej': {
      'es':
          'Debajo encontrará una lista para poder observar a todos los alumnos ingresados en el sistema.',
      'en':
          'Below you will find a list to see all the students entered into the system.',
    },
    'h48ht98a': {
      'es': 'Buscar alumno...',
      'en': 'Search student...',
    },
    'lzgd32wd': {
      'es': 'Nombre',
      'en': 'Name',
    },
    'xl25j1nl': {
      'es': 'Cedula',
      'en': 'Identification card',
    },
    'toe55snl': {
      'es': 'Grado',
      'en': 'Degree',
    },
    'fjxocov8': {
      'es': 'Saúl Hernández',
      'en': 'Saul Hernandez',
    },
    'pvjoxw87': {
      'es': 'saulhernandez@gmail.com',
      'en': 'saulhernandez@gmail.com',
    },
    'zeeu8mb9': {
      'es': '12837612',
      'en': '12837612',
    },
    'wkvcjo8f': {
      'es': 'Sexto',
      'en': 'Sixth',
    },
    'tuki0p3l': {
      'es': 'Andrés León',
      'en': 'Andres Leon',
    },
    '51r7n4f5': {
      'es': 'andresleon@gmail.com',
      'en': 'andresleon@gmail.com',
    },
    'tdsa6228': {
      'es': '219387129',
      'en': '219387129',
    },
    'lfkqc6c3': {
      'es': 'Quinto',
      'en': 'Fifth',
    },
    'vfjdlxl5': {
      'es': 'Ian Rizo',
      'en': 'Ian Rizo',
    },
    'zbxxwhne': {
      'es': 'ianrizo@gmail.com',
      'en': 'ianrizo@gmail.com',
    },
    'vaqs3jq8': {
      'es': '21376512',
      'en': '2142-05-12T06:00:00Z',
    },
    'z1qj8p1z': {
      'es': 'Sexto',
      'en': 'Sixth',
    },
    'i11dbwes': {
      'es': 'Luis Pérez',
      'en': 'Luis Perez',
    },
    'k58zjogp': {
      'es': 'luisperez@gmail.com',
      'en': 'luisperez@gmail.com',
    },
    's37rnkbq': {
      'es': '1927837290',
      'en': '1927837290',
    },
    'ppliom0l': {
      'es': 'Cuarto',
      'en': 'Room',
    },
    'f8x2d1tg': {
      'es': 'Ariel Ramos',
      'en': 'Ariel Ramos',
    },
    'jszni9qx': {
      'es': 'arielramos@gmail.com',
      'en': 'arielramos@gmail.com',
    },
    '30z6bucc': {
      'es': '41929182',
      'en': '4199-09-20T06:00:00Z',
    },
    'z1e4o2z1': {
      'es': 'Sexto',
      'en': 'Sixth',
    },
    '492nrgt9': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // Perfil
  {
    'cx3lza08': {
      'es': 'Perfil',
      'en': 'Profile',
    },
    'iq23ej5i': {
      'es': 'Cédula:',
      'en': 'Identification card:',
    },
    '6sphabko': {
      'es': '1-1624-0337',
      'en': '1-1624-0337',
    },
    'zow6l3pf': {
      'es': 'Nombre:',
      'en': 'Name:',
    },
    '9paf87hd': {
      'es': 'Saúl',
      'en': 'Saul',
    },
    '7u8rhoib': {
      'es': 'P. Apellido:',
      'en': 'Q. Last name:',
    },
    '7ncfftfs': {
      'es': 'Hernández',
      'en': 'Hernandez',
    },
    'didwakcd': {
      'es': 'S. Apellido:',
      'en': 'S. Last name:',
    },
    '2obh7da7': {
      'es': 'Araya',
      'en': 'Araya',
    },
    'f3cc4lma': {
      'es': 'Correo E.:',
      'en': 'Email:',
    },
    'gzvho65y': {
      'es': 'shernandez60228@ufide.ac.cr',
      'en': 'shernandez60228@ufide.ac.cr',
    },
    'vk5vb736': {
      'es': 'Usuario:',
      'en': 'User:',
    },
    'viffzz88': {
      'es': 'Profesor',
      'en': 'Teacher',
    },
    'uh1qje3g': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // EditarGrupos
  {
    '10wzcegf': {
      'es': '¡Bienvenido, Saul!',
      'en': 'Welcome, Saul!',
    },
    'nx2zdl1l': {
      'es': 'Grupo7-2',
      'en': 'Group7-2',
    },
    'eisz17io': {
      'es': ':25',
      'en': ':25',
    },
    '03g1vrz1': {
      'es': 'Nombre:',
      'en': 'Name:',
    },
    'ku4btqm4': {
      'es': 'Ian Rizo Zuñiga',
      'en': 'Ian Rizo Zuñiga',
    },
    'q1so15hn': {
      'es': 'Cedúla:',
      'en': 'Identification card:',
    },
    'gozc3g17': {
      'es': '1-1866-0462',
      'en': '1-1866-0462',
    },
  },
  // EliminarGrupos
  {
    'y1h3ie8j': {
      'es': 'Eliminar Grupo',
      'en': 'Delete Group',
    },
    'tfokl1lu': {
      'es': 'Correo Electronico del Profesor',
      'en': 'Teacher Email',
    },
    '0wej4nxa': {
      'es': 'Ingrese el correo electronico del profesor',
      'en': 'Enter the teacher\'s email',
    },
    '8r3zfu1w': {
      'es': 'andresleon@gmail.com',
      'en': 'andresleon@gmail.com',
    },
    'xwidkpt6': {
      'es': 'Correo de los estudiantes',
      'en': 'student mail',
    },
    'zpni738n': {
      'es': 'Ingrese el correo electronico de los estudiantes',
      'en': 'Enter the students email',
    },
    '01hvhrri': {
      'es': 'ianrizo@gmail.com',
      'en': 'ianrizo@gmail.com',
    },
    'bu0edipn': {
      'es': 'Nombre de la clase',
      'en': 'class name',
    },
    'wz943cp1': {
      'es': 'Ingrese el nombre de la clase',
      'en': 'Enter the class name',
    },
    'earvmy7y': {
      'es': 'Español Tercer Grado - Clase A',
      'en': 'Spanish Third Grade - Class A',
    },
    'fc8bg4ic': {
      'es': 'Agregar más estudiantes',
      'en': 'Add more students',
    },
    'e6585ox7': {
      'es': 'Confirmar eliminación de grupo',
      'en': 'Confirm group deletion',
    },
    '1i4egg27': {
      'es': 'Cancelar',
      'en': 'Cancel',
    },
  },
  // ListarGrupo
  {
    '71e8lc7z': {
      'es': 'Pasar Lista',
      'en': 'Roll Call',
    },
    '4l0tefbj': {
      'es': 'Lista de:Grupo 7-2',
      'en': 'List of:Group 7-2',
    },
    'r13sdf9t': {
      'es': 'Fecha: 3/11/2024',
      'en': 'Date: 11/3/2024',
    },
    'vojgmz9n': {
      'es': 'Alumnos:',
      'en': 'Students:',
    },
    'z9aihxar': {
      'es': 'Nombre:',
      'en': 'Name:',
    },
    's6agtczj': {
      'es': 'Ian Rizo Zuñiga',
      'en': 'Ian Rizo Zuñiga',
    },
    'mkta2dyu': {
      'es': 'Cedúla:',
      'en': 'Identification card:',
    },
    '68hzd0uv': {
      'es': '1-1866-0462',
      'en': '1-1866-0462',
    },
    'f6l3rsf8': {
      'es': 'Presente',
      'en': 'Present',
    },
    '1b2oevak': {
      'es': 'Nombre:',
      'en': 'Name:',
    },
    '74kptzj2': {
      'es': 'Ian Rizo Zuñiga',
      'en': 'Ian Rizo Zuñiga',
    },
    'zrrmhfum': {
      'es': 'Cedúla:',
      'en': 'Identification card:',
    },
    '9ata9fjw': {
      'es': '1-1866-0462',
      'en': '1-1866-0462',
    },
    'lqbsqwwn': {
      'es': 'Presente',
      'en': 'Present',
    },
    'gniy3p46': {
      'es': 'Nombre:',
      'en': 'Name:',
    },
    '5thdysnz': {
      'es': 'Ian Rizo Zuñiga',
      'en': 'Ian Rizo Zuñiga',
    },
    'knm3d9ga': {
      'es': 'Cedúla:',
      'en': 'Identification card:',
    },
    'htyd2aw1': {
      'es': '1-1866-0462',
      'en': '1-1866-0462',
    },
    'qyz2r91y': {
      'es': 'Presente',
      'en': 'Present',
    },
    'lojruu85': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // RecuperarContrasena
  {
    's4ib1iy3': {
      'es': 'Academia Link',
      'en': 'Link Academy',
    },
    '8qcvygc1': {
      'es': 'Recuperar Contraseña',
      'en': 'Recover password',
    },
    'd57ek7gb': {
      'es':
          'Ingrese el correo electrónico al que  desea recibir el link de recuperación',
      'en': 'You will receive instructions to reset your password.',
    },
    'ypbuyvhb': {
      'es': 'Escriba su correo...',
      'en': 'Write your email...',
    },
    '01zm5oiu': {
      'es': 'Solicitar link',
      'en': 'Request link',
    },
    '9ye3vprz': {
      'es': 'Regresar',
      'en': 'Request link',
    },
    'oybom7g9': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // Creargrupos
  {
    '1qcb2adm': {
      'es': 'Creación de grupo\n',
      'en': 'Roll Call',
    },
    'ug8qmusg': {
      'es': 'Home',
      'en': 'home',
    },
  },
  // slideLateral
  {
    '5ppzx77q': {
      'es': 'Account Options',
      'en': 'Account Options',
    },
    'h0036761': {
      'es': 'Randy Peterson',
      'en': 'Randy Peterson',
    },
    'nsihr1j9': {
      'es': 'randy.p@domainname.com',
      'en': 'randy.p@domainname.com',
    },
    'iikabzt7': {
      'es': 'My Account',
      'en': 'My Account',
    },
    '4ngurs3i': {
      'es': 'Settings',
      'en': 'Settings',
    },
    'ka0vepzv': {
      'es': 'Billing Details',
      'en': 'Billing Details',
    },
    'm8n3bary': {
      'es': 'Log out',
      'en': 'Log out',
    },
  },
  // Miscellaneous
  {
    'os61fs8l': {
      'es': '',
      'en': '',
    },
    'bwz91ww6': {
      'es': '',
      'en': '',
    },
    'kds8h1u5': {
      'es': '',
      'en': '',
    },
    '8n9g6xp6': {
      'es': '',
      'en': '',
    },
    'evfgufzn': {
      'es': '',
      'en': '',
    },
    'mzs5snyc': {
      'es': '',
      'en': '',
    },
    '3tyz7ule': {
      'es': '',
      'en': '',
    },
    'e4wargyv': {
      'es': '',
      'en': '',
    },
    'gi7r8wzj': {
      'es': '',
      'en': '',
    },
    'st1da586': {
      'es': '',
      'en': '',
    },
    '9lgwga7o': {
      'es': '',
      'en': '',
    },
    'si93g0ca': {
      'es': '',
      'en': '',
    },
    'qtsvzhac': {
      'es': '',
      'en': '',
    },
    'e2t0zer8': {
      'es': '',
      'en': '',
    },
    '5qct0ms5': {
      'es': '',
      'en': '',
    },
    'vebwjme3': {
      'es': '',
      'en': '',
    },
    'iaolm01x': {
      'es': '',
      'en': '',
    },
    'wp7kwfip': {
      'es': '',
      'en': '',
    },
    '4rr2peww': {
      'es': '',
      'en': '',
    },
    'lotcqtga': {
      'es': '',
      'en': '',
    },
    '7dn1f8qh': {
      'es': '',
      'en': '',
    },
    '00otkv2b': {
      'es': '',
      'en': '',
    },
    's30qs48d': {
      'es': '',
      'en': '',
    },
    'pfut9yjr': {
      'es': '',
      'en': '',
    },
    'lnbavid4': {
      'es': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));

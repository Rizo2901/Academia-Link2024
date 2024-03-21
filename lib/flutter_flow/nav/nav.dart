import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';

import '/auth/base_auth_user_provider.dart';

import '/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? const HomePageProfesorWidget() : const InicioWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.loggedIn
              ? const HomePageProfesorWidget()
              : const InicioWidget(),
        ),
        FFRoute(
          name: 'Inicio',
          path: '/inicio',
          builder: (context, params) => const InicioWidget(),
        ),
        FFRoute(
          name: 'Login',
          path: '/login',
          builder: (context, params) => const LoginWidget(),
        ),
        FFRoute(
          name: 'HomePageProfesor',
          path: '/homePageProfesor',
          asyncParams: {
            'profesorName':
                getDoc(['profesores'], ProfesoresRecord.fromSnapshot),
          },
          builder: (context, params) => HomePageProfesorWidget(
            profeso: params.getParam('profeso', ParamType.String),
            profesorName: params.getParam('profesorName', ParamType.Document),
          ),
        ),
        FFRoute(
          name: 'CrearUsuario',
          path: '/crearUsuario',
          builder: (context, params) => const CrearUsuarioWidget(),
        ),
        FFRoute(
          name: 'MisgruposProfesor',
          path: '/misgruposProfesor',
          asyncParams: {
            'profesor': getDoc(['profesores'], ProfesoresRecord.fromSnapshot),
            'grupo': getDoc(['grupos'], GruposRecord.fromSnapshot),
          },
          builder: (context, params) => MisgruposProfesorWidget(
            profesor: params.getParam('profesor', ParamType.Document),
            grupo: params.getParam('grupo', ParamType.Document),
          ),
        ),
        FFRoute(
          name: 'ListaUsuarios-Pendiente',
          path: '/listaUsuariosPendiente',
          builder: (context, params) => const ListaUsuariosPendienteWidget(),
        ),
        FFRoute(
          name: 'ListaTareas',
          path: '/listaTareas',
          builder: (context, params) => const ListaTareasWidget(),
        ),
        FFRoute(
          name: 'CrearAnuncios',
          path: '/crearAnuncios',
          builder: (context, params) => const CrearAnunciosWidget(),
        ),
        FFRoute(
          name: 'ListaAnuncios',
          path: '/listaAnuncios',
          builder: (context, params) => const ListaAnunciosWidget(),
        ),
        FFRoute(
          name: 'CrearTareaProfesor',
          path: '/crearTareaProfesor',
          builder: (context, params) => const CrearTareaProfesorWidget(),
        ),
        FFRoute(
          name: 'EditarTareaProfesor',
          path: '/editarTareaProfesor',
          asyncParams: {
            'tareas': getDoc(['tareas'], TareasRecord.fromSnapshot),
          },
          builder: (context, params) => EditarTareaProfesorWidget(
            tareas: params.getParam('tareas', ParamType.Document),
          ),
        ),
        FFRoute(
          name: 'ListaEstudiantes',
          path: '/listaEstudiantes',
          builder: (context, params) => const ListaEstudiantesWidget(),
        ),
        FFRoute(
          name: 'Perfil',
          path: '/perfil',
          builder: (context, params) => const PerfilWidget(),
        ),
        FFRoute(
          name: 'EditarGrupos-Pendiente',
          path: '/editarGruposPendiente',
          builder: (context, params) => EditarGruposPendienteWidget(
            grupoEditar: params.getParam(
                'grupoEditar', ParamType.DocumentReference, false, ['grupos']),
          ),
        ),
        FFRoute(
          name: 'EliminarGrupos-Pendiente',
          path: '/eliminarGruposPendiente',
          builder: (context, params) => const EliminarGruposPendienteWidget(),
        ),
        FFRoute(
          name: 'ListaGrupo-Pendiente',
          path: '/listaGrupoPendiente',
          builder: (context, params) => ListaGrupoPendienteWidget(
            grupoLista: params.getParam<DocumentReference>(
                'grupoLista', ParamType.DocumentReference, true, ['grupos']),
          ),
        ),
        FFRoute(
          name: 'RecuperarContrasena',
          path: '/recuperarContrasena',
          builder: (context, params) => const RecuperarContrasenaWidget(),
        ),
        FFRoute(
          name: 'Creargrupos',
          path: '/creargrupos',
          asyncParams: {
            'profesor': getDoc(['profesores'], ProfesoresRecord.fromSnapshot),
            'creaGrupo': getDoc(['grupos'], GruposRecord.fromSnapshot),
          },
          builder: (context, params) => CreargruposWidget(
            profesor: params.getParam('profesor', ParamType.Document),
            creaGrupo: params.getParam('creaGrupo', ParamType.Document),
            item: params.getParam('item', ParamType.String),
            grupoItem: params.getParam(
                'grupoItem', ParamType.DocumentReference, false, ['grupos']),
          ),
        ),
        FFRoute(
          name: 'EditarUsuario',
          path: '/editarUsuario',
          builder: (context, params) => const EditarUsuarioWidget(),
        ),
        FFRoute(
          name: 'EditarAnuncios',
          path: '/editarAnuncios',
          builder: (context, params) => EditarAnunciosWidget(
            anuncioEditar: params.getParam('anuncioEditar',
                ParamType.DocumentReference, false, ['anuncios']),
          ),
        ),
        FFRoute(
          name: 'ListaLikes-Pendiente',
          path: '/listaLikesPendiente',
          asyncParams: {
            'dddd': getDoc(['anuncios'], AnunciosRecord.fromSnapshot),
          },
          builder: (context, params) => ListaLikesPendienteWidget(
            dddd: params.getParam('dddd', ParamType.Document),
          ),
        ),
        FFRoute(
          name: 'PerfilEstudiante',
          path: '/perfilEstudiante',
          asyncParams: {
            'perfilEstudiantes':
                getDoc(['estudiantes'], EstudiantesRecord.fromSnapshot),
          },
          builder: (context, params) => PerfilEstudianteWidget(
            perfilEstudiantes:
                params.getParam('perfilEstudiantes', ParamType.Document),
          ),
        ),
        FFRoute(
          name: 'HomePageEstudiante',
          path: '/homePageEstudiante',
          asyncParams: {
            'profesorName':
                getDoc(['profesores'], ProfesoresRecord.fromSnapshot),
          },
          builder: (context, params) => HomePageEstudianteWidget(
            profeso: params.getParam('profeso', ParamType.String),
            profesorName: params.getParam('profesorName', ParamType.Document),
          ),
        ),
        FFRoute(
          name: 'ListaProfesores-Pendiente',
          path: '/listaProfesoresPendiente',
          builder: (context, params) => const ListaProfesoresPendienteWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
    List<String>? collectionNamePath,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(param, type, isList,
        collectionNamePath: collectionNamePath);
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.location);
            return '/inicio';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouter.of(context).location;
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

import 'package:go_router/go_router.dart';
import 'package:resta_pucem/views/acercade_view.dart';
import 'package:resta_pucem/views/perfil_view.dart';
import 'package:resta_pucem/views/principal_view.dart';
import 'package:resta_pucem/views/splash_view.dart';
import 'package:resta_pucem/views/terminosycondiciones_view.dart';

/// The route configuration.
final GoRouter configRouter = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: PrincipalView.routeName,
      name: PrincipalView.routeName,
      builder: (context, state) {
        return const PrincipalView();
      },
      routes: [
        GoRoute(
          path: PerfilView.routeName,
          name: PerfilView.routeName,
          builder: (context, state) {
            return const PerfilView();
          },
        ),
        GoRoute(
          path: AcercaDeView.routeName,
          name: AcercaDeView.routeName,
          builder: (context, state) {
            return const AcercaDeView();
          },
        ),
        GoRoute(
          path: TerminosyCondicionesView.routeName,
          name: TerminosyCondicionesView.routeName,
          builder: (context, state) {
            return const TerminosyCondicionesView();
          },
        ),
      ],
    ),
    GoRoute(
      path: "/",
      builder: (context, state) {
        return const SplashView();
      },
    )
  ],
);

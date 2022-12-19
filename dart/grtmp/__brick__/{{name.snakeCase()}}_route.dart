import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class {{name.pascalCase()}}Route extends GoRouteData {
  {{name.pascalCase()}}Route();

  @override
  Page<void> buildPageWithState(BuildContext context, GoRouterState state) => const NoTransitionPage<void>(child: {{name.pascalCase()}}Screen());
}

GoRoute get ${{name.camelCase()}}Route => GoRouteData.$route(
      path: '/{{path}}',
      factory: ${{name.pascalCase()}}RouteExtension._fromState,
    );

extension ${{name.pascalCase()}}RouteExtension on {{name.pascalCase()}}Route {
  static {{name.pascalCase()}}Route _fromState(GoRouterState state) => {{name.pascalCase()}}Route();

  String get location => GoRouteData.$location(
        '/{{path}}',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}


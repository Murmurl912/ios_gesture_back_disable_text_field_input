
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'main.dart';

part 'route.g.dart';


final route = GoRouter(
  initialLocation:  const HomeRoute().location,
  observers: [

  ],
  routes: $appRoutes,
);

@TypedGoRoute<HomeRoute>(path: '/home', routes: [
  TypedGoRoute<DetailPageRoute>(path: "detail")
])
class HomeRoute extends GoRouteData {

  const HomeRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const CupertinoPage(child: HomePage());
  }

}


class DetailPageRoute extends GoRouteData {
  const DetailPageRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const CupertinoPage(child: DetailPage());
  }
}
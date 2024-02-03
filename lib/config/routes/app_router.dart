import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:novindus_test/core/constants/storege.dart';
import 'package:novindus_test/features/login/presentation/pages/login_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<CustomRoute> get routes => [
        CustomRoute(
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              FadeTransition(
            opacity: CurveTween(curve: Curves.easeInOutCirc).animate(animation),
            child: child,
          ),
          page: LoginRoute.page,
        ),
      ];
}

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final int? id = await getIntValue('id');
    if (id != null) {
      // User is authenticated, redirect to HomeScreen
      resolver.next(true);
    } else {
      // User is not authenticated, redirect to SigninScreen
      // router.replace(const SigninRoute());
    }
  }
}

class $AppRouter {}

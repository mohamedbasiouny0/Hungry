import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test2/core/routes/routing_helper.dart';
import 'package:test2/features/authentication/presentation/views/login_view.dart';
import 'package:test2/features/authentication/presentation/views/sign_up_view.dart';
import 'package:test2/features/home/presentation/views/home_view.dart';
import 'package:test2/root.dart';
import 'package:test2/splash.dart';

// ignore: unused_element
final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: RoutingHelper.splash,
      builder: (BuildContext context, GoRouterState state) =>
          const SplashView(),
    ),
    GoRoute(
      path: RoutingHelper.login,
      builder: (BuildContext context, GoRouterState state) => const LoginView(),
    ),
    GoRoute(
      path: RoutingHelper.home,
      builder: (BuildContext context, GoRouterState state) => const HomeView(),
    ),
    GoRoute(
      path: RoutingHelper.signUp,
      builder: (BuildContext context, GoRouterState state) =>
          const SignUpView(),
    ),
    GoRoute(
      path: RoutingHelper.root,
      builder: (BuildContext context, GoRouterState state) =>
          const Root(),
    ),
  ],
);

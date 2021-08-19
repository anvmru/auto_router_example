// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import 'auth_page.dart' as _i3;
import 'home_page.dart' as _i4;
import 'page1.dart' as _i5;
import 'page2.dart' as _i6;
import 'page3.dart' as _i7;
import 'page4.dart' as _i8;

class TheatreRouter extends _i1.RootStackRouter {
  TheatreRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    AuthRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.AuthPage();
        }),
    HomeRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i4.HomePage();
        }),
    Route1.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i5.Page1();
        },
        durationInMilliseconds: 0,
        opaque: true,
        barrierDismissible: false),
    Route2.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i6.Page2();
        }),
    Route3.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i7.Page3();
        }),
    Route4.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i8.Page4();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(AuthRoute.name, path: '/', children: [
          _i1.RouteConfig(Route1.name, path: ''),
          _i1.RouteConfig(Route2.name, path: 'Page2')
        ]),
        _i1.RouteConfig(HomeRoute.name, path: '/home-page', children: [
          _i1.RouteConfig(Route3.name, path: ''),
          _i1.RouteConfig(Route4.name, path: 'Page4')
        ])
      ];
}

class AuthRoute extends _i1.PageRouteInfo {
  const AuthRoute({List<_i1.PageRouteInfo>? children})
      : super(name, path: '/', initialChildren: children);

  static const String name = 'AuthRoute';
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute({List<_i1.PageRouteInfo>? children})
      : super(name, path: '/home-page', initialChildren: children);

  static const String name = 'HomeRoute';
}

class Route1 extends _i1.PageRouteInfo {
  const Route1() : super(name, path: '');

  static const String name = 'Route1';
}

class Route2 extends _i1.PageRouteInfo {
  const Route2() : super(name, path: 'Page2');

  static const String name = 'Route2';
}

class Route3 extends _i1.PageRouteInfo {
  const Route3() : super(name, path: '');

  static const String name = 'Route3';
}

class Route4 extends _i1.PageRouteInfo {
  const Route4() : super(name, path: 'Page4');

  static const String name = 'Route4';
}

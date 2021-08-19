import 'package:auto_route/auto_route.dart';
import 'package:auto_router_example/auth_page.dart';
import 'package:auto_router_example/home_page.dart';
import 'package:auto_router_example/page1.dart';
import 'package:auto_router_example/page2.dart';
import 'package:auto_router_example/page3.dart';
import 'package:auto_router_example/page4.dart';

// flutter packages pub run build_runner build

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: AuthPage,
      initial: true,
      children: <AutoRoute>[
        CustomRoute(page: Page1, initial: true, durationInMilliseconds: 0),
        AutoRoute(page: Page2),
      ],
    ),
    AutoRoute(
      page: HomePage,
      children: <AutoRoute>[
        AutoRoute(page: Page3, initial: true),
        AutoRoute(page: Page4),
      ],
    ),
  ],
)
class $TheatreRouter {}
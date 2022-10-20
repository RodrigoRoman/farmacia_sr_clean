import 'package:auto_route/auto_route.dart';
import 'package:farmacia_cl/presentation/splash/splash_page.dart';

import '../auth/sign_in_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',              
  routes:<AutoRoute>[
    AutoRoute(page:SplashPage,initial:true),
    AutoRoute(page:AuthPage)
  ]
)
class $Router{}
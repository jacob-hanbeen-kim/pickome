import 'package:auto_route/auto_route_annotations.dart';
import 'package:pickome/presentation/screens/Splash/splash_screen.dart';
import 'package:pickome/presentation/screens/sign_in/sign_in_screen.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: SplashScreen, initial: true),
    MaterialRoute(page: SignInScreen),
  ],
)
class $MyRouter {}

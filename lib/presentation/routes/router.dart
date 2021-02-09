import 'package:auto_route/auto_route_annotations.dart';
import 'package:pickome/presentation/routes/sign_in_route.dart';
import 'package:pickome/presentation/screens/forgot_password/forgot_password_screens.dart';
import 'package:pickome/presentation/screens/home/home_screen.dart';
import 'package:pickome/presentation/screens/register/create_user/create_user_screen.dart';
import 'package:pickome/presentation/screens/splash/splash_screen.dart';
import 'package:pickome/presentation/screens/sign_in/sign_in_screen.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: SplashScreen, initial: true),
    // MaterialRoute(
    //   path: 'signIns',
    //   name: 'SignInFeatures',
    //   page: SignInRoutes,
    //   children: [
    //     MaterialRoute(page: SignInScreen),
    //     MaterialRoute(page: ForgotPasswordScreen),
    //   ],
    // ),
    MaterialRoute(page: SignInScreen),
    MaterialRoute(page: ForgotPasswordScreen),
    MaterialRoute(page: HomeScreen),
    MaterialRoute(page: CreateUserScreen),
  ],
)
class $MyRouter {}

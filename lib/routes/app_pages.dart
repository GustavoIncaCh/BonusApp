import 'package:get/get.dart';

import 'package:bonus_app/presentation/map/map_screen.dart';
import 'package:bonus_app/presentation/home/home_screen.dart';
import 'package:bonus_app/presentation/user/user_screen.dart';
import 'package:bonus_app/presentation/login/login_screen.dart';
import 'package:bonus_app/presentation/splash/splash_screen.dart';
import 'package:bonus_app/presentation/history/history_screen.dart';
import 'package:bonus_app/presentation/register/register_screen.dart';
import 'package:bonus_app/presentation/point_card/point_card_screen.dart';
import 'package:bonus_app/presentation/notifications/notifications_screen.dart';
import 'package:bonus_app/presentation/home/information_earn_points/information_earn_points_screen.dart';
import 'package:bonus_app/presentation/home/information_spend_points/information_spend_points_screen.dart';

abstract class AppRoutes {
  static const splash = '/splash';
  static const login = '/login';
  static const register = '/register';
  static const home = '/home';
  static const informationEarnPoints = '/home/informationEarnPoints';
  static const informationSpendPoints = '/home/informationSpendPoints';
  static const history = '/history';
  static const pointCard = '/pointCard';
  static const map = '/map';
  static const user = '/user';
  static const notificactions = '/notificactions';
}

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.splash,
      page: () => SplashScreen(),
    ),
    GetPage(
      name: AppRoutes.login,
      page: () => LoginScreen(),
    ),
    GetPage(
      name: AppRoutes.register,
      page: () => RegisterScreen(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => HomeScreen(),
    ),
    GetPage(
      name: AppRoutes.informationEarnPoints,
      page: () => InformationEarnPointsScreen(),
    ),
    GetPage(
      name: AppRoutes.informationSpendPoints,
      page: () => InformationSpendPointsScreen(),
    ),
    GetPage(
      name: AppRoutes.history,
      page: () => HistoryScreen(),
    ),
    GetPage(
      name: AppRoutes.pointCard,
      page: () => PointCardScreen(),
    ),
    GetPage(
      name: AppRoutes.map,
      page: () => MapScreen(),
    ),
    GetPage(
      name: AppRoutes.user,
      page: () => UserScreen(),
    ),
    GetPage(
      name: AppRoutes.notificactions,
      page: () => NotificationsScreen(),
    ),
  ];
}

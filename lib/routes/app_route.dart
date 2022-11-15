import 'package:flutter/material.dart';
import 'package:flutter_application_5/model/menu_option.dart';
import 'package:flutter_application_5/screen/screen.dart';

class AppRoute {
  static String initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
      route: 'alert',
      icon: Icons.add_alert_outlined,
      name: 'Alert',
      screen: const AlertScreen(),
    ),
    MenuOption(
      route: 'card',
      icon: Icons.card_membership_outlined,
      name: 'Card',
      screen: const CardScreen(),
    ),
    MenuOption(
      route: 'list',
      icon: Icons.list_alt_rounded,
      name: 'List',
      screen: const ListScreen(),
    ),
    MenuOption(
      route: 'avatar',
      icon: Icons.supervised_user_circle,
      name: 'Avatar',
      screen: const AvatarScreen(),
    ),
    MenuOption(
      route: 'animated',
      icon: Icons.animation,
      name: 'Animated',
      screen: const AnimatedScreen(),
    ),
    MenuOption(
      route: 'input',
      icon: Icons.input,
      name: 'Input Screen',
      screen: const InputScreen(),
    ),
    MenuOption(
      route: 'slider',
      icon: Icons.sanitizer_outlined,
      name: 'SLider Screen',
      screen: const SliderScreen(),
    ),
    MenuOption(
      route: 'listbuilder',
      icon: Icons.view_list_sharp,
      name: 'List View Builder Screen',
      screen: const ListViewBuilderScreen(),
    )
  ];
  static Map<String, Widget Function(BuildContext context)> getRoutes() {
    Map<String, Widget Function(BuildContext context)> appRoutes = {};

    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (var option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  /* final Map<String, Widget Function(BuildContext context)> routes = {
    'home': (context) => const HomeScreen(),
    'list': (context) => const ListScreen(),
    'alert': (context) => const AlertScreen(),
    'card': (context) => const CardScreen(),
  }; */

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => HomeScreen());
  }
}

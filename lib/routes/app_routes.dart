import 'package:flutter_components/models/models.dart';
import '../Screens/screens_imports.dart';

class AppRoutes {
  static const initialRoute = '/Home';
  static final menuOption = <MenuOption>[
    MenuOption(
        route: '/Home',
        icon: Icons.home,
        name: 'Home Screen',
        screen: HomeScreen()),
    MenuOption(
        route: '/ListView1Screen',
        icon: Icons.list,
        name: 'Listview1Screen',
        screen: const Listview1Screen()),
    MenuOption(
        route: '/Listview2Screen',
        icon: Icons.list,
        name: 'Listview2Screen',
        screen: const Listview2Screen()),
    MenuOption(
        route: '/CardScreen',
        icon: Icons.card_giftcard,
        name: 'CardScreen',
        screen: const CardScreen()),
    MenuOption(
        route: '/AlertScreen',
        icon: Icons.add_alert,
        name: 'AlertScreen',
        screen: const AlertScreen()),
  ];
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final options in menuOption) {
      appRoutes
          .addAll({options.route: (BuildContext context) => options.screen});
    }
    return appRoutes;
  }
}

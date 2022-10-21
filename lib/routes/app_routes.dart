import 'package:flutter_components/models/models.dart';
import '../Screens/screens_imports.dart';

class AppRoutes {
  static final menuOption = <MenuOption>[
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
    MenuOption(
        route: '/AvatarScreen',
        icon: Icons.person,
        name: 'Avatar Screen',
        screen: const AvatarScreen()),
    MenuOption(
        route: '/AnimatedScreen',
        icon: Icons.play_circle,
        name: 'Animated Screen',
        screen: const AnimatedScreen()),
    MenuOption(
        route: '/InputScreen',
        icon: Icons.format_align_center,
        name: 'Inputs Screen',
        screen: const InputScreen()),
    MenuOption(
        route: '/SliderScreen',
        icon: Icons.slideshow,
        name: 'Slider Screen',
        screen: const SliderScreen()),
    MenuOption(
        route: '/ListViewBuilderScreen',
        icon: Icons.list_alt,
        name: 'ListViewBuilderScreen',
        screen: const ListviewBuilderScreen()),
  ];
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'/Home': (BuildContext context) => const HomeScreen()});
    for (final options in menuOption) {
      appRoutes
          .addAll({options.route: (BuildContext context) => options.screen});
    }
    return appRoutes;
  }
}

import 'package:app_components/models/menu_options.dart';
import 'package:app_components/screens/screens.dart';
import 'package:flutter/material.dart';


class AppRoutes {

  static const initialRoute = 'home';


  static final menuOptions = <MenuOptions>[
    // MenuOptions(route: 'home', icon: Icons.home, name: 'Principal', screen: const HomeScreen()),
    MenuOptions(route: 'alert', icon: Icons.add_alert_outlined, name: 'Alertas', screen: const AlertScreen()),
    MenuOptions(route: 'card', icon: Icons.credit_card, name: 'Tarjetas', screen: const CardScreen()),
    MenuOptions(route: 'listview1', icon: Icons.list_alt, name: 'Lista tipo 1', screen: const Listview1Screen()),
    MenuOptions(route: 'listview2', icon: Icons.list, name: 'Lista tipo 2', screen: const Listview2Screen()),
    MenuOptions(route: 'avatar', icon: Icons.person_rounded, name: 'Avatar', screen: const AvatarScreen()),
    MenuOptions(route: 'animatedContainer', icon: Icons.animation, name: 'Animated container', screen: const AnimatedScreen()),
    MenuOptions(route: 'inputs', icon: Icons.input, name:'Inputs', screen: const InputScreen()),
    MenuOptions(route: 'slider', icon: Icons.slideshow, name:'Slider', screen: const SliderScreen()),
    MenuOptions(route: 'listviewbuilder', icon: Icons.image, name:'List View', screen: const ListviewScreen()),
  ];


  static Map<String, Widget Function(BuildContext)> getAppRoute() {

    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (var option in menuOptions) {

      appRoutes.addAll({ option.route: (BuildContext context) => option.screen });

    }

    return appRoutes;
    
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home'      : ( context ) => const HomeScreen(),
  //   'alert'     : ( context ) => const AlertScreen(),
  //   'listview1' : ( context ) => const Listview1Screen(),
  //   'listview2' : ( context ) => const Listview2Screen(),
  // };

  static Route<dynamic>?  onGenerateRoute (RouteSettings settings) {

    return MaterialPageRoute(builder: ( context ) => const HomeScreen() );
    
  }
  
}
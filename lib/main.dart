import 'package:dev_sandbox/try_getx/presentation/counter/counter_home.dart';
import 'package:dev_sandbox/try_getx/presentation/named_navigation_pages/character_page.dart';
import 'package:dev_sandbox/try_getx/presentation/named_navigation_pages/favorites_page.dart';
import 'package:dev_sandbox/try_getx/presentation/named_navigation_pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => HomePage()),
        GetPage(name: '/favourites', page: () => FavoritesPage()),
        GetPage(
          name: '/character',
          page: () => CharacterPage(),
          transition: Transition.zoom,
        ),
      ],
      routingCallback: (routing) {
        // if (routing!.current == '/favourites') {
        //   Get.snackbar(
        //     "Hey i'm a Get SnackBar!", // title
        //     "It's unbelievable! I'm using SnackBar without context, without boilerplate, without Scaffold, it is something truly amazing!", // message
        //     icon: Icon(Icons.alarm),
        //     shouldIconPulse: true,
        //     onTap: (_) {},
        //     barBlur: 20,
        //     isDismissible: true,
        //     duration: Duration(seconds: 3),
        //   );
        // }
      },
    );
  }
}

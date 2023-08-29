import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instagram_redesign/pages/HomePage.dart';
import 'package:instagram_redesign/pages/LikePage.dart';
import 'package:instagram_redesign/pages/MainPage.dart';
import 'package:instagram_redesign/pages/MessagePage.dart';
import 'package:instagram_redesign/pages/ProfilePage.dart';
import 'package:instagram_redesign/pages/SearchPage.dart';
import 'package:instagram_redesign/util/data/UserProvider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => ChangeNotifierProvider(
        create: (context) {
          return UserProvider();
        },
        builder: (context, child) {
          return const MyApp();
        },
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey.shade100,
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const MainPage(),
        'home': (context) => const HomePage(),
        'search': (context) => const SearchPage(),
        'likes': (context) => const LikePage(),
        'profile': (context) => const ProfilePage(),
        'message': (context) => const MessagePage(),
      },
    );
  }
}

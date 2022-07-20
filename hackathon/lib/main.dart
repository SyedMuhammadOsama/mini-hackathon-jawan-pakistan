import 'package:flutter/material.dart';
import 'package:hackathon/screens/bottom_nac_screens.dart';
import 'package:hackathon/screens/cart_screen.dart';
import 'package:hackathon/screens/details_screen.dart';
import 'package:hackathon/screens/home_screen.dart';
import 'package:hackathon/screens/login_screen.dart';
import 'package:hackathon/screens/splash_screen.dart';
import 'package:hackathon/screens/top_tab_bar.dart';
import 'package:hackathon/screens/welcome_screen1.dart';
import 'package:hackathon/screens/welcome_screen2.dart';
import 'package:hackathon/screens/welcome_screen4.dart';
import 'package:hackathon/screens/welcome_sreen3.dart';
import 'package:hackathon/widgets/individual_card_container.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        LoginScreen.routeName: (context) => LoginScreen(),
        TopTabBar.routeName: (context) => TopTabBar(),
        TabsScreen.routeName: (context) => TabsScreen(),
        DetailsScreen.routeName: (context) => DetailsScreen(),
      },
    );
  }
}

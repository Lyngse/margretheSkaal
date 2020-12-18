import 'package:custom_splash/custom_splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:margretheskaal/screens/active_game_screen.dart';
import 'package:margretheskaal/screens/manage_custom_categories_screen.dart';
import 'package:provider/provider.dart';

import './providers/categories.dart';
import './screens/category_tab_screen.dart';
import 'providers/database_service.dart';
import './screens/edit_custom_category_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DatabaseService();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Categories(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Margrethe Skål',
        theme: ThemeData(
          primaryColor: Color.fromRGBO(82, 173, 200, 1),
          accentColor: Color.fromRGBO(255, 162, 133, 1),
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          unselectedWidgetColor: Colors.white,
          fontFamily: 'Lato',
        ),
        home: CustomSplash(
          imagePath: 'assets/images/splash.png',
          backGroundColor: Color.fromRGBO(82, 173, 200, 1),
          animationEffect: 'fade-in',
          logoSize: 500,
          home: CategoryTabScreen(),
          duration: 2000,
          type: CustomSplashType.StaticDuration,
        ),
        //initialRoute: '/',
        routes: {
          '/tab': (ctx) => CategoryTabScreen(),
          ManageCustomCategoriesScreen.routeName: (ctx) =>
              ManageCustomCategoriesScreen(),
          EditCustomCategoryScreen.routeName: (ctx) =>
              EditCustomCategoryScreen(),
          ActiveGameScreen.routeName: (ctx) => ActiveGameScreen(),
        },
      ),
    );
  }
}

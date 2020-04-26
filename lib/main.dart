import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/auth_screen.dart';
import './screens/home_screen.dart';
import './screens/onboarding_screen.dart';

import 'providers/auth.dart';
//import 'screens/auth_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Auth(),
        )
      ],
      child: Consumer<Auth>(
        builder: (ctx, auth, _) => MaterialApp(
          title: 'Holl-Up',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.cyan,
            accentColor: Colors.black,
          ),
          // home: AuthScreen(),
          //home: OnboardingScreen(),
          home: HomeScreen(),
          //home: auth.isAuth ? HomeScreen() : AuthScreen(),
          routes: {
            OnboardingScreen.routeName: (_) => OnboardingScreen(),
            HomeScreen.routeName: (_) => HomeScreen(),
          },
        ),
      ),
    );
  }
}

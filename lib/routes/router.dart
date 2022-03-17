import 'package:flutter/material.dart';
import 'package:news24/screens/home/details.dart';
import 'package:news24/screens/home/myhome.dart';
import 'package:news24/screens/pages/notifications_page.dart';
import 'package:news24/screens/pages/profile_page.dart';
import 'package:news24/screens/pages/settings_page.dart';
import 'package:news24/screens/pages/sign_in_page.dart';
import 'package:news24/screens/pages/sign_up_page.dart';
import 'package:news24/screens/pages/start_page.dart';

class MyRoute {
  Route? onGenerateRoute(RouteSettings s) {
    var args = s.arguments;

    switch (s.name) {
      case 'myHome':
        return MaterialPageRoute(builder: (_) => const MyHome());
      case 'signIn':
        return MaterialPageRoute(builder: (_) => const SignInPage());
      case 'signUp':
        return MaterialPageRoute(builder: (_) => const SignUpPage());
      case 'start':
        return MaterialPageRoute(builder: (_) => const StartPage());
      case 'settings':
        return MaterialPageRoute(builder: (_) => const SettingsPage());
      case 'profile':
        return MaterialPageRoute(builder: (_) => const ProfilePage());
      case 'details':
        return MaterialPageRoute(builder: (_) => const DetailsHome());
      case 'notification':
        return MaterialPageRoute(builder: (_) => const NotificationsPage());
    }
  }
}

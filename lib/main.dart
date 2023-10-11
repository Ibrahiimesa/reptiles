import 'package:flutter/material.dart';
import 'package:reptils_bio/model/reptil_model.dart';
import 'package:reptils_bio/ui/detail_screen.dart';
import 'package:reptils_bio/ui/home_screen.dart';
import 'package:reptils_bio/ui/splash_screen.dart';
import 'package:reptils_bio/ui/webview_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reptile',
      theme: ThemeData(
        colorScheme: const ColorScheme.light().copyWith(
          background: const Color(0xFFFDFDF6),
        ),
        useMaterial3: true,
      ),
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
        HomeScreen.routeName: (context) => const HomeScreen(),
        DetailScreen.routeName: (context) => DetailScreen(
              reptile:
                  ModalRoute.of(context)?.settings.arguments as ReptileModel,
            ),
        ReptileWebView.routeName: (context) => ReptileWebView(
              url: ModalRoute.of(context)?.settings.arguments as String,
            ),
      },
    );
  }
}

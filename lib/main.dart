import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:sempolita_mobile_app/shared/theme.dart';
import 'package:sempolita_mobile_app/ui/pages/buat_akun_page.dart';
import 'package:sempolita_mobile_app/ui/pages/get_started_page.dart';
import 'package:sempolita_mobile_app/ui/pages/login_page.dart';
import 'package:sempolita_mobile_app/ui/pages/splashscreen_page.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

void main() {
  HttpOverrides.global = MyHttpOverrides();
  debugPaintSizeEnabled = false;
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: greenColor, // Warna navigation bar
    statusBarColor: greenColor, // Warna status bar
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sistem Monitoring Balita',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'Poppins',
          primarySwatch: MaterialColor(0xff31C48D, {
            50: Color(0xff31C48D),
            100: Color(0xff31C48D),
            200: Color(0xff31C48D),
            300: Color(0xff31C48D),
            400: Color(0xff31C48D),
            500: Color(0xff31C48D),
            600: Color(0xff31C48D),
            700: Color(0xff31C48D),
            800: Color(0xff31C48D),
            900: Color(0xff31C48D),
          })),
      home: SplashPage(),
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => SplashPage(),
        '/started': (context) => GetStarted(),
        '/buatAkun': (context) => BuatAkun(),
        '/login': (context) => LoginPage(),
      },
    );
  }
}

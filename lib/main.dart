import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:sempolita_mobile_app/shared/theme.dart';
import 'package:sempolita_mobile_app/ui/pages/admin/daftar_user_page.dart';
import 'package:sempolita_mobile_app/ui/pages/admin/kelola_akun_page.dart';
import 'package:sempolita_mobile_app/ui/pages/admin/kelola_jadwal_posyandu_page.dart';
import 'package:sempolita_mobile_app/ui/pages/admin/log_activity_admin_page.dart';
import 'package:sempolita_mobile_app/ui/pages/bidan/status_kesehatan_bidan.dart';
import 'package:sempolita_mobile_app/ui/pages/daftar_pasien_page.dart';
import 'package:sempolita_mobile_app/ui/pages/jadwal_posyandu_page.dart';
import 'package:sempolita_mobile_app/ui/pages/kader/ambil_data_posyandu_page.dart';
import 'package:sempolita_mobile_app/ui/pages/kader/status_kesehatan_kader.dart';
import 'package:sempolita_mobile_app/ui/pages/pasien/data_pribadi_page.dart';
import 'package:sempolita_mobile_app/ui/pages/admin/db_admin_page.dart';
import 'package:sempolita_mobile_app/ui/pages/bidan/db_bidan_page.dart';
import 'package:sempolita_mobile_app/ui/pages/kader/db_kader_page.dart';
import 'package:sempolita_mobile_app/ui/pages/pasien/db_pasien_page.dart';
import 'package:sempolita_mobile_app/ui/pages/detail_profile_page.dart';
import 'package:sempolita_mobile_app/ui/pages/pasien/detail_profile_pasien_page.dart';
import 'package:sempolita_mobile_app/ui/pages/get_started_page.dart';
import 'package:sempolita_mobile_app/ui/pages/log_activity_page.dart';
import 'package:sempolita_mobile_app/ui/pages/login_page.dart';
import 'package:sempolita_mobile_app/ui/pages/lupa_password_page.dart';
import 'package:sempolita_mobile_app/ui/pages/pasien/profile_pasien_page.dart';
import 'package:sempolita_mobile_app/ui/pages/pasien/status_kesehatan_balita.dart';
import 'package:sempolita_mobile_app/ui/pages/profile_page.dart';
import 'package:sempolita_mobile_app/ui/pages/splashscreen_page.dart';
import 'package:sempolita_mobile_app/ui/pages/term_conditions_page.dart';
import 'package:sempolita_mobile_app/ui/pages/ubah_password_page.dart';

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
          primaryColor: MaterialColor(0xff31C48D, {
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
            1000: Color(0xff31C48D),
          })),
      home: KelolaJadwalPosyandu(),
      initialRoute: '/kelolaJadwalPosyandu',
      routes: {
        '/splash': (context) => SplashPage(),
        '/started': (context) => GetStarted(),
        '/login': (context) => LoginPage(),
        '/termsConditions': (context) => TermsConditions(),
        '/lupaPassword': (context) => LupaPassword(),
        '/logActivity': (context) => LogActivity(),
        '/logActivityAdmin': (context) => LogActivityAdmin(),
        '/dashboardPasien': (context) => DashboardPasien(),
        '/dashboardKader': (context) => DashboardKader(),
        '/dashboardBidan': (context) => DashboardBidan(),
        '/dashboardAdmin': (context) => DashboardAdmin(),
        '/profile': (context) => ProfilePage(),
        '/profilePasien': (context) => ProfilePagePasien(),
        '/ubahPassword': (context) => UbahPassword(),
        '/dataPribadi': (context) => DataPribadi(),
        '/detailProfile': (context) => DetailProfile(),
        '/detailProfilePasien': (context) => DetailProfilePasien(),
        '/jadwalPosyandu': (context) => JadwalPosyandu(),
        '/statusKesehatanBalita': (context) => StatusKesahatanBalita(),
        '/statusKesehatanByKader': (context) => StatusKesahatanByKader(),
        '/statusKesehatanByBidan': (context) => StatusKesahatanByBidan(),
        '/daftarPasien': (context) => DaftarPasien(),
        '/daftarUser': (context) => DaftarUser(),
        '/ambilDataPosyandu': (context) => AmbilDataPosyandu(),
        '/kelolaAkun': (context) => KelolaAkun(),
        '/kelolaJadwalPosyandu': (context) => KelolaJadwalPosyandu(),
      },
    );
  }
}

import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Mengatur konten di tengah layar
            children: [
              Image.asset(
                'assets/images/logo.png',
                width: 182,
                height: 67.69,
              ),
              SizedBox(
                height: 16, // Menambahkan jarak antara gambar dan teks
              ),
              Text(
                'Check Sempolita',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffB3B3B3),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

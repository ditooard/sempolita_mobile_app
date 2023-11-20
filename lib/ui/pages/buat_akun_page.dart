import 'package:flutter/material.dart';
import 'package:sempolita_mobile_app/shared/theme.dart';

class BuatAkun extends StatefulWidget {
  @override
  State<BuatAkun> createState() => _BuatAkun();
}

class _BuatAkun extends State<BuatAkun> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text('buat akun'),
        ),
      ),
    );
  }
}

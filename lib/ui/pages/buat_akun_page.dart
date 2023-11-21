import 'package:flutter/material.dart';

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
      body: SingleChildScrollView(
        child: SafeArea(
            child: Container(
          width: 393,
          height: 735,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: 24,
                top: 50,
                child: Text(
                  'Yuk,  Pantau Terus\nKesehatan Buah Hati Kita !',
                  style: TextStyle(
                    color: Color(0xFF1E1349),
                    fontSize: 24,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 52,
                top: 150,
                child: Container(
                  width: 290,
                  height: 600,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 3,
                        top: 0,
                        child: Container(
                          width: 287,
                          height: 75.39,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 24.82,
                                child: Container(
                                  width: 287,
                                  height: 52,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      contentPadding:
                                          EdgeInsets.only(top: 0, left: 20),
                                      // Sesuaikan angka ini sesuai kebutuhan Anda
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xFFDBD7EB)),
                                        borderRadius: BorderRadius.circular(17),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                child: SizedBox(
                                  width: 268,
                                  height: 19.31,
                                  child: Text(
                                    'Nama Balita',
                                    style: TextStyle(
                                      color: Color(0xFF1E1349),
                                      fontSize: 14,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 3,
                        top: 85,
                        child: Container(
                          width: 287,
                          height: 75.39,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 24.82,
                                child: Container(
                                  width: 287,
                                  height: 52,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      contentPadding:
                                          EdgeInsets.only(top: 0, left: 20),
                                      // Sesuaikan angka ini sesuai kebutuhan Anda
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xFFDBD7EB)),
                                        borderRadius: BorderRadius.circular(17),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                child: SizedBox(
                                  width: 268,
                                  height: 19.31,
                                  child: Text(
                                    'Nama Orang Tua',
                                    style: TextStyle(
                                      color: Color(0xFF1E1349),
                                      fontSize: 14,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 3,
                        top: 170,
                        child: Container(
                          width: 287,
                          height: 75.39,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 24.82,
                                child: Container(
                                  width: 287,
                                  height: 52,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      contentPadding:
                                          EdgeInsets.only(top: 0, left: 20),
                                      // Sesuaikan angka ini sesuai kebutuhan Anda
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xFFDBD7EB)),
                                        borderRadius: BorderRadius.circular(17),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                child: SizedBox(
                                  width: 268,
                                  height: 19.31,
                                  child: Text(
                                    'Nomor Telepon',
                                    style: TextStyle(
                                      color: Color(0xFF1E1349),
                                      fontSize: 14,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 3,
                        top: 255,
                        child: Container(
                          width: 287,
                          height: 75.39,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 24.82,
                                child: Container(
                                  width: 287,
                                  height: 52,
                                  child: TextFormField(
                                    obscureText:
                                        true, // This hides the entered text as dots for a password field
                                    decoration: InputDecoration(
                                      contentPadding:
                                          EdgeInsets.only(top: 0, left: 20),
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xFFDBD7EB)),
                                        borderRadius: BorderRadius.circular(17),
                                      ),
                                      suffixIcon: GestureDetector(
                                        onTap: () {
                                          // Implement the logic to toggle password visibility
                                        },
                                        child: Icon(
                                          Icons
                                              .visibility_off, // Use Icons.visibility if you want an open eye initially
                                          color: Colors
                                              .grey, // You can change the color as needed
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                child: SizedBox(
                                  width: 268,
                                  height: 19.31,
                                  child: Text(
                                    'Password',
                                    style: TextStyle(
                                      color: Color(0xFF1E1349),
                                      fontSize: 14,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 3,
                        top: 340,
                        child: Container(
                          width: 287,
                          height: 75.39,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 24.82,
                                child: Container(
                                  width: 287,
                                  height: 52,
                                  child: TextFormField(
                                    obscureText:
                                        true, // This hides the entered text as dots for a password field
                                    decoration: InputDecoration(
                                      contentPadding:
                                          EdgeInsets.only(top: 0, left: 20),
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xFFDBD7EB)),
                                        borderRadius: BorderRadius.circular(17),
                                      ),
                                      suffixIcon: GestureDetector(
                                        onTap: () {
                                          // Implement the logic to toggle password visibility
                                        },
                                        child: Icon(
                                          Icons
                                              .visibility_off, // Use Icons.visibility if you want an open eye initially
                                          color: Colors
                                              .grey, // You can change the color as needed
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                child: SizedBox(
                                  width: 268,
                                  height: 19.31,
                                  child: Text(
                                    'Ulangi Password',
                                    style: TextStyle(
                                      color: Color(0xFF1E1349),
                                      fontSize: 14,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 3,
                        top: 450,
                        child: Container(
                          width: 287,
                          height: 50.57,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(context, '/login');
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xFF31C48D), // Background color
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(17),
                              ),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 12.87),
                              child: Text(
                                'Ayo Mulai !',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 63,
                        top: 535,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushReplacementNamed(context, '/termsConditions');
                          },
                          child: Text(
                            'Terms and Conditions',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF31C48D),
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w300,
                              decoration: TextDecoration.underline,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}

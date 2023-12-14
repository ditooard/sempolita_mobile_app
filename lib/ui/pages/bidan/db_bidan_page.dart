import 'package:flutter/material.dart';

class DashboardBidan extends StatefulWidget {
  @override
  State<DashboardBidan> createState() => _DashboardBidan();
}

class _DashboardBidan extends State<DashboardBidan> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 370;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double lebarLayar = MediaQuery.of(context).size.width;
    double tinggiLayar = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: lebarLayar,
            height: tinggiLayar,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(color: Color(0xFF31C48D)),
            child: Stack(
              children: [
                Positioned(
                    left: 0 * fem,
                    top: 30 * fem,
                    child: Container(
                      width: 375,
                      height: 84,
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              height: 84,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Halo Bidan Erni,',
                                    style: TextStyle(
                                      color: Color(0xFFFAFAFA),
                                      fontSize: 14,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    'Selamat Datang !',
                                    style: TextStyle(
                                      color: Color(0xFFFAFAFA),
                                      fontSize: 20,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 15 * fem),
                            padding: const EdgeInsets.all(10),
                            decoration: ShapeDecoration(
                              color: Color(0xFFFAFAFA),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 24,
                                  height: 24,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 24,
                                        height: 24,
                                        child: Stack(children: [
                                          Image.asset(
                                              'assets/images/notification.png')
                                        ]),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
                Positioned(
                  left: 0 * fem,
                  top: 0 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 375 * fem,
                      height: 273 * fem,
                      child: Image.asset(
                        'assets/images/backgroundatas.png',
                        width: 375 * fem,
                        height: 273 * fem,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 24 * fem,
                  top: 110 * fem,
                  child: Container(
                    width: 327,
                    height: 125,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                    decoration: ShapeDecoration(
                      color: Color(0x14222222),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: double.infinity,
                                  child: Text(
                                    'SEHAT NEGERIKU, TUMBUH INDONESIAKU',
                                    style: TextStyle(
                                      color: Color(0xFFFAFAFA),
                                      fontSize: 14,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 5),
                                SizedBox(
                                  width: 198,
                                  child: Text(
                                    'Mampu Memberikan Pelayanan Kesehatan Yang Profesional Dengan Sepenuh Hati',
                                    style: TextStyle(
                                      color: Color(0xFFFAFAFA),
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 5),
                        Container(
                          width: 63,
                          height: 61,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/logo2.png"),
                              fit: BoxFit.fill,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                    left: 24 * fem,
                    top: 250 * fem,
                    child: Container(
                      width: 327,
                      height: 90,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 327,
                              height: 90,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 10,
                            top: 10,
                            child: Container(
                              width: 70,
                              height: 70,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 70,
                                      height: 70,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFFFAFCFF),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(18),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 70,
                                      height: 70,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/jadwal.png"),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 96,
                            top: 18,
                            child: Container(
                              width: 217,
                              height: 53,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Text(
                                      'Jadwal Posyandu',
                                      style: TextStyle(
                                        color: Color(0xFF1E1349),
                                        fontSize: 18,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    top: 32,
                                    child: Text(
                                      'Lihat jadwal ter - update ! ',
                                      style: TextStyle(
                                        color: Color(0xFF9698A9),
                                        fontSize: 14,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w300,
                                        height: 0,
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
                Positioned(
                    left: 24 * fem,
                    top: 350 * fem,
                    child: Container(
                      width: 327,
                      height: 90,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 327,
                              height: 90,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 10,
                            top: 10,
                            child: Container(
                              width: 70,
                              height: 70,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 70,
                                      height: 70,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFFFAFCFF),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(18),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 70,
                                      height: 70,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/daftar.png"),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 96,
                            top: 18,
                            child: Container(
                              width: 217,
                              height: 53,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Text(
                                      'Daftar Pasien Posyandu',
                                      style: TextStyle(
                                        color: Color(0xFF1E1349),
                                        fontSize: 18,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    top: 32,
                                    child: Text(
                                      'Lihat daftar pasien anda',
                                      style: TextStyle(
                                        color: Color(0xFF9698A9),
                                        fontSize: 14,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w300,
                                        height: 0,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}

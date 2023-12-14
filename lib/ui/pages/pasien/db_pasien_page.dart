import 'package:flutter/material.dart';
import 'package:sempolita_mobile_app/models/font.dart';

class DashboardPasien extends StatefulWidget {
  @override
  State<DashboardPasien> createState() => _DashboardPasien();
}

class _DashboardPasien extends State<DashboardPasien> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 370;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
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
                  left: 24 * fem,
                  top: 30 * fem,
                  child: Container(
                    width: 327 * fem,
                    height: 68 * fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 110 * fem, 0 * fem),
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment
                                .start, // Align text to the left
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 4 * fem),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment
                                      .start, // Align text to the left
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Halo Dhimas',
                                          style: SafeGoogleFont(
                                            'Plus Jakarta Sans',
                                            fontSize: 14 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.26 * ffem / fem,
                                            color: Color(0xfffafafa),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Ayah dari Annabella,',
                                          style: SafeGoogleFont(
                                            'Plus Jakarta Sans',
                                            fontSize: 14 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.26 * ffem / fem,
                                            color: Color(0xfffafafa),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Text(
                                'Selamat Datang !',
                                style: SafeGoogleFont(
                                  'Plus Jakarta Sans',
                                  fontSize: 20 * ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.26 * ffem / fem,
                                  color: Color(0xfffafafa),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 1 * fem),
                          width: 44 * fem,
                          height: 44 * fem,
                          child: Container(
                            width: 44,
                            height: 44,
                            padding: const EdgeInsets.all(10),
                            decoration: ShapeDecoration(
                              color: Color(0xFFF6F6F6),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            child: Image.asset(
                              'assets/images/notification.png',
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
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
                                    'HALO AYAH BUNDA',
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
                                    'Selalu kontrol kondisi sang buah hati pada menu dibawah ini ya !',
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
                                'assets/images/logo2.png'
                              ),
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
                                              'assets/images/jadwal.png'),
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
                                              'assets/images/status.png'),
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
                                      'Status Kesehatan Balita',
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
                                      'Lihat status kesehatan balita ',
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

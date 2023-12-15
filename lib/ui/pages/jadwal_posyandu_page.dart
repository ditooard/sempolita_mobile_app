import 'package:flutter/material.dart';

class JadwalPosyandu extends StatefulWidget {
  @override
  State<JadwalPosyandu> createState() => _JadwalPosyandu();
}

class _JadwalPosyandu extends State<JadwalPosyandu> {
  final List<KalenderPosyandu> jadwalList = [
    KalenderPosyandu("RW 01", "Senin", "12 Januari 2023"),
    KalenderPosyandu("RW 02", "Rabu", "14 Januari 2023"),
    KalenderPosyandu("RW 03", "Jumat", "16 Januari 2023"),
    KalenderPosyandu("RW 04", "Minggu", "18 Januari 2023"),
    KalenderPosyandu("RW 05", "Selasa", "20 Januari 2023"),
    KalenderPosyandu("RW 06", "Kamis", "22 Januari 2023"),
    // Tambahkan jadwal lainnya sesuai kebutuhan
  ];

  Widget buildJadwalCard(KalenderPosyandu jadwal) {
    return Card(
      child: Container(
        width: 94.27,
        height: 99.24,
        child: Stack(
          children: [
            Container(
              width: 120,
              height: 99.24,
              decoration: BoxDecoration(color: Color(0xFFF4F5F7)),
            ),
            Container(
              width: 120,
              height: 38.04,
              decoration: BoxDecoration(color: Color(0xFFC9E265)),
            ),
            Positioned(
              left: 5,
              top: 60,
              child: Container(
                width: 120,
                height: 100,
                child: Stack(
                  children: [
                    Positioned(
                      left: 12,
                      top: 0,
                      child: Text(
                        jadwal.hari,
                        style: TextStyle(
                          color: Color(0xFF3A3A3A),
                          fontSize: 16.17,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          height: 0.07,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 22.60,
                      child: Text(
                        jadwal.tanggal,
                        style: TextStyle(
                          color: Color(0xFF898989),
                          fontSize: 10.78,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 0.14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 12,
              top: 4.96,
              child: Container(
                width: 70,
                height: 30.60,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      jadwal.rw,
                      style: TextStyle(
                        color: Color(0xFF00549D),
                        fontSize: 20.33,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        height: 0.07,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double lebarLayar = MediaQuery.of(context).size.width;
    double tinggiLayar = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: lebarLayar,
          height: tinggiLayar,
          padding: const EdgeInsets.only(top: 20),
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 393,
                padding: const EdgeInsets.symmetric(horizontal: 24),
                decoration: BoxDecoration(color: Colors.white),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 50,
                      height: 48,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            clipBehavior: Clip.antiAlias,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(8),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.pushReplacementNamed(
                                              context, '');
                                        },
                                        child: Container(
                                          width: 24,
                                          height: 24,
                                          child: Stack(
                                            children: [
                                              Icon(
                                                Icons.arrow_back_ios,
                                                color: Colors.black,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 12),
                    Text(
                      'Jadwal Posyandu',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 20, top: 8, right: 20, bottom: 50),
                  child: Container(
                    padding: EdgeInsets.only(left: 10, top: 50, right: 10, bottom: 0),
                    color: Color(0xff31C48D),
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 8.0,
                        mainAxisSpacing: 8.0,
                      ),
                      itemCount: jadwalList.length,
                      itemBuilder: (context, index) {
                        return buildJadwalCard(jadwalList[index]);
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class KalenderPosyandu {
  final String rw;
  final String hari;
  final String tanggal;

  KalenderPosyandu(this.rw, this.hari, this.tanggal);
}

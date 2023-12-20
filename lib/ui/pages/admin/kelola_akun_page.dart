import 'package:flutter/material.dart';
import 'package:sempolita_mobile_app/shared/theme.dart';

class KelolaAkun extends StatefulWidget {
  @override
  State<KelolaAkun> createState() => _KelolaAkun();
}

class Hp {
  final String hp;

  Hp({required this.hp});
}

class _KelolaAkun extends State<KelolaAkun> {
  final List<Hp> daftarNoHp = [
    Hp(hp: '081226446610'),
    Hp(hp: '081357426470'),
    Hp(hp: '08161606063'),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double lebarLayar = MediaQuery.of(context).size.width;
    double tinggiLayar = 750;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                        'Kelola Akun',
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
                const SizedBox(height: 20),
                Container(
                  width: 355,
                  height: 420,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 34, vertical: 15),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFC6C6C6)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 285,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 285,
                                height: 65.71,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 21.64,
                                      child: Container(
                                        width: 285,
                                        height: 44.08,
                                        child: TextField(
                                          decoration: InputDecoration(
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 16),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(17),
                                              borderSide: BorderSide(
                                                width: 1,
                                                color: Color(0xFFDBD7EB),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: SizedBox(
                                        width: 266.13,
                                        height: 16.83,
                                        child: Text(
                                          'Nama Balita',
                                          style: TextStyle(
                                            color: Color(0xFF1E1349),
                                            fontSize: 12,
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
                              left: 0,
                              top: 82,
                              child: Container(
                                width: 285,
                                height: 65.71,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 21.64,
                                      child: Container(
                                        width: 285,
                                        height: 44.08,
                                        child: TextField(
                                          decoration: InputDecoration(
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 16),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(17),
                                              borderSide: BorderSide(
                                                width: 1,
                                                color: Color(0xFFDBD7EB),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: SizedBox(
                                        width: 266.13,
                                        height: 16.83,
                                        child: Text(
                                          'Nama Orang Tua',
                                          style: TextStyle(
                                            color: Color(0xFF1E1349),
                                            fontSize: 12,
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
                              left: 0,
                              top: 164,
                              child: Container(
                                width: 285,
                                height: 65.71,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 21.64,
                                      child: Container(
                                        width: 285,
                                        height: 44.08,
                                        child: TextField(
                                          decoration: InputDecoration(
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 16),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(17),
                                              borderSide: BorderSide(
                                                width: 1,
                                                color: Color(0xFFDBD7EB),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: SizedBox(
                                        width: 266.13,
                                        height: 16.83,
                                        child: Text(
                                          'Nomor Handphone',
                                          style: TextStyle(
                                            color: Color(0xFF1E1349),
                                            fontSize: 12,
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
                              left: 0,
                              top: 246,
                              child: Container(
                                width: 285,
                                height: 65.71,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 21.64,
                                      child: Container(
                                        width: 285,
                                        height: 44.08,
                                        child: DropdownButtonFormField(
                                          decoration: InputDecoration(
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 16),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(17),
                                              borderSide: BorderSide(
                                                width: 1,
                                                color: Color(0xFFDBD7EB),
                                              ),
                                            ),
                                          ),
                                          items: [
                                            DropdownMenuItem(
                                              value: 'option1',
                                              child: Text('Option 1'),
                                            ),
                                            DropdownMenuItem(
                                              value: 'option2',
                                              child: Text('Option 2'),
                                            ),
                                            // Add more DropdownMenuItem as needed
                                          ],
                                          onChanged: (value) {
                                            // Handle the dropdown value change
                                          },
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: SizedBox(
                                        width: 266.13,
                                        height: 16.83,
                                        child: Text(
                                          'Role Pengguna',
                                          style: TextStyle(
                                            color: Color(0xFF1E1349),
                                            fontSize: 12,
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
                              top: 330,
                              child: ElevatedButton(
                                onPressed: () {
                                  // Add your onPressed logic here
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Color(
                                      0xFF31C48D), // Set your desired background color
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(17),
                                  ),
                                ),
                                child: SizedBox(
                                  width: 235,
                                  height: 44.08,
                                  child: Center(
                                    child: Text(
                                      'Buat Akun',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  width: 355,
                  height: 185,
                  padding: const EdgeInsets.symmetric(vertical: 18),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFC6C6C6)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 144.83,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 233.59,
                              height: 16.83,
                              child: Text(
                                'Permohonan Reset Password',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Color(0xFF1E1349),
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ),
                            const SizedBox(height: 16),
                            Container(
                              child: Expanded(
                                child: ListView.builder(
                                  itemCount: daftarNoHp.length,
                                  itemBuilder: (context, index) {
                                    return Card(
                                      elevation: 3,
                                      margin: EdgeInsets.only(
                                          left: 30,
                                          top: 5,
                                          right: 18,
                                          bottom: 5),
                                      child: ListTile(
                                        title: Row(
                                          children: [
                                            Expanded(
                                              child: Text(
                                                daftarNoHp[index].hp,
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontFamily: "Poppins"),
                                              ),
                                            ),
                                            IconButton(
                                              icon: Image.asset(
                                                  'assets/images/reset.png'),
                                              onPressed: () {
                                                print('reset password');
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

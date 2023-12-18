import 'package:flutter/material.dart';
import 'package:sempolita_mobile_app/shared/theme.dart';

class DaftarPasien extends StatefulWidget {
  @override
  State<DaftarPasien> createState() => _DaftarPasien();
}

class Pasien {
  final String nama;

  Pasien({required this.nama});
}

class _DaftarPasien extends State<DaftarPasien> {
  final List<Pasien> daftarPasien = [
    Pasien(nama: 'John Doe'),
    Pasien(nama: 'Jane Doe'),
    Pasien(nama: 'Fajri Ikmal Ghozali'),
    Pasien(nama: 'Dhimas Afrisetiawan'),
    Pasien(nama: 'Dito Ardi Pratama'),
    Pasien(nama: 'Galang Wijonarko'),
    Pasien(nama: 'Alice Smith'),
    Pasien(nama: 'Rifky Pramudya'),
    Pasien(nama: 'Willy Devin Aufa Amanullah'),
    Pasien(nama: 'Ahmad Soebarjoe'),
    // Tambahkan pasien lainnya sesuai kebutuhan
  ];

  List<Pasien> hasilPencarian = [];

  TextEditingController controllerCari = TextEditingController();

  void cariPasien(String keyword) {
    setState(() {
      hasilPencarian = daftarPasien
          .where((pasien) =>
              pasien.nama.toLowerCase().contains(keyword.toLowerCase()))
          .toList();
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double lebarLayar = MediaQuery.of(context).size.width;
    double tinggiLayar = 700;
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
                        'Daftar Pasien Posyandu',
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
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: 30, top: 20, right: 20, bottom: 20),
                    child: TextField(
                      controller: controllerCari,
                      onChanged: (value) {
                        cariPasien(value);
                      },
                      decoration: InputDecoration(
                        hintText: "Cari nama balita",
                        hintStyle: TextStyle(color: Color(0xffC2C2C2)),
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                              8.0), // Sesuaikan dengan ukuran yang diinginkan
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide(
                            color:
                                greenColor, // Sesuaikan dengan warna yang diinginkan
                            width:
                                2.0, // Sesuaikan dengan ketebalan border yang diinginkan
                          ),
                        ),
                        contentPadding: EdgeInsets.symmetric(
                            vertical:
                                10.0), // Sesuaikan dengan tinggi border yang diinginkan
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Expanded(
                    child: hasilPencarian.isEmpty
                        ? ListView.builder(
                            itemCount: daftarPasien.length,
                            itemBuilder: (context, index) {
                              return Card(
                                elevation: 3,
                                margin: EdgeInsets.only(
                                    left: 30, top: 5, right: 18, bottom: 5),
                                child: ListTile(
                                  leading: CircleAvatar(
                                    backgroundColor: greenColor,
                                    child:
                                        Icon(Icons.person, color: Colors.white),
                                  ),
                                  title: Text(daftarPasien[index].nama),
                                ),
                              );
                            },
                          )
                        : ListView.builder(
                            itemCount: hasilPencarian.length,
                            itemBuilder: (context, index) {
                              return Card(
                                elevation: 3,
                                margin: EdgeInsets.only(
                                    left: 30, top: 5, right: 18, bottom: 5),
                                child: ListTile(
                                  leading: CircleAvatar(
                                    backgroundColor: greenColor,
                                    child:
                                        Icon(Icons.person, color: Colors.white),
                                  ),
                                  title: Text(hasilPencarian[index].nama),
                                ),
                              );
                            },
                          ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

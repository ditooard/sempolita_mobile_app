import 'package:flutter/material.dart';
import 'package:sempolita_mobile_app/shared/theme.dart';

class DaftarUser extends StatefulWidget {
  @override
  State<DaftarUser> createState() => _DaftarUser();
}

class _DaftarUser extends State<DaftarUser> {
  List<String> allUsers = [
    'Pasien 1',
    'Pasien 2',
    'Pasien 3',
    'Bidan 1',
    'Bidan 2',
    'Bidan 3',
    'Kader 1',
    'Kader 2',
    'Kader 3',
    'Admin 1',
    'Admin 2',
    'Admin 3',
  ];

  List<String> displayedUsers = [];

  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    displayedUsers = List.from(allUsers);
  }

  Widget buildUserListTile(String user) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 4.0),
      child: ListTile(
        title: Text(
          user,
          style: TextStyle(
            fontSize: 14.0,
            fontFamily: "Poppins",
            fontWeight: FontWeight.w100
          ),
        ),
        leading: Icon(Icons.person),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: Image.asset("assets/images/edit.png"),
              onPressed: () {
                // Add logic for the edit button here
                print('Edit $user');
              },
            ),
            IconButton(
              icon: Image.asset("assets/images/delete.png"),
              onPressed: () {
                // Add logic for the delete button here
                print('Hapus $user');
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget buildUserCategoryTile(String category, List<String> users) {
    return Card(
      color: whiteColor,
      elevation: 4.0,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: ExpansionTile(
        title: Text(
          category,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
            fontFamily: "Poppins",
            color: blackColor,
          ),
        ),
        children: users.map((user) => buildUserListTile(user)).toList(),
      ),
    );
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
                        'Daftar User',
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
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: TextField(
                    controller: searchController,
                    onChanged: (value) {
                      // Update displayedUsers based on the search query
                      setState(() {
                        displayedUsers = allUsers
                            .where((user) => user
                                .toLowerCase()
                                .contains(value.toLowerCase()))
                            .toList();
                      });
                    },
                    decoration: InputDecoration(
                      hintText: 'Cari Nama User',
                      hintStyle: TextStyle(
                        fontSize: 14,
                        color: Color(0xffC2C2C2),
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins',
                      ),
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.all(16.0),
                    children: [
                      buildUserCategoryTile(
                          'Pasien Posyandu',
                          displayedUsers
                              .where((user) => user.startsWith('Pasien'))
                              .toList()),
                      buildUserCategoryTile(
                          'Bidan Desa',
                          displayedUsers
                              .where((user) => user.startsWith('Bidan'))
                              .toList()),
                      buildUserCategoryTile(
                          'Kader Posyandu',
                          displayedUsers
                              .where((user) => user.startsWith('Kader'))
                              .toList()),
                      buildUserCategoryTile(
                          'Administrator',
                          displayedUsers
                              .where((user) => user.startsWith('Admin'))
                              .toList()),
                    ],
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

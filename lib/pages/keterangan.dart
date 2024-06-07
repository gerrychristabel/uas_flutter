import 'package:flutter/material.dart';

void main() {
  runApp(Profil());
}

class Profil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController nimController = TextEditingController();
  final TextEditingController hadirController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 13, bottom: 13), // Memberikan margin atas dan bawah sebesar 15px
                  child: Text(
                    'Absensi Mahasiswa',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
               Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
              SizedBox(height: 20),
              TextField(
                controller: nameController,
                decoration: InputDecoration(labelText: 'Name'),
              ),
              SizedBox(height: 5), // Jarak antara Name dan NIM
              TextField(
                controller: nimController,
                decoration: InputDecoration(labelText: 'NIM'),
              ),
              SizedBox(height: 5), // Jarak antara NIM dan Program Studi
              TextField(
                controller: hadirController,
                decoration: InputDecoration(labelText: 'Kehadiran'),
              ),
            ],
          ),

                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Simpan data profil
                    String name = nameController.text;
                    String nim = nimController.text;
                    String prodi = hadirController.text;

                    // Tampilkan data dalam dialog
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Absensi Mahasiswa'),
                          content: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Name: $name'),
                                Text('NIM: $nim'),
                                Text('Status: $prodi'),
                              ],
                            ),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('Ok'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Text('Simpan perubahan',
                  style: TextStyle(
                        color: Colors.indigo,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5), // Menambahkan margin atas sebesar 5px
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/absensi');
                    },
                    child: Text(
                      'Kembali',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
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

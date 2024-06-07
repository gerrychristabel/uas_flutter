import 'package:flutter/material.dart';
import './pages/login.dart';
import './pages/registrasi.dart';
import './pages/absensi.dart';  // Import halaman Absensi
import './pages/keterangan.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Absensi Mahasiswa',
      initialRoute: '/login',
      routes: {
        '/login': (context) => const FormScreen(),
        '/registrasi': (context) => const RegistrasiScreen(),
        '/absensi': (context) => const AbsensiScreen(),
        '/keterangan': (context) => Profil(),
      },
    );
  }
}

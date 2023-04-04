import 'package:flutter/material.dart';
import 'package:pre_test/view/registerview.dart';

class Daftar extends StatelessWidget {
  const Daftar({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => const DaftarView()));
      },
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            child: Text(
              'Belum Punya Akun?',
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

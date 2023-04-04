import 'package:flutter/material.dart';
import 'package:pre_test/view/loginview.dart';

class Kembali extends StatelessWidget {
  const Kembali({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) => Login()));
      },
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            child: Text(
              'Sudah Punya Akun?',
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

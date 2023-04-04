import 'package:flutter/material.dart';
import 'package:pre_test/view/loginview.dart';
import 'package:pre_test/view/widgets/button.daftar.dart';

class Keluar extends StatelessWidget {
  const Keluar({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) => Login()));
      },
      child: Column(
        children: [
          Container(
            alignment: Alignment.topRight,
            child: Text(
              'Keluar',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

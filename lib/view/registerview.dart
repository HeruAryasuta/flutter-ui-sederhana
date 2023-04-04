import 'package:flutter/material.dart';
import 'package:pre_test/view/widgets/button.daftar2.dart';
import 'package:pre_test/view/widgets/button.kembali.dart';

class DaftarView extends StatelessWidget {
  const DaftarView({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    final formkey = GlobalKey<FormState>();
    String name = "";

    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Color(0xFFffffff),
        body: Container(
          padding: const EdgeInsets.only(left: 40, right: 40),
          child: Form(
            key: formkey, //key for form
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: height * 0.04),
                Text(
                  "Solusi",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.green,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  "Cepat Tanggap",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.green,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: "Masukan Nama"),
                  validator: (user) {
                    if (user!.isEmpty ||
                        RegExp('r\'^[a-z A-Z+\$]').hasMatch(user!)) {
                      return "Masukan Nama Yang Sesuai";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: "Masukan Email"),
                  validator: (user) {
                    if (user!.isEmpty ||
                        RegExp('r\'^[\w-\-,1-]+@([\w-\$').hasMatch(user!)) {
                      return "Masukan Email Yang Sesuai";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                TextField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Masukan Password',
                  ),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Kembali(),
                    ButtonDaftar(),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}

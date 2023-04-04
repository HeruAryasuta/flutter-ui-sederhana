import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:pre_test/view/widgets/button.keluar.dart';
import 'package:pre_test/view/widgets/caraosel.dart';
import 'package:pre_test/view/widgets/info.dart';

class Home extends StatelessWidget {
  List catNames = [
    "Gigi",
    "Jantung",
    "Mata",
    "Otak",
    "Telinga",
    "Ambulan",
    "Rumah Sakit"
  ];

  List<Icon> catIcon = [
    Icon(MdiIcons.toothOutline, color: Colors.green, size: 30),
    Icon(MdiIcons.heartPlus, color: Colors.green, size: 30),
    Icon(MdiIcons.eye, color: Colors.green, size: 30),
    Icon(MdiIcons.brain, color: Colors.green, size: 30),
    Icon(MdiIcons.earHearing, color: Colors.green, size: 30),
    Icon(MdiIcons.ambulance, color: Colors.green, size: 30),
    Icon(MdiIcons.hospitalMarker, color: Colors.green, size: 30),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 15, bottom: 15, right: 15, left: 15),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Medical",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        // wordSpacing: 2,
                      ),
                    ),
                    Keluar(),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 3, bottom: 15, top: 5),
                  child: Text(
                    "Hai, User",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        wordSpacing: 2),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 15),
                  width: double.infinity,
                  height: 55,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Ada yang bisa kami bantu?",
                      hintStyle: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        size: 17,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                    autoPlay: true,
                    enlargeCenterPage: true,
                    viewportFraction: 0.7,
                    enableInfiniteScroll: true),
                items: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 0, vertical: 28),
                    decoration: BoxDecoration(),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        'https://img.freepik.com/free-vector/doctor-nurse-giving-medical-care-patient-bed-isolated-flat-illustration_74855-10593.jpg?w=900&t=st=1678636215~exp=1678636815~hmac=1487f1eed527d3956f8de9bbe9dcc0c5b3b8f7051e9da50dae51547e75de1dfa',
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              "Kategori",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black.withOpacity(0.7)),
            ),
          ),
          SizedBox(height: 15),
          Container(
            height: 100,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: catNames.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 15,
                      ),
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 4,
                            spreadRadius: 2,
                          )
                        ],
                      ),
                      child: Center(
                        child: catIcon[index],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  "Info Untuk Kamu",
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.7),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Info(),
            ],
          ),
        ],
      ),
    );
  }
}

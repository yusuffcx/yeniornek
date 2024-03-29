// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CarsDetails extends StatelessWidget {
  final String carName;
  const CarsDetails({super.key, required this.carName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(carName)),
      body: carName == "Ford Focus"
          ? Column(
              children: [
                Image.asset(
                  'images/ford_focus.PNG',
                  width: 250,
                ),
                const CarsDetail(
                    Marka: "Ford",
                    Model: "Focus",
                    Model_yili: "2019",
                    Motor_Hacmi: "1.5 TDCI",
                    Vites: "Yarı Otomatik",
                    Yakit: "Dizel"),
              ],
            )
          : Column(
              children: [
                Image.asset(
                  'images/corolla.PNG',
                  width: 250,
                ),
                const CarsDetail(
                    Marka: "Toyota",
                    Model: "Corolla",
                    Model_yili: "2022",
                    Motor_Hacmi: "1.5",
                    Vites: "Otomatik",
                    Yakit: "Benzin"),
              ],
            ),
    );
  }
}

class CarsDetail extends StatelessWidget {
  const CarsDetail({
    super.key,
    required this.Marka,
    required this.Model,
    required this.Model_yili,
    required this.Motor_Hacmi,
    required this.Yakit,
    required this.Vites,
  });
  final String Marka;
  final String Model, Model_yili, Motor_Hacmi, Yakit, Vites;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 100.0),
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 15),
        child: Text(
          '*Marka: $Marka\n*Model: $Model\n*Model Yılı: $Model_yili\n*Motor Hacmi: $Motor_Hacmi\n*Yakıt: $Yakit\n*Vites: $Vites',
          style: const TextStyle(
            fontSize: 15,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}

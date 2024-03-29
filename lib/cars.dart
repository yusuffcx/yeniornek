import 'package:car_rental/cars_details.dart';
import 'package:car_rental/main_page.dart';
import 'package:flutter/material.dart';

class CarsPage extends StatefulWidget {
  const CarsPage({super.key});

  @override
  State<CarsPage> createState() => _CarsState();
}

class _CarsState extends State<CarsPage> {
  int _selectedIndex = 1;
  void _itemtap(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (index == 0) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const MainPage()));
    } else if (index == 1) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const CarsPage()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        automaticallyImplyLeading: false,
        title: const Text(
          'Cars',
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CarsDetails(
                            carName: 'Ford Focus',
                          )));
            },
            title: Padding(
              padding: const EdgeInsets.only(right: 188),
              child:
                  Image.asset('images/ford_focus.PNG', height: 50, width: 50),
            ),
            subtitle:
                const Text("2019 Model Ford Focus 1.6 TDCI , Otomatik Dizel"),
            leading: const Icon(Icons.chevron_right_rounded),
            dense: true,
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CarsDetails(
                            carName: 'Toyota Corolla',
                          )));
            },
            title: Padding(
              padding: const EdgeInsets.only(right: 188),
              child: Image.asset('images/corolla.PNG', height: 50, width: 50),
            ),
            subtitle:
                const Text("2022 Model Toyota Corolla 1.5 , Otomatik Benzin"),
            leading: const Icon(Icons.chevron_right_rounded),
            dense: true,
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _itemtap,
        currentIndex: _selectedIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Ana Sayfa"),
          BottomNavigationBarItem(
              icon: Icon(Icons.car_rental), label: "Araçlar")
        ],
      ),
    );
  }
}

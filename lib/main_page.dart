import 'package:car_rental/cars.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  @override
  State<MainPage> createState() => _MainState();
}

class _MainState extends State<MainPage> {
  int _selectedIndex = 0;
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
        title: const Center(child: Text('Ana Sayfa')),
        automaticallyImplyLeading: false,
      ),
      body: Content(),
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

  Widget Content() {
    return Container(
      child: CarouselSlider(
        items: [1, 2, 3, 4, 5].map((i) {
          return Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                "text $i",
                style: const TextStyle(fontSize: 40),
              ),
            ),
          );
        }).toList(),
        options: CarouselOptions(
          height: 300,
        ),
      ),
    );
  }
}

final List<Widget> _pages = [MainPage(), CarsPage()];

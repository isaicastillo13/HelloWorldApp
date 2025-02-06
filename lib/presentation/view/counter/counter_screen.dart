import 'package:flutter/material.dart';

class MyCounter extends StatefulWidget {
  const MyCounter({super.key});

  @override
  State<MyCounter> createState() => _MyCounterState();
}



class _MyCounterState extends State<MyCounter> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Center(
          child: Text('Counter')
          ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterLogo(size: 50),
            Text('$_counter', style: TextStyle( fontSize: 160, fontWeight: FontWeight.w100),),
            Text('Clicks', 
            style: TextStyle(
              fontSize: 25, 
              fontWeight: FontWeight.w200
              ),
              ),
            // Boton
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _counter++;
          });
          // Handle button tap
        },
        tooltip: 'Increment',
        child: const Icon(Icons.plus_one),
      ),




      // bottomNavigationBar: BottomNavigationBar(
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.business),
      //       label: 'Business',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.school),
      //       label: 'School',
      //     ),
      //   ],
      //   currentIndex: 0,
      //   selectedItemColor: Colors.amber[800],
      //   onTap: (index) {
      //     // Handle item tap
      //   },
      // ),
    );
  }
}

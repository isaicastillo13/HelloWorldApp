import 'package:flutter/material.dart';
import 'package:helloworldapp/widgets/custom_bottom.dart';

class CounterFunction extends StatefulWidget {
  const CounterFunction({super.key});

  @override
  State<CounterFunction> createState() => _CounterFunction();
}



class _CounterFunction extends State<CounterFunction> {
  int _counter = 0;

  // Functions
  void _increment() => setState(() => _counter++);
  void _decrement() => setState(() => _counter = _counter > 0 ? _counter - 1 : 0);
  void _reset() => setState(() => _counter = 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Center(
          child: Text('Counter Function')
          ),
          actions: [
            IconButton(
              onPressed:_reset,
              icon: const Icon(Icons.rotate_left_sharp),
            )
          ],
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const FlutterLogo(size: 50),
            Text('$_counter', style: const TextStyle( fontSize: 160, fontWeight: FontWeight.w100),),
            Text('Click${_counter == 1 ? '' : 's'}', 
            style: const TextStyle(
              fontSize: 25, 
              fontWeight: FontWeight.w200
              ),
              ),
            // Boton
          ],
        ),
      ),

    
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,

        children: [
          
          CustomBottom(
            text: 'Increment',
            onPressed:_increment,
            icon: Icons.plus_one,
          ),
          const SizedBox(height: 10),
          CustomBottom(
            text: 'Increment',
            onPressed:_decrement,
            icon: Icons.exposure_minus_1,
          ),
          const SizedBox(height: 10),
          CustomBottom(
            text: 'Increment',
            onPressed:_reset,
            icon: Icons.rotate_left_sharp,
          ),
          const SizedBox(height: 10),


        ],
      ),

      // bottomNavigationBar: BottomNavigationBar(
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.plus_one),
      //       label: 'Increment',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.exposure_minus_1),
      //       label: 'Decrement'
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.rotate_left_sharp),
      //       label: 'Reset'
      //     ),
      //   ],
      //   onTap: (index) {
      //     if (index == 0) {
      //       _increment();
      //     } else if (index == 1) {
      //       _decrement();
      //     } else if (index == 2) {
      //       _reset();
      //     }
      //   },
      // ),
    );
  }
}

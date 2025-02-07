import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreen();
}



class _CounterScreen extends State<CounterScreen> {
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

      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     setState(() {
      //       _counter++;
      //     });
      //   },
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.plus_one),
      // ),

      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,

        children: [
          
          FloatingActionButton(
            onPressed: () {
              setState(() {
                _counter++;
              });
            },
            tooltip: 'Increment',
            child: const Icon(Icons.plus_one),
          ),
          const SizedBox(height: 10),

          FloatingActionButton(
            onPressed: () {
              setState(() {
                if (_counter > 0){
                  _counter--;
                } else{
                  _counter = 0;
                }
              });
            },
            tooltip: 'Decrement',
            child: const Icon(Icons.exposure_minus_1),
          ),
          const SizedBox(height: 10),

          FloatingActionButton(
            onPressed: () {
              setState(() {
                _counter = 0;
              });
            },
            tooltip: 'Reset',
            child: const Icon(Icons.refresh),
          ),      
        ],
      ),
    );
  }
}

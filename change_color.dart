import 'package:flutter/material.dart';

void main() {
  runApp(RenkDegisim());
}

class RenkDegisim extends StatefulWidget {
  @override
  _RenkDegisimState createState() => _RenkDegisimState();
}

class _RenkDegisimState extends State<RenkDegisim> {
  bool sariMi = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor:
            sariMi ? Colors.yellow : Color.fromARGB(255, 0, 0, 102),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                sariMi = !sariMi; // Renk değişimi
              });
            },
            child: Text(
              'Rengi Değiştir',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

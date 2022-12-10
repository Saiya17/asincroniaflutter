import 'dart:async';
import 'package:flutter/material.dart';
import 'package:asincronia_en_flutter/services/mockapi.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int az = 0;
  double aw = 0;
  int as = 0;
  int a = 0;
  int bz = 0;
  double bw = 0;
  int bs = 0;
  int b = 0;
  int cz = 0;
  double cw = 0;
  int cs = 0;
  int c = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        body: FractionallySizedBox(
          widthFactor: 1,
          heightFactor: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text("Sergio Fabricio Velez Loor 7mo B ",
                  style:
                      TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
              Column(
                children: [
                  FloatingActionButton(
                    onPressed: () async {
                      setState(() {
                        aw = 300;
                        as = 1;
                      });
                      a = await MockApi().getFerrariInteger();
                      setState(() {
                        az = a;
                        aw = 0;
                        as = 0;
                      });
                      //print(az);
                    },
                    backgroundColor: Colors.green,
                    child: const Icon(
                      Icons.flash_on,
                      color: Colors.black,
                    ),
                  ),
                  AnimatedContainer(
                    width: aw,
                    height: 15,
                    decoration: const BoxDecoration(color: Colors.green),
                    duration: Duration(seconds: as),
                  ),
                  Text(
                    az.toInt().toString(),
                    style: const TextStyle(color: Colors.green, fontSize: 25.0),
                  ),
                ],
              ),
              Column(
                children: [
                  FloatingActionButton(
                      onPressed: () async {
                        setState(() {
                          bw = 300;
                          bs = 3;
                        });
                        b = await MockApi().getHyundaiInteger();
                        setState(() {
                          bz = b;
                          bw = 0;
                          bs = 0;
                        });
                        //print(bz);
                      },
                      backgroundColor: Colors.orange,
                      child: const Icon(
                        Icons.airport_shuttle,
                        color: Colors.black,
                      )),
                  AnimatedContainer(
                    width: bw,
                    height: 15,
                    decoration: const BoxDecoration(color: Colors.orange),
                    duration: Duration(seconds: bs),
                  ),
                  Text(
                    bz.toInt().toString(),
                    style:
                        const TextStyle(color: Colors.orange, fontSize: 25.0),
                  )
                ],
              ),
              Column(
                children: [
                  FloatingActionButton(
                      onPressed: () async {
                        setState(() {
                          cw = 300;
                          cs = 10;
                        });
                        c = await MockApi().getFisherPriceInteger();
                        setState(() {
                          cz = c;
                          cw = 0;
                          cs = 0;
                        });
                        // print(cz);
                      },
                      backgroundColor: Colors.red,
                      child: const Icon(
                        Icons.directions_walk,
                        color: Colors.black,
                      )),
                  AnimatedContainer(
                    width: cw,
                    height: 15,
                    decoration: const BoxDecoration(color: Colors.red),
                    duration: Duration(seconds: cs),
                  ),
                  Text(
                    cz.toInt().toString(),
                    style: const TextStyle(color: Colors.red, fontSize: 25.0),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

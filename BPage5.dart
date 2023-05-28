import 'package:flutter/material.dart';
import 'package:minnalmini/BPage6.dart';
import 'package:minnalmini/BPage9.dart';

class BPage5 extends StatefulWidget {
  const BPage5({Key? key}) : super(key: key);

  @override
  State<BPage5> createState() => _BPage5State();
}

class _BPage5State extends State<BPage5> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "POLES",
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 0),
              fontSize: 30,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BPage9()),
                );
              },
              icon: const Icon(
                Icons.menu,
                color: Color.fromARGB(255, 255, 255, 0),
                size: 30,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(16, 55, 16, 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Select Pole:',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(padding: EdgeInsets.only(top: 100.0, bottom: 10.0)),
                  Container(
                    width: 110,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black),
                      color: Color(0xFFD9D9D9),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'P1',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFFFFF00),
                            border: Border.all(color: Colors.black),
                          ),
                          child: Center(
                            child: InkWell(
                              onTap: () {
                                // Navigate to the next page.
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BPage6()),
                                );
                              },
                              child: Text(
                                '2',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 110,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black),
                      color: Color(0xFFD9D9D9),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'P2',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFFFFF00),
                            border: Border.all(color: Colors.black),
                          ),
                          child: Center(
                            child: InkWell(
                              onTap: () {
                                // Navigate to the next page.
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BPage6()),
                                );
                              },
                              child: Text(
                                '2',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(padding: EdgeInsets.only(top: 50.0, bottom: 10.0)),
                  Container(
                    width: 110,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black),
                      color: Color(0xFFD9D9D9),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'P3',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFFFFF00),
                            border: Border.all(color: Colors.black),
                          ),
                          child: Center(
                            child: InkWell(
                              onTap: () {
                                // Navigate to the next page.
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BPage6()),
                                );
                              },
                              child: Text(
                                '0',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 110,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black),
                      color: Color(0xFFD9D9D9),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'P4',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFFFFF00),
                            border: Border.all(color: Colors.black),
                          ),
                          child: Center(
                            child: InkWell(
                              onTap: () {
                                // Navigate to the next page.
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BPage6()),
                                );
                              },
                              child: Text(
                                '0',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

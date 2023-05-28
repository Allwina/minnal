import 'package:flutter/material.dart';
import 'package:minnalmini/BPage7.dart';
import 'package:minnalmini/BPage9.dart';

class BPage6 extends StatefulWidget {
  const BPage6({Key? key}) : super(key: key);

  @override
  State<BPage6> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<BPage6> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "POLE STATUS",
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
        body: ListView(
          padding: const EdgeInsets.fromLTRB(16, 100, 16, 10),
          children: [
            Text(
              'Pole No.: P1 :',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
              child: Card(
                color: Color(0xFFD9D9D9),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(color: Colors.black),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('1', style: TextStyle(fontSize: 20)),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => BPage7()),
                        );
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Name : consumerName \nAddress : consumerAddress \n ................',
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            'Issue : Line lying low',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
              child: Card(
                color: Color(0xFFD9D9D9),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(color: Colors.black),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('2', style: TextStyle(fontSize: 20)),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => BPage7()),
                        );
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Name : consumerName \nAddress : consumerAddress \n ................',
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            'Issue : Pole leaning',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:minnalmini/Page4.dart';

class Verify extends StatefulWidget {
  const Verify({Key? key});

  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 310,
                  padding: const EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 0),
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(210),
                      bottomRight: Radius.circular(210),
                    ),
                  ),
                  child: Center(
                    child: Container(
                      height: 350,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(200),
                          bottomRight: Radius.circular(200),
                        ),
                        image: DecorationImage(
                          image: AssetImage('images/minnalicon.png'),
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "WELCOME <username>",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    height: 400,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black, width: 1),
                      color: Color.fromARGB(255, 255, 255, 0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'enter email',
                              contentPadding: EdgeInsets.symmetric(vertical: 10),
                              alignLabelWithHint: true,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'enter password',
                              contentPadding: EdgeInsets.symmetric(vertical: 10),
                              alignLabelWithHint: true,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'pole number',
                              contentPadding: EdgeInsets.symmetric(vertical: 10),
                              alignLabelWithHint: true,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'address',
                              contentPadding: EdgeInsets.symmetric(vertical: 10),
                              alignLabelWithHint: true,
                            ),
                          ),
                        ),
                       
                        const SizedBox(
                          height: 5,
                        ),
                        ElevatedButton(
                          onPressed: () {
                             Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>Consumer(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(100, 45),
                            backgroundColor: Colors.white,
                            side: const BorderSide(color: Colors.black, width: 1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: const Text(
                            "REGISTER",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 16,
                  left: 16,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

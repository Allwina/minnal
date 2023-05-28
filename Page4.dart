import 'package:flutter/material.dart';
import 'package:minnalmini/Page3.dart';
import 'package:minnalmini/Page5.dart';

class Consumer extends StatefulWidget {
  const Consumer({Key? key}) : super(key: key);

  @override
  State<Consumer> createState() => _ConsumerState();
}

class _ConsumerState extends State<Consumer> {
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
                  "CONSUMER VERIFICATION",
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
                    height: 350,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black, width: 1),
                      color: const Color.fromARGB(255, 255, 255, 0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'email',
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'Password',
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            // Forgot password logic
                          },
                          child: const Text("Forgot Password?"),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Page5()),
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
                            "LOGIN",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          Positioned(
            top: 10,
            left: 10,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

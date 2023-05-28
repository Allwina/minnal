import 'package:flutter/material.dart';

import 'Page6.dart';

class Page8 extends StatefulWidget {
  const Page8({Key? key});

  @override
  State<Page8> createState() => _Page8State();
}

class _Page8State extends State<Page8> {
  String? selectedType;
  TextEditingController _textFieldController = TextEditingController();
  bool checkBoxValue = false;

  @override
  void dispose() {
    _textFieldController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'REPORT ISSUE',
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 0),
            fontSize: 30,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            onPressed: () { Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Page6()),
                      );},
            icon: Icon(
              Icons.menu,
              color: Color.fromARGB(255, 255, 255, 0),
              size: 30,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Container(
            padding: EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Complaint type",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  DropdownButton<String>(
                    value: selectedType,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedType = newValue;
                      });
                    },
                    items: <String>[
                      'Voltage related',
                      'Meter related',
                      'No power supply',
                      'Pole related',
                      'Transformer related',
                      'Frequent interruption',
                      'Line related',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Type your Complaint here",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    controller: _textFieldController,
                    decoration: InputDecoration(
                      labelText: 'Type here',
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(vertical: 40, horizontal: 20), // Adjust the size here
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        // Handle upload button press
                      },
                      icon: Icon(Icons.upload, color: Color.fromARGB(255, 255, 255, 0)),
                      label: Text(
                        'Upload',
                        style: TextStyle(color: Color.fromARGB(255, 255, 255, 0), fontSize: 20),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        side: const BorderSide(color: Colors.black, width: 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        fixedSize: Size(150, 50), // Adjust the size here
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: Text(
                      "Image Uploaded",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "Is the location yours?",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Checkbox(
                        value: checkBoxValue,
                        onChanged: (bool? newValue) {
                          setState(() {
                            checkBoxValue = newValue ?? false;
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Else, enter Pole no:",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    controller: _textFieldController,
                    decoration: InputDecoration(
                      labelText: 'Enter Pole no',
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20), // Adjust the size here
                    ),
                  ),
                  SizedBox(height: 10),
                   Center(
                     child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(150, 50),
                            backgroundColor: Color.fromARGB(255, 255, 255, 0),
                            side: const BorderSide(color: Colors.black, width: 1),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          child: const Text("SUBMIT",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                        ),
                   ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

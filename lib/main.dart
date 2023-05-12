import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
 const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  var displayNumber = 0;

  void addButton(){
    setState(() {
      displayNumber++;
    });
  }
  void subButton(){
    setState(() {
      displayNumber--;
    });
  }

  void resetButton(){
    setState(() {
      displayNumber = 0;
    });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Counter App')
        ),
        body: Container(
          color: Colors.grey,
          // height: height,
          // width: width,
          child: Center(
            child: Container(
              height: 400,
              width: 300,
              alignment: Alignment.center,
              padding: const EdgeInsets.only(top: 30, left: 5, right: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "$displayNumber",
                    style: const TextStyle(
                      color: Colors.blue,
                      fontSize: 100,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          onPressed: subButton,
                          child: const Text(
                           "Sub"
                          )),
                      const SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                          onPressed: addButton,
                          child: const Text(
                              "Add"
                          ))
                    ],
                  ),
                  ElevatedButton(
                      onPressed: resetButton,
                      child: const Text(
                          "Reset"
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

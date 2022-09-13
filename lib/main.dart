import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Who Am I',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('images/ravidu.jpg'),
            ),
            const Text(
              "Ravindu Dilshan",
              style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold, fontFamily: 'Pacifico'),
            ),
            Text(
              'SOFTWARE ENGINEER',
              style: TextStyle(fontFamily: 'Source Sans Pro', color: Colors.teal.shade100, fontSize: 20, letterSpacing: 2.5, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20,child: Divider(color: Colors.white,),width: 150,),
            Card(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: ListTile(
                leading: const Icon(
                  Icons.phone,
                  color: Colors.teal,
                ),
                title: Text(
                  '+94 702 007 614',
                  style: TextStyle(color: Colors.teal.shade900, fontFamily: 'Source Sans Pro', fontSize: 20),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: ListTile(
                leading: const Icon(
                  Icons.email,
                  color: Colors.teal,
                ),
                title: Text(
                  'dilshan.ravidu@gmail.com',
                  style: TextStyle(color: Colors.teal.shade900, fontFamily: 'Source Sans Pro', fontSize: 20),
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Overalap',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<String> peoples = [
    'https://images.unsplash.com/photo-1493752603190-08d8b5d1781d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cGVvcGxlfGVufDB8MnwwfHw%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1518577915332-c2a19f149a75?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8cGVvcGxlfGVufDB8MnwwfHw%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1485893086445-ed75865251e0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fHBlb3BsZXxlbnwwfDJ8MHx8&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1485206412256-701ccc5b93ca?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHBlb3BsZXxlbnwwfDJ8MHx8&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTF8fHBlb3BsZXxlbnwwfDJ8MHx8&auto=format&fit=crop&w=500&q=60',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff171120),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for(int i = 0; i < peoples.length; i++)
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 0),
                    child: Align(
                      widthFactor: 0.5,
                      child: CircleAvatar(
                        radius: 35,
                        backgroundColor: const Color(0xff171120), //Change it according to the scaffold color of your app
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(peoples[i]),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            const SizedBox(width: 20,),
            const CircleAvatar(
              radius: 30,
              backgroundColor: Color(0xffFF83CD),
              child: Icon(Icons.add, color: Colors.black,),
            ),
          ],
        ),
      ),
    );
  }
}

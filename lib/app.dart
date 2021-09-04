import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(appBarTheme: AppBarTheme(color: Colors.purpleAccent)),
        home: Scaffold(
            appBar: AppBar(
              title: Text("Profile UI"),
            ),
            body: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.purple[200], Colors.purple[50]])),
              child: Column(
                children: [
                  Image.asset(
                    "images/madre.png",
                    width: 300,
                    height: 300,
                  ),
                  ListTile(
                    title: Center(
                        child: Text(
                            "No hay amor en el mundo, como el de mi Madre")),
                    subtitle: Center(child: Text("Fragmento")),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(onPressed: () {}, child: Text("Message")),
                      ElevatedButton(
                          onPressed: () {}, child: Text("My First Love"))
                    ],
                  ),
                  CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage("images/madre.png"),
                  ),
                  ListTile(
                    title: Center(child: Text("A mi madre")),
                    subtitle: Text(
                        "Mi madre hoy no esta aqui conmigo, esta en " +
                            "otro lugar bien lejos, donde nunca podré " +
                            "ver, nunca más, Pero sé que allí donde está, " +
                            "aun me sigue queriendo con todas sus fuerzas " +
                            "y con todo su inmneso amor, el único verdadero, " +
                            "sincero y sin final."),
                  )
                ],
              ),
            )));
  }
}

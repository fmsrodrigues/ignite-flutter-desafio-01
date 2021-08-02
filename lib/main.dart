import 'package:flutter/material.dart';

void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Meu Primeiro App",
      home: HomePage(),
      themeMode: ThemeMode.system,
      theme: ThemeData(
        primaryColor: Colors.purple,
        scaffoldBackgroundColor: Colors.purpleAccent,
        floatingActionButtonTheme:
            FloatingActionButtonThemeData(backgroundColor: Colors.purpleAccent),
      ),
      darkTheme: ThemeData(
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.grey,
        floatingActionButtonTheme:
            FloatingActionButtonThemeData(backgroundColor: Colors.grey),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  var count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        title: Text("Contador"),
        centerTitle: true,
        backgroundColor: Colors.purpleAccent,
      ),
      body: Center(
        child: Text(
          "Contagem: ${count.toString()}",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.purpleAccent,
          onPressed: () {
            setState(() {
              count++;
            });
          },
          child: Icon(Icons.add)),
    );
  }
}

import 'package:flutter/material.dart';

class MainPageUI extends StatefulWidget {
  @override
  _MainPageUIState createState() => _MainPageUIState();
}

class _MainPageUIState extends State<MainPageUI> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Schulte Table"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () => print("tiklandi"),
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.blue),
                        height: 150,
                        width: 150,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Text("data")],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () => print("tiklandi"),
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.blue),
                        height: 150,
                        width: 150,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Text("data")],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () => print("tiklandi"),
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.blue),
                        height: 150,
                        width: 150,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Text("data")],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () => print("tiklandi"),
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.blue),
                        height: 150,
                        width: 150,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Text("data")],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () => print("tiklandi"),
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.blue),
                        height: 150,
                        width: 150,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Text("data")],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () => print("tiklandi"),
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.blue),
                        height: 150,
                        width: 150,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Text("data")],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

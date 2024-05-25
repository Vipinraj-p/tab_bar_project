import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: TabBar(
            padding: EdgeInsets.only(top: 40),
            labelStyle:
                const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            tabs: const [Tab(text: 'Tab 1'), Tab(text: 'Tab 2')],
            indicatorPadding: const EdgeInsets.symmetric(horizontal: -50),
            labelColor: Colors.blue[800],
            indicatorColor: Colors.blue[800],
            unselectedLabelColor: Colors.black45,
            overlayColor: MaterialStatePropertyAll(Colors.blue[100]),
            splashBorderRadius: const BorderRadius.all(Radius.circular(20)),
          ),
          body: const TabBarView(children: [Tab1(), Tab2()])),
    );
  }
}

class Tab1 extends StatelessWidget {
  const Tab1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Color.fromARGB(255, 94, 93, 93),
        body: SafeArea(
          child: Center(
              child: Text('TAB 1',
                  style: TextStyle(color: Colors.white, fontSize: 40,fontWeight: FontWeight.w300))),
        ));
  }
}

class Tab2 extends StatelessWidget {
  const Tab2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Color.fromARGB(255, 29, 102, 59),
        body: SafeArea(
          child: Center(
              child: Text(
            'TAB 2',
            style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.w300),
          )),
        ));
  }
}

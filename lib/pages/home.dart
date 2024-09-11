import 'package:flutter/material.dart';
import '../widgets/my_button.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _counter = 0;
  void onPressed(int newCount) => setState(() => _counter = newCount);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(),
      drawer: _drawer(),
    );
  }

  PreferredSizeWidget _appBar() {
    return AppBar(
      centerTitle: true,
      title: const Text('App Bar'),
      backgroundColor: Colors.lightBlue,
    );
  }

  Widget _body() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Press this button to see the ACTION !'),
            const SizedBox(height: 16),
            MyButton(onTap: onPressed, count: _counter),
          ],
        ),
      ),
    );
  }

  Widget _drawer() {
    return Drawer(
      child: ListTile(
        tileColor: Colors.blue.shade100,
        leading: const Icon(Icons.countertops),
        title: Text('button pressed $_counter time'),
      ),
    );
  }
}

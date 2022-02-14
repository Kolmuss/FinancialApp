import 'package:financial_app/widgets/layout/my_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        bgColor: Color(0xFFF8777D),
        back: true,
        backIcon: Icon(Icons.settings),
        centerTitle: true,
        title: 'Accounts',
        actions: [
          SizedBox(
            height: double.infinity,
            width: 40,
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: double.infinity,
            width: 40,
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Column(
        children: [],
      ),
    );
  }
}

import 'package:financial_app/widgets/layout/my_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:financial_app/routes.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Settings',
        style: TextStyle(
          fontSize: 17,
          color: Colors.black,
        )
        ),
        leadingWidth: 80,
        leading: Center(
          child: InkWell(
            onTap: () {
              Routes.router.pop();
            },
            child: const Text(
              'Cancel',
              style: TextStyle(
                fontSize: 17,
                color: Color(0xFF65BCBF)
              ),
            ),
          ),
        ),
        actions: [
          Center(
            child: InkWell(
              onTap: () {

              },
              child: const Padding(
                padding: EdgeInsets.only(right: 16.0),
                child: Text('Save',
                style: TextStyle(
                  fontSize: 17,
                  color: Color(0xFF65BCBF),
                ),
                ),
              ),
            )
          )
        ],
      ),
      body: Container(
        width: double.infinity,
        color: const Color(0xFFEAEBED),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24,),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text('Main',
              style: TextStyle(
                color: Colors.black.withOpacity(0.3)
              ),
              ),
            ),
            const SizedBox(height: 8,),
            const Divider(
              thickness: 1,
              color: Color(0xFF3B3750),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 13),
              child: Row(
              ),
            )
          ],
        ),
      ),
    );
  }
}

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
            Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: const Color(0xFF3B3750).withOpacity(0.3),
                    width: 1,
                  )
                ),
                color: Colors.white,
              ),
              padding: const EdgeInsets.symmetric(vertical: 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text('Currency', style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 11.0),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 11.0),
                          child: Text('USD', style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF65BCBF),
                          ),),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: const Color(0xFF3B3750).withOpacity(0.3),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(
                      color: const Color(0xFF3B3750).withOpacity(0.3),
                      width: 1,
                    )
                ),
                color: Colors.white,
              ),
              padding: const EdgeInsets.symmetric(vertical: 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text('Appearance', style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 11.0),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 11.0),
                          child: Text('USD', style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF65BCBF),
                          ),),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: const Color(0xFF3B3750).withOpacity(0.3),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(
                      color: const Color(0xFF3B3750).withOpacity(0.3),
                      width: 1,
                    ),
                  bottom: BorderSide(
                    color: const Color(0xFF3B3750).withOpacity(0.3),
                    width: 1,
                  )
                ),
                color: Colors.white,
              ),
              padding: const EdgeInsets.symmetric(vertical: 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text('Additionally', style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 11.0),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 11.0),
                          child: Text('USD', style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF65BCBF),
                          ),),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: const Color(0xFF3B3750).withOpacity(0.3),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 24,),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text('Premium',
                style: TextStyle(
                    color: Colors.black.withOpacity(0.3)
                ),
              ),
            ),
            const SizedBox(height: 8,),
            Container(
              decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(
                      color: const Color(0xFF3B3750).withOpacity(0.3),
                      width: 1,
                    )
                ),
                color: Colors.white,
              ),
              padding: const EdgeInsets.symmetric(vertical: 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text('Icon Set', style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: const Color(0xFF65BCBF),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Text(
                        'PRO',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(
                      color: const Color(0xFF3B3750).withOpacity(0.3),
                      width: 1,
                    )
                ),
                color: Colors.white,
              ),
              padding: const EdgeInsets.symmetric(vertical: 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text('Backups', style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: const Color(0xFF65BCBF),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Text(
                        'PRO',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(
                      color: const Color(0xFF3B3750).withOpacity(0.3),
                      width: 1,
                    )
                ),
                color: Colors.white,
              ),
              padding: const EdgeInsets.symmetric(vertical: 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text('Export', style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: const Color(0xFF65BCBF),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Text(
                        'PRO',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(
                      color: const Color(0xFF3B3750).withOpacity(0.3),
                      width: 1,
                    ),
                  bottom: BorderSide(
                    color: const Color(0xFF3B3750).withOpacity(0.3),
                    width: 1,
                  )
                ),
                color: Colors.white,
              ),
              padding: const EdgeInsets.symmetric(vertical: 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text('Security', style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: const Color(0xFF65BCBF),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Text(
                        'PRO',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFF65BCBF),
                  ),
                  onPressed: () {

                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15.0),
                    child: Text(
                      'Subscribe',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 92,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                  ),
                  onPressed: () {

                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15.0),
                    child: Text(
                      'Send your review',
                      style: TextStyle(
                        color: Color(0xFF65BCBF),
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                  ),
                  onPressed: () {

                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15.0),
                    child: Text(
                      'Rate in App Store ',
                      style: TextStyle(
                        color: Color(0xFF65BCBF),
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

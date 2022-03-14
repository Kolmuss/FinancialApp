import 'package:financial_app/routes.dart';
import 'package:flutter/cupertino.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  _InitialScreenState createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) async {
      Routes.router.navigate(Routes.mainScreen);
    });
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

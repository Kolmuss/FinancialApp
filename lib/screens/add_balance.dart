import 'package:financial_app/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class AddBalance extends StatefulWidget {
  const AddBalance({Key? key}) : super(key: key);

  @override
  _AddBalanceState createState() => _AddBalanceState();
}

class _AddBalanceState extends State<AddBalance> {
  bool isExpense = false;

  @override
  Widget build(BuildContext context) {
    final _formatter = MaskTextInputFormatter(
      mask: '${isExpense ? '-' : ''}\$#########',
      filter: {"#": RegExp(r'[0-9]')},
      initialText: '0',
    );
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(isExpense == true ? 'Expense' : 'Income',
            style: const TextStyle(
              fontSize: 17,
              color: Colors.black,
            )),
        leadingWidth: 80,
        leading: Center(
          child: InkWell(
            onTap: () {
              Routes.router.pop();
            },
            child: const Text(
              'Cancel',
              style: TextStyle(fontSize: 17, color: Color(0xFF65BCBF)),
            ),
          ),
        ),
        actions: [
          Center(
              child: InkWell(
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: Text(
                'Done',
                style: TextStyle(
                  fontSize: 17,
                  color: Color(0xFF65BCBF),
                ),
              ),
            ),
          ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 24,
            ),
            Container(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 51,
                    child: CupertinoSwitch(
                      value: isExpense,
                      onChanged: (value) {
                        setState(() {
                          isExpense = value;
                        });
                      },
                      activeColor: const Color(0xFFF8777D),
                      trackColor: const Color(0xFF65BCBF),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 14.0),
                      child: TextField(
                        style: TextStyle(
                          fontSize: 40,
                          color: isExpense == true
                              ? const Color(0xFFF8777D)
                              : const Color(0xFF65BCBF),
                        ),
                        textAlign: TextAlign.end,
                        keyboardType: TextInputType.number,
                        inputFormatters: [_formatter],
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: isExpense == true ? '-\$0' : '\$0',
                          hintStyle: TextStyle(
                              fontSize: 40,
                              color: isExpense == true
                                  ? const Color(0xFFF8777D)
                                  : const Color(0xFF65BCBF)),
                          // prefixText: isExpense == true ? '-\$' : '\$',
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 17,
            ),
            Text(
              'Settings',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black.withOpacity(0.3),
              ),
            ),
            const SizedBox(
              height: 7,
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
                  Text('Category', style: TextStyle(
                      color: Colors.black.withOpacity(0.7),
                      fontSize: 15,
                    ),),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 11.0),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 11.0),
                          child: Text('Food & Restaurants', style: TextStyle(
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
                  Text('Date', style: TextStyle(
                      color: Colors.black.withOpacity(0.7),
                      fontSize: 15,
                    ),),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 11.0),
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(right: 11.0),
                          child: Text('Today', style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF65BCBF),
                          ),),
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
                  Text('Account', style: TextStyle(
                      color: Colors.black.withOpacity(0.7),
                      fontSize: 15,
                    ),),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 11.0),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 11.0),
                          child: Text('Cash', style: TextStyle(
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
                  Text('Transfer to Account', style: TextStyle(
                    color: Colors.black.withOpacity(0.7),
                    fontSize: 15,
                  ),),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 11.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 11.0),
                          child: Text('Optional', style: TextStyle(
                            fontSize: 16,
                            color: Colors.black.withOpacity(0.1),
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
                  Text('Notes', style: TextStyle(
                    color: Colors.black.withOpacity(0.7),
                    fontSize: 15,
                  ),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

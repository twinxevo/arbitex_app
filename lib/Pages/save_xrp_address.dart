import 'package:arbitex/Navigation/variables.dart';
import 'package:arbitex/Pages/xrp_withdrawal.dart';
import 'package:flutter/material.dart';

class SaveXrpAddress extends StatefulWidget {
  const SaveXrpAddress({Key? key}) : super(key: key);

  @override
  _SaveXrpAddressState createState() => _SaveXrpAddressState();
}

class _SaveXrpAddressState extends State<SaveXrpAddress> {
  TextEditingController xrpAddress = TextEditingController();
  @override

  void dispose() {
    xrpAddress.dispose();

    super.dispose();
  }

  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Expanded(
          child: ListView(
            children: [
              Column(
                children: <Widget>[
                  const SizedBox(height: 50),
                  Text('Add USDT Wallet Address', style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                    backgroundColor: Colors.blue[900],
                  ),),
                  Container(
                    height: size.height * 0.2,
                    color: Colors.white,
                  ),

                  const SizedBox(height: 50),

                  Center(
                    child: Container(
                      height: 58,
                      width: size.width * .8,
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        autofillHints: [AutofillHints.email],
                        controller: xrpAddress,
                        decoration: const InputDecoration(
                          labelText: 'USDT Wallet Address',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.blue),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.blueGrey),
                          ),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),

                  Text('NOTE: Withdrawal address must be TRC20 Network.',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        backgroundColor: Colors.red
                    ),),
                  const SizedBox(height: 10),

                  ElevatedButton(onPressed: (){
                    xrpWallet = xrpAddress.text.trim();
                    print(xrpWallet);
                    Navigator.pop(context,
                      MaterialPageRoute(
                          builder: (context) =>
                          const XrpWithdrawal()),);
                  }, child: const Text('SAVE'),),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

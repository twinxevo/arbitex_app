import 'package:arbitex/Navigation/variables.dart';
import 'package:arbitex/Pages/ltc_withdrawal.dart';
import 'package:flutter/material.dart';

class SaveLtcAddress extends StatefulWidget {
  const SaveLtcAddress({Key? key}) : super(key: key);

  @override
  _SaveLtcAddressState createState() => _SaveLtcAddressState();
}

class _SaveLtcAddressState extends State<SaveLtcAddress> {
  TextEditingController ltcAddress = TextEditingController();
  @override
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
                  Text('Add LTC Wallet Address', style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                    backgroundColor: Colors.blue[900],
                  ),),
                  Container(
                    height: size.height * 0.3,
                    color: Colors.white,
                  ),

                  const SizedBox(height: 50),

                  Center(
                    child: Container(
                      height: 43,
                      width: size.width * .8,
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        autofillHints: [AutofillHints.email],
                        controller: ltcAddress,
                        decoration: const InputDecoration(
                          labelText: 'LTC Wallet Address',
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
                    ltcWallet = ltcAddress.text.trim();
                    print(ltcWallet);
                    Navigator.pushReplacement(context,
                      MaterialPageRoute(
                          builder: (context) =>
                          const LtcWithdrawal()),);
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

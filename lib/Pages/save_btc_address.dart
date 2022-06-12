import 'package:arbitex/Navigation/variables.dart';
import 'package:arbitex/Pages/btc_withdrawal.dart';
import 'package:flutter/material.dart';

class SaveBtcAddress extends StatefulWidget {
  const SaveBtcAddress({Key? key}) : super(key: key);

  @override
  _SaveBtcAddressState createState() => _SaveBtcAddressState();
}

class _SaveBtcAddressState extends State<SaveBtcAddress> {
  TextEditingController btcAddress = TextEditingController();
  @override
  void dispose() {
    btcAddress.dispose();

    super.dispose();
  }
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Expanded(
          child: ListView(
            children: [
              Column(
                children: <Widget>[
                  const SizedBox(height: 50),
                  Text('Add BTC Wallet Address', style: TextStyle(
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
                        controller: btcAddress,
                        decoration: const InputDecoration(
                          labelText: 'BTC Wallet Address',
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
                    btcWallet = btcAddress.text.trim();
                    print(btcWallet);
                    Navigator.pop(context,
                      MaterialPageRoute(
                          builder: (context) =>
                              BtcWithdrawal()),);
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

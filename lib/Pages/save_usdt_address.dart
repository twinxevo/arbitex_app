import 'package:arbitex/Navigation/variables.dart';
import 'package:arbitex/Pages/usdt_withdrawal.dart';
import 'package:flutter/material.dart';

class SaveUsdtAddress extends StatefulWidget {
  const SaveUsdtAddress({Key? key}) : super(key: key);

  @override
  _SaveUsdtAddressState createState() => _SaveUsdtAddressState();
}

class _SaveUsdtAddressState extends State<SaveUsdtAddress> {
  TextEditingController usdtAddress = TextEditingController();
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
                  Text('Add USDT Wallet Address', style: TextStyle(
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
                        controller: usdtAddress,
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
                    usdtWallet = usdtAddress.text.trim();
                    print(usdtWallet);
                    Navigator.pushReplacement(context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const UsdtWithdrawal()),);
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

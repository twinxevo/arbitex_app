import 'package:arbitex/Pages/xml_withdrawal.dart';
import 'package:flutter/material.dart';

import '../Navigation/variables.dart';

class SaveXmlAddress extends StatefulWidget {
  const SaveXmlAddress({Key? key}) : super(key: key);

  @override
  _SaveXmlAddressState createState() => _SaveXmlAddressState();
}

class _SaveXmlAddressState extends State<SaveXmlAddress> {
  TextEditingController xmlAddress = TextEditingController();
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
                  Text('Add XML Wallet Address', style: TextStyle(
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
                        controller: xmlAddress,
                        decoration: const InputDecoration(
                          labelText: 'XML Wallet Address',
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
                    xmlWallet = xmlAddress.text.trim();
                    print(xmlWallet);
                    Navigator.pushReplacement(context,
                      MaterialPageRoute(
                          builder: (context) =>
                          const XmlWithdrawal()),);
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

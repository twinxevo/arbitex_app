import 'package:arbitex/Navigation/variables.dart';
import 'package:arbitex/Pages/otp_withdrawal.dart';
import 'package:arbitex/Pages/save_xrp_address.dart';
import 'package:flutter/material.dart';

class XrpWithdrawal extends StatefulWidget {
  const XrpWithdrawal({Key? key}) : super(key: key);

  @override
  _XrpWithdrawalState createState() => _XrpWithdrawalState();
}

class _XrpWithdrawalState extends State<XrpWithdrawal> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 50),
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Text(
                'XRP Withdrawal', style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                  backgroundColor: Colors.black12
              ),),
            ),
            const SizedBox(height: 100),

            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context) =>
                            SaveXrpAddress()),);
                },
                child: Container(
                  height: 75,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                        bottomLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12)),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Icon(Icons.add_circle_outline_rounded, color: Colors.blue[900], size: 50,),
                      ),
                      SizedBox(width: 13),
                      Text('Add XRP Wallet Address', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue[900]),),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(height: 50),
            Text(
              'Saved XRP Address (TRC20)', style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12)),
                ),
                child: Center(child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text(xrpWallet, style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500
                  ),),
                ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.only(left: 8, right: 8),
              child: Center(
                child: Text('NOTE: Withdrawal address must be TRC20 Network. \n ArbitEx will not be liable for any lose of funds to the wrong network',
                  style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.bold, backgroundColor: Colors.red),),
              ),
            ),

            const SizedBox(height: 40),

            Center(
              child: ElevatedButton(
                onPressed: (){
                  Navigator.pushReplacement(context,
                    MaterialPageRoute(
                        builder: (context) =>
                            OtpWithdraw()),);
                },
                child: const Text(
                  'Continue', style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                ),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

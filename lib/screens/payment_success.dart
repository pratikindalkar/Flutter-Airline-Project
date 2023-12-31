import 'package:aeroplane/screens/boardingpass_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:aeroplane/utils/app_styles.dart';



class PaymentSuccessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              'assets/images/payment_animation.json',
              width: 200,
              height: 200,
              repeat: true,
              reverse: true,
            ),
            SizedBox(height: 20),
            Text(
              'Payment Successful!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                
                Navigator.push(context, MaterialPageRoute(builder: (context) => TicketScreen()));
              },
               style: ElevatedButton.styleFrom(
              primary: Color(0xD91130CE),
              padding: EdgeInsets.symmetric(
                vertical: 18,
                horizontal: 15,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
              child: Text('Continue',
                            style: Styles.textStyle.copyWith(color: Colors.white),
      ),
            ),
          ],
        ),
      ),
    );
  }
}

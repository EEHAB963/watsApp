import 'package:flutter/material.dart';
import 'package:wats_app/presentation/screen/registration_screen.dart';

import '../widgets/theme/style.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 30,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Welcome to WhatsApp Clone",
                style: TextStyle(
                  fontSize: 20,
                  color: primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // const SizedBox(
            //   height: 40,
            // ),
            Container(
              height: 290,
              width: 290,
              child: Image.asset('assets/brand.png'),
            ),
            // const SizedBox(
            //   height: 30,
            // ),
            const Text(
              "Read our Privacy Policy Tap, 'Agree and continue' to accept the Terms of Service",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14),
            ),
            // const SizedBox(
            //   height: 30,
            // ),
            MaterialButton(
              color: greenColor,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const RegistrationScreen(),
                  ),
                );
              },
              child: const Text(
                "AGREE AND CONTINUE",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

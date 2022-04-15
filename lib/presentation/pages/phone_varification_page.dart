import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:wats_app/presentation/pages/set_initial_profile_page.dart';

import '../widgets/theme/style.dart';

class PhoneVarificationPage extends StatefulWidget {
  const PhoneVarificationPage({Key? key}) : super(key: key);

  @override
  State<PhoneVarificationPage> createState() => _PhoneVarificationPageState();
}

class _PhoneVarificationPageState extends State<PhoneVarificationPage> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[
                Text(""),
                Text(
                  "Verify your phone number",
                  style: TextStyle(
                      fontSize: 18,
                      color: greenColor,
                      fontWeight: FontWeight.w500),
                ),
                Icon(Icons.more_vert),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "WhatsApp Clone will send and SMS message (carrier charges may apply) to verify your phone number. Enter your country code and phone number:",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            _pinCodeWidget(context),
            Expanded(
              child: Align(
                alignment: Alignment.bottomLeft,
                child: MaterialButton(
                  color: Colors.green,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SetInitialProfilePage(),
                      ),
                    );
                  },
                  child: const Text(
                    "Next",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _pinCodeWidget(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: PinCodeTextField(
            controller: controller,
            backgroundColor: Colors.transparent,
            // obscureText: true,
            autoDisposeControllers: false,
            appContext: context,
            length: 6,
            onChanged: (String aa) {
              // ignore: avoid_print
              print(aa);
            },
          ),
        ),
        const Text("Enter your 6 digit code"),
      ],
    );
  }
}

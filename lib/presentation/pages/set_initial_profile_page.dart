import 'package:flutter/material.dart';

import '../screen/home_screen.dart';
import '../widgets/theme/style.dart';

class SetInitialProfilePage extends StatelessWidget {
  const SetInitialProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          children: [
            const Text(
              "Profi le Info",
              style: TextStyle(
                color: greenColor,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Please provide your name and an optional Profile photo",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            _rowWidget(),
            Expanded(
              child: Align(
                alignment: Alignment.bottomLeft,
                child: MaterialButton(
                  color: Colors.green,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
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

  Widget _rowWidget() {
    return Container(
      child: Row(
        children: <Widget>[
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                color: textIconColorGray,
                borderRadius: const BorderRadius.all(Radius.circular(25))),
            child: const Icon(Icons.camera_alt),
          ),
          const SizedBox(
            width: 8,
          ),
          const Expanded(
            child: TextField(
              //controller: _nameController,
              decoration: InputDecoration(
                hintText: "Enter your name",
              ),
            ),
          ),
          const SizedBox(
            width: 8.0,
          ),
          Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
                color: textIconColorGray,
                borderRadius: const BorderRadius.all(Radius.circular(25))),
            child: const Icon(Icons.insert_emoticon),
          ),
        ],
      ),
    );
  }
}

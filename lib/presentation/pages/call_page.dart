import 'package:flutter/material.dart';

import '../widgets/theme/style.dart';
import 'sub_pages/single_item_call_page.dart';

class CallPage extends StatelessWidget {
  const CallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.call),
        backgroundColor: primaryColor,
      ),
      body: Container(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) => const SingleItemCallPage(),
        ),
      ),
    );
  }
}

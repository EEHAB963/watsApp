import 'package:flutter/material.dart';

import '../../widgets/theme/style.dart';

class SingleItemCallPage extends StatelessWidget {
  const SingleItemCallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, right: 10, left: 10),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage('assets/profile_default.png'),
            radius: 25,
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                "User Name",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: const <Widget>[
                  Icon(
                    Icons.call_received,
                    color: primaryColor,
                    size: 18,
                  ),
                  Text(
                    "Yesterday",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 60, right: 10),
                child: Divider(
                  thickness: 1.50,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

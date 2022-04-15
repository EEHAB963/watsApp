import 'package:flutter/material.dart';
import 'package:wats_app/presentation/pages/sub_pages/singe_item_story_page.dart';

import '../widgets/theme/style.dart';

class StoresPage extends StatelessWidget {
  const StoresPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Positioned(
              right: 10,
              bottom: 15,
              child: _customFloatingActionButton(),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  _storeWedget(),
                  _recentTextWidget(),
                  _listStories(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _storeWedget() {
    return Container(
      margin: const EdgeInsets.only(top: 5, bottom: 10, left: 5, right: 5),
      child: Row(children: [
        Container(
          height: 55,
          width: 55,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Image.asset("assets/profile_default.png"),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: const BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 15,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "My Status",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              "Tap to add status update",
            ),
          ],
        ),
      ]),
    );
  }

  Widget _recentTextWidget() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(color: Colors.grey[200]),
      child: const Text("Recent updates"),
    );
  }

  Widget _listStories() {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) => SingleItemStoryPage(),
    );
  }

  Widget _customFloatingActionButton() {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.grey[300],
          radius: 25,
          child: const Icon(
            Icons.edit,
            color: Colors.blueGrey,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        const CircleAvatar(
          backgroundColor: primaryColor,
          radius: 30,
          child: Icon(
            Icons.camera_alt,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:wats_app/presentation/pages/call_page.dart';
import 'package:wats_app/presentation/pages/camera_page.dart';
import 'package:wats_app/presentation/pages/chat_pages.dart';
import 'package:wats_app/presentation/pages/stores_page.dart';

import '../widgets/custom_tab_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isSarch = false;
  int _countIndexPage = 1;
  List<Widget> _pages = [
    CameraPage(),
    ChatPage(),
    StoresPage(),
    CallPage(),
  ];
  PageController pageController = PageController(initialPage: 1);
  buildSearch() {
    return Container(
      margin: EdgeInsets.only(top: 40),
      height: 50,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 1,
            offset: Offset(0.0, 0.40),
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          focusedBorder: InputBorder.none,
          hintText: 'search..',
          prefixIcon: InkWell(
            onTap: () {
              setState(() {
                _isSarch = false;
              });
            },
            child: const Icon(Icons.arrow_back),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _countIndexPage != 0
          ? AppBar(
              elevation: 0,
              backgroundColor: _isSarch == false ? null : Colors.white,
              automaticallyImplyLeading: false,
              actions: [
                InkWell(
                  onTap: () {
                    setState(() {
                      _isSarch = true;
                    });
                  },
                  child: const Icon(Icons.search_sharp),
                ),
                const SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: () {
                    //TODO.....
                  },
                  child: const Icon(Icons.more_vert),
                ),
              ],
              title: _isSarch == false
                  ? const Text('What App ')
                  : Container(
                      height: 0,
                      width: 0,
                    ),
              flexibleSpace: _isSarch == false
                  ? Container(
                      height: 0,
                      width: 0,
                    )
                  : buildSearch(),
            )
          : null,
      body: Column(
        children: [
          _countIndexPage != 0
              ? CustomTabBar(index: _countIndexPage)
              : Container(),
          Expanded(
            child: PageView.builder(
              onPageChanged: (index) {
                setState(() {
                  _countIndexPage = index;
                });
              },
              controller: pageController,
              itemCount: _pages.length,
              itemBuilder: (_, index) {
                return _pages[index];
              },
            ),
          )
        ],
      ),
    );
  }
}

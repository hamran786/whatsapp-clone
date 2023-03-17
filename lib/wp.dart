import 'package:flutter/material.dart';
import 'package:wp/page4.dart';
import 'package:wp/page5.dart';
import 'package:wp/page7.dart';

import 'page2.dart';
// import "package:flutterui/pages/Status_page.dart";
// import 'package:flutterui/pages/calls_page.dart';
// import 'package:flutterui/pages/chat_page.dart';
// import 'package:flutterui/pages/community_page.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    _tabController.addListener(_handleTabIndex);
  }

  @override
  void dispose() {
    _tabController.removeListener(_handleTabIndex);
    _tabController.dispose();
    super.dispose();
  }

  void _handleTabIndex() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: Color(0xFF131b23),
        appBar: AppBar(
          title: Text('Whatsapp', style: TextStyle(color: Colors.white60)),
          backgroundColor: Color(0xFF1e2d34),
          actions: [
            Row(
              children: [
                IconButton(
                    tooltip: ('Camera'),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.white60,
                    )),
                IconButton(
                    tooltip: ('Search'),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                      color: Colors.white60,
                    )),
                PopupMenuButton(tooltip: ('More options'),
                    icon: const Icon(Icons.more_vert_rounded,
                        color: Colors.white60),
                    color: Color(0xFF303030),
                    itemBuilder: (ctx) {
                      return [
                        PopupMenuItem(
                          child: Text('New group',
                              style: TextStyle(color: Colors.white60)),
                          onTap: () {},
                        ),
                        PopupMenuItem(
                          child: Text('New broadcast',
                              style: TextStyle(color: Colors.white60)),
                          onTap: () {},
                        ),
                        PopupMenuItem(
                          child: Text('Linked devices',
                              style: TextStyle(color: Colors.white60)),
                          onTap: () {},
                        ),
                        PopupMenuItem(
                          child: Text('Starred messages',
                              style: TextStyle(color: Colors.white60)),
                          onTap: () {},
                        ),
                        PopupMenuItem(
                          child: Text('Payments',
                              style: TextStyle(color: Colors.white60)),
                          onTap: () {},
                        ),
                        PopupMenuItem(
                          child: Text('Settings',
                              style: TextStyle(color: Colors.white60)),
                          onTap: () {},
                        ),
                      ];
                    }),
              ],
            )
          ],
          bottom: TabBar(
              controller: _tabController,
              indicatorColor: Color(0xFF25D366),
              // isScrollable: true,
              tabs: [
                Tab(
                  icon: Icon(Icons.groups_sharp,
                      color: _tabController.index == 0
                          ? Color(0xFF25D366)
                          : Colors.white60),
                ),
                Tab(
                  child: Text('CHATS',
                      style: TextStyle(
                          color: _tabController.index == 1
                              ? Color(0xFF25D366)
                              : Colors.white60)),
                ),
                Tab(
                  child: Text('STATUS',
                      style: TextStyle(
                          color: _tabController.index == 2
                              ? Color(0xFF25D366)
                              : Colors.white60)),
                ),
                Tab(
                  child: Text('CALLS',
                      style: TextStyle(
                          color: _tabController.index == 3
                              ? Color(0xFF25D366)
                              : Colors.white60)),
                )
              ]),
        ),
        body: TabBarView(controller: _tabController, children: [
          CommunityPage(),
          ChatPage(),
          StatusPage(),
          CallsPage(),
        ]),
        floatingActionButton: _bottomButtons(),
      ),
    );
  }

  Widget _bottomButtons() {
    if (_tabController.index == 0) {
      return SizedBox.shrink();
    } else if (_tabController.index == 1) {
      return FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.message),
          backgroundColor: Color(0xFF01a885));
    } else if (_tabController.index == 2) {
      return FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.camera_alt),
          backgroundColor: Color(0xFF01a885));
    } else {
      return FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.dialer_sip),
          backgroundColor: Color(0xFF01a885));
    }
  }
}

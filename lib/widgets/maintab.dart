import 'package:facebook/pages/friend_page.dart';
import 'package:facebook/pages/home_page.dart';
import 'package:facebook/pages/market_page.dart';
import 'package:facebook/pages/message_page.dart';
import 'package:facebook/pages/notification_page.dart';
import 'package:facebook/pages/video_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:badges/badges.dart' as badges;
import 'home/mydrawer.dart';

class MainTab extends StatefulWidget {
  const MainTab({super.key});

  @override
  State<MainTab> createState() => _MainTabState();
}

class _MainTabState extends State<MainTab> with SingleTickerProviderStateMixin {
  late TabController _tabController =
      TabController(length: 4, vsync: this, initialIndex: 1);
  final List<Tab> topTabs = <Tab>[
    Tab(icon: Icon(Icons.home_outlined)),
    Tab(icon: Icon(Icons.people_outlined)),
    Tab(icon: Icon(Icons.message_rounded)),
    Tab(
        child: badges.Badge(
      position: badges.BadgePosition.topEnd(top: -18, end: -5),
      badgeContent: Text('3'),
      child: Icon(Icons.notifications_outlined),
    )),
    Tab(icon: Icon(Icons.video_library_outlined)),
    Tab(icon: Icon(Icons.shopping_bag_outlined)),
  ];
  Future<bool> _onWillPop() async {
    print('on will pop');
    if (_tabController.index == 0) {
      await SystemNavigator.pop();
    }
    Future.delayed(Duration(milliseconds: 200), () {
      print('Set index');
      _tabController.index = 0;
    });
    print('return');
    return _tabController.index == 0;
  }

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    _tabController =
        TabController(length: topTabs.length, vsync: this, initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: Text(
            'Facebook',
            style: TextStyle(color: Colors.blue.shade700, fontSize: 34),
          ),
          backgroundColor: Colors.white,
          actions: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              child: IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () {
                  print('Search button clicked');
                },
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.shade300,
              ),
            ),
            Container(
              child: IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () {
                  return _scaffoldKey.currentState!.openEndDrawer();
                  // print('menu button clicked');
                },
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.shade300,
              ),
            ),
          ],
          bottom: TabBar(
            controller: _tabController,
            indicatorColor: Colors.black,
            tabs: topTabs,
          ),
        ),
        endDrawer: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          child: MyDrawer(),
        ),
        body: TabBarView(
          controller: _tabController,
          children: const [
            // Text('Home'),
            HomePage(),
            // Text('Friend'),
            FriendsPage(),
            // Text('Messenger'),
            MessagePage(),
            // Text('Notifications'),
            NotificationPage(),
            // Text('Video'),
            VideoPage(),
            // Text('Shopping'),
            MarketPage(),
          ],
        ),
      ),
    );
  }
}

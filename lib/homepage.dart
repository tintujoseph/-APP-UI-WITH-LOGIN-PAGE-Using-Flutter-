import 'package:flutter/material.dart';
import 'package:flutter_application_4/call.dart';
import 'package:flutter_application_4/kunju.dart';
import 'package:flutter_application_4/chat.dart';

const List<Tab> tabs = <Tab>[
  Tab(text: 'Chat'),
  Tab(text: 'Call'),
];

class ScreenCategory extends StatefulWidget {
  const ScreenCategory({Key? key}) : super(key: key);

  @override
  State<ScreenCategory> createState() => _ScreenCategoryState();
}

class _ScreenCategoryState extends State<ScreenCategory> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: tabs.length,
        child: Builder(builder: (BuildContext context) {
          final TabController tabController = DefaultTabController.of(context)!;
          tabController.addListener(() {
            if (!tabController.indexIsChanging) {
              // Your code goes here.
              // To get index of current tab use tabController.index
            }
          });
          return Scaffold(
            appBar: AppBar(
              bottom: const TabBar(tabs: tabs),
              backgroundColor: Colors.pink,
              actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
            ),
            body: TabBarView(children: [ChatScreen(), call()]),
            drawerScrimColor: Colors.pink,
          );
        }));
  }
}

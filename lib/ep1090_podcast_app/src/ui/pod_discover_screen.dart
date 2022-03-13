import 'package:flutter/material.dart';
import 'package:flutter_notebook_18th_story/ep1090_podcast_app/src/widgets/discover/discover_for_you_widget.dart';

class PodDiscoverScreen extends StatelessWidget {
  const PodDiscoverScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final _tabController = TabController(length: 5, vsync: this);
    return DefaultTabController(
      length: 5,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: TabBar(
                labelColor: Colors.blueAccent,
                unselectedLabelColor: Colors.grey,
                indicatorWeight: 4,
                isScrollable: true,
                tabs: [
                  Tab(text: "For You"),
                  Tab(text: "News"),
                  Tab(text: "Technology"),
                  Tab(text: "Education"),
                  Tab(text: "Business"),
                ]),
          ),
          const Divider(
            height: 0,
            thickness: 1.5,
            color: Colors.grey,
          ),
          Expanded(
              child: TabBarView(
            children: [
              DiscoverForYouWidget(),
              Container(),
              Container(),
              Container(),
              Container(),
            ],
          )),
        ],
      ),
    );
  }
}

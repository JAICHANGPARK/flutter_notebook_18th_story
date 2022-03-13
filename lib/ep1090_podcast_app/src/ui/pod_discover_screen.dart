
import 'package:flutter/material.dart';

class PodDiscoverScreen extends StatelessWidget {
  const PodDiscoverScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final _tabController = TabController(length: 5, vsync: this);
    return DefaultTabController(
      length: 5,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: TabBar(
                labelColor: Colors.blueAccent,
                unselectedLabelColor: Colors.grey ,
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
          Divider(height: 0, thickness: 1.5, color: Colors.grey,),
          Expanded(child: TabBarView(children: [
            Container(

            ),
            Container(

            ),
            Container(

            ),
            Container(

            ),
            Container(

            ),
          ],)),

        ],
      ),
    );
  }
}

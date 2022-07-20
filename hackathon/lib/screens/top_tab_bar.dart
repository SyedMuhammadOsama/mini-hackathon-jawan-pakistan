import 'package:flutter/material.dart';
import 'package:hackathon/screens/details_screen.dart';
import 'package:hackathon/screens/home_screen.dart';
import 'package:hackathon/screens/welcome_screen1.dart';

import '../widgets/individual_card_container.dart';
import '../widgets/text_form_field_widget.dart';

class TopTabBar extends StatelessWidget {
  static const routeName = 'TopTabBar';
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 100,
            backgroundColor: Colors.white,
            actions: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: 300,
                      child: TextFormFieldWidget(
                          controller: searchController,
                          hint: 'Search',
                          icon: Icons.search),
                    ),
                    CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(
                            'https://images.unsplash.com/photo-1657987273424-f9eb89bb9c23?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=600&q=60')),
                  ],
                ),
              ),
            ],
            bottom: const TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(
                  text: 'Women',
                ),
                Tab(
                  text: 'Men',
                ),
                Tab(
                  text: 'Children',
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) => IndividualCardContainer(
                        onTap: () {
                          Navigator.pushNamed(context, DetailsScreen.routeName);
                        },
                      )),
              ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) => IndividualCardContainer(
                        onTap: () {
                          Navigator.pushNamed(context, DetailsScreen.routeName);
                        },
                      )),
              ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) => IndividualCardContainer(
                        onTap: () {
                          Navigator.pushNamed(context, DetailsScreen.routeName);
                        },
                      )),
            ],
          )),
    );
  }
}

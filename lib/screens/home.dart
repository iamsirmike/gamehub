import 'package:flutter/material.dart';
import 'package:gamehub/util/colors.dart';
import 'package:gamehub/util/resposive.dart';
import 'package:gamehub/widgets/newcoming.dart';
import 'package:gamehub/widgets/recommended.dart';
import 'package:gamehub/widgets/reusable_textfield.dart';
import '../widgets/category.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Uicolors.bg,
      appBar: AppBar(
        title: Text('Games Hub'),
        backgroundColor: Uicolors.bg,
      ),
      body: SafeArea(
        child: ListView(
          physics: ScrollPhysics(),
          children: [
            Container(
              height: 960,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 20,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Welcome back',
                                  style: TextStyle(
                                      color: Uicolors.color4,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 3),
                                Text(
                                  'Asamoah Michael',
                                  style: TextStyle(
                                    color: Uicolors.color1,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Icon(
                              Icons.notifications,
                              color: Uicolors.color4,
                            ),
                          ],
                        ),
                        SizedBox(height: screenHeight(context, 0.04)),
                        Container(
                          height: screenHeight(context, 0.08),
                          width: screenWidth(context, 1),
                          decoration: BoxDecoration(
                            color: Uicolors.color2,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: TextFormField(
                            decoration: inputDecoration(
                                hintText: 'Search the games...'),
                          ),
                        ),
                        SizedBox(height: screenHeight(context, 0.04)),
                        CategoryWidget(),
                        SizedBox(
                          height: screenHeight(context, 0.04),
                        ),
                        Text(
                          'Games you must try',
                          style: TextStyle(
                            color: Uicolors.color1,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ),
                  //games
                  RecommendedGamesWidget(),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Newcoming Games',
                              style: TextStyle(
                                color: Uicolors.color1,
                                fontSize: 17,
                              ),
                            ),
                            Spacer(),
                            Text(
                              'View all',
                              style: TextStyle(
                                color: Uicolors.color3,
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  NewcomingWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

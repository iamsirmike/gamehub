import 'package:flutter/material.dart';
import 'package:gamehub/data/gamesdata.dart';
import 'package:gamehub/screens/gamedetails.dart';
import 'package:gamehub/util/colors.dart';
import 'package:gamehub/util/resposive.dart';

class RecommendedGamesWidget extends StatelessWidget {
  const RecommendedGamesWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight(context, 0.34),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return GameDetails(
                  name: gamesdata[index].name,
                  img: gamesdata[index].img,
                  ss1: gamesdata[index].ss1,
                  ss2: gamesdata[index].ss2,
                  ss3: gamesdata[index].ss3,
                  desc: gamesdata[index].desc
                );
              }));
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
              child: Container(
                width: screenWidth(context, 0.8),
                decoration: BoxDecoration(
                  color: Color(0xff0F1622),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: screenWidth(context, 0.8),
                      height: screenHeight(context, 0.2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(gamesdata[index].img),
                        ),
                      ),
                    ),
                    Container(
                      width: screenWidth(context, 0.7),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8, 12, 0, 0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage(gamesdata[index].img),
                            ),
                            Spacer(),
                            Column(
                              children: [
                                Text(
                                  gamesdata[index].name,
                                  style: TextStyle(
                                    color: Uicolors.color1,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      size: 17,
                                      color: Colors.yellow,
                                    ),
                                    // Text('4.5'),
                                    Text(
                                      'Arcade',
                                      style: TextStyle(color: Uicolors.color4),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Spacer(),
                            RaisedButton(
                              color: Uicolors.color3,
                              onPressed: () {},
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(
                                'Install',
                                style: TextStyle(
                                  color: Uicolors.color1,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: gamesdata.length,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gamehub/util/colors.dart';
import 'package:gamehub/util/resposive.dart';

class GameDetails extends StatelessWidget {
  final String name;
  final String img;
  final String ss1;
  final String ss2;
  final String ss3;
  final String desc;

  const GameDetails(
      {this.name, this.img, this.ss1, this.ss2, this.ss3, this.desc});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Uicolors.bg,
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  height: screenHeight(context, 0.37),
                  child: Stack(
                    children: [
                      Container(
                        height: screenHeight(context, 0.27),
                        width: screenWidth(context, 1),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(img),
                          ),
                        ),
                        child: GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 35,
                                  width: 35,
                                  decoration: BoxDecoration(
                                    color: Colors.white30,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Icon(Icons.arrow_back_ios,
                                      color: Uicolors.color1),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 5,
                        left: 130,
                        child: Container(
                          height: 90,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(ss3),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight(context, 0.02)),
                Text(
                  name,
                  style: TextStyle(color: Uicolors.color1, fontSize: 20),
                ),
                SizedBox(
                  height: screenHeight(context, 0.01),
                ),
                Text(
                  'Archoseur Games',
                  style: TextStyle(color: Uicolors.color2, fontSize: 15),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Icon(Icons.star, color: Colors.yellow),
                              SizedBox(height: 5),
                              Text(
                                '4.5',
                                style: TextStyle(color: Colors.yellow),
                              ),
                            ],
                          ),
                          Spacer(),
                          Column(
                            children: [
                              Icon(Icons.file_download, color: Uicolors.color3),
                              SizedBox(height: 5),
                              Text(
                                '435,123+',
                                style: TextStyle(color: Uicolors.color2),
                              ),
                            ],
                          ),
                          Spacer(),
                          Column(
                            children: [
                              Icon(Icons.save, color: Uicolors.color2),
                              SizedBox(height: 5),
                              Text(
                                '285',
                                style: TextStyle(color: Uicolors.color2),
                              ),
                            ],
                          ),
                          Spacer(),
                          Column(
                            children: [
                              Icon(Icons.games, color: Uicolors.color2),
                              SizedBox(height: 5),
                              Text(
                                'Arcade',
                                style: TextStyle(color: Uicolors.color2),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 1.0,
                      width: screenWidth(context, 1),
                      child: Divider(color: Uicolors.color2),
                    ),
                    SizedBox(
                      height: screenHeight(context, 0.04),
                    ),
                    Container(
                      height: screenHeight(context, 0.2),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 8, 8, 8),
                            child: Container(
                              height: screenHeight(context, 0.2),
                              width: screenWidth(context, 0.6),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(ss1),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: screenHeight(context, 0.2),
                              width: screenWidth(context, 0.6),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(ss2),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: screenHeight(context, 0.2),
                              width: screenWidth(context, 0.6),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(ss3),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'About',
                            style: TextStyle(
                              color: Uicolors.color1,
                              fontSize: 17,
                            ),
                          ),
                          SizedBox(
                            height: screenHeight(context, 0.02),
                          ),
                          Text(
                            desc,
                            style: TextStyle(
                              color: Uicolors.color2,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: screenHeight(context, 0.04),
                          ),
                          Column(
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
                              SizedBox(
                                height: screenHeight(context, 0.02),
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        '4.5',
                                        style: TextStyle(
                                          color: Uicolors.color1,
                                          fontSize: 40,
                                        ),
                                      ),
                                      SizedBox(
                                        width: screenWidth(context, 0.02),
                                      ),
                                      Column(
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow,
                                              ),
                                            ],
                                          ),
                                          Text(
                                            '266 reviews',
                                            style: TextStyle(
                                              color: Uicolors.color2,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 1.0,
              width: screenWidth(context, 1),
              child: Divider(color: Uicolors.color2),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: screenHeight(context, 0.07),
                child: RaisedButton(
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}

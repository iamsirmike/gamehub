import 'package:flutter/material.dart';
import 'package:gamehub/data/categorydata.dart';
import 'package:gamehub/util/colors.dart';
import 'package:gamehub/util/resposive.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight(context, 0.17),
      width: screenWidth(context, 1),
      decoration: BoxDecoration(
        color: Uicolors.color2,
        borderRadius: BorderRadius.circular(9),
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: Image.asset(
                          categories[index].img,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        categories[index].label,
                        style: TextStyle(
                            color: Color(0xff979AA0)),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
        itemCount: categories.length,
      ),
    );
  }
}


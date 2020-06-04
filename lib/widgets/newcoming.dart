import 'package:flutter/material.dart';
import 'package:gamehub/data/newgamesdata.dart';
import 'package:gamehub/util/colors.dart';

class NewcomingWidget extends StatelessWidget {
  const NewcomingWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.separated(
        separatorBuilder: (_, __) => SizedBox(height: 7),
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        newgamesdata[index].img,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      newgamesdata[index].name,
                      style: TextStyle(color: Uicolors.color1),
                    ),
                    Text(
                      'Arcade',
                      style: TextStyle(color: Uicolors.color4),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 15,
                        ),
                        Text(
                          '4.5',
                          style: TextStyle(color: Colors.yellow),
                        ),
                        SizedBox(width: 20),
                        Icon(
                          Icons.arrow_downward,
                          color: Uicolors.color3,
                        ),
                        Text(
                          '435k',
                          style: TextStyle(color: Uicolors.color2),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'RPG',
                          style: TextStyle(color: Uicolors.color2),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );
        },
        itemCount: newgamesdata.length,
      ),
    );
  }
}

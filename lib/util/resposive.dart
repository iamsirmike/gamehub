// screen height
import 'package:flutter/material.dart';

double screenHeight(BuildContext context, double percent) =>
    (MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top) *
    percent;

//screen width
double screenWidth(BuildContext context, double percent) =>
    MediaQuery.of(context).size.width * percent;
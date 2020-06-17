import 'package:flutter/material.dart';

import './widgets/actions_toolbar.dart';
import './widgets/video_description.dart';
import './widgets/bottom_section.dart';

class Home extends StatelessWidget {
  Widget get topSection => Container(
        height: 100.0,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Text('Following'),
            Container(
              width: 15.0,
            ),
            Text(
              'For you',
              style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      );

  Widget get middleSection => Expanded(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            VideoDescription(),
            ActionsToolBar(),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          topSection,
          middleSection,
          BottomSection(),
        ],
      ),
    );
  }
}

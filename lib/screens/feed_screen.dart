import 'package:flutter/material.dart';

import '../res/res.dart';
import '../widgets/widgets.dart';

class Feed extends StatefulWidget {
  Feed({Key key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _FeedState();
  }
}

class _FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (BuildContext context, int index) {
        return Column(
          children: <Widget>[
            _buildItem(),
            Divider(
              thickness: 2,
              color: AppColors.mercury,
            ),
          ],
        );
      }),
    );
  }

  Widget _buildItem() {
    return Column(
      children: [
        Photo('https://thispersondoesnotexist.com/image?1'),
        _buildPhotoMeta()
      ],
    );
  }

  Widget _buildPhotoMeta() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              UserAvatar('https://thispersondoesnotexist.com/image?2'),
              SizedBox(width: 6),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Kir', style: AppStyles.h2Black),
                  Text('@Kir',
                      style:
                          AppStyles.h5Black.copyWith(color: AppColors.manatee)),
                ],
              )
            ],
          ),
          LikeButton(10, true)
        ],
      ),
    );
  }
}

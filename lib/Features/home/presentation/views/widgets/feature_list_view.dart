

import 'package:flutter/cupertino.dart';

import 'custom_listview_item.dart';

class FeatherBooksListView extends StatelessWidget {
  const FeatherBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding:  EdgeInsets.symmetric(horizontal: 8),
              child: FeatureListViewItem(),
            );
          }),
    );
  }
}

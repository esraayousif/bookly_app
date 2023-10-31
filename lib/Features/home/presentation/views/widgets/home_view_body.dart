import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import 'custom_appbar.dart';
import 'feature_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 24),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeatherBooksListView(),
          SizedBox(
            height: 50,
          ),
          Text('Best Seller', style: Styles.textStyle20,),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}


class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 125,
      child: Row(
        children: [
        AspectRatio(
        aspectRatio: 2.5 / 4,
        child: Container(
          height: 100,
          width: 50,

          decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.red,
              image:const DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AssetsData.testImage),
              )),
        ),
      ),
          Column(
            children: [

            ],
          )

        ],
      ),
    );
  }
}

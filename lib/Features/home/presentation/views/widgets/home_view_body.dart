import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'best_seller_list_view_item.dart';
import 'custom_appbar.dart';
import 'feature_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {

    return  CustomScrollView(

      physics:  BouncingScrollPhysics(),
      slivers: [
        const SliverToBoxAdapter(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: KPaddingHorizontal30,
                child: CustomAppBar(),
              ),
              FeatherBooksListView(),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: KPaddingHorizontal30,
                child: Text(
                  'Best Seller',
                  style: Styles.textStyle20,
                ),
              ),
              SizedBox(
                height: 20,
              ),

            ],
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
              List.generate(20, (index) => const Padding(
                padding:  EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                child:  BestSellerListViewItem(),
              ))
          ),
        )
      ],
    );

  }
}

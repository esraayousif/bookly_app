import 'package:bookly_app/Features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'best_seller_list_view_item.dart';
import 'custom_appbar.dart';
import 'feature_list_view.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        const SliverToBoxAdapter(
          child: Column(
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
                  'Newest Books',
                  style: Styles.textStyle20,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        // BlocBuilder<NewestBooksCubit, NewestBooksState>(
        //   builder: (context, state) {
        //     if (state is NewestBooksSuccess) {
        //       return SliverFixedExtentList(
        //         itemExtent: 280.0,
        //         delegate: SliverChildListDelegate(List.generate(
        //             state.Books.length,
        //             (index) => Padding(
        //                   padding: const EdgeInsets.symmetric(
        //                       vertical: 10, horizontal: 10),
        //                   child: BookListViewItem(
        //                     bookModel: state.Books[index],
        //                   ),
        //                 ))),
        //       );
        //
        //       //   SliverList(
        //       //   delegate: SliverChildListDelegate(
        //       //       List.generate(state.Books.length, (index) =>
        //       //        Padding(
        //       //         padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        //       //         child: BookListViewItem(bookModel: state.Books[index],),
        //       //       ))
        //       //   ),
        //       // );
        //     } else if (state is NewestBooksFailure) {
        //       return CustomErrorWidget(errMessage: state.errMessage);
        //     } else {
        //       return const SizedBox();
        //     }
        //   },
        // ),
        SliverToBoxAdapter(
          child: BlocBuilder<NewestBooksCubit, NewestBooksState>(
            builder: (context, state) {
              if (state is NewestBooksSuccess) {
                return Container(
                  constraints: BoxConstraints(
                      minHeight: MediaQuery.of(context).size.height * 0.4,
                      maxHeight: MediaQuery.of(context).size.height * 0.7,),
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                      itemCount: state.Books.length,
                      itemBuilder: (_, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          child: BookListViewItem(
                            bookModel: state.Books[index],
                          ),
                        );
                      }),
                );
              } else if (state is NewestBooksFailure) {
                return CustomErrorWidget(errMessage: state.errMessage);
              } else {
                return const CustomLoadingIndicator();
              }
            },
          ),
        ),
      ],
    );
  }
}

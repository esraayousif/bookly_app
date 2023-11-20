import 'package:bookly_app/Features/home/presentation/manager/features_books_cubit/features_books_cubit.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_book_image.dart';

class FeatherBooksListView extends StatelessWidget {
  const FeatherBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturesBooksCubit, FeaturesBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery
                .of(context)
                .size
                .height * .3,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: CustomBookImage(imageUrl: state.books[index].volumeInfo?.imageLinks?.thumbnail ?? "https://cdn4.iconfinder.com/data/icons/ui-beast-4/32/Ui-12-1024.png",),
                  );
                }),
          );
        }else if (state is FeaturedBooksFailure){
          return CustomErrorWidget(errMessage: state.errMessage);
        }else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}

import 'package:bookly_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'books_action.dart';
import 'custom_book_details_appbar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .17),
            child: const CustomBookImage(),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            'The Jungle Book',
            style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 6,
          ),
          Opacity(
            opacity: .7,
            child: Text(
              'Rudyard Kipling',
              style: Styles.textStyle18.copyWith(
                  fontWeight: FontWeight.w500, fontStyle: FontStyle.italic),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(
            height: 20,
          ),
          const BooksAction(),
          const SizedBox(
            height: 30,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You can also Like',
              style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const SimilarBooksListView(),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}


import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';
import 'books_action.dart';
import 'custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .17),
          child: const CustomBookImage( imageUrl: 'https://th.bing.com/th/id/R.48c3470c67597a4c4cfb60daf134e4fe?rik=SMchk7Wk4aHO7A&pid=ImgRaw&r=0',),
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
          count:300,
          rating: 3,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 20,
        ),
        const BooksAction(),
      ],
    );
  }
}

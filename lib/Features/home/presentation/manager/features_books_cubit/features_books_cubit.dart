import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/BookModel.dart';

part 'features_books_state.dart';

class FeaturesBooksStateCubit extends Cubit<FeaturesBooksState> {
  FeaturesBooksStateCubit(this.homeRepo) : super(FeaturesBooksStateInitial());
  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(
      FeaturedBooksLoading(),
    );
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(
      (failure) => {
        emit(
          FeaturedBooksFailure(failure.errMessage),
        ),
      },
      (books) {
        emit(
          FeaturedBooksSuccess(books),
        );
      },
    );
  }
}

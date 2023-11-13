part of 'features_books_cubit.dart';

abstract class FeaturesBooksState extends Equatable {
  const FeaturesBooksState();
  @override
  List<Object> get props => [];
}

class FeaturesBooksStateInitial extends FeaturesBooksState {

}

class FeaturedBooksLoading extends FeaturesBooksState {}

class FeaturedBooksFailure extends FeaturesBooksState {
  final String errMessage;

 const FeaturedBooksFailure(this.errMessage);

}

class FeaturedBooksSuccess extends FeaturesBooksState {
  final List<BookModel> books;

  const FeaturedBooksSuccess(this.books);
}
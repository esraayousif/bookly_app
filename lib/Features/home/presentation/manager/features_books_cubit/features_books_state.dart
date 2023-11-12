import 'package:equatable/equatable.dart';

import '../../../data/models/BookModel.dart';

abstract class FeaturesBooksState extends Equatable {
  const FeaturesBooksState();

  @override
  List<Object> get props => [];
}

class FeaturedBookaInitial extends FeaturesBooksState {}

class FeaturedBookaLoading extends FeaturesBooksState {}

class FeaturedBookaFailure extends FeaturesBooksState {
  final String errMessage;

  const FeaturedBookaFailure(this.errMessage);
}

class FeaturedBookaSuccess extends FeaturesBooksState {
  final List<BookModel> books;

  const FeaturedBookaSuccess(this.books);
}

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/BookModel.dart';

part 'features_books_state.dart';

class FeaturesBooksStateCubit extends Cubit<FeaturesBooksState> {
  FeaturesBooksStateCubit() : super(FeaturesBooksStateInitial());
}

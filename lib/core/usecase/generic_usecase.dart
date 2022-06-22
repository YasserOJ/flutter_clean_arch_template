import 'package:equatable/equatable.dart';
import 'package:flutter_clean_arch_template/core/common_models/api_result_model.dart';

abstract class GenericUseCase<Type, Params> {
  Future<ApiResultModel<Type>> call(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object> get props => <Object>[];
}

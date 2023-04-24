import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_result_state.freezed.dart';

@freezed
class ApiResultState<T> with _$ApiResultState<T> {
  const factory ApiResultState.loading() = Loading<T>;

  const factory ApiResultState.data({required T data}) = Data<T>;

  const factory ApiResultState.error({required String errorMessage, String? errorCode}) = Error<T>;
}

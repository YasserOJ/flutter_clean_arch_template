import 'package:flutter/foundation.dart';
import 'package:flutter_clean_arch_template/core/common_models/api_result_state.dart';

class BaseProvider extends ChangeNotifier {
  ApiResultState _state = const ApiResultState.data(data: '');

  ApiResultState get state => _state;

  void setState(ApiResultState value) {
    _state = value;
  }

  void setStateAndNotifyListeners(ApiResultState value) {
    _state = value;
    notifyListeners();
  }

  void disposeValues() {}
}

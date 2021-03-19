import 'package:rowdy/models/model.dart';

/// Used to store the result of an operation. Should be used when to store
/// captured errors and and translate them to a user friendly message. [hasError]
/// is required, and automatically assigned by contructors
class FFResult<T> {
  /// Private Contructor
  FFResult._();

  /// Used when there is no error, and the data is available
  FFResult.success(this.data)
      : hasError = false,
        hasData = true;

  /// Used when there is an error. Error code is the system generated message,
  /// while error message is a user friendly message.
  FFResult.failure({required this.errorCode, required this.errorMessage})
      : hasError = true,
        hasData = false;

  /// Data type changes based upon the what the generic parameter is set to.
  T? data;

  /// Stores a user friendly error message
  String? errorMessage;

  /// Stores the system generated error message
  String? errorCode;

  /// Required and automatically set by constructors.
  late bool hasError;

  /// Required and automatically set by constructors.
  late bool hasData;
}

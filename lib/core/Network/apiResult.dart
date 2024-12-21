class ApiResult<T> {
  final T? data;
  final String? error;

  ApiResult.Success(this.data) : error = null;
  ApiResult.Error(this.error) : data = null;
  bool get isSuccess => data != null;
  bool get isError => error != null;
}

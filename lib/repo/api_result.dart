class ApiSuccess {
  int? code;
  Object? data;
  ApiSuccess({
    this.code,
    this.data
  });
}

class ApiError {
  int? code;
  Object? error;
  ApiError({
    this.code,
    this.error
  });
}
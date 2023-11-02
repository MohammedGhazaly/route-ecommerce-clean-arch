abstract class Failures {
  String? errorMessage;
  Failures({required this.errorMessage});
}

class ServerFailure extends Failures {
  ServerFailure({required super.errorMessage});
}

class NetworkError extends Failures {
  NetworkError({required super.errorMessage});
}

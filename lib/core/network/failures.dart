abstract class Failure {
  final String message;

  const Failure(this.message);
}

class ServerFailure extends Failure {
  const ServerFailure([super.message = "Server Error"]);
}

class CacheFailure extends Failure {
  const CacheFailure([super.message = "Cache Error"]);
}

class NetworkFailure extends Failure {
  const NetworkFailure([super.message = "Network Error"]);
}

class UnauthorizedFailure extends Failure {
  const UnauthorizedFailure([super.message = "Unauthorized Access"]);
}

class NotFoundFailure extends Failure {
  const NotFoundFailure([super.message = "Not Found"]);
}

class UnknownFailure extends Failure {
  const UnknownFailure([super.message = "Unknown Error"]);
}

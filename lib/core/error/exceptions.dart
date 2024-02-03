class ServerException implements Exception {
  final String errorMessage;

  ServerException({required this.errorMessage});
  @override
  String toString() {
    return errorMessage; // Return the error message here
  }
}

class CacheException implements Exception {}

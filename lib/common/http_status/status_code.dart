class StatusCode {
  StatusCode._();

  // ─────────────────────────────────────────────
  // 2xx - Success
  // ─────────────────────────────────────────────

  static const int ok = 200;
  static const int created = 201;
  static const int noContent = 204;

  // ─────────────────────────────────────────────
  // 4xx - Client Errors
  // ─────────────────────────────────────────────

  static const int badRequest = 400;
  static const int unauthorized = 401;
  static const int forbidden = 403;
  static const int notFound = 404;
  static const int conflict = 409;
  static const int unprocessableEntity = 422;

  // Custom token status
  static const int invalidAccessToken = 401;
  static const int invalidRefreshToken = 498;

  // ─────────────────────────────────────────────
  // 5xx - Server Errors
  // ─────────────────────────────────────────────

  static const int internalServerError = 500;
  static const int badGateway = 502;
  static const int serviceUnavailable = 503;

  // ─────────────────────────────────────────────
  // Helpers
  // ─────────────────────────────────────────────

  static bool isSuccess(int statusCode) {
    return statusCode >= 200 && statusCode < 300;
  }

  static bool isClientError(int statusCode) {
    return statusCode >= 400 && statusCode < 500;
  }

  static bool isServerError(int statusCode) {
    return statusCode >= 500 && statusCode < 600;
  }

  static bool isUnauthorized(int statusCode) {
    return statusCode == unauthorized ||
        statusCode == invalidAccessToken ||
        statusCode == invalidRefreshToken;
  }
}

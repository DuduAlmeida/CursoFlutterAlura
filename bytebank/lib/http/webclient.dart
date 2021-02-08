/// #region Imports

import 'package:http/http.dart';
import 'package:http_interceptor/http_interceptor.dart';

import 'interceptors/logging_interceptor.dart';

/// #endregion Imports

const baseUrl = 'http://localhost:8080/transactions';

final Client client =
    HttpClientWithInterceptor.build(interceptors: [LoggingInterceptor()]);

import 'package:angular/angular.dart';
import 'package:grpc/grpc_web.dart';

class GrpcClient {
  static final channel = GrpcWebClientChannel.xhr(Uri.parse('localhost:50051'));
}

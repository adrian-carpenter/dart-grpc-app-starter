
import 'package:dart_starter_common/generated/google/protobuf/empty.pb.dart';
import 'package:dart_starter_common/generated/greeter.pbgrpc.dart';
import 'package:dart_starter_common/generated/greeter.pb.dart';
import 'package:logger/logger.dart';


/// Dart implementation of the gRPC Greeter server.
import 'package:grpc/grpc.dart';

class GreeterService extends GreeterServiceBase {
  final _logger = Logger(
    printer: PrettyPrinter(),
  );

  @override
  Future<Greeting> getHealth(ServiceCall serviceCall, Empty empty) async {
    _logger.d('Server processing: getHealth');
    return Greeting()..message = 'All systems go!';
  }

  @override
  Future<Greeting> sayHello(ServiceCall serviceCall, SayHelloRequest request) async {
    _logger.d('Server processing: sayHello');
    return Greeting()..message = 'Hello, ${request.message}!';
  }
}

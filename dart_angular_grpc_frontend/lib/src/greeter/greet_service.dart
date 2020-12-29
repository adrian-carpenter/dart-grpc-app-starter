import 'dart:async';
import 'package:dart_starter_common/generated/google/protobuf/empty.pb.dart';
import 'package:grpc/grpc_web.dart';
import 'package:logging/logging.dart';

import 'package:angular/core.dart';
import 'package:dart_starter_common/generated/greeter.pbgrpc.dart';

@Injectable()
class GreetService {
  final _client = GreeterServiceClient(GrpcWebClientChannel.xhr(Uri.parse('localhost:8080')));
  final _logger = Logger('HealthService');

  Future<Greeting> getHealth() async {
    try {
      final req = Empty();
      final res = await _client.getHealth(req);
      _logger.info('Request success');
      return res;
    } catch (error) {
      print(error);
      _logger.severe('Oops, an error occurred', error);
    }
  }

  Future<Greeting> sayHello(String message) async {
    try {
      final req = SayHelloRequest()..message = message;
      final res = await _client.sayHello(req);
      _logger.info('Request success', res);
      return res;
    } catch (error) {
      _logger.severe('Oops, an error occurred', error);
    }
  }
}

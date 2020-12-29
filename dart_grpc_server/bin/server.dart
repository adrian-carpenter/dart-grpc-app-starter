import 'package:dart_grpc_server/greet_service.dart';
import 'package:grpc/grpc.dart';

Future<void> main(List<String> args) async {
  final server = Server([GreeterService()]);
  await server.serve(port: 50051);
  print('Server listening on port ${server.port}...');
}

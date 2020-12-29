

import 'package:dart_starter_common/generated/google/protobuf/empty.pb.dart';
import 'package:dart_starter_common/generated/greeter.pbgrpc.dart';
import 'package:grpc/grpc.dart';

Future<void> main(List<String> args) async {
  final channel = ClientChannel(
    'localhost',
    port: 50051,
    options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
  );
  final stub = GreeterServiceClient(channel);

  final name = args.isNotEmpty ? args[0] : 'world';

  try {
    var response = await stub.getHealth(Empty());
    print('Greeter client received: ${response.message}');
    response = await stub.sayHello(SayHelloRequest()..message = name);
    print('Greeter client received: ${response.message}');
  } catch (e) {
    print('Caught error: $e');
  }
  await channel.shutdown();
}

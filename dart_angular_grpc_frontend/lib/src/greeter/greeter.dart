import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:dart_angular_grpc_frontend/src/greeter/greet_service.dart';

@Component(
  selector: 'greeter',
  templateUrl: 'greeter.html',
  providers: [ClassProvider(GreetService)],
  directives: [
    MaterialButtonComponent,
    materialInputDirectives,
    MaterialFabComponent
  ]
)
class Greeter {
  final GreetService _greetService;
  String sayHelloValue = '';

  Greeter(this._greetService);

  void sayHelloInput(dynamic event) {
    sayHelloValue = event.target.value;
  }

  void getHealth() async {
    final res = _greetService.getHealth();
    print(res);
  }

  void sayHello() async {
    final res = _greetService.sayHello(sayHelloValue);
    print(res);
  }

}

import 'package:angular/angular.dart';
import 'package:dart_angular_grpc_frontend/src/greeter/greeter.dart';

import 'src/todo_list/todo_list_component.dart';

// AngularDart info: https://angulardart.dev
// Components info: https://angulardart.dev/components

@Component(
  selector: 'my-app',
  styleUrls: ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: [TodoListComponent, Greeter],
)
class AppComponent {
  // Nothing here yet. All logic is in TodoListComponent.
}

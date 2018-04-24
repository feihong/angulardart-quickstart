import 'package:angular/angular.dart';
import 'dart:math';

final rand = new Random();

String getRandomHanzi() {
  const start = 0x4e00, end = 0x9fff;
  const count = end - start + 1;
  var n = rand.nextInt(count) + start;
  return new String.fromCharCode(n);
}

@Component(
  selector: 'cool-app',
  templateUrl: 'app_component.html',
  styleUrls: ['app_component.css'],
)
class AppComponent {
  int count = 3;
  String hanzi = getRandomHanzi();
}

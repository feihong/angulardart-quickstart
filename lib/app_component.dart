import 'dart:math';
import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';


final rand = new Random();
const initialValue = 3;

String getRandomHanzi() {
  const start = 0x4e00, end = 0x9fff;
  const count = end - start + 1;
  var n = rand.nextInt(count) + start;
  return new String.fromCharCode(n);
}

List<String> getRandomCharacters(int count) {
  return new List<String>.generate(count, (i) => getRandomHanzi());
}

@Component(
  selector: 'cool-app',
  templateUrl: 'app_component.html',
  styleUrls: ['app_component.css'],
  directives: [coreDirectives, formDirectives],
)
class AppComponent {
  String countStr = initialValue.toString();
  int count = initialValue;
  List<String> characters = getRandomCharacters(initialValue);

  onGenerate() {
    characters = getRandomCharacters(initialValue);
  }
}

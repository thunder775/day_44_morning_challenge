import 'package:test/test.dart';
import '../bin/main.dart';
void main() {
  test('Test Case 1', () {
  });
  test('trapped water', (){
    expect(trappedWater([0,2,3,2,4]), 1);
    expect(trappedWater([0,1,0,2,1,0,1,3,2,1,2,1]), 6);

  });
}

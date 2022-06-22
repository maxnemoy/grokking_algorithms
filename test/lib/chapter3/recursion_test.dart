import 'package:grokking_algorithms/chapter3/recursion.dart';
import 'package:test/test.dart';

void main() {
  group("Recursion", () {
    group("Factorial", () {
      test('Item is searched', () {
        expect(fact(5), 5*4*3*2*1);
      });
    });
  });
}
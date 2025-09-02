import 'package:test/test.dart';
import '../lib/compression.dart';

void main() {
  test('Compress',() {
    expect(compress(''), '');
    expect(compress('A'), 'A');
    expect(compress('ABC'), 'ABC');
    expect(compress('AAB'), 'AAB');
    expect(compress('AAA'), 'A3');
    expect(compress('AAABBC'), 'AAABBC');
  });


  test('Decompress',() {
    expect(decompress(''), '');
    expect(decompress('A'), 'A');
    expect(decompress('AB'), 'AB');
    expect(decompress('AB3'), 'ABBB');
    expect(decompress('A4C3'), 'AAAACCC');
    expect(decompress('A3BBC'), 'AAABBC');
  });

}
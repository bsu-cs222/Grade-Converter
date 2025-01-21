import 'package:flutter_test/flutter_test.dart';
import '../lib/grade_converter.dart';

void main() {
  group('GradeConverter', () {
    test('should return A for scores between 90 and 100', () {
      final gradeConverter = GradeConverter();
      expect(gradeConverter.convertToLetter(95), 'A');
      expect(gradeConverter.convertToLetter(90), 'A');
    });
  });


  test('should return B for scores between 80 and 89', () {
    final gradeConverter = GradeConverter();
    expect(gradeConverter.convertToLetter(85), 'B');
    expect(gradeConverter.convertToLetter(80), 'B');
  });

  test('should return C for scores between 70 and 79', () {
    final gradeConverter = GradeConverter();
    expect(gradeConverter.convertToLetter(75), 'C');
    expect(gradeConverter.convertToLetter(70), 'C');
  });


  test('should return D for scores between 60 and 69', () {
    final gradeConverter = GradeConverter();
    expect(gradeConverter.convertToLetter(65), 'D');
    expect(gradeConverter.convertToLetter(60), 'D');
  });


  test('should return F for scores less than 60', () {
    final gradeConverter = GradeConverter();
    expect(gradeConverter.convertToLetter(55), 'F');
    expect(gradeConverter.convertToLetter(30), 'F');
  });
}
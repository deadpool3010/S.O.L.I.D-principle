// ignore_for_file: public_member_api_docs, sort_constructors_first
/*

open/closed principle

what means of open/closed principles that the open for extension but closed for modification  


*/

abstract class CalculateArea {
  double calculateArea();
}

class Circle implements CalculateArea {
  double radius;
  Circle({
    required this.radius,
  });
  double calculateArea() {
    return 3.14 * radius * radius;
  }
}

class Rectangle implements CalculateArea {
  double length;
  double breadth;
  Rectangle({
    required this.length,
    required this.breadth,
  });

  double calculateArea() {
    return length * breadth;
  }
}

class ShapeIdentify {
  double getArea(String shapeName,
      {double? radius, double? length, double? breadth}) {
    switch (shapeName.toLowerCase()) {
      case 'circle':
        if (radius != null) {
          return Circle(radius: radius).calculateArea();
        } else {
          throw ArgumentError('Radius is required for Circle');
        }
      case 'rectangle':
        if (length != null && breadth != null) {
          return Rectangle(length: length, breadth: breadth).calculateArea();
        } else {
          throw ArgumentError('Length and Breadth are required for Rectangle');
        }
      default:
        throw ArgumentError('Invalid shape name');
    }
  }
}

void main() {
  ShapeIdentify shapeIdentifier = ShapeIdentify();

  double areaOfCircle = shapeIdentifier.getArea('circle', radius: 5);
  print('Area of Circle: $areaOfCircle');

  double areaOfRectangle =
      shapeIdentifier.getArea('rectangle', length: 4, breadth: 6);
  print('Area of Rectangle: $areaOfRectangle');
}

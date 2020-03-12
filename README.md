# flutter_childed

Avoid Widget Hell.

## Usage

```dart
Childed()
  .child((child) => Padding(child))
  .child((child) => Card(child: child))
  .child((child) => Padding(child: child))
  // ... so on
  .build(Text()) // leaf widget
```

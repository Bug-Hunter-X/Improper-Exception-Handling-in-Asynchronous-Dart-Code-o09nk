```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      print('Data fetched successfully: $data');
    } else {
      final errorMessage = 'Failed to load data. Status code: ${response.statusCode}. Body: ${response.body}';
      print('Error: $errorMessage');
      throw Exception(errorMessage); // Throw a more descriptive exception
    }
  } catch (e, stacktrace) {
    //Adding stacktrace for better debugging.
    final errorMessage = 'Error fetching data: $e. Stacktrace: $stacktrace';
    print(errorMessage); 
    //Consider custom exception handling or logging mechanism for production environment. 
  }
}
```
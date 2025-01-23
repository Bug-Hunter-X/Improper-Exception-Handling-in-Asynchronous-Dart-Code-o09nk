```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success! 
      final data = jsonDecode(response.body);
      // Process the data
      print(data);
    } else {
      // Handle errors
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions
    print('Error: $e');
    rethrow; // Re-throw the exception to be handled further up the call stack
  }
}
```
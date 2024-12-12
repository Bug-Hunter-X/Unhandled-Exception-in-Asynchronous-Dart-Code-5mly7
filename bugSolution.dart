```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the data here
    } else {
      // Handle error appropriately
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } on Exception catch (e) {
    // Handle exceptions specifically
    print('Exception caught: $e');
  } catch (e) {
    // Handle other errors
    print('Error: $e');
  } finally {
    print('Request complete');
  }
}

void main() async {
  await fetchData();
}
```
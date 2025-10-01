import 'package:flutter/material.dart';
import 'package:mobile_app_frontend/api_service.dart';

class TravelStayScreen extends StatefulWidget {
  const TravelStayScreen({super.key});

  @override
  State<TravelStayScreen> createState() => _TravelStayScreenState();
}

class _TravelStayScreenState extends State<TravelStayScreen> {
  List<dynamic> _travelStayOptions = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _fetchTravelStayOptions();
  }

  Future<void> _fetchTravelStayOptions() async {
    try {
      final options = await ApiService.getTravelAndStay();
      setState(() {
        _travelStayOptions = options;
        _isLoading = false;
      });
    } catch (e) {
      print('Error fetching travel and stay options: $e');
      setState(() {
        _isLoading = false;
      });
      // Optionally show an error message to the user
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Travel & Stay'),
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: _travelStayOptions.length,
              itemBuilder: (context, index) {
                final option = _travelStayOptions[index];
                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                        option['image'] ?? 'https://via.placeholder.com/150',
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) => Container(
                          height: 200,
                          color: Colors.grey[300],
                          child: const Center(child: Icon(Icons.broken_image)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          option['name'],
                          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          option['location'],
                          style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          option['description'],
                          style: const TextStyle(fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
    );
  }
}


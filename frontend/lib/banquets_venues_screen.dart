import 'package:flutter/material.dart';
import 'package:mobile_app_frontend/api_service.dart';

class BanquetsVenuesScreen extends StatefulWidget {
  const BanquetsVenuesScreen({super.key});

  @override
  State<BanquetsVenuesScreen> createState() => _BanquetsVenuesScreenState();
}

class _BanquetsVenuesScreenState extends State<BanquetsVenuesScreen> {
  final _formKey = GlobalKey<FormState>();
  String? _selectedEventType;
  String? _selectedCountry;
  String? _selectedState;
  String? _selectedCity;
  DateTime? _startDate;
  DateTime? _endDate;
  int _numberOfAdults = 1;
  String? _cateringPreference;
  List<String> _selectedCuisines = [];
  TextEditingController _budgetController = TextEditingController();

  List<String> eventTypes = ['Wedding', 'Anniversary', 'Corporate event', 'Other Party'];
  List<String> countries = ['India', 'USA', 'Japan', 'China', 'Russia']; // Sample data
  List<String> states = ['Maharashtra', 'Delhi', 'Karnataka']; // Sample data
  List<String> cities = ['Mumbai', 'Pune', 'Nagpur']; // Sample data
  List<String> cateringOptions = ['Non-veg', 'Veg'];
  List<String> cuisines = ['Indian', 'Italian', 'Asian', 'Mexican'];

  List<dynamic> _searchResults = [];
  bool _isLoading = false;

  Future<void> _selectDate(BuildContext context, bool isStartDate) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != (isStartDate ? _startDate : _endDate)) {
      setState(() {
        if (isStartDate) {
          _startDate = picked;
        } else {
          _endDate = picked;
        }
      });
    }
  }

  void _submitSearch() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
      });

      final searchCriteria = {
        'eventType': _selectedEventType,
        'country': _selectedCountry,
        'state': _selectedState,
        'city': _selectedCity,
        'eventDates': _startDate != null && _endDate != null
            ? [_startDate!.toIso8601String(), _endDate!.toIso8601String()]
            : null,
        'numberOfAdults': _numberOfAdults,
        'cateringPreference': _cateringPreference,
        'cuisines': _selectedCuisines,
        'budget': _budgetController.text.isNotEmpty ? double.parse(_budgetController.text) : null,
      };

      try {
        final results = await ApiService.searchBanquets(searchCriteria);
        setState(() {
          _searchResults = results;
        });
      } catch (e) {
        print('Error searching banquets: $e');
        // Optionally show an error message
      } finally {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Banquets & Venues'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Tell Us Your Venue Requirements',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16.0),
              DropdownButtonFormField<String>(
                value: _selectedEventType,
                hint: const Text('Event Type'),
                items: eventTypes.map((type) {
                  return DropdownMenuItem(value: type, child: Text(type));
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedEventType = value;
                  });
                },
                decoration: const InputDecoration(border: OutlineInputBorder()),
              ),
              const SizedBox(height: 16.0),
              DropdownButtonFormField<String>(
                value: _selectedCountry,
                hint: const Text('Country'),
                items: countries.map((country) {
                  return DropdownMenuItem(value: country, child: Text(country));
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedCountry = value;
                  });
                },
                decoration: const InputDecoration(border: OutlineInputBorder()),
              ),
              const SizedBox(height: 16.0),
              DropdownButtonFormField<String>(
                value: _selectedState,
                hint: const Text('State'),
                items: states.map((state) {
                  return DropdownMenuItem(value: state, child: Text(state));
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedState = value;
                  });
                },
                decoration: const InputDecoration(border: OutlineInputBorder()),
              ),
              const SizedBox(height: 16.0),
              DropdownButtonFormField<String>(
                value: _selectedCity,
                hint: const Text('City'),
                items: cities.map((city) {
                  return DropdownMenuItem(value: city, child: Text(city));
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedCity = value;
                  });
                },
                decoration: const InputDecoration(border: OutlineInputBorder()),
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                readOnly: true,
                controller: TextEditingController(text: _startDate == null ? '' : "${_startDate!.day}/${_startDate!.month}/${_startDate!.year}"),
                decoration: InputDecoration(
                  labelText: '1st March 2025',
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.calendar_today),
                    onPressed: () => _selectDate(context, true),
                  ),
                  border: const OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                readOnly: true,
                controller: TextEditingController(text: _endDate == null ? '' : "${_endDate!.day}/${_endDate!.month}/${_endDate!.year}"),
                decoration: InputDecoration(
                  labelText: '2nd March 2025',
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.calendar_today),
                    onPressed: () => _selectDate(context, false),
                  ),
                  border: const OutlineInputBorder(),
                ),
              ),
              TextButton(
                onPressed: () {
                  // Logic to add more dates
                },
                child: const Text('+ add more dates'),
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Number of Adults',
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  setState(() {
                    _numberOfAdults = int.tryParse(value) ?? 1;
                  });
                },
                initialValue: _numberOfAdults.toString(),
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Catering Preference',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Row(
                children: cateringOptions.map((option) {
                  return Expanded(
                    child: RadioListTile<String>(
                      title: Text(option),
                      value: option,
                      groupValue: _cateringPreference,
                      onChanged: (value) {
                        setState(() {
                          _cateringPreference = value;
                        });
                      },
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Please select your Cuisines',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Wrap(
                spacing: 8.0,
                children: cuisines.map((cuisine) {
                  return ChoiceChip(
                    label: Text(cuisine),
                    selected: _selectedCuisines.contains(cuisine),
                    onSelected: (selected) {
                      setState(() {
                        if (selected) {
                          _selectedCuisines.add(cuisine);
                        } else {
                          _selectedCuisines.remove(cuisine);
                        }
                      });
                    },
                  );
                }).toList(),
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                controller: _budgetController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Budget',
                  suffixText: 'INR',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 24.0),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _isLoading ? null : _submitSearch,
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                  ),
                  child: _isLoading
                      ? const CircularProgressIndicator(color: Colors.white)
                      : const Text('Submit Request', style: TextStyle(fontSize: 18)),
                ),
              ),
              const SizedBox(height: 24.0),
              if (_searchResults.isNotEmpty)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Search Results:',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8.0),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: _searchResults.length,
                      itemBuilder: (context, index) {
                        final banquet = _searchResults[index];
                        return Card(
                          margin: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  banquet['name'],
                                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                                Text(banquet['location']),
                                Text(banquet['description']),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}


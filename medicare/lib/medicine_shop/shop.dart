import 'package:flutter/material.dart';

class MedicineItem {
  final String name;
  final double price;
  final int quantityAvailable;

  MedicineItem({
    required this.name,
    required this.price,
    required this.quantityAvailable,
  });
}

class Shop extends StatelessWidget {
  final List<MedicineItem> items = [
    MedicineItem(name: 'Aspirin', price: 5.99, quantityAvailable: 100),
    MedicineItem(name: 'Ibuprofen', price: 4.49, quantityAvailable: 80),
    MedicineItem(name: 'Antacid', price: 7.99, quantityAvailable: 60),
    MedicineItem(name: 'Cough Syrup', price: 8.99, quantityAvailable: 40),
    MedicineItem(name: 'Vitamin C', price: 9.99, quantityAvailable: 120),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Medicine Shop'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return ListTile(
            title: Text(item.name),
            subtitle: Text('Price: \$${item.price.toStringAsFixed(2)}\n'
                'Quantity Available: ${item.quantityAvailable}'),
            trailing: ElevatedButton(
              onPressed: () {
                // Implement item purchase logic here
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Purchase Confirmation'),
                      content: Text('You have purchased ${item.name}.'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('OK'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Buy'),
            ),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:medicare/constants/appbar.dart';
import 'package:medicare/constants/colors.dart';
import 'package:medicare/medicine_shop/payment_success.dart';
import 'package:medicare/welcome/welcome.dart';

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

class Shop extends StatefulWidget {
  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  final List<MedicineItem> items = [
    MedicineItem(name: 'Aspirin', price: 100, quantityAvailable: 100),
    MedicineItem(name: 'Ibuprofen', price: 150, quantityAvailable: 80),
    MedicineItem(name: 'Antacid', price: 200, quantityAvailable: 60),
    MedicineItem(name: 'Cough Syrup', price: 50, quantityAvailable: 40),
    MedicineItem(name: 'Vitamin C', price: 40, quantityAvailable: 120),
    MedicineItem(name: 'Paracetamol', price: 120, quantityAvailable: 90),
    MedicineItem(name: 'Antibiotic Ointment', price: 80, quantityAvailable: 70),
    MedicineItem(name: 'Allergy Tablets', price: 60, quantityAvailable: 50),
    MedicineItem(name: 'Eye Drops', price: 30, quantityAvailable: 60),
    MedicineItem(name: 'Pain Relief Gel', price: 75, quantityAvailable: 45),
  ];

  int _selectedQuantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: mainColor,
                  size: 30,
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WelcomePage(),
                    ),
                  );
                },
              ),
              const Text(
                'Medicine Shop',
                style: TextStyle(
                  fontSize: 20,
                  color: mainColor,
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return ListTile(
            title: Text(
              item.name,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: mainColor,
                  fontFamily: 'helvetica'),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Price: Rs. ${item.price.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'helvetica',
                  ),
                ),
                Text(
                  'Quantity Available: ${item.quantityAvailable}',
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            trailing: ElevatedButton(
              onPressed: () {
                _showQuantityDialog(item);
              },
              style: ElevatedButton.styleFrom(
                primary: mainColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text(
                'Buy',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Future<void> _showQuantityDialog(MedicineItem item) async {
    int maxQuantity = item.quantityAvailable;
    int selectedQuantity = _selectedQuantity;

    await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Enter Quantity'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Available Quantity: $maxQuantity'),
              TextFormField(
                keyboardType: TextInputType.number,
                initialValue: selectedQuantity.toString(),
                onChanged: (value) {
                  final quantity = int.tryParse(value);
                  if (quantity != null && quantity <= maxQuantity) {
                    setState(() {
                      selectedQuantity = quantity;
                    });
                  }
                },
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                final totalPrice = item.price * selectedQuantity;

                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('Purchase Confirmation'),
                      content: Text(
                        'You have purchased $selectedQuantity ${item.name}(s) for Rs. ${totalPrice.toStringAsFixed(2)}.',
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => PaymentSuccessPage(),
                              ),
                            );
                          },
                          child: const Text('OK'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Text('Buy'),
            ),
          ],
        );
      },
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Route Push Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FoodDeliveryHomePage(),
    );
  }
}

class FoodDeliveryHomePage extends StatelessWidget {
  const FoodDeliveryHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food Delivery Home'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Place Order'),
          onPressed: () {
            // Navigate to the transaction page and pass some data.
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const TransactionPage(orderDetails: 'Pizza, Coke')),
            );
          },
        ),
      ),
    );
  }
}

class TransactionPage extends StatelessWidget {
  final String orderDetails;

  const TransactionPage({Key? key, required this.orderDetails}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transaction Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Order Details:',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              orderDetails,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate back to the home page.
                Navigator.pop(context);
              },
              child: const Text('Go back to Home'),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../models/product.dart';

class DetailScreen extends StatefulWidget {
  final Product product;

  const DetailScreen({
    super.key,
    required this.product,
  });

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int cartCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.product.name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.product.name,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),
            Text(widget.product.description),
            const SizedBox(height: 15),
            Text(
              '${widget.product.price} TL',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  cartCount++;
                });
              },
              child: const Text('Sepete Ekle'),
            ),
            const SizedBox(height: 15),
            Text('Sepetteki ürün sayısı: $cartCount'),
          ],
        ),
      ),
    );
  }
}
// lib/screens/detail_page.dart
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:vegeta_mart/models/vegetable.dart';

class DetailPage extends StatefulWidget {
  final Vegetable vegetable;

  const DetailPage({Key? key, required this.vegetable}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    final currencyFormatter = NumberFormat.currency(
      locale: 'id',
      symbol: 'Rp ',
      decimalDigits: 0,
    );

    return Scaffold(
      appBar: AppBar(title: Text(widget.vegetable.name), centerTitle: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                widget.vegetable.imageUrl,
                height: MediaQuery.of(context).size.height * 0.3,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              widget.vegetable.name,
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              currencyFormatter.format(widget.vegetable.price),
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              widget.vegetable.unit,
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),
            const SizedBox(height: 15),
            const Text(
              'Deskripsi:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 5),
            Text(
              widget.vegetable.description,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(Icons.remove, size: 28),
                  onPressed: () {
                    setState(() {
                      if (quantity > 1) {
                        quantity--;
                      }
                    });
                  },
                ),
                Text(
                  '$quantity',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.add, size: 28),
                  onPressed: () {
                    setState(() {
                      quantity++;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 30),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        '${widget.vegetable.name} sejumlah $quantity dipesan!',
                      ),
                    ),
                  );
                },
                icon: const Icon(Icons.shopping_bag),
                label: const Text(
                  'Pesan Sekarang',
                  style: TextStyle(fontSize: 18),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 15,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

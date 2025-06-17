import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:vegeta_mart/models/vegetable.dart';
import 'package:vegeta_mart/screens/detail_page.dart';

class VegetableCard extends StatefulWidget {
  final Vegetable vegetable;

  const VegetableCard({Key? key, required this.vegetable}) : super(key: key);

  @override
  State<VegetableCard> createState() => _VegetableCardState();
}

class _VegetableCardState extends State<VegetableCard> {
  int quantity = 0;

  @override
  Widget build(BuildContext context) {
    final currencyFormatter = NumberFormat.currency(
      locale: 'id',
      symbol: 'Rp ',
      decimalDigits: 0,
    );

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(vegetable: widget.vegetable),
          ),
        );
      },
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 115,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    widget.vegetable.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                currencyFormatter.format(widget.vegetable.price),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.green,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                widget.vegetable.name,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
              Text(
                widget.vegetable.unit,
                style: TextStyle(fontSize: 12, color: Colors.grey[600]),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.shopping_cart, color: Colors.green),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            '${widget.vegetable.name} ditambahkan ke keranjang!',
                          ),
                        ),
                      );
                    },
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.remove, size: 20),
                        onPressed: () {
                          setState(() {
                            if (quantity > 0) quantity--;
                          });
                        },
                      ),
                      Text(
                        '$quantity',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.add, size: 20),
                        onPressed: () {
                          setState(() {
                            quantity++;
                          });
                        },
                      ),
                    ],
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

import 'package:flutter/material.dart';
import 'package:vegeta_mart/models/vegetable.dart';
import 'package:vegeta_mart/widgets/vegetable_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vegeta Mart',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Vegetable> vegetables = [
    Vegetable(
      id: 1,
      name: 'Bawang Putih',
      imageUrl: 'assets/png/sayur1.png',
      price: 30000.0,
      unit: 'per 1 kg',
      description: 'Bawang putih segar untuk bumbu dasar masakan Anda.',
    ),
    Vegetable(
      id: 2,
      name: 'Bawang Merah',
      imageUrl: 'assets/png/sayur2.png',
      price: 28000.0,
      unit: 'per 1 kg',
      description:
          'Bawang merah berkualitas, menambah aroma pada setiap hidangan.',
    ),
    Vegetable(
      id: 3,
      name: 'Bayam',
      imageUrl: 'assets/png/sayur3.png',
      price: 5000.0,
      unit: 'per 1 ikat',
      description: 'Bayam hijau segar, sumber zat besi dan vitamin.',
    ),
    Vegetable(
      id: 4,
      name: 'Tomat',
      imageUrl: 'assets/png/sayur4.png',
      price: 10000.0,
      unit: 'per 1 kg',
      description: 'Tomat merah segar, cocok untuk salad atau jus.',
    ),
    Vegetable(
      id: 5,
      name: 'Paprika',
      imageUrl: 'assets/png/sayur5.png',
      price: 35000.0,
      unit: 'per 1 kg',
      description:
          'Paprika aneka warna, manis dan renyah, baik untuk kesehatan.',
    ),
    Vegetable(
      id: 6,
      name: 'Oyong',
      imageUrl: 'assets/png/sayur6.png',
      price: 7000.0,
      unit: 'per 1 kg',
      description: 'Oyong segar, lembut dan cocok untuk sup atau tumisan.',
    ),
    Vegetable(
      id: 7,
      name: 'Wortel',
      imageUrl: 'assets/png/sayur7.png',
      price: 8000.0,
      unit: 'per 1 kg',
      description: 'Wortel manis dan renyah, kaya vitamin A.',
    ),
    Vegetable(
      id: 8,
      name: 'Tomat Sayur',
      imageUrl: 'assets/png/sayur8.png',
      price: 9000.0,
      unit: 'per 1 kg',
      description: 'Tomat sayur yang lebih asam, ideal untuk masakan.',
    ),
    Vegetable(
      id: 9,
      name: 'Bayam Air',
      imageUrl: 'assets/png/sayur9.png',
      price: 6000.0,
      unit: 'per 1 ikat',
      description: 'Bayam air segar, cocok untuk ditumis atau direbus.',
    ),
    Vegetable(
      id: 10,
      name: 'Selada',
      imageUrl: 'assets/png/sayur10.png',
      price: 12000.0,
      unit: 'per buah',
      description: 'Selada renyah, sempurna untuk salad atau sandwich.',
    ),
  ];
  int cartItemCount = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Menu samping dibuka!')),
            );
          },
        ),
        title: const Text('Vegeta Mart'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Membuka pencarian...')),
              );
            },
          ),
          Stack(
            children: [
              IconButton(
                icon: const Icon(Icons.shopping_cart),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Membuka keranjang...')),
                  );
                },
              ),
              Positioned(
                right: 5,
                top: 5,
                child: Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  constraints: const BoxConstraints(
                    minWidth: 16,
                    minHeight: 16,
                  ),
                  child: Text(
                    '$cartItemCount',
                    style: const TextStyle(color: Colors.white, fontSize: 10),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
            childAspectRatio: 0.7,
          ),
          itemCount: vegetables.length,
          itemBuilder: (context, index) {
            final vegetable = vegetables[index];
            return VegetableCard(vegetable: vegetable);
          },
        ),
      ),
    );
  }
}

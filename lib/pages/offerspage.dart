import 'package:flutter/material.dart';

class OffersPage extends StatelessWidget {
  const OffersPage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    if (size.width > 500) {}
    return const Wrap(
      children: [
        Offer(
          title: "My great offer ever",
          description: "Buy 1, get 5 for free ",
        ),
        Offer(
          title: "My great offer ever",
          description: "Buy 1, get 5 for free ",
        ),
        Offer(
          title: "My great offer ever",
          description: "Buy 1, get 5 for free ",
        ),
        Offer(
          title: "My great offer ever",
          description: "Buy 1, get 5 for free ",
        ),
        Offer(
          title: "My great offer ever",
          description: "Buy 1, get 5 for free ",
        ),
        Offer(
          title: "My great offer ever",
          description: "Buy 1, get 5 for free ",
        ),
      ],
    );
  }
}

class Offer extends StatelessWidget {
  //Properties
  final String title;
  final String description;
  const Offer({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          color: const Color.fromRGBO(255, 255, 255, 0.5),
          elevation: 7, //wate border eka
          child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "images/bg.png",
                    ))),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                      child: Container(
                    color: Colors.amber.shade50,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        title,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                      child: Container(
                    color: Colors.amber.shade50,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        description,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                  )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

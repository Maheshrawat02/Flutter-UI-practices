import 'package:flutter/material.dart';

class FAQScreen extends StatefulWidget {
  const FAQScreen({super.key});

  @override
  State<FAQScreen> createState() => _FAQScreenState();
}

class _FAQScreenState extends State<FAQScreen> {

  // Store expansion state for each panel.
  List<bool> expanded = [
    false,
    false,
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FAQs'),
      ),

      body: SingleChildScrollView(
        child: ExpansionPanelList(
          expansionCallback: (index, isExpanded) {
            setState(() {
              expanded[index] = isExpanded;
            });
          },

          children: [
            ExpansionPanel(
              headerBuilder: (context, isExpanded) {
                return const ListTile(
                  title: Text('How can I place an order?'),
                );
              },

              body: const ListTile(
                title: Text(
                  'Select your product, add it to the cart, '
                  'and complete checkout.',
                ),
              ),

              isExpanded: expanded[0],
            ),

            ExpansionPanel(
              headerBuilder: (context, isExpanded) {
                return const ListTile(
                  title: Text('What payment methods are accepted?'),
                );
              },

              body: const ListTile(
                title: Text(
                  'You can pay using eSewa, Khalti, '
                  'or Cash on Delivery.',
                ),
              ),

              isExpanded: expanded[1],
            ),

            ExpansionPanel(
              headerBuilder: (context, isExpanded) {
                return const ListTile(
                  title: Text('How can I track my order?'),
                );
              },

              body: const ListTile(
                title: Text(
                  'Visit the My Orders section to track '
                  'your order.',
                ),
              ),

              isExpanded: expanded[2],
            ),

            ExpansionPanel(
              headerBuilder: (context, isExpanded) {
                return const ListTile(
                  title: Text('What is the return policy?'),
                );
              },

              body: const ListTile(
                title: Text(
                  'Eligible products can be returned '
                  'according to our return policy.',
                ),
              ),

              isExpanded: expanded[3],
            ),
          ],
        ),
      ),
    );
  }
}
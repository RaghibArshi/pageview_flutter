import 'package:flutter/material.dart';
import 'CardDataModel.dart';

class SlidingCardView extends StatefulWidget {
  const SlidingCardView({super.key});

  @override
  State<SlidingCardView> createState() => _SlidingCardViewState();
}

class _SlidingCardViewState extends State<SlidingCardView> {
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(viewportFraction: 0.8);
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.55,
      child: PageView.builder(
        // scrollDirection: Axis.vertical, // For Scrolling Vertically
        clipBehavior: Clip.none,
        controller: pageController,
        itemCount: demoCardData.length,
        itemBuilder: (context, index) {
          return Container(
            clipBehavior: Clip.none,
            margin: const EdgeInsets.only(left: 8, right: 8, bottom: 24),
            decoration: BoxDecoration(
              color: Colors.purple.shade200,
              borderRadius: BorderRadius.circular(32),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  offset: const Offset(8, 20),
                  blurRadius: 20,
                ),
              ],
            ),
            child: Column(
              children: <Widget>[
                ClipRRect(
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(32)),
                  child: Image.asset(
                    'assets/${demoCardData[index].image}',
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.fill,
                  ),
                ),
                // Rest of the content
                const SizedBox(height: 8),
                Expanded(
                  child: Text(
                    textAlign: TextAlign.center,
                    demoCardData[index].name,
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

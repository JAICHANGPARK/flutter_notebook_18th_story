import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook_18th_story/ep1081_pax_wardrobe_app/src/provider/pax_basic_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PaxWardrobeBasicPage extends StatefulWidget {
  const PaxWardrobeBasicPage({Key? key}) : super(key: key);

  @override
  State<PaxWardrobeBasicPage> createState() => _PaxWardrobeBasicPageState();
}

class _PaxWardrobeBasicPageState extends State<PaxWardrobeBasicPage> {
  double _widthValue = 50.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Basic information",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 18),
          ),
          const SizedBox(
            height: 32,
          ),
          const Text("Width"),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "50",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                  ),
                ),
                Text(
                  "300",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
          Consumer(builder: (context, ref, _) {
            final basic = ref.watch(paxBasicProvider);
            return Slider(
              max: 300,
              min: 50,
              value: basic.width ?? 50,
              thumbColor: Colors.black,
              activeColor: Colors.black,
              inactiveColor: Colors.grey,
              divisions: 250,
              onChanged: (double value) {
                final _basic = ref.watch(paxBasicProvider.notifier);
                _basic.updateWidth(value);
              },
              label: "${basic.width?.toStringAsFixed(0)} cm",
            );
          }),
          const SizedBox(
            height: 24,
          ),
          const Text("Height"),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
            height: 42,
            width: double.infinity,
            child: Consumer(builder: (context, ref, _) {
              final basic = ref.watch(paxBasicProvider);
              return Row(
                children: [
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      final _basic = ref.watch(paxBasicProvider.notifier);
                      _basic.updateHeight(0);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: basic.height == 0 ? Colors.black : Colors.grey[300],
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Center(
                        child: Text(
                          "201 cm",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: basic.height == 0 ? Colors.white : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  )),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        final _basic = ref.watch(paxBasicProvider.notifier);
                        _basic.updateHeight(1);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: basic.height == 1 ? Colors.black : Colors.grey[300],
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Center(
                          child: Text(
                            "236 cm",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: basic.height == 1 ? Colors.white : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }),
          ),
          const SizedBox(
            height: 24,
          ),
          const Text("Depth"),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
            height: 42,
            width: double.infinity,
            child: Consumer(builder: (context, ref, _) {
              final basic = ref.watch(paxBasicProvider);
              return Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        final _basic = ref.watch(paxBasicProvider.notifier);
                        _basic.updateDepth(0);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: basic.depth == 0 ? Colors.black : Colors.grey[300],
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Center(
                          child: Text(
                            "35 cm",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: basic.depth == 0 ? Colors.white : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        final _basic = ref.watch(paxBasicProvider.notifier);
                        _basic.updateDepth(1);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: basic.depth == 1 ? Colors.black : Colors.grey[300],
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Center(
                          child: Text(
                            "58 cm",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: basic.depth == 1 ? Colors.white : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }),
          ),
          const SizedBox(
            height: 24,
          ),
          const Text("Frame color"),
          const SizedBox(
            height: 16,
          ),
          Consumer(
            builder: (context, ref, _) {
              final basic = ref.watch(paxBasicProvider);
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){
                      final _basic = ref.watch(paxBasicProvider.notifier);
                      _basic.updateFrame(0);
                    },
                    child: Container(
                      height: 64,
                      width: 64,
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        border: Border.all(
                          color: basic.frameColor == 0 ? Colors.black : Colors.transparent,
                          width: 2,
                        ),
                        shape: BoxShape.circle,
                      ),
                      child:  basic.frameColor == 0 ? const Center(
                        child:  Icon(
                          Icons.check,
                          size: 20,
                        ),
                      ) : null,
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      final _basic = ref.watch(paxBasicProvider.notifier);
                      _basic.updateFrame(1);
                    },
                    child: Container(
                      height: 64,
                      width: 64,
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        border: Border.all(
                          color: basic.frameColor == 1 ? Colors.black : Colors.transparent,
                          width: 2,
                        ),
                        shape: BoxShape.circle,
                        image: const DecorationImage(
                          image: CachedNetworkImageProvider(
                              "https://cdn.pixabay.com/photo/2015/01/07/16/37/wood-591631__480.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child:  basic.frameColor == 1 ? const Center(
                        child:  Icon(
                          Icons.check,
                          size: 20,
                        ),
                      ) : null,
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      final _basic = ref.watch(paxBasicProvider.notifier);
                      _basic.updateFrame(2);
                    },
                    child: Container(
                      height: 64,
                      width: 64,
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        shape: BoxShape.circle,
                        image:  const DecorationImage(
                          image: CachedNetworkImageProvider(
                              "https://cdn.pixabay.com/photo/2016/11/23/15/04/wood-1853403__340.jpg"),
                          fit: BoxFit.cover,
                        ),
                        border: Border.all(
                          color: basic.frameColor == 2 ? Colors.black : Colors.transparent,
                          width: 2,
                        ),
                      ),
                      child:  basic.frameColor == 2 ? const Center(
                        child:  Icon(
                          Icons.check,
                          size: 20,
                        ),
                      ) : null,
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      final _basic = ref.watch(paxBasicProvider.notifier);
                      _basic.updateFrame(3);
                    },
                    child: Container(
                      height: 64,
                      width: 64,
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        border: Border.all(
                          color: basic.frameColor == 3 ? Colors.black : Colors.transparent,
                          width: 2,
                        ),
                        shape: BoxShape.circle,
                        image: const DecorationImage(
                          image: CachedNetworkImageProvider(
                              "https://cdn.pixabay.com/photo/2016/01/09/16/28/wood-1130494__340.jpg"),
                          fit: BoxFit.cover,
                        ),

                      ),
                      child:  basic.frameColor == 3 ? const Center(
                        child:  Icon(
                          Icons.check,
                          size: 20,
                        ),
                      ) : null,
                    ),
                  )
                ],
              );
            }
          )
        ],
      ),
    );
  }
}

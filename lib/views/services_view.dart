import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter/cupertino.dart';
import '../widgets/custom_action_button.dart';

class ServicesView extends StatelessWidget {
  const ServicesView({super.key});

  List<_ServiceItem> get _items => const [
        _ServiceItem(
          title: "Oil Change",
          iconData: Icons.local_gas_station,
          color: Color(0xFFE3F2FD),
        ),
        _ServiceItem(
          title: "Tire Rotation",
          iconData: CupertinoIcons.arrow_2_circlepath,
          color: Color(0xFFFFF3E0),
        ),
        _ServiceItem(
          title: "Engine Check",
          iconData: Icons.car_repair,
          color: Color(0xFFF1F8E9),
        ),
        _ServiceItem(
          title: "Brake Inspection",
          iconData: Icons.build,
          color: Color(0xFFFFEBEE),
        ),
        _ServiceItem(
          title: "Battery Check",
          iconData: CupertinoIcons.battery_25,
          color: Color(0xFFE8F5E9),
        ),
        _ServiceItem(
          title: "Car Wash",
          iconData: CupertinoIcons.drop_fill,
          color: Color(0xFFEDE7F6),
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xFF5433FF),
            Color(0xFF20BDFF),
            Color(0xFFA5FECB),
          ],
        ),
      ),
      child: Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 720),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Text(
                "Available Car Services",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: MasonryGridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                  itemCount: _items.length,
                  itemBuilder: (context, index) {
                    final item = _items[index];
                    final Color buttonColor = index % 2 == 0
                        ? CupertinoColors.activeBlue
                        : const Color(0xFF1565C0); // Blue 800
                    return SizedBox(
                      height: 160,
                      child: Container(
                        decoration: BoxDecoration(
                          color: item.color,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 6,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(item.iconData, size: 40, color: Colors.blue[700]),
                                  const SizedBox(height: 10),
                                  Text(
                                    item.title,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    textAlign: TextAlign.center,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                              if (index % 2 == 0)
                                SizedBox(
                                  width: double.infinity,
                                  height: 40,
                                  child: CustomActionButton(
                                    label: "Select",
                                    onPressed: () {},
                                  ),
                                )
                              else
                                SizedBox(
                                  width: double.infinity,
                                  height: 40,
                                  child: CupertinoButton(
                                    padding: EdgeInsets.zero,
                                    color: buttonColor,
                                    child: const Text(
                                      "Select",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
  }
}

class _ServiceItem {
  final String title;
  final IconData iconData;
  final Color color;

  const _ServiceItem({
    required this.title,
    required this.iconData,
    required this.color,
  });
}

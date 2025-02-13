import 'package:flutter/material.dart';

class SplashColors {
  static const Color darkBlue = Color(0xFF0B1E33);
  static const Color mediumBlue = Color(0xFF013C58);
  static const Color lightBlue = Color(0xFF00537A);
  static const Color brightOrange = Color(0xFFF5A201);
  static const Color lightOrange = Color(0xFFFFBA42);
  static const Color textColor = Color(0xFF333333);
  static const Color iconColor = Color(0xFF444444);
}

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  final bool showSearchBar;
  final Function(String)? onSearch;
  final VoidCallback? onNotificationPressed;

  const CustomAppBar({
    super.key,
    this.title = 'TripLink',
    this.showSearchBar = true,
    this.onSearch,
    this.onNotificationPressed,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  bool _isSearchExpanded = false;

  void _toggleSearch() {
    setState(() {
      _isSearchExpanded = !_isSearchExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white.withOpacity(0.9),
      elevation: 0,
      title: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: _isSearchExpanded
            ? null
            : Text(
          widget.title,
          key: const ValueKey('title'),
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: SplashColors.textColor,
            letterSpacing: 1.2,
          ),
        ),
      ),
      actions: [
        if (widget.showSearchBar)
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            width: _isSearchExpanded
                ? MediaQuery.of(context).size.width - 100
                : 48,
            curve: Curves.easeInOut,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              children: [
                Expanded(
                  child: _isSearchExpanded
                      ? TextField(
                    autofocus: true,
                    decoration: InputDecoration(
                      hintText: 'Search destinations...',
                      hintStyle: TextStyle(
                          color: SplashColors.textColor.withOpacity(0.7)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: SplashColors.lightBlue.withOpacity(0.5),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: SplashColors.lightBlue.withOpacity(0.5),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: SplashColors.lightBlue,
                        ),
                      ),
                      prefixIcon: IconButton(
                        icon: Icon(Icons.arrow_back,
                            color: SplashColors.iconColor),
                        onPressed: _toggleSearch,
                      ),
                    ),
                    style: const TextStyle(color: SplashColors.textColor),
                    onChanged: widget.onSearch,
                  )
                      : IconButton(
                    icon: Icon(Icons.search, color: SplashColors.iconColor),
                    onPressed: _toggleSearch,
                  ),
                ),
              ],
            ),
          ),
        IconButton(
          icon: Stack(
            children: [
              Icon(Icons.notifications, color: SplashColors.iconColor),
              Positioned(
                right: 0,
                child: Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: SplashColors.brightOrange,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  constraints: const BoxConstraints(
                    minWidth: 12,
                    minHeight: 12,
                  ),
                  child: const Text(
                    '3',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 8,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
          onPressed: widget.onNotificationPressed,
        ),
      ],
    );
  }
}

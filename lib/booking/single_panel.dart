import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vector_math/vector_math_64.dart' show Vector3;

class SinglePanel extends StatefulWidget {
  final SlideEntry slideEntry;

  /// The direct URL of the image asset.
  final String mainAsset;
  final String title;
  final String subtitle;
  final String description;
  final String buttonCta;
  final Icon icon;
  final String? moreInfoUrl;
  final Function() onCtaPressed;
  const SinglePanel({
    super.key,
    required this.slideEntry,
    required this.mainAsset,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.buttonCta,
    required this.icon,
    required this.moreInfoUrl,
    required this.onCtaPressed,
  });

  @override
  State<SinglePanel> createState() => _SinglePanelState();
}

class _SinglePanelState extends State<SinglePanel> {
  late bool _isHovered;
  @override
  void initState() {
    _isHovered = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Animate(
      effects: [
        const FadeEffect(duration: Duration(seconds: 1)),
        SlideEffect(
          duration: const Duration(seconds: 1),
          curve: Curves.decelerate,
          begin: Offset(widget.slideEntry.offset, 0),
        ),
      ],
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 300),
        child: MouseRegion(
          onEnter: (_) => setState(() => _isHovered = true),
          onExit: (_) => setState(() => _isHovered = false),
          child: Card(
            clipBehavior: Clip.antiAlias,
            color: Colors.black.withAlpha(100),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 8,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.easeOut,
                      transformAlignment: Alignment.center,
                      transform: Matrix4.identity()
                        ..scaleByVector3(
                          _isHovered
                              ? Vector3(1.15, 1.15, 1)
                              : Vector3(1, 1, 1),
                        ),
                      child: Image.network(
                        widget.mainAsset,
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    widget.title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    widget.subtitle,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    widget.description,
                    textAlign: TextAlign.left,
                    style: const TextStyle(color: Colors.white),
                  ),
                  widget.moreInfoUrl != null
                      ? TextButton(
                          onPressed: () async =>
                              await launchUrl(Uri.parse(widget.moreInfoUrl!)),
                          child: const Row(
                            spacing: 10,
                            children: [
                              Text(
                                "Più informazioni",
                                style: TextStyle(
                                  color: Colors.white,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              Icon(Icons.open_in_new, color: Colors.white),
                            ],
                          ),
                        )
                      : const SizedBox.shrink(),
                  Center(
                    child: ElevatedButton.icon(
                      onPressed: () => widget.onCtaPressed(),
                      label: Text(widget.buttonCta),
                      icon: widget.icon,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

enum SlideEntry {
  left(offset: -0.2),
  right(offset: 0.2);

  final double offset;

  const SlideEntry({required this.offset});
}

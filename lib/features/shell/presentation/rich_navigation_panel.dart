import 'package:flutter/material.dart';
import 'package:lucide_flutter/lucide_flutter.dart';

import '../../../app/l10n/generated/app_localizations.dart';
import '../../../core/navigation/public_legacy_links.dart';
import 'navbar_style.dart';

enum PublicNavigationMenu { explore, about }

const navbarCuisines = [
  ('SPAIN_FOOD', 'Espa\u00f1ola'),
  ('JAPANESE_FOOD', 'Japonesa'),
  ('ITALIAN_FOOD', 'Italiana'),
  ('TEX_MEX_FOOD', 'Mexicana'),
  ('CHINESE_FOOD', 'China'),
  ('INDIAN_FOOD', 'India'),
  ('THAI_FOOD', 'Tailandesa'),
  ('VEGAN_FOOD', 'Vegana'),
  ('FUSION_FOOD', 'Fusi\u00f3n'),
  ('PERUVIAN_FOOD', 'Peruana'),
  ('ARABIAN_FOOD', 'Arabe'),
  ('KOREAN_FOOD', 'Koreana'),
];

class RichNavigationPanel extends StatelessWidget {
  const RichNavigationPanel({
    super.key,
    required this.menu,
    required this.inline,
    required this.onOpen,
  });
  final PublicNavigationMenu menu;
  final bool inline;
  final ValueChanged<Uri> onOpen;

  @override
  Widget build(BuildContext context) {
    final s = AppLocalizations.of(context);
    if (menu == PublicNavigationMenu.about) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          _label(s.navbarHouse),
          _item(
            s.navbarWho,
            s.navbarWhoDesc,
            LucideIcons.users,
            PublicLegacyLinks.page(['about-us']),
          ),
          const SizedBox(height: 4),
          _item(
            'Founding 50',
            s.navbarFoundingDesc,
            LucideIcons.sparkles,
            PublicLegacyLinks.page(['founding-50']),
            badge: s.navbarInProgress,
          ),
        ],
      );
    }
    final discover = Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _label(s.navbarDiscover),
        _item(
          s.navbarRestaurants,
          s.navbarRestaurantsDesc,
          LucideIcons.store,
          PublicLegacyLinks.catalog(),
        ),
        _item(
          s.navbarRecommendations,
          s.navbarRecommendationsDesc,
          LucideIcons.bookOpenText,
          PublicLegacyLinks.page(['recomendaciones']),
        ),
      ],
    );
    final cuisines = Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _label(s.navbarCuisines),
        LayoutBuilder(
          builder: (context, constraints) {
            final columns = MediaQuery.textScalerOf(context).scale(1) >= 1.5
                ? 1
                : 2;
            final width = (constraints.maxWidth - (columns - 1) * 8) / columns;
            return Wrap(
              spacing: 8,
              runSpacing: 2,
              children: [
                for (final cuisine in navbarCuisines)
                  SizedBox(
                    width: width,
                    child: NavbarAction(
                      label: _cuisine(s, cuisine),
                      onPressed: () =>
                          onOpen(PublicLegacyLinks.catalog(cuisine.$1)),
                      radius: 10,
                      hoverBackground: NavbarStyle.accent.withValues(
                        alpha: .16,
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          _cuisine(s, cuisine),
                          style: NavbarStyle.text(
                            13.6,
                            inline ? NavbarStyle.white : NavbarStyle.ink,
                            FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            );
          },
        ),
        const SizedBox(height: 8),
        NavbarAction(
          label: s.navbarAllCuisines,
          onPressed: () => onOpen(PublicLegacyLinks.catalog()),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: Text(
                    s.navbarAllCuisines,
                    style: NavbarStyle.text(
                      12.8,
                      inline ? NavbarStyle.accent : NavbarStyle.brown,
                      FontWeight.w700,
                    ),
                  ),
                ),
                const SizedBox(width: 4),
                Icon(
                  LucideIcons.chevronRight,
                  size: 14,
                  color: inline ? NavbarStyle.accent : NavbarStyle.brown,
                ),
              ],
            ),
          ),
        ),
      ],
    );
    final editorial = _Editorial(
      inline: inline,
      onPressed: () => onOpen(PublicLegacyLinks.page(['recomendaciones'])),
    );
    if (inline) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          discover,
          const SizedBox(height: 17.6),
          Divider(height: 1, color: Colors.white.withValues(alpha: .08)),
          const SizedBox(height: 16),
          cuisines,
          const SizedBox(height: 17.6),
          Divider(height: 1, color: Colors.white.withValues(alpha: .08)),
          const SizedBox(height: 16),
          editorial,
        ],
      );
    }
    return SizedBox(
      height: 390 * MediaQuery.textScalerOf(context).scale(1),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(flex: 120, child: discover),
          const SizedBox(width: 25.6),
          Expanded(
            flex: 100,
            child: Container(
              padding: const EdgeInsets.only(left: 25.6),
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(
                    color: NavbarStyle.brown.withValues(alpha: .1),
                  ),
                ),
              ),
              child: cuisines,
            ),
          ),
          const SizedBox(width: 25.6),
          Expanded(flex: 95, child: editorial),
        ],
      ),
    );
  }

  String _cuisine(AppLocalizations s, (String, String) cuisine) =>
      s.localeName == 'es' ? cuisine.$2 : s.homeCuisine(cuisine.$1);

  Widget _label(String value) => Padding(
    padding: const EdgeInsets.only(bottom: 8),
    child: Semantics(
      header: true,
      child: Text(
        value.toUpperCase(),
        style: NavbarStyle.text(
          10.24,
          inline ? NavbarStyle.accent : NavbarStyle.muted,
          FontWeight.w800,
        ),
      ),
    ),
  );

  Widget _item(
    String title,
    String description,
    IconData icon,
    Uri uri, {
    String? badge,
  }) => NavbarAction(
    label: title,
    onPressed: () => onOpen(uri),
    padding: const EdgeInsets.symmetric(horizontal: 11.2, vertical: 9.92),
    background: badge == null
        ? Colors.transparent
        : NavbarStyle.accent.withValues(alpha: .14),
    borderColor: badge == null
        ? Colors.transparent
        : NavbarStyle.accent.withValues(alpha: .35),
    hoverBackground: NavbarStyle.accent.withValues(alpha: .22),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 38,
          height: 38,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: NavbarStyle.accent.withValues(alpha: .16),
          ),
          child: Icon(
            icon,
            size: 20,
            color: inline ? NavbarStyle.accent : NavbarStyle.brown,
          ),
        ),
        const SizedBox(width: 12.8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 6,
                runSpacing: 4,
                children: [
                  Text(
                    title,
                    style: NavbarStyle.text(
                      15.04,
                      inline ? NavbarStyle.white : NavbarStyle.ink,
                      FontWeight.w700,
                    ).copyWith(height: 1.25),
                  ),
                  if (badge != null)
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: NavbarStyle.brown,
                        borderRadius: BorderRadius.circular(999),
                      ),
                      child: Text(
                        badge.toUpperCase(),
                        style: NavbarStyle.text(
                          9.28,
                          NavbarStyle.white,
                          FontWeight.w800,
                        ),
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 2),
              Text(
                description,
                style: NavbarStyle.text(
                  12.48,
                  inline
                      ? NavbarStyle.white.withValues(alpha: .65)
                      : NavbarStyle.muted,
                ).copyWith(height: 1.35),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

class _Editorial extends StatefulWidget {
  const _Editorial({required this.inline, required this.onPressed});
  final bool inline;
  final VoidCallback onPressed;
  @override
  State<_Editorial> createState() => _EditorialState();
}

class _EditorialState extends State<_Editorial> {
  bool _hover = false;
  @override
  Widget build(BuildContext context) {
    final s = AppLocalizations.of(context);
    return LayoutBuilder(
      builder: (context, constraints) {
        final style = NavbarStyle.text(
          12.8,
          NavbarStyle.accent,
          FontWeight.w700,
        );
        var wordWidth = 0.0;
        for (final word in s.navbarRead.split(' ')) {
          final painter = TextPainter(
            text: TextSpan(text: word, style: style),
            textScaler: MediaQuery.textScalerOf(context),
            textDirection: Directionality.of(context),
          )..layout();
          if (painter.width > wordWidth) {
            wordWidth = painter.width;
          }
          painter.dispose();
        }
        final horizontalPadding = ((constraints.maxWidth - wordWidth) / 2 - 2)
            .clamp(0.0, 19.2);
        return MouseRegion(
          onEnter: (_) => setState(() => _hover = true),
          onExit: (_) => setState(() => _hover = false),
          child: AnimatedContainer(
            duration: NavbarStyle.duration(context, 180),
            transform: Matrix4.translationValues(
              0,
              _hover && !MediaQuery.disableAnimationsOf(context) ? -2 : 0,
              0,
            ),
            constraints: const BoxConstraints(minHeight: 240),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              image: const DecorationImage(
                image: AssetImage('assets/navigation/editorial.png'),
                fit: BoxFit.cover,
              ),
              boxShadow: _hover
                  ? [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: .22),
                        blurRadius: 28,
                        offset: const Offset(0, 14),
                      ),
                    ]
                  : [],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: DecoratedBox(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Color(0xEB16100E),
                      Color(0x6B16100E),
                      Color(0x1F16100E),
                    ],
                    stops: [.22, .58, 1],
                  ),
                ),
                child: NavbarAction(
                  label: s.navbarRead,
                  onPressed: widget.onPressed,
                  radius: 18,
                  hoverBackground: Colors.transparent,
                  padding: EdgeInsets.symmetric(
                    horizontal: horizontalPadding,
                    vertical: 18.4,
                  ),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight:
                          ((constraints.hasBoundedHeight
                                      ? constraints.maxHeight
                                      : 240) -
                                  36.8)
                              .clamp(0.0, double.infinity),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          s.navbarEditorial.toUpperCase(),
                          style: NavbarStyle.text(
                            10.24,
                            NavbarStyle.accent,
                            FontWeight.w800,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          s.navbarEditorialTitle,
                          style: NavbarStyle.text(
                            16.32,
                            NavbarStyle.white,
                            FontWeight.w700,
                          ).copyWith(height: 1.3),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          s.navbarEditorialDesc,
                          style: NavbarStyle.text(
                            12.48,
                            NavbarStyle.white.withValues(alpha: .72),
                          ).copyWith(height: 1.45),
                        ),
                        const SizedBox(height: 12),
                        Wrap(
                          spacing: _hover ? 8 : 4,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            Text(
                              s.navbarRead,
                              style: NavbarStyle.text(
                                12.8,
                                NavbarStyle.accent,
                                FontWeight.w700,
                              ),
                            ),
                            const Icon(
                              LucideIcons.chevronRight,
                              size: 14,
                              color: NavbarStyle.accent,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

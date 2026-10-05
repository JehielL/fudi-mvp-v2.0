import 'package:flutter/material.dart';
import 'package:lucide_flutter/lucide_flutter.dart';

import '../../../app/l10n/generated/app_localizations.dart';
import '../../../design_system/design_system.dart';
import 'home_links.dart';

class HomeFooter extends StatelessWidget {
  const HomeFooter({super.key, required this.onOpen, required this.onHome});
  final ValueChanged<Uri> onOpen;
  final VoidCallback onHome;
  @override
  Widget build(BuildContext context) => Theme(
    data: FudiTheme.dark,
    child: Builder(
      builder: (context) {
        final s = AppLocalizations.of(context);
        Widget link(
          String label,
          VoidCallback action, {
          IconData icon = LucideIcons.arrowUpRight,
        }) => Align(
          alignment: Alignment.centerLeft,
          child: FudiButton(
            label: label,
            icon: icon,
            onPressed: action,
            variant: FudiButtonVariant.ghost,
          ),
        );
        Widget group(String title, List<Widget> links) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: Theme.of(context).textTheme.labelLarge),
            const SizedBox(height: 12),
            ...links,
          ],
        );
        return ColoredBox(
          color: FudiPalette.of(context).background,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 48),
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 1180),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    final groups = [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const FudiLogo(width: 96),
                          const SizedBox(height: 20),
                          link(
                            'reservas@fudi.es',
                            () => onOpen(
                              Uri(scheme: 'mailto', path: 'reservas@fudi.es'),
                            ),
                            icon: LucideIcons.mail,
                          ),
                          link(
                            '+34 643 90 70 51',
                            () =>
                                onOpen(Uri.parse('https://wa.me/34643907051')),
                            icon: LucideIcons.phone,
                          ),
                        ],
                      ),
                      group(s.navExplore, [
                        link(s.navHome, onHome, icon: LucideIcons.arrowUp),
                        link(
                          s.homeQuickRestaurants,
                          () => onOpen(HomeLinks.page(['restaurant-list'])),
                        ),
                        link(
                          s.navbarRecommendations,
                          () => onOpen(HomeLinks.page(['recomendaciones'])),
                        ),
                        link(
                          'Founding 50',
                          () => onOpen(HomeLinks.page(['founding-50'])),
                        ),
                      ]),
                      group(s.navbarHouse, [
                        link(
                          s.navbarWho,
                          () => onOpen(HomeLinks.page(['about-us'])),
                        ),
                        link(
                          s.navbarEditorial,
                          () => onOpen(HomeLinks.page(['recomendaciones'])),
                        ),
                      ]),
                      group(s.homeFooterLegal, [
                        link(
                          s.homeFooterTerms,
                          () => onOpen(HomeLinks.page(['legal', 'terms'])),
                        ),
                        link(
                          s.homeFooterPrivacy,
                          () => onOpen(HomeLinks.page(['legal', 'privacy'])),
                        ),
                        link(
                          'RGPD',
                          () => onOpen(
                            Uri(scheme: 'mailto', path: 'reservas@fudi.es'),
                          ),
                          icon: LucideIcons.mail,
                        ),
                      ]),
                    ];
                    final enlarged =
                        MediaQuery.textScalerOf(context).scale(1) > 1.5;
                    final columns = enlarged || constraints.maxWidth < 560
                        ? 1
                        : constraints.maxWidth < 1000
                        ? 2
                        : 4;
                    final width =
                        (constraints.maxWidth - (columns - 1) * 24) / columns;
                    return Wrap(
                      spacing: 24,
                      runSpacing: 32,
                      children: [
                        for (final g in groups)
                          SizedBox(width: width, child: g),
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
        );
      },
    ),
  );
}

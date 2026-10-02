\# FÜDI Angular → Flutter Migration



\## Objective



Replace the current Angular frontend with a modern Flutter application while preserving the existing FÜDI backend and business functionality.



The migration is not intended to reproduce the legacy UI.



The migration is also an opportunity to redesign FÜDI as a mobile-first product.



\---



\# Repositories



\## fudi-angular-legacy



Legacy/reference implementation.



Status:



MAINTENANCE / READ ONLY



\---



\## fudi-backend



Existing backend.



Status:



ACTIVE



Backend changes should be avoided during initial frontend migration unless required.



Authentication changes for native applications are intentionally postponed.



\---



\## fudi-flutter



New frontend.



Status:



ACTIVE MIGRATION TARGET



Platforms:



\- Android

\- iOS

\- Web



\---



\# Migration phases



\## FOUNDATION



\- MIG-000 Flutter foundation

\- MIG-001 API/OpenAPI integration

\- MIG-002 FÜDI Design System foundation

\- MIG-003 Navigation and application shell



\## PUBLIC PRODUCT



\- MIG-010 Home / Discovery

\- MIG-011 Restaurant Detail

\- MIG-012 Restaurant Menu

\- MIG-013 Booking Availability

\- MIG-014 Booking Flow

\- MIG-015 Booking Confirmation



\## AUTHENTICATED PRODUCT



\- MIG-020 Native Authentication

\- MIG-021 Account

\- MIG-022 My Bookings

\- MIG-023 Favorites



\## COMMUNITY



\- MIG-030 Recommendations

\- MIG-031 Ratings / Likes

\- MIG-032 Restaurant Following



\## BUSINESS



\- MIG-040 Business Shell

\- MIG-041 Restaurant Management

\- MIG-042 Menu Management

\- MIG-043 Booking Management



\## FUTURE SOCIAL FEATURES



\- MIG-050 Feed

\- MIG-051 User Profiles

\- MIG-052 Followers

\- MIG-053 Posts

\- MIG-054 Conversations

\- MIG-055 Notifications



\---



\# Migration status



| Task | Status |

|---|---|

| Flutter project bootstrap | DONE |

| MIG-000 Foundation | DONE |

| MIG-001 API integration | DONE |

| MIG-002 Design System | DONE |

| MIG-003 Application shell | DONE |


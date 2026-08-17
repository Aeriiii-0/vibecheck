# VibeCheck

> Smart, disciplined budgeting. VibeCheck locks away your fixed bills and savings goals (the Vault) so you always know your real-time Safe-to-Spend limit.

---

## Features

* **The Vault:** Automatically isolates essential bills and savings goals from your total balance.
* **Safe-to-Spend Dashboard:** Real-time calculation of your remaining daily spending allowance.
* **Fast Logging:** Custom numeric keypad for instant expense entry.
* **Hardware Security:** Biometric login (FaceID/Fingerprint) and encrypted local storage.
* **Cloud Sync:** Multi-device data synchronization powered by Supabase.

---

## Tech Stack

```text
   [ Flutter + Dart ]           [ BLoC + GetIt ]           [ Supabase ]
   Cross-Platform UI          State Management & DI         Database & Auth

```

* **Frontend Framework:** Flutter (Dart) using Clean Architecture (Feature-First)
* **State Management & DI:** flutter_bloc, get_it
* **Backend & Database:** Supabase (PostgreSQL, Row Level Security, GoTrue Auth)
* **Local Security:** flutter_secure_storage, local_auth

---

## How It Calculates

1. **Locked Funds** = Bills + Savings Goals
2. **Safe-to-Spend Balance** = Total Allowance - Locked Funds - Current Period Expenses
3. **Daily Allowance** = Safe-to-Spend Balance / Remaining Days in Allowance Period

---

## Development Roadmap & Deliverables

* **Phase 1: Base Setup & Authentication**
Project initialization, folder architecture, design system, Supabase auth, and biometric login.
* **Phase 2: Vault Engine**
Database schema, RLS policies, and locked funds UI card.
* **Phase 3: Safe-to-Spend Dashboard**
Dynamic daily limit calculations, allowance period management, and main dashboard screen.
* **Phase 4: Expense Tracking**
Custom keypad modal bottom sheet, expense categories, and real-time balance updates.
* **Phase 5: Security & Polish**
App lifecycle background lock handling, user settings, and secure data reset functions.

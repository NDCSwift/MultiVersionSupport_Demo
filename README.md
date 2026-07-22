# 🧩 MultiVersionSupport Demo — Final

A SwiftUI card-browsing app that shows how to ship one codebase across iOS versions — gracefully degrading new APIs and cleanly gating features that have no fallback.

---

## 🤔 What this is
CardStack is a small SwiftUI app (grid → detail → spatial browser) built to demonstrate real multi-version support patterns instead of toy examples. This is the **finished/refactored** branch: the repeated `if #available(iOS 26, *) { glassEffect } else { ultraThinMaterial }` checks that were scattered across every view have been consolidated into a single `cardSurface()` view modifier (`Surfaces.swift`), and the one iOS 26-only feature (`SpatialCardBrowser`) is gated at the type level with `@available` instead of an inline branch.

## ✅ Why you'd use it
- **Centralized version gating** — `CardSurface` / `cardSurface()` shows how to move a repeated `#available` check out of every view and into one reusable modifier.
- **Type-level gating for non-degradable features** — `SpatialCardBrowser` demonstrates gating an entire view with `@available` when there's no sensible fallback, instead of littering call sites with branches.
- **Before/after comparison** — pair this branch with `Starter` to see exactly what the refactor changes and why it's worth doing.

## 📺 Watch on YouTube
[![Watch on YouTube](https://img.shields.io/badge/YouTube-Watch%20the%20Tutorial-red?style=for-the-badge&logo=youtube)](https://youtu.be/2JXh6gd815Y)

> This project was built for the [NoahDoesCoding YouTube channel](https://www.youtube.com/@NoahDoesCoding).

---

## 🚀 Getting Started

### 1. Clone
```bash
git clone https://github.com/NDCSwift/MultiVersionSupport_Demo.git
```

### 2. Open
Launch `MultiVersionSupport_Demo.xcodeproj` in Xcode.

### 3. Team
Select your own Team under **Signing & Capabilities**.

### 4. Bundle ID
Change `PRODUCT_BUNDLE_IDENTIFIER` to something unique to you.

## 🛠️  Notes
- The `glassEffect` path only runs on iOS 26+; everything else falls back to `.ultraThinMaterial`.
- Lower the deployment target below iOS 26 in project settings to actually exercise the fallback branch on a simulator/device running an older SDK.
- `SpatialCardBrowser` has no fallback on purpose — it's only reachable when `#available(iOS 26, *)` is true.

## 📦 Requirements
- Xcode 26 or later
- iOS 26 SDK (for the `glassEffect` APIs)
- Swift 5

📺 [Watch the guide on YouTube](https://youtu.be/2JXh6gd815Y)

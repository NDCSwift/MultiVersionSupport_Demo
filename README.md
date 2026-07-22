# 🧩 MultiVersionSupport Demo — Starter

A SwiftUI card-browsing app used as the starting point for a multi-version support tutorial — every screen repeats its own inline `#available` check instead of centralizing it.

---

## 🤔 What this is
CardStack is a small SwiftUI app (grid → detail → spatial browser). This is the **starting-point** branch: `FeaturedBannerView`, `CardCellView`, and every section of `CardDetailView` each duplicate the same `if #available(iOS 26, *) { glassEffect } else { ultraThinMaterial }` block. It's the "before" state for the refactor shown on the `Final` branch.

## ✅ Why you'd use it
- **See the problem before the fix** — every card and detail row duplicates its own availability check, making the case for a shared modifier obvious.
- **Type-level gating example** — `SpatialCardBrowser` is already gated with `@available(iOS 26, *)` at the type level, showing the pattern for features with no fallback.
- **Follow-along base** — clone this branch to code the refactor yourself alongside the tutorial, then compare your result against `Final`.

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
- Every `#available(iOS 26, *)` check here is duplicated per-view; that repetition is intentional — it's what the tutorial refactors away on the `Final` branch.
- Lower the deployment target below iOS 26 in project settings to exercise the `.ultraThinMaterial` fallback branch.

## 📦 Requirements
- Xcode 26 or later
- iOS 26 SDK (for the `glassEffect` APIs)
- Swift 5

📺 [Watch the guide on YouTube](https://youtu.be/2JXh6gd815Y)

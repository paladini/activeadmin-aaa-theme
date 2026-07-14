# Project: Active Admin AAA Theme (Apple-inspired Aesthetic ActiveAdmin)

**Vision:** A premium, ultra-modern, lightweight, and modular theme for Active Admin in Ruby on Rails, featuring a contemporary design inspired by Apple's latest UI/UX principles (refined typography, HSL-based styling, glassmorphism, rounded corners, dark mode, and smooth micro-animations).
**For:** Ruby on Rails developers who want a beautiful, modern admin panel out-of-the-box instead of the old-school Active Admin UI.
**Solves:** The outdated, boxy, and corporate aesthetic of default Active Admin layouts, while keeping customization fast, lightweight, and modular.

## Goals

- **Apple-Like Aesthetics:** Provide a stunning, clean visual experience (rounded corners, subtle gradients, glassmorphism, micro-animations, modern font stacks like Inter/Outfit).
- **Dark Mode Support:** Clean, native dark mode built-in.
- **Fast & Lightweight:** Minimum overhead, pure CSS/SCSS with zero dependencies on heavy JavaScript libraries.
- **Modular Customization:** Use CSS custom properties (variables) to allow easy developer customization (branding, colors, sizes).
- **Tested & Production-Ready:** Includes a dummy Rails application to test integration, and verified code styling.

## Tech Stack

**Core:**
- Framework: Active Admin (compatible with 3.x and 4.x beta)
- Language: Ruby (3.x), HTML, CSS/SCSS, Javascript (Vanilla ES6)
- Engine: Rails Engine Gem (packaged for public release on RubyGems)

**Key dependencies:**
- `activeadmin` (>= 3.0)
- `sassc-rails` or Tailwind CSS (depending on target AA version)

## Scope

**v1 includes:**
- A customizable theme gem `activeadmin-aaa-theme`
- Premium typography integration (System Font Stack / Inter)
- Apple-like design overhaul:
  - Header / Navigation (Sidebar style or refined top bar)
  - Tables & Index pages (rounded cards, spacing, hover rows)
  - Forms & Inputs (glassmorphism look, custom borders, focus states)
  - Sidebar filters (retractable or modern card-based layout)
  - Status Tags & Badges (refined pill styling, vibrant HSL colors)
- Responsive mobile & tablet layout
- Modern dark mode support out-of-the-box (activated via system preference or toggle)
- Dummy test Rails application inside the gem (`test/dummy` or `spec/dummy`) for verification.

**Explicitly out of scope:**
- Complete Arbre DSL replacement (we build on top of Arbre's default HTML output to guarantee compatibility).
- Heavy JS frameworks (React, Vue) within the admin panel.

## Constraints
- Must be packaged as a clean Ruby Gem that developers can install easily.
- No heavy third-party assets (no jQuery overrides where possible, pure CSS/JS).

# Roadmap

**Current Milestone:** Milestone 1: Project Setup and Skeleton
**Status:** Planning

---

## Milestone 1: Project Setup and Skeleton

**Goal:** Create a fully functional gem structure with a Rails dummy application configured with Active Admin for development and testing.
**Target:** Ready for theme implementation

### Features

**Gem Scaffolding** - PLANNED
- Initialize Ruby gem structure as a Rails engine
- Setup `.gemspec` and `Gemfile` dependencies
- Setup standard development tools (RSpec/Minitest, RuboCop)

**Dummy Rails Application** - PLANNED
- Generate dummy Rails app under `test/dummy` or `spec/dummy`
- Install Active Admin (supporting v3.x stable and v4.x pre-release)
- Setup database, seeds, and default AdminUser resources
- Verify default Active Admin works properly

---

## Milestone 2: Design Foundation & Global Layout

**Goal:** Establish the CSS/SCSS architecture, modern color palette (HSL-based tokens), premium typography, and base layout overhaul (sidebar/header).
**Target:** Visual structure complete

### Features

**Skins & Design Tokens** - PLANNED
- Set up CSS custom properties (variables) for theme customizability
- Create harmonious Apple-inspired palettes (light HSL, sleek dark HSL)
- Implement Outfit/Inter typography hierarchy

**Global Layout Restructuring** - PLANNED
- Replace the legacy header with a floating or sidebar-integrated navigation
- Implement premium card borders and glassmorphism panel containers
- Smooth transition micro-animations for layout shifts

---

## Milestone 3: Element Overhauls

**Goal:** Redesign tables, forms, index pages, sidebar filters, buttons, and status tags to match the Apple aesthetic.
**Target:** Key Active Admin pages styled

### Features

**Index Pages & Tables** - PLANNED
- Rounded corners for data grids
- Soft background hover effects on rows
- Replaced hard borders with subtle HSL borders and card-based grouping

**Forms & Inputs** - PLANNED
- Redesigned forms with floating or modern focus outlines
- Custom select dropdowns and checkbox wrappers
- Inline field errors with clean, non-disruptive warning highlights

**Status Tags & Components** - PLANNED
- Soft badge styles with refined text weights
- Apple-like pill shapes for tags

---

## Milestone 4: Dark Mode & Premium Polish

**Goal:** Integrate a seamless dark mode stylesheet and implement micro-animations for interactive UI components.
**Target:** Visuals fully adaptive and interactive

### Features

**Native Dark Mode** - PLANNED
- Full stylesheet override using media query `(prefers-color-scheme: dark)`
- Optional dark mode manual toggle hook
- Custom asset variables adjusted for low-light legibility

**Micro-animations** - PLANNED
- Hover states for all buttons and menu items with ease-out timing
- Smooth collapse/expand animations for sidebar and filters
- Loading spinner / action feedback improvements

---

## Milestone 5: Verification & Open-Source Release

**Goal:** Test across Rails environments, document installation, write README, and package for RubyGems.
**Target:** Shipped Gem

### Features

**Theme Compatibility Tests** - PLANNED
- Test asset loading under Sprockets, Webpacker, and Importmaps
- Verify responsiveness on mobile, tablet, and desktop viewports

**Open Source Packaging** - PLANNED
- Write comprehensive `README.md` with installation guides and variable override documentation
- Document custom styling extensions and how to customize theme colors
- Package gem for RubyGems release

---

## Future Considerations

- Custom dashboard widgets library matching the theme
- Pre-built charts styling matching the Apple-inspired palette
- Multi-theme configuration (e.g., Apple Classic, Silicon, Graphite)

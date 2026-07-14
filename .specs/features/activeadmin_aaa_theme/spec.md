# Feature: Active Admin AAA Theme Specification

## Problem Statement

Active Admin is the most popular admin dashboard framework for Ruby on Rails, but its default visual style is outdated, boxy, and corporate. Modern developers and users expect premium, fluid, and responsive dashboard experiences that align with contemporary UI/UX design theories (such as Apple's clean design, high contrast, smooth transitions, and dark mode support). This theme will deliver a stunning, lightweight visual overhaul without requiring intrusive modifications to Active Admin's views.

## Goals

- [ ] **Modern Apple Aesthetic:** Overhaul the typography, spacing, navigation, cards, and UI controls to mimic premium interfaces.
- [ ] **Dual Theme Support:** Standard HSL-based light theme and dark theme (using both prefers-color-scheme and optional class targets).
- [ ] **Performance & Modularity:** Implement styling purely through custom variables and minimal CSS overrides, avoiding bloated external libraries.
- [ ] **Open Source Readiness:** Ensure the project is highly discoverable (SEO/GEO) and ready for community contributions.

## Out of Scope

| Feature     | Reason         |
| ----------- | -------------- |
| Re-writing Active Admin core ruby classes / templates | Too brittle across upgrades; styling should overlay existing markup where possible. |
| Non-asset packaging | The gem must follow Rails Engine asset packaging conventions. |

---

## User Stories

### P1: Apple-Inspired CSS Theme Foundations ⭐ MVP

**User Story**: As a Rails developer, I want to include the theme in my asset pipeline so that all admin panels instantly gain a modern Apple-like appearance.

**Why P1**: This is the core visual value of the project.

**Acceptance Criteria**:
1. WHEN the gem is installed and imported in `active_admin.scss` THEN the styling SHALL load successfully.
2. WHEN the dashboard is viewed THEN fonts, borders, and margins SHALL match the Outfit/Inter system font styles.
3. WHEN elements are hovered THEN subtle ease-out micro-animations SHALL occur.

**Independent Test**: Can view the dummy application dashboard and verify fonts/spacing apply correctly.

---

### P1: Sidebar & Global Layout Transformation ⭐ MVP

**User Story**: As an admin user, I want a sidebar navigation instead of a top-bar menu so that I have more vertical space and a more modern navigation layout.

**Why P1**: Sidebar layouts are the industry standard for modern dashboards.

**Acceptance Criteria**:
1. WHEN rendering the page THEN the main navigation header SHALL be positioned as a left-hand vertical sidebar on desktop screens.
2. WHEN viewed on mobile screens THEN the sidebar SHALL collapse into a responsive top bar with a hamburger menu.

**Independent Test**: Resize browser window and verify header transitions from left sidebar (desktop) to toggle menu (mobile).

---

### P2: Clean Elements and Status Badges

**User Story**: As an admin user, I want tables, forms, and status badges to be highly legible and styled with soft rounded styles.

**Why P2**: Form fields and tables make up 90% of admin tasks.

**Acceptance Criteria**:
1. WHEN viewing tables THEN alternating row highlights and soft card wrappers SHALL be displayed.
2. WHEN input fields gain focus THEN they SHALL display a smooth, colored shadow outline.
3. WHEN status tags are rendered THEN they SHALL use soft, readable HSL pill backgrounds.

**Independent Test**: Go to `/admin/posts` in dummy app, create/view posts, check styles of tables and inputs.

---

### P2: Native Dark Mode

**User Story**: As a low-light user, I want the theme to respect my system's dark preference or let me activate dark mode so that it doesn't cause eye strain.

**Why P2**: Crucial accessibility and usability requirement for modern products.

**Acceptance Criteria**:
1. WHEN the system prefers dark mode THEN all dashboard colors SHALL adapt to a sleek dark palette.
2. WHEN dark mode is active THEN text-to-background contrast ratio SHALL meet WCAG guidelines.

**Independent Test**: Toggle system dark mode setting and verify dashboard colors update dynamically.

---

### P3: Open Source, SEO/GEO & Community Setup

**User Story**: As an open-source contributor, I want a well-documented repository with licensing and contribution guidelines so that I can easily help improve the project.

**Why P3**: Necessary for open-source health and search engine/AI agent discoverability.

**Acceptance Criteria**:
1. WHEN visiting the repository THEN the README.md SHALL contain an AI/Agent-readable summary at the top, clear installation instructions, and HSL variable customizability guides.
2. WHEN looking at repository files THEN standard open-source docs (`LICENSE`, `CONTRIBUTING.md`, `CODE_OF_CONDUCT.md`) SHALL be present.

**Independent Test**: Verify these files are generated and contain proper formatting.

---

## Edge Cases

- WHEN an input has an error THEN it SHALL render a soft red focus ring and clean error text.
- WHEN a table has zero records THEN the blank slate message SHALL be center-aligned and styled as a clean card.

---

## Requirement Traceability

| Requirement ID | Story                                       | Phase  | Status  |
| -------------- | ------------------------------------------- | ------ | ------- |
| THEME-01       | P1: Apple-Inspired CSS Theme Foundations    | Tasks  | Pending |
| LAYOUT-01      | P1: Sidebar & Global Layout Transformation  | Tasks  | Pending |
| ELEM-01        | P2: Clean Elements and Status Badges        | Tasks  | Pending |
| DARK-01        | P2: Native Dark Mode                        | Tasks  | Pending |
| OSS-01         | P3: Open Source, SEO/GEO & Community Setup  | Tasks  | Pending |

---

## Success Criteria

- [ ] Active Admin dummy application builds and starts successfully with the new theme gem loaded.
- [ ] Visual audits show zero boxy default styles, and all elements align to Apple-like design guidelines (curves, HSL variables, fluid spacing).
- [ ] Lighthouse or accessibility audits confirm WCAG 2.1 compliance for text contrast in both light and dark modes.
- [ ] README.md, LICENSE, CONTRIBUTING.md, and CODE_OF_CONDUCT.md are in place and SEO/GEO optimized.

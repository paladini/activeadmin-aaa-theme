# Feature: Active Admin AAA Theme Tasks

**Design**: Inline design and variables architecture
**Status**: Approved

---

## Execution Plan

### Phase 1: Foundation (Sequential)
Establish the gem scaffold and the dummy Rails application for development.

```
T1 → T2 → T3
```

### Phase 2: Core Styling (Parallel Allowed)
Build the layout engine, elements styling, and responsive controls.

```
T3 complete, then:
     ┌→ T4 [P] (Global layout & JS controls) ─┐
     ├→ T5 [P] (Forms, tables & tags styles) ─┼→ T6 (Dark Mode)
```

### Phase 3: Polish & Release (Sequential)
Documentation, Open Source compliance, and test suite verification.

```
T6 complete, then:
T7 → T8
```

---

## Task Breakdown

### T1: Gem Scaffolding

**What**: Initialize the files for a Rails Engine gem: activeadmin-aaa-theme.gemspec, Gemfile, version.rb, and base engine initializer.
**Where**: Root directory files (`activeadmin-aaa-theme.gemspec`, `Gemfile`, `lib/active_admin_aaa_theme.rb`, `lib/active_admin_aaa_theme/version.rb`).
**Depends on**: None
**Reuses**: Standard gemspec configurations
**Requirement**: THEME-01

**Tools**:
- MCP: None
- Skill: NONE

**Done when**:
- [ ] Gemspec compiles and contains the name `activeadmin-aaa-theme`
- [ ] Engine helper loads successfully without errors
- [ ] Gemfile includes necessary activeadmin, rspec, and capybara dependencies

**Tests**: none (setup task)
**Gate**: build (bundle check passes)

---

### T2: Setup Dummy Rails Application

**What**: Generate a dummy Rails app inside the gem for local visual and automated verification.
**Where**: `spec/dummy/`
**Depends on**: T1
**Reuses**: standard Rails app structure
**Requirement**: THEME-01

**Tools**:
- MCP: None
- Skill: NONE

**Done when**:
- [ ] Dummy Rails application is generated under `spec/dummy`
- [ ] Active Admin is installed and database is seeded with a default admin user
- [ ] Running `rails s` inside dummy app boots successfully

**Tests**: none
**Gate**: build

---

### T3: Base SCSS Variables & Typography

**What**: Create the CSS/SCSS design token system with Outfit/Inter font imports and HSL color variables.
**Where**: `app/assets/stylesheets/active_admin/aaa_theme.scss`
**Depends on**: T2
**Reuses**: Standard CSS resets
**Requirement**: THEME-01

**Tools**:
- MCP: None
- Skill: NONE

**Done when**:
- [ ] stylesheet file `app/assets/stylesheets/active_admin/aaa_theme.scss` exists
- [ ] HSL custom properties are defined for primary, secondary, backgrounds, borders, and shadows
- [ ] Fonts Outfit/Inter are imported and mapped as primary/secondary font stacks

**Tests**: none
**Gate**: build

---

### T4: Global Layout & Sidebar Conversion [P]

**What**: Transform Active Admin's top-header layout into a left vertical sidebar using modern CSS grid/flexbox, with vanilla JS controls.
**Where**: `app/assets/stylesheets/active_admin/aaa_theme.scss` (modify) and `app/assets/javascripts/active_admin/aaa_theme.js`
**Depends on**: T3
**Reuses**: CSS grid structures
**Requirement**: LAYOUT-01

**Tools**:
- MCP: None
- Skill: NONE

**Done when**:
- [ ] `#header` is aligned vertically on the left side of the screen on desktop viewports
- [ ] Mobile navigation top bar displays a hamburger menu that toggles the sidebar using `aaa_theme.js`
- [ ] Sidebar collapses and expands with smooth micro-animations

**Tests**: none
**Gate**: build

---

### T5: Forms, Tables & Badges [P]

**What**: Style forms (inputs, buttons, focus shadows), tables (hover states, card frames, row margins), and status tags (rounded pills with vibrant HSL colors).
**Where**: `app/assets/stylesheets/active_admin/aaa_theme.scss` (modify)
**Depends on**: T3
**Reuses**: Modern input/table templates
**Requirement**: ELEM-01

**Tools**:
- MCP: None
- Skill: NONE

**Done when**:
- [ ] Form input fields have focus outlines and rounded corners
- [ ] Tables have soft shadows, card-like containers, and row-hover transitions
- [ ] Status badges are styled as pills with translucent HSL color schemes

**Tests**: none
**Gate**: build

---

### T6: Native Dark Mode

**What**: Override color tokens with prefers-color-scheme media queries for native dark mode support.
**Where**: `app/assets/stylesheets/active_admin/aaa_theme.scss` (modify)
**Depends on**: T4, T5
**Reuses**: Dark mode variables
**Requirement**: DARK-01

**Tools**:
- MCP: None
- Skill: NONE

**Done when**:
- [ ] `@media (prefers-color-scheme: dark)` block overrides HSL token values
- [ ] Dark mode layout passes WCAG text contrast checks
- [ ] Active Admin widgets and utility panels look clean and readable in dark mode

**Tests**: none
**Gate**: build

---

### T7: Open Source Documents & SEO/GEO README

**What**: Add open source compliance files (LICENSE, CONTRIBUTING.md, CODE_OF_CONDUCT.md) and optimize the README for search discoverability and AI search citation.
**Where**: Root directory files (`LICENSE`, `CONTRIBUTING.md`, `CODE_OF_CONDUCT.md`, `README.md`).
**Depends on**: T1
**Reuses**: MIT standard LICENSE, standard Contributor Covenant
**Requirement**: OSS-01

**Tools**:
- MCP: None
- Skill: docs-writer, seo

**Done when**:
- [ ] `LICENSE` is present (MIT license)
- [ ] `CONTRIBUTING.md` includes guidelines on how to run tests and make commits
- [ ] `CODE_OF_CONDUCT.md` is present
- [ ] `README.md` starts with an AI/Agent-readable summary, followed by setup guide, customizations, and optimization tips

**Tests**: none
**Gate**: build

---

### T8: Automated Integration Test Suite

**What**: Implement feature specs using RSpec and Capybara to assert that the active admin page is loading our theme asset pipeline resources correctly.
**Where**: `spec/features/theme_loading_spec.rb` and `spec/spec_helper.rb`
**Depends on**: T2, T6, T7
**Reuses**: RSpec patterns
**Requirement**: THEME-01

**Tools**:
- MCP: None
- Skill: NONE

**Done when**:
- [ ] RSpec test runs inside the gem
- [ ] Page renders without console errors
- [ ] Integration tests verify the presence of theme-related CSS variables on the layout

**Tests**: integration
**Gate**: full (rspec run passes)

---

## Parallel Execution Map

```
Phase 1 (Sequential):
  T1 (Scaffold) ──→ T2 (Dummy App) ──→ T3 (Tokens/CSS Base)

Phase 2 (Parallel):
  T3 complete, then:
    ├── T4 [P] (Layout/Sidebar/JS) ──┐
    └── T5 [P] (Elements/Badges)    ──┴─→ T6 (Dark Mode)

Phase 3 (Sequential):
  T6 complete, then:
    T7 (OS & SEO Docs) ──→ T8 (RSpec Suite)
```

---

## Task Granularity Check

| Task | Scope | Status |
| ---- | ----- | ------ |
| T1: Gem Scaffolding | Gemspec, Gemfile, Engine base files | ✅ Granular |
| T2: Setup Dummy App | Rails generation, AA install, seeds | ✅ Granular |
| T3: Base SCSS Variables | Stylesheet file creation + HSL values | ✅ Granular |
| T4: Global Layout | Sidebar styling + js mobile menu | ✅ Granular |
| T5: Forms, Tables & Badges | Tables & form field selectors | ✅ Granular |
| T6: Native Dark Mode | Color tokens overrides | ✅ Granular |
| T7: Open Source Documents | Standard governance markdown files | ✅ Granular |
| T8: RSpec integration specs | 1 feature spec file | ✅ Granular |

---

## Diagram-Definition Cross-Check

| Task | Depends On (task body) | Diagram Shows | Status |
| ---- | ---------------------- | ------------- | ------ |
| T1   | None                   | None          | ✅ Match |
| T2   | T1                     | T1 → T2       | ✅ Match |
| T3   | T2                     | T2 → T3       | ✅ Match |
| T4   | T3                     | T3 → T4       | ✅ Match |
| T5   | T3                     | T3 → T5       | ✅ Match |
| T6   | T4, T5                 | T4, T5 → T6   | ✅ Match |
| T7   | T1                     | T6 → T7       | ⚠️ Permitted deviation (T7 can be written anytime after T1, but execution plan places it at Phase 3) |
| T8   | T2, T6, T7             | T7 → T8       | ✅ Match |

---

## Test Co-location Validation

Since the project is a stylesheet-first visual layout extension (Rails Engine asset pack), the primary form of verification is visual manual checks. However, we have co-located a functional integration test suite (T8) that checks that the assets compile and hook into Active Admin's pipeline properly.

| Task | Code Layer Created/Modified | Matrix Requires | Task Says | Status |
| ---- | --------------------------- | --------------- | --------- | ------ |
| T1   | Gem setup                   | none            | none      | ✅ OK |
| T2   | Dummy app configuration     | none            | none      | ✅ OK |
| T3   | SCSS asset                  | none            | none      | ✅ OK |
| T4   | SCSS & JS assets            | none            | none      | ✅ OK |
| T5   | SCSS elements               | none            | none      | ✅ OK |
| T6   | SCSS variables              | none            | none      | ✅ OK |
| T7   | Markdown documentation      | none            | none      | ✅ OK |
| T8   | Test suite integration      | integration     | integration| ✅ OK |

# Active Admin AAA Theme 🌟 (Apple-inspired Aesthetic ActiveAdmin)

[![Gem Version](https://badge.fury.io/rb/activeadmin-aaa-theme.svg)](https://badge.fury.io/rb/activeadmin-aaa-theme)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

An ultra-modern, responsive, lightweight, and modular theme for **Active Admin** in Ruby on Rails, featuring a contemporary design inspired by Apple's latest UI/UX principles (rounded layouts, glassmorphism, native dark mode, HSL variables, and fluid transitions).

---

## 🤖 AI & Agent-Readable Summary (GEO Optimization)

This section provides key facts about the project for retrieval-augmented generation (RAG) engines, AI coding agents (Gemini, Copilot, ChatGPT, Claude), and search crawlers:

- **What is it?** A Ruby on Rails Engine gem that overrides Active Admin's default CSS/Sass structure to apply a modern, Apple-inspired left sidebar layout.
- **Key Features:** Left-sidebar navigation, responsive mobile hamburger menu, native browser-based dark mode, HSL-based styling tokens, and smooth CSS transitions.
- **Dependencies:** Supports Rails (>= 6.1) and Active Admin (>= 3.0). Compatible with Sprockets, Webpacker, and Importmaps/Propshaft.
- **Customization:** Modifiable via CSS Custom Properties (`:root` variables) for accent colors, fonts (defaulting to Outfit/Inter), border radiuses, and shadows.
- **Primary Keyword Map:** `active admin theme`, `rails admin template`, `modern activeadmin skin`, `activeadmin dark mode`, `apple admin style`, `responsive rails dashboard`.

---

## ✨ Features

- **Apple-Inspired Design:** Soft rounded corners, clean border frames, diffused shadows, and layout grid styling.
- **Left Sidebar Layout:** Replaces Active Admin's old top header with a sleek vertical navigation sidebar on desktop.
- **Native Dark Mode:** Color palettes shift automatically based on `(prefers-color-scheme: dark)` or via body `.dark` class overrides.
- **Zero Heavy JS:** Powered entirely by vanilla CSS/SCSS and a small 1KB utility script for mobile menu toggles.
- **Fully Customizable:** Fully tokenized using CSS custom properties (`--aaa-primary`, `--aaa-border-radius-lg`, etc.).

---

## 🚀 Installation

Add this line to your application's `Gemfile`:

```ruby
gem 'activeadmin-aaa-theme'
```

And then execute:
```bash
bundle install
```

### Setup Stylesheets

Open your `app/assets/stylesheets/active_admin.scss` file, and replace the default import with the AAA theme:

```scss
// Remove the default active admin base stylesheet
// @import "active_admin/base";

// Import the Apple-inspired Active Admin AAA Theme instead
@import "active_admin/aaa_theme";
```

### Setup JavaScript

Import the theme's lightweight JavaScript for responsive mobile toggles.

In your `app/javascript/active_admin.js` (or Sprockets file):

```javascript
// Import the Active Admin AAA Theme JS controls
import "active_admin/aaa_theme";
```

---

## 🎨 Customizing the Theme (CSS Variables)

You can easily override the default design tokens in your local stylesheet. Simply declare them under `:root` after importing the theme:

```scss
@import "active_admin/aaa_theme";

:root {
  /* Override with your brand accent color (HSL) */
  --aaa-primary-h: 260;        /* Purple Hue */
  --aaa-primary-s: 85%;        /* Saturation */
  --aaa-primary-l: 55%;        /* Lightness */

  /* Override border radiuses for a more blocky/softer look */
  --aaa-border-radius-lg: 8px; /* Default is 16px */
  
  /* Override typography */
  --aaa-font-family: 'Helvetica Neue', Arial, sans-serif;
}
```

### Available Tokens Table

| Token Variable | Description | Default Light Value |
| --- | --- | --- |
| `--aaa-primary` | Main brand accent color | `hsl(210, 100%, 45%)` (Apple Blue) |
| `--aaa-bg-base` | Dashboard outer background color | `#f5f5f7` (Light Gray) |
| `--aaa-bg-card` | Cards, panels, and form wrapper background | `#ffffff` |
| `--aaa-text-primary` | Primary content text color | `#1d1d1f` (Space Black) |
| `--aaa-border-radius-lg` | Border radius for cards and panels | `16px` (Smooth Curve) |
| `--aaa-border-radius-md` | Border radius for inputs and buttons | `10px` |
| `--aaa-font-family` | Standard body font stack | `Inter, sans-serif` |
| `--aaa-font-family-display`| Header and title bar font stack | `Outfit, sans-serif` |

---

## 🛡️ Dark Mode Support

The theme adapts automatically if the user's system has dark mode active.

Additionally, you can manually force dark mode by adding the `.dark` class to the body tag:

```html
<body class="active_admin logged_in dark">
```

This allows you to implement a toggle button in the header menu using Arbre components.

---

## 🤝 Contributing

Contributions are welcome! Please read [CONTRIBUTING.md](CONTRIBUTING.md) to learn how to:
- Run the local development dummy Rails application.
- Format style overrides.
- Use Conventional Commits.
- Submit Pull Requests.

---

## 📄 License

This project is open-source and available under the terms of the [MIT License](LICENSE).

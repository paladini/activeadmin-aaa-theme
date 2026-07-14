# Contributing to Active Admin AAA Theme

Thank you for your interest in contributing to the **Active Admin AAA Theme**! We welcome contributions of all kinds, including bug fixes, feature requests, style improvements, and documentation updates.

Please follow these guidelines to make the contribution process smooth and effective for everyone.

---

## Setting Up Your Development Environment

To start developing the theme, you will need a Ruby environment.

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/paladini/activeadmin-aaa-theme.git
   cd activeadmin-aaa-theme
   ```

2. **Install Dependencies:**
   ```bash
   bundle install
   ```

3. **Running the Dummy Rails App:**
   Inside the project, we have a dummy Rails application configured to let you test the styles interactively.
   - Navigate to the dummy app:
     ```bash
     cd spec/dummy
     ```
   - Set up the database and seed it with the default admin user:
     ```bash
     bundle exec rails db:setup db:seed
     ```
   - Boot the server:
     ```bash
     bundle exec rails server
     ```
   - Open your browser at `http://localhost:3000/admin` and log in with:
     - **Email:** `admin@example.com`
     - **Password:** `password`

---

## Coding Guidelines

We aim to keep this theme lightweight, fast, and modular.

### Stylesheets (SCSS)
- All styles should be declared in `app/assets/stylesheets/active_admin/aaa_theme.scss`.
- Use **CSS Custom Properties (Variables)** for colors, border radius, margins, and transitions so that developers can easily customize their dashboard.
- Base all colors on **HSL values** to allow smooth relative adjustments (like dark/light transitions).
- Keep styles compatible with both Active Admin 3.x and 4.x. Avoid deleting default selectors; instead, override them cleanly.

### JavaScript (JS)
- Keep JavaScript usage to a minimum. Use vanilla, lightweight ES6 (`app/assets/javascripts/active_admin/aaa_theme.js`).
- Focus JavaScript only on responsive layouts (mobile menu toggles) and micro-interactions.

---

## Commit Messages

We enforce the **Conventional Commits 1.0.0** standard to keep our git history structured and readable:

```
<type>(<scope>): <description>

[optional body]
```

- **Types:**
  - `feat`: New features or layouts.
  - `fix`: Bug fixes.
  - `refactor`: Structural changes to styles/code with no user-facing changes.
  - `docs`: Updates to documentation, README, or guides.
  - `style`: Formatting, whitespace adjustments, no code edits.
  - `chore`: Maintenance chores.

**Example:**
```
feat(layout): convert header menu into retractable left sidebar on desktop
```

---

## Submitting Pull Requests

1. **Create a Branch:** Create a feature branch off of `main` (e.g. `feat/my-new-style`).
2. **Write Clean Code:** Follow our style guidelines and ensure your changes work properly in both light and dark mode.
3. **Open a Pull Request:** Provide a clear description of the problem solved, visual screenshots showing before/after changes (crucial for theme updates), and references to any related issues.

Thank you for making Active Admin look beautiful!

/**
 * Active Admin AAA Theme JavaScript Controls
 * Handles mobile sidebar toggles and interactive states.
 */

document.addEventListener("DOMContentLoaded", () => {
  setupMobileMenu();
});

// Setup responsive mobile navigation menu toggler
function setupMobileMenu() {
  const header = document.getElementById("header");
  if (!header) return;

  // Create hamburger button dynamically for mobile views
  const toggleBtn = document.createElement("button");
  toggleBtn.className = "aaa-menu-toggle";
  toggleBtn.setAttribute("aria-label", "Toggle Navigation Menu");
  toggleBtn.innerHTML = `
    <span></span>
    <span></span>
    <span></span>
  `;

  // Insert button in the header (on top bar right side on mobile)
  header.appendChild(toggleBtn);

  // Toggle open class on click
  toggleBtn.addEventListener("click", (e) => {
    e.stopPropagation();
    header.classList.toggle("menu-open");
    toggleBtn.classList.toggle("active");
  });

  // Close menu when clicking outside
  document.addEventListener("click", (e) => {
    if (header.classList.contains("menu-open") && !header.contains(e.target)) {
      header.classList.remove("menu-open");
      toggleBtn.classList.remove("active");
    }
  });
}

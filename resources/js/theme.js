(function () {
	"use strict";

	const themeConfig = {
		"theme-base": "neutral",
		"theme-font": "sans-serif",
		"theme-primary": "blue",
		"theme-radius": "1",
	};

	for (const key in themeConfig) {
		let storedValue = localStorage.getItem("tabler-" + key);

		// Treat null, undefined, or "null" or "" as not stored
		if (
			storedValue === null ||
			storedValue === "null" ||
			storedValue === ""
		) {
			storedValue = themeConfig[key];
			localStorage.setItem("tabler-" + key, storedValue);
		}

		// Apply value to HTML
		document.documentElement.setAttribute("data-bs-" + key, storedValue);
	}
})();

const getPreferredTheme = () => {
	const storedTheme = localStorage.getItem("theme");
	if (storedTheme) {
		return storedTheme;
	}
	return window.matchMedia("(prefers-color-scheme: dark)").matches
		? "dark"
		: "light";
};

// 2. Apply the theme
const setTheme = (theme) => {
	document.documentElement.setAttribute("data-bs-theme", theme);
	localStorage.setItem("theme", theme);

	// Toggle Icons
	const sun = document.getElementById("theme-icon-sun");
	const moon = document.getElementById("theme-icon-moon");

	if (sun && moon) {
		if (theme === "dark") {
			sun.classList.remove("d-none");
			moon.classList.add("d-none");
		} else {
			sun.classList.add("d-none");
			moon.classList.remove("d-none");
		}
	}
};

// 3. Initialize on load
setTheme(getPreferredTheme());

// 4. Global Toggle Function
window.toggleTheme = () => {
	const current = document.documentElement.getAttribute("data-bs-theme");
	const next = current === "dark" ? "light" : "dark";
	setTheme(next);
};

setTheme(getPreferredTheme());

// B. Run on standard DOM Load
document.addEventListener("DOMContentLoaded", () => {
	setTheme(getPreferredTheme());
});

// C. Run on Livewire Navigation (SPA Fix)
// This ensures icons update when you switch pages using wire:navigate
document.addEventListener("livewire:navigated", () => {
	setTheme(getPreferredTheme());
});

(function () {
	"use strict";

	const themeConfig = {
		"theme": "dark",
		"theme-base": "gray",
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

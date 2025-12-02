import "@tabler/core/dist/js/tabler.min.js";
import $ from "jquery";
import Dropzone from "dropzone";
import "dropzone/dist/dropzone.css";
import Swal from "sweetalert2";

// 1. Setup jQuery
window.StarRating = StarRating;
window.$ = window.jQuery = $;
window.copyToClipboard = (text) => {
	if (navigator.clipboard && window.isSecureContext) {
		// Modern Async API
		navigator.clipboard
			.writeText(text)
			.then(() => {
				window.showToast("success", "Link copied to clipboard!");
			})
			.catch((err) => {
				console.error("Failed to copy: ", err);
				window.showToast("error", "Failed to copy link.");
			});
	} else {
		// Fallback for older browsers
		let textArea = document.createElement("textarea");
		textArea.value = text;
		textArea.style.position = "fixed";
		textArea.style.left = "-9999px";
		document.body.appendChild(textArea);
		textArea.focus();
		textArea.select();
		try {
			document.execCommand("copy");
			window.showToast("success", "Link copied to clipboard!");
		} catch (err) {
			console.error("Fallback copy failed", err);
			window.showToast("error", "Failed to copy link.");
		}
		document.body.removeChild(textArea);
	}
};
// 2. Setup Dropzone
Dropzone.autoDiscover = false;
window.Dropzone = Dropzone;

// 3. Setup SweetAlert
window.Swal = Swal;

const Toast = Swal.mixin({
	toast: true,
	position: "top-end",
	showConfirmButton: false,
	timer: 3000,
	timerProgressBar: true,
	iconColor: "white",
	customClass: {
		popup: "colored-toast",
	},
	didOpen: (toast) => {
		toast.addEventListener("mouseenter", Swal.stopTimer);
		toast.addEventListener("mouseleave", Swal.resumeTimer);
	},
});

window.showToast = (type, message) => {
	let color = type === "success" ? "#2fb344" : "#d63939";
	Toast.fire({
		icon: type,
		title: message,
		background: color,
		color: "#fff",
	});
};

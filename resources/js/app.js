import "@tabler/core/dist/js/tabler.min.js";
import $ from "jquery";
import Dropzone from "dropzone";
import "dropzone/dist/dropzone.css";
import Swal from "sweetalert2";

// 1. Setup jQuery
window.$ = window.jQuery = $;

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

// import "./bootstrap"; // Keep Laravel's default axios setup

//import jquery
import $ from "jquery";
window.$ = $;
window.jQuery = $;

// 1. Import Tabler JS
import "@tabler/core/dist/js/tabler.min.js";

// 2. Import SweetAlert2
import Swal from "sweetalert2";
//access tabler modal with jquery
// 3. Configure the "Pro" Toast Mixin
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

// 4. Make it Global (so you can use it in Blade files)
window.Swal = Swal;
window.showToast = (type, message) => {
	let color = type === "success" ? "#2fb344" : "#d63939"; // Tabler Green/Red

	Toast.fire({
		icon: type,
		title: message,
		background: color,
		color: "#fff",
	});
};

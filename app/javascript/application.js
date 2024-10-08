// Entry point for the build script in your package.json
// Entry point for the build script in your package.json
import "@hotwired/turbo-rails";
import "./controllers";
import * as bootstrap from "bootstrap";

document.addEventListener("turbo:load", function () {
    setTimeout(function () {
        const alerts = document.querySelectorAll('.alert');
        alerts.forEach(alert => {
            const bootstrapAlert = bootstrap.Alert.getInstance(alert);
            if (bootstrapAlert) {
                bootstrapAlert.close(); // Close the alert using Bootstrap's method
            } else {
                alert.classList.remove('show');
                alert.classList.add('fade');
            }
        });
    }, 5000); // 5000 milliseconds = 5 seconds
});

document.addEventListener("DOMContentLoaded", function () {
    const deleteLinks = document.querySelectorAll('a[data-bs-toggle="modal"]');
    deleteLinks.forEach(link => {
        link.addEventListener("click", function () {
            const productId = this.dataset.productId;
            const deleteButton = document.querySelector("#deleteModal .btn-danger");
            deleteButton.onclick = function() {
                deleteButton.form.action = "/products/" + productId;
            };
        });
    });
});


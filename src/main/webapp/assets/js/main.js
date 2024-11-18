function showPassword() {

    const passwordField = document.getElementById('password');
    const buttonText = document.getElementById('togglePassword');
    if (passwordField.type === 'password') {
        passwordField.type = 'text';
        buttonText.textContent = 'Hide';
    } else {
        passwordField.type = 'password';
        buttonText.textContent = 'Show';
    }


}


function showConfirmPassword() {
    const confirmPasswordField = document.getElementById('confirmPassword');
    const buttonText = document.getElementById('toggleConfirmPassword');
    if (confirmPasswordField.type === 'password') {

        confirmPasswordField.type = 'text';
        buttonText.textContent = 'Hide';
    } else {
        confirmPasswordField.type = 'password';
        buttonText.textContent = 'Show';
    }


}




document.getElementById('registerForm').addEventListener('input', function () {
    const password = document.getElementById('password').value;
    const confirmPassword = document.getElementById('confirmPassword').value;
    const submitButton = document.getElementById('submitButton');
    const errMessage = document.getElementById('errMessage');

    // Reset error message and button state
    errMessage.textContent = '';
    errMessage.style.display = 'none';
    submitButton.disabled = true;

    // Validate input
    if (password.length === 0 || confirmPassword.length === 0) {
        submitButton.style.opacity = '0.5';
        // submitButton.style.cursor = 'alo';
        errMessage.textContent = 'Password cannot be empty';
        errMessage.style.display = 'block';

    } else if (password !== confirmPassword) {
        submitButton.style.opacity = '0.5';
        errMessage.textContent = 'Passwords do not match';
        errMessage.style.display = 'block';
    } else {
        submitButton.style.opacity = '1';
        submitButton.style.cursor = 'pointer';
        submitButton.disabled = false; // Enable button if validation passes
    }
});

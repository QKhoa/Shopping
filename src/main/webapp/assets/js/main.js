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




const registerForm = document.getElementById('registerForm');
if (registerForm) {
    registerForm.addEventListener('input', function () {
        const password = document.getElementById('password').value;
        const confirmPassword = document.getElementById('confirmPassword').value;
        const submitButton = document.getElementById('submitButton');
        const errMessage = document.getElementById('errMessage');

        // Reset error message and button state
        errMessage.textContent = '';
        errMessage.style.display = 'none';
        submitButton.style.opacity = '0.5';
        submitButton.style.cursor = 'not-allowed';
        submitButton.disabled = true;

        // Validate input
        if (password.length === 0 || confirmPassword.length === 0) {
            errMessage.textContent = 'Password cannot be empty';
            errMessage.style.display = 'block';
        } else if (password !== confirmPassword) {
            errMessage.textContent = 'Passwords do not match';
            errMessage.style.display = 'block';
        } else {
            submitButton.style.opacity = '1';
            submitButton.style.cursor = 'pointer';
            submitButton.disabled = false; // Enable button if validation passes
        }
    });
}

// Add event listener for the login form if it exists
const loginForm = document.getElementById('loginForm');
if (loginForm) {
    loginForm.addEventListener('input', function () {
        const password = document.getElementById('password').value;
        const submitButton = document.getElementById('submitButton');
        const errMessage = document.getElementById('errMessage');

        // Reset button and error message state
        submitButton.style.opacity = '0.5';
        submitButton.style.cursor = 'not-allowed';
        submitButton.disabled = true;
        errMessage.style.display = 'none';
        errMessage.textContent = '';

        // Validate password field
        if (password.length === 0) {
            errMessage.textContent = 'Password cannot be empty.';
            errMessage.style.display = 'block';
        } else if (password.length < 6) {
            errMessage.textContent = 'Password must be at least 6 characters long.';
            errMessage.style.display = 'block';
        } else {
            // Enable submit button if password is valid
            submitButton.style.opacity = '1';
            submitButton.style.cursor = 'pointer';
            submitButton.disabled = false;
        }
    });
}



// ------------------------------
// Utility Functions
// ------------------------------

// Function to toggle the visibility of the password field
function togglePasswordVisibility(passwordFieldId, toggleButtonId) {
    const passwordField = document.getElementById(passwordFieldId);
    const toggleButton = document.getElementById(toggleButtonId);
    if (passwordField.type === 'password') {
        passwordField.type = 'text';
        toggleButton.textContent = 'Hide';
    } else {
        passwordField.type = 'password';
        toggleButton.textContent = 'Show';
    }
}

// ------------------------------
// Password Visibility Handlers
// ------------------------------

function showPassword() {
    togglePasswordVisibility('password', 'togglePassword');
}

function showConfirmPassword() {
    togglePasswordVisibility('confirmPassword', 'toggleConfirmPassword');
}

// ------------------------------
// Form Validation
// ------------------------------

// Validate Email
function isEmailValid() {
    const emailField = document.getElementById('email');
    const email = emailField.value.trim();
    const emailRegex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
    const emailError = document.getElementById('emailError');

    if (!emailRegex.test(email)) {
        emailError.textContent = 'Email is invalid.';
        emailError.style.display = 'block';
        return false;
    } else {
        emailError.style.display = 'none';
        return true;
    }
}


function isUserNameValid() {
    const usernameField = document.getElementById('username');
    const usernameError = document.getElementById('usernameError');


    if (usernameField.value.trim() === '') {
        usernameError.textContent = 'Username is empty';
        usernameError.style.display = 'block';
        return false;
    } else {
        usernameError.style.display = 'none';
        return true;
    }
}

// Validate Password
function isPasswordValid() {
    const passwordField = document.getElementById('password');
    const passwordError = document.getElementById('passwordError');
    const password = passwordField.value.trim();

    if (password === '') {
        passwordError.textContent = 'Password cannot be empty.';
        passwordError.style.display = 'block';
        return false;
    } else if (password.length < 6) {
        passwordError.textContent = 'Password must be at least 6 characters.';
        passwordError.style.display = 'block';
        return false;
    } else {
        passwordError.style.display = 'none';
        return true;
    }
}

// Validate Confirm Password
function isConfirmPasswordValid() {
    const passwordField = document.getElementById('password');
    const confirmPasswordField = document.getElementById('confirmPassword');
    const confirmPasswordError = document.getElementById('confirmPasswordError');

    if (passwordField.value !== confirmPasswordField.value) {
        confirmPasswordError.textContent = 'Passwords do not match.';
        confirmPasswordError.style.display = 'block';
        return false;
    } else {
        confirmPasswordError.style.display = 'none';
        return true;
    }
}

// Validate Register Form
function validateRegisterForm() {
    const submitButton = document.getElementById('submitButton');
    if (isEmailValid() && isUserNameValid() && isPasswordValid() && isConfirmPasswordValid()) {
        submitButton.disabled = false;
        submitButton.style.opacity = '1';
    } else {
        submitButton.disabled = true;
        submitButton.style.opacity = '0.5';
    }
}


function validateLoginForm() {
    const submitButton = document.getElementById('submitButton');
    if (isEmailValid() && isUserNameValid()) {
        submitButton.disabled = false;
        submitButton.style.opacity = '1';
    } else {
        submitButton.disabled = true;
        submitButton.style.opacity = '0.5';
    }


}

// ------------------------------
// Event Listeners
// ------------------------------

// document.addEventListener('DOMContentLoaded', function () {
//     const emailField = document.getElementById('email');
//     const passwordField = document.getElementById('password');
//     const confirmPasswordField = document.getElementById('confirmPassword');
//
//     // Add event listeners for form validation
//     if (emailField) emailField.addEventListener('input', validateRegisterForm);
//     if (passwordField) passwordField.addEventListener('input', validateRegisterForm);
//     if (confirmPasswordField) confirmPasswordField.addEventListener('input', validateRegisterForm);
//
//     // Add event listeners for password visibility
//     const togglePasswordBtn = document.getElementById('togglePassword');
//     const toggleConfirmPasswordBtn = document.getElementById('toggleConfirmPassword');
//
//     if (togglePasswordBtn) togglePasswordBtn.addEventListener('click', showPassword);
//     if (toggleConfirmPasswordBtn) toggleConfirmPasswordBtn.addEventListener('click', showConfirmPassword);
// });

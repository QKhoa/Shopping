<%--
  Created by IntelliJ IDEA.
  User: quang
  Date: 11/16/2024
  Time: 5:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
    <link rel="stylesheet" href="assets/css/output.css">



</head>
<body>

<section class="flex justify-center items-center flex-col w-full h-screen bg-gradient-to-br from-blue-200 via-gray-200 to-blue-400">
    <div class="bg-white w-4/5 max-w-lg border border-gray-300 p-8 rounded-3xl shadow-2xl transition transform ">
        <h2 class="text-3xl font-extrabold text-center text-gray-800 mb-10">Create Your Account</h2>
        <form method="post" id="registerForm" action="${pageContext.request.contextPath}/registerservlet" oninput="validateRegisterForm()">
            <!-- Email Field -->
            <div class="form-group mb-5">
                <label for="email" class="block text-gray-700 font-semibold mb-2">Email Address</label>
                <input
                        type="email"
                        name="email"
                        id="email"
                        class="form-control w-full px-4 py-3 border border-gray-300 rounded-lg shadow-sm focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-blue-500"
                        placeholder="Enter your email"
                        required
                        oninput="isEmailValid()"

                />
                <p id="emailError" class="text-red-500 text-xs" style="display: none"></p>
                <p id="emailDuplicate" class="text-red-500 text-xs" style="display: none">Email already exists</p>
            </div>

            <!-- Name Field -->
            <div class="form-group mb-5">
                <label for="username" class="block text-gray-700 font-semibold mb-2">Your Name</label>
                <input
                        type="text"
                        name="username"
                        id="username"
                        class="form-control w-full px-4 py-3 border border-gray-300 rounded-lg shadow-sm focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-blue-500"
                        placeholder="Enter your name"
                        required
                        oninput="isUserNameValid()"
                />

                <p id="usernameError" class="text-red-500 text-xs" style="display: none"></p>
            </div>

            <!-- Password Field -->
            <div class="form-group mb-6">
                <label for="password" class="block text-gray-700 font-semibold mb-2">Password</label>
                <div class="relative">
                    <input
                            type="password"
                            name="password"
                            id="password"
                            class="form-control w-full px-4 py-3 pr-16 border border-gray-300 rounded-lg shadow-sm focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-blue-500"
                            placeholder="Enter your password"
                            required
                            oninput="isPasswordValid()"
                    />
                    <button
                            type="button"
                            id="togglePassword"
                            class="absolute right-4 top-1/2 transform -translate-y-1/2 text-sm text-blue-500 hover:text-blue-700 focus:outline-none"
                            onclick="showPassword()"
                    >
                        Show
                    </button>
                </div>
                <p id="passwordError" class="text-red-500 text-sm " style="display: none"></p>

            </div>

            <!-- Confirm Password Field -->
            <div class="form-group mb-6">
                <label for="confirmPassword" class="block text-gray-700 font-semibold mb-2">Confirm Password</label>
                <div class="relative">
                    <input
                            type="password"
                            name="confirmPassword"
                            id="confirmPassword"
                            class="form-control w-full px-4 py-3 pr-16 border border-gray-300 rounded-lg shadow-sm focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-blue-500"
                            placeholder="Confirm your password"
                            required
                            oninput="isConfirmPasswordValid()"
                    />
                    <button
                            type="button"
                            id="toggleConfirmPassword"
                            class="absolute right-4 top-1/2 transform -translate-y-1/2 text-sm text-blue-500 hover:text-blue-700 focus:outline-none"
                            onclick="showConfirmPassword()"
                    >
                        Show
                    </button>
                </div>
                <p id="confirmPasswordError" class="text-red-500 text-sm " style="display: none"></p>
            </div>



<%--            <!-- Remember Me and Forgot Password -->--%>
            <div class="flex justify-between items-center mb-6">
<%--                <label class="flex items-center text-sm text-gray-700">--%>
<%--                    <input type="checkbox" class="mr-2 rounded border-gray-300">--%>
<%--                    Remember me--%>
<%--                </label>--%>
                <a href="login.jsp" class="text-sm text-blue-500 hover:text-blue-700 underline">Already have account?</a>
            </div>

            <!-- Submit Button -->
            <button
                    id="submitButton"
                    type="submit"
                    class="w-full bg-gradient-to-r from-blue-500 to-blue-600 text-white py-3 px-6 rounded-lg font-semibold hover:bg-blue-700 hover:shadow-lg focus:outline-none focus:ring-4 focus:ring-blue-300 transition-all "
                    disabled
                    style=" opacity: 0.5;"
            >
                Sign Up
            </button>


        </form>
    </div>

    <!-- Footer -->

</section>





<script src="assets/js/main.js"></script>





<%--tao form dang nhap --%>
</body>
</html>

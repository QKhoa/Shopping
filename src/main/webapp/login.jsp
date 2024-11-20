<%--
  Created by IntelliJ IDEA.
  User: quang
  Date: 11/18/2024
  Time: 3:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login page</title>
    <link rel="stylesheet" href="assets/css/output.css">
</head>
<body>
<section
        class="flex justify-center items-center flex-col w-full h-screen bg-gradient-to-br from-blue-200 via-gray-200 to-blue-400">
    <div class="bg-white w-4/5 max-w-lg border border-gray-300 p-8 rounded-3xl shadow-2xl transition transform ">
        <h2 class="text-3xl font-extrabold text-center text-gray-800 mb-10">Login Your Account</h2>
        <form  method="post" id="loginForm" action="${pageContext.request.contextPath}/loginservlet" oninput="validateLoginForm()">
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


            <!-- Remember Me and Forgot Password -->
            <div class="flex justify-between items-center mb-6">
                <label class="flex items-center text-sm text-gray-700">
                    <input type="checkbox" class="mr-2 rounded border-gray-300">
                    Remember me
                </label>
                <a href="#" class="text-sm text-blue-500 hover:text-blue-700 underline">Forgot Password?</a>
            </div>

            <!-- Submit Button -->
            <button
                    id="submitButton"
                    type="submit"
                    class="w-full bg-gradient-to-r from-blue-500 to-blue-600 text-white py-3 px-6 rounded-lg font-semibold hover:bg-blue-700 hover:shadow-lg focus:outline-none focus:ring-4 focus:ring-blue-300 transition-all "
                    disabled
                    style=" opacity: 0.5;"
            >
                Sign in
            </button>


        </form>
    </div>

    <!-- Footer -->

</section>

<script src="assets/js/main.js"></script>
</body>
</html>

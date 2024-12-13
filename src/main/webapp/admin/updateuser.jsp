<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: quang
  Date: 11/23/2024
  Time: 3:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Update User</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/output.css">
</head>
<body>

<c:set value="${requestScope.user}" var="user"/>


<form action="${pageContext.request.contextPath}/updateuserservlet" method="post" class="max-w-md mx-auto my-10 p-5 rounded-lg shadow-lg" style="font-family: 'Inter', sans-serif; background-color: #f9fafb;">
    <h2 class="text-center mb-6 text-2xl font-bold text-blue-700 uppercase" style="font-size: 24px;">Update User Information</h2>



        <input  name="id" value="${user.id}" type="hidden" id="id" class="shadow-sm bg-white border border-gray-300 text-gray-900 text-lg rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full px-4 py-3" placeholder="name@example.com" required />



    <!-- Email -->
    <div class="mb-6">
        <label for="email" class="block mb-2 text-lg font-semibold text-gray-800" style="font-size: 18px;">User Email</label>
        <input name="email" value="${user.email}" type="email" id="email" class="shadow-sm bg-white border border-gray-300 text-gray-900 text-lg rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full px-4 py-3" placeholder="name@example.com" required />
    </div>

    <!-- Username -->
    <div class="mb-6">
        <label for="username" class="block mb-2 text-lg font-semibold text-gray-800" style="font-size: 18px;">Username</label>
        <input name="username" value="${user.name}" type="text" id="username" class="shadow-sm bg-white border border-gray-300 text-gray-900 text-lg rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full px-4 py-3" placeholder="Enter username" required />
    </div>

    <!-- Password (disabled) -->
    <div class="mb-6">
        <label for="password" class="block mb-2 text-lg font-semibold text-gray-800" style="font-size: 18px;">User Password</label>
        <input name="password" value="${user.password}" type="text" id="password" class="bg-gray-100 border border-gray-300 text-gray-700 text-lg rounded-lg block w-full px-4 py-3 cursor-not-allowed" disabled readonly />
    </div>

    <!-- User Status -->
    <div class="mb-6">
        <label for="isVerified" class="block mb-2 text-lg font-semibold text-gray-800" style="font-size: 18px;">User Status</label>
        <select name="isVerified" id="isVerified" class="shadow-sm bg-white border border-gray-300 text-gray-900 text-lg rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full px-4 py-3" required>
            <option value="true" ${user.isVerified ? 'selected' : ''}>Verified</option>
            <option value="false" ${!user.isVerified ? 'selected' : ''}>Not Verified</option>
        </select>
    </div>

    <!-- User Role -->
    <div class="mb-6">
        <label for="role" class="block mb-2 text-lg font-semibold text-gray-800" style="font-size: 18px;">User Role</label>
        <select name="role" id="role" class="bg-white border border-gray-300 text-gray-900 text-lg rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full px-4 py-3">
            <option value="USER" ${user.role == 'USER' ? 'selected' : ''}>USER</option>
            <option value="ADMIN" ${user.role == 'ADMIN' ? 'selected' : ''}>ADMIN</option>
        </select>
    </div>

    <!-- Submit Button -->
    <button type="submit" class="w-full text-white bg-blue-600 hover:bg-blue-700 focus:ring-4 focus:outline-none focus:ring-blue-300 font-semibold rounded-lg text-lg px-5 py-3 text-center">
        Update
    </button>
</form>



</body>
</html>

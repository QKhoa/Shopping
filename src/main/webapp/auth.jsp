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
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/output.css">
</head>
<body>

<%@include file="components/header.jsp" %>

<%--Login--%>
<main class="login-container flex items-center justify-center py-[100px]">
  <!-- Login section -->
  <section
          class="login-section inline-flex h-[504px] w-[424px] flex-col items-start justify-start rounded border border-[#e4e7e9] bg-white shadow"
  >
    <!-- login header -->
    <div class="login-header inline-flex items-start justify-start">
      <div
              class="signin-tab flex h-[60px] w-[212px] items-center justify-center border-b-[2px] border-primary-500 py-4"
      >
        <div
                class="signin-text font-['Public Sans'] w-[212px] text-center text-xl font-semibold leading-7 text-custom-gray-900"
        >
          Sign In
        </div>
      </div>

      <div
              class="signup-tab flex h-[60px] w-[212px] items-center justify-center border-b py-4"
      >
        <div
                class="signup-text font-['Public Sans'] w-[212px] text-center text-xl font-semibold leading-7 text-custom-gray-500"
        >
          Sign Up
        </div>
      </div>
    </div>
    <!-- Login body -->
    <div
            class="login-body inline-flex flex-col items-center justify-start gap-6 px-8 pb-8 pt-6"
    >
      <!-- Form to login -->
      <div class="form">
        <form
                action=""
                class="inline-flex w-[360px] flex-col items-center justify-start gap-6"
        >
          <!-- form input -->
          <section class="form-input inline-flex w-[360px] flex-col gap-4">
            <div
                    class="email-field inline-flex h-[72px] w-full flex-col justify-start gap-2"
            >
              <label
                      class="font-['Public Sans'] text-sm font-normal leading-tight text-[#191c1e]"
                      for="email"
              >Email Address</label
              >
              <input
                      class="h-[44px] rounded border border-custom-gray-100"
                      type="email"
                      name="email"
                      id="email"
              />
            </div>
            <div
                    class="password-field inline-flex h-[72px] w-full flex-col justify-start gap-2"
            >
              <div class="password-label flex items-center justify-between">
                <label
                        class="font-['Public Sans'] text-sm font-normal leading-tight text-[#191c1e]"
                        for="password"
                >Password</label
                >
                <a
                        href="#"
                        class="ForgetPassword font-['Public Sans'] text-sm font-medium leading-tight text-[#2ca4f3]"
                >
                  Forget Password
                </a>
              </div>
              <!-- Password input -->
              <div
                      class="password-input relative inline-flex w-[360px] items-center justify-start"
              >
                <input
                        class="h-[44px] w-[360px] rounded border border-custom-gray-100"
                        type="password"
                        name="password"
                        id="password"
                />
                <button
                        id="toggle"
                        onclick="showPassword()"
                        class="RegularEye absolute right-3 flex h-5 w-5"
                >
                  <img src="assets/img/icons/others/Eye.svg" alt=""/>
                </button>
              </div>
            </div>
          </section>
          <!-- form submit -->
          <section
                  class="Button inline-flex h-12 w-[360px] items-center justify-center gap-2 rounded-sm bg-[#f98131] px-6"
          >
            <button
                    class="signin-button font-['Public Sans'] text-sm font-bold uppercase leading-[48px] tracking-tight text-white hover:cursor-pointer"
            >
              Sign in
            </button>
            <div class="RegularArrowright relative h-5 w-5">
              <img src="assets/img/icons/others/ArrowRight.svg" alt=""/>
            </div>
          </section>
        </form>
      </div>

      <!-- Login with -->

      <div
              class="login-with inline-flex flex-col items-center justify-start gap-3"
      >
        <div class="or">or</div>
        <div
                class="LoginRegisterWith inline-flex h-11 w-[360px] items-start justify-start gap-[85px] rounded-sm border border-[#e4e7e9] bg-white py-3 pl-4 pr-[121px]"
        >
          <img
                  class="Google h-5 w-5"
                  src="assets/img/icons/others/Google.svg"
          />
          <div
                  class="LoginWithGoogle font-['Public Sans'] text-center text-sm font-normal leading-tight text-[#475156]"
          >
            Login with Google
          </div>
        </div>
        <div
                class="LoginRegisterWith inline-flex h-11 w-[360px] items-start justify-start gap-[89px] rounded-sm border border-[#e4e7e9] bg-white py-3 pl-4 pr-[125px]"
        >
          <div
                  class="Apple relative flex h-5 w-5 flex-col items-start justify-start"
          >
            <img src="assets/img/icons/others/Apple.svg" alt=""/>
          </div>
          <div
                  class="LoginWithApple font-['Public Sans'] text-center text-sm font-normal leading-tight text-[#475156]"
          >
            Login with Apple
          </div>
        </div>
      </div>
    </div>
  </section>
</main>


<img src="${pageContext.request.contextPath}/assets/img/icons/navigation">


<%--Login--%>

<%@include file="components/footer.jsp" %>


</body>
</html>

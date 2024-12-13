
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Forget password </title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/output.css">
</head>
<body>

<%@include file="components/header.jsp" %>

<main class="flex w-full items-center justify-center py-[100px]">
  <div
          class="ForgetPassword inline-flex h-[472px] flex-col items-start justify-start gap-6 rounded border border-[#e4e7e9] bg-white p-8 shadow"
  >
    <div class="Heading flex flex-col items-start justify-start gap-3">
      <div
              class="SignInToYourAccount font-['Public Sans'] w-[360px] text-center text-xl font-semibold leading-7 text-[#191c1e]"
      >
        Forget Password
      </div>
      <div
              class="EnterTheEmailAddressOrMobilePhoneNumberAssociatedWithYourCliconAccount font-['Public Sans'] w-[360px] text-center text-sm font-normal leading-tight text-[#5f6c72]"
      >
        Enter the email address or mobile phone number associated with your
        Clicon account.
      </div>
    </div>

    <!-- form -->

    <form action="" class="flex flex-col items-start justify-start gap-6">
      <!-- email field -->
      <div
              class="email-field inline-flex flex-col items-start justify-center gap-2"
      >
        <div class="EmailAddress">
          <label
                  for="email"
                  class="font-['Public Sans'] self-stretch text-sm font-normal leading-tight text-[#191c1e]"
          >Email Address</label
          >
        </div>
        <!-- input field -->
        <div class="">
          <input
                  type="email"
                  id="email"
                  name="email"
                  class="InputField relative h-11 w-[360px] rounded-sm border border-[#e4e7e9] bg-white"
          />
        </div>
      </div>

      <!-- button -->
      <div
              class="button-box inline-flex w-full items-center justify-center gap-2 rounded-sm bg-primary-500 px-6"
      >
        <button
                class="Label font-['Public Sans'] text-sm font-bold uppercase leading-[48px] tracking-tight text-white"
        >
          Send Code
        </button>
        <div class="RegularArrowright relative h-5 w-5">
          <img
                  src="assets/img/icons/others/ArrowRight.svg"
                  alt=""
                  srcset=""
          />
        </div>
      </div>
    </form>
    <!-- label input -->

    <!-- Information -->
    <div class="Information flex flex-col items-start justify-start gap-2">
      <div class="SignIn inline-flex items-start justify-start gap-1.5">
        <div
                class="AlreadyHaveAccount font-['Public Sans'] text-sm font-normal leading-tight text-[#5f6c72]"
        >
          Already have account?
        </div>
        <a
                href="#"
                class="SignIn font-['Public Sans'] text-sm font-medium leading-tight text-[#2ca4f3] hover:underline"
        >
          Sign In
        </a>
      </div>
      <div class="SignUp inline-flex items-start justify-start gap-1.5">
        <div
                class="DonTHaveAccount font-['Public Sans'] text-sm font-normal leading-tight text-[#5f6c72]"
        >
          Don’t have account?
        </div>
        <a
                href="#"
                class="SignUp font-['Public Sans'] text-sm font-medium leading-tight text-[#2ca4f3] hover:underline"
        >
          Sign Up
        </a>
      </div>
    </div>
    <div class="Line21 h-[0px] w-[358px] border border-[#e4e7e9]"></div>
    <div
            class="YouMayContactCustomerServiceForHelpRestoringAccessToYourAccount w-[360px]"
    >
          <span
                  class="font-['Public Sans'] text-sm font-normal leading-tight text-[#475156]"
          >You may contact </span
          ><a
            href="#"
            class="font-['Public Sans'] text-sm font-medium leading-tight text-primary-500 hover:underline"
    >Customer Service</a
    ><span
            class="font-['Public Sans'] text-sm font-normal leading-tight text-[#475156]"
    >
            for help restoring access to your account.</span
    >
    </div>
  </div>
</main>




<%@include file="components/footer.jsp" %>


</body>
</html>

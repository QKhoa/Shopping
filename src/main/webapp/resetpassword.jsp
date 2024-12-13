
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Reset password page</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/output.css">
</head>
<body>

<%@include file="components/header.jsp" %>


<main
        class="main-content flex w-full items-center justify-center py-[100px]"
>
  <!-- Form section -->
  <section
          class="inline-flex h-[400px] w-[424px] flex-col items-start justify-start gap-6 rounded border border-[#e4e7e9] bg-white p-8 shadow"
  >
    <!-- Heading -->
    <div class="heading inline-flex flex-col justify-end gap-3">
      <h1
              class="ResetPassword font-['Public Sans'] w-[360px] text-center text-xl font-semibold leading-7 text-[#191c1e]"
      >
        Reset Password
      </h1>
      <p
              class="heading-para font-['Public Sans'] w-[360px] text-center text-sm font-normal leading-tight text-[#5f6c72]"
      >
        Duis sagittis molestie tellus, at eleifend sapien pellque quis.
        Fusce lorem nunc, fringilla sit amet nunc.
      </p>
    </div>
    <!-- Form -->
    <form
            class="form inline-flex flex-col items-start justify-center gap-6"
    >
      <!-- Password field -->
      <div
              class="input-field inline-flex flex-col items-start justify-center gap-4"
      >
        <!-- Password input -->
        <div
                class="password-field inline-flex flex-col items-start justify-center gap-2"
        >
          <label
                  for="password"
                  class="font-['Public Sans'] text-sm font-normal leading-tight text-[#191c1e]"
          >Password</label
          >
          <div class="relative">
            <input
                    class="inputfield inline-flex h-11 w-[360px] items-start justify-center gap-[218px] rounded-sm border border-[#e4e7e9] bg-white px-4 py-3"
                    type="password"
                    name="password"
                    id="password"
            />
            <button
                    class="absolute right-4 top-3 inline-flex size-5 flex-col items-start justify-start"
            >
              <img
                      src="assets/img/icons/others/Eye.svg"
                      alt="Show Password"
              />
            </button>
          </div>
        </div>
        <!-- Confirm password input -->
        <div
                class="cfrm-password-field inline-flex flex-col items-start justify-center gap-2"
        >
          <label
                  for="confirm-password"
                  class="font-['Public Sans'] text-sm font-normal leading-tight text-[#191c1e]"
          >Confirm Password</label
          >
          <div class="relative">
            <input
                    class="inputfield inline-flex h-11 w-[360px] items-start justify-center gap-[218px] rounded-sm border border-[#e4e7e9] bg-white px-4 py-3"
                    type="password"
                    name="confirm-password"
                    id="confirm-password"
            />
            <button
                    class="absolute right-4 top-3 inline-flex size-5 flex-col items-start justify-start"
            >
              <img
                      src="assets/img/icons/others/Eye.svg"
                      alt="Show Password"
              />
            </button>
          </div>
        </div>
      </div>
      <!-- Button box -->
      <div
              class="button-box inline-flex h-12 w-full items-center justify-center gap-2 rounded-sm bg-[#f98131] px-6"
      >
        <!-- Submit button -->
        <button
                type="submit"
                class="font-['Public Sans'] text-sm font-bold uppercase leading-[48px] text-white"
        >
          Reset Password
        </button>
        <div class="size-5">
          <img
                  src="assets/img/icons/others/ArrowRight.svg"
                  alt=""
                  srcset=""
          />
        </div>
      </div>
    </form>
  </section>
</main>



<%@include file="components/footer.jsp" %>


</body>
</html>

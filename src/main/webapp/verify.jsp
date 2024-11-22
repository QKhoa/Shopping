<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" href="style.css" />
  <title>Verification Account UI</title>
  <style>


    * {
      box-sizing: border-box;
    }

    body {
      background-image: linear-gradient(142deg,#9861c2, #5cc0de);
      font-family: "Lato", sans-serif;
      height: 100vh;
      display: flex;
      align-items: center;
      justify-content: center;
      overflow: hidden;
      margin: 0;
    }

    .container{
      background-color: rgba(255, 255, 255, 0.3);
      border-radius: 10px;
      padding: 30px;
      max-width: 1000px;
      text-align: center;
    }

    .code-container{
      display: flex;
      align-items: center;
      justify-content: center;
      margin: 40px 0;
    }

    .code{
      caret-color: transparent;
      background-color: rgba(255, 255, 255, 0.6);
      border-radius: 10px;
      border: 1px solid #eee;
      font-size: 30px;
      font-family: "Lato", sans-serif;
      width: 75px;
      height: 80px;
      margin: 10px;
      text-align: center;
      font-weight: 300;
      -moz-appearance: textfield;
    }

    .code::-webkit-inner-spin-button,
    .code::-webkit-outer-spin-button {
      -webkit-appearance: none;
      margin: 0;
    }

    /* Với Firefox */


    @media (max-width: 600px) {
      .code-container{
        flex-wrap: wrap;
      }
      .code{
        font-size: 24px;
        height: 50px;
        max-width: 50px;
        font-size: bold;
      }
    }

    .code::-webkit-outer-spin-button,
    .code::-webkit-inner-spin-button {
      -webkit-appearance: none;
    }

    .code:valid {
      border-color: #9861c2;
      box-shadow: 0 10px 10px -5px rgba(0, 0, 0, 0.25);
    }

    .btn{
      font-family: "Lato", sans-serif;
      min-width: 400px;
      display: inline-block;
      text-align: center;
      white-space: nowrap;
      vertical-align: middle;
      user-select: none;
      cursor: pointer;
      border: 1px solid transparent;
      margin: 0px 0px 20px 0px;
      padding: 0.775rem 0.75rem;
      font-size: 1rem;
      line-height: 1.5;
      border-radius: 10px;
      text-transform: uppercase;
      letter-spacing: 0.7;
    }

    .btn-primary{
      color: #fff;
      background-color: #9861c2;
      border-color: #9861c2;
    }

    .btn-resend {
      font-family: "Lato", sans-serif;
      font-size: 1rem;
      padding: 0.5rem 1rem;
      color: #2563eb;
      background: transparent;
      border: 1px solid #2563eb;
      border-radius: 5px;
      cursor: pointer;
      transition: background-color 0.3s, color 0.3s, box-shadow 0.3s;
    }

    .btn-resend:hover {
      background-color: #2563eb;
      color: #fff;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
    }

    .btn-resend:focus {
      outline: none;
      box-shadow: 0 0 0 3px rgba(37, 99, 235, 0.5);
    }

    .btn-resend:active {
      background-color: #1e40af;
      border-color: #1e40af;
      color: #fff;
    }

    .btn-resend:disabled {
      background-color: #cccccc;
      border-color: #cccccc;
      color: #666666;
      cursor: not-allowed;
    }

  </style>



</head>
<body>
  <c:set var="user" value="${sessionScope.user}"/>
<div class="container">
  <h2>Verify Your Account</h2>
  <p>
    We emailed you the six-digit code to <span style="color: #2563eb">${requestScope.email}</span> <br/>
    Enter the code below to confirm your email address.
  </p>

  <!-- Form gửi mã xác nhận -->
  <form action="${pageContext.request.contextPath}/verifycodeservlet" method="post">
    <div class="code-container">
      <!-- Các ô nhập mã xác nhận -->
      <input type="text" name="code1" class="code" placeholder="0" maxlength="1" required>
      <input type="text" name="code2" class="code" placeholder="0" maxlength="1" required>
      <input type="text" name="code3" class="code" placeholder="0" maxlength="1" required>
      <input type="text" name="code4" class="code" placeholder="0" maxlength="1" required>
      <input type="text" name="code5" class="code" placeholder="0" maxlength="1" required>
      <input type="text" name="code6" class="code" placeholder="0" maxlength="1" required>
    </div>

    <!-- Ẩn email trong form để truyền sang backend -->
    <input type="hidden" name="email" value="${user.email}">

    <div>
      <button type="submit" class="btn btn-primary">Verify</button>
    </div>


  </form>
  <h3 style="color: red">${requestScope.errorMessage}</h3>
  <small class="info">
    If you didn't receive a code,
    <form id="resend-form" action="${pageContext.request.contextPath}/resendcodeservlet" method="post" style="display: inline;">
      <button type="submit" id="resend-button" class="btn-resend">
        RESEND
      </button>
    </form>
    <span id="countdown" style="margin-left: 10px; font-size: 1rem; color: #2563eb;"></span>
  </small>


</div>


<script>

  const codes = document.querySelectorAll('.code')

  codes[0].focus()

  codes.forEach((code, idx) => {
    code.addEventListener('keydown', (e) => {
      if(e.key >= 0 && e.key <=9) {
        codes[idx].value = ''
        setTimeout(() => codes[idx + 1].focus(), 10)
      } else if(e.key === 'Backspace') {
        setTimeout(() => codes[idx - 1].focus(), 10)
      }
    })
  })



  <%--// Lấy phần tử nút và đồng hồ--%>
  <%--const resendButton = document.getElementById("resend-button");--%>
  <%--const countdownSpan = document.getElementById("countdown");--%>

  <%--// Thời gian đếm ngược (5 phút = 300 giây)--%>
  <%--let countdownTime = 300;--%>

  <%--// Xử lý khi nhấn nút Resend--%>
  <%--document.getElementById("resend-form").addEventListener("submit", function (event) {--%>
  <%--  // Ngăn form gửi ngay lập tức--%>
  <%--  event.preventDefault();--%>

  <%--  // Vô hiệu hóa nút Resend--%>
  <%--  resendButton.disabled = true;--%>

  <%--  // Bắt đầu đếm ngược--%>
  <%--  startCountdown();--%>

  <%--  // Gửi form sau khi kích hoạt đếm ngược--%>
  <%--  setTimeout(() => {--%>
  <%--    this.submit();--%>
  <%--  }, 500); // Gửi sau 0.5 giây để xử lý logic khác--%>
  <%--});--%>

  <%--// Hàm bắt đầu đếm ngược--%>
  <%--function startCountdown() {--%>
  <%--  const interval = setInterval(() => {--%>
  <%--    // Giảm thời gian còn lại--%>
  <%--    countdownTime--;--%>

  <%--    // Cập nhật giao diện--%>
  <%--    const minutes = Math.floor(countdownTime / 60);--%>
  <%--    const seconds = countdownTime % 60;--%>
  <%--    countdownSpan.textContent = `Resend available in ${minutes}:${seconds < 10 ? "0" + seconds : seconds}`;--%>

  <%--    // Nếu hết thời gian, bật lại nút--%>
  <%--    if (countdownTime <= 0) {--%>
  <%--      clearInterval(interval);--%>
  <%--      countdownSpan.textContent = ""; // Xóa thông báo đếm ngược--%>
  <%--      resendButton.disabled = false; // Bật lại nút--%>
  <%--      countdownTime = 300; // Reset lại thời gian--%>
  <%--    }--%>
  <%--  }, 1000); // Cập nhật mỗi giây--%>
  <%--}--%>




</script>
</body>
</html>
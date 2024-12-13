<%--
  Created by IntelliJ IDEA.
  User: quang
  Date: 11/26/2024
  Time: 4:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Sign up </title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/output.css">

  </head>
  <body>

<%--  Sign up--%>

<div class="h-[944px] px-[748px] py-[100px] justify-start items-start gap-2.5 inline-flex">
  <div class="w-[424px] h-[744px] relative bg-white rounded shadow border border-[#e4e7e9]">
    <div class="left-[32px] top-[84px] absolute flex-col justify-start items-start gap-4 inline-flex">
      <div class="h-[72px] flex-col justify-start items-start gap-2 flex">
        <div class="self-stretch text-[#191c1e] text-sm font-normal font-['Public Sans'] leading-tight">Name</div>
        <div class="h-11 relative bg-white rounded-sm border border-[#e4e7e9]"></div>
      </div>
      <div class="h-[72px] flex-col justify-start items-start gap-2 flex">
        <div class="self-stretch text-[#191c1e] text-sm font-normal font-['Public Sans'] leading-tight">Email Address</div>
        <div class="h-11 relative bg-white rounded-sm border border-[#e4e7e9]"></div>
      </div>
      <div class="h-[72px] flex-col justify-start items-start gap-2 flex">
        <div class="self-stretch text-[#191c1e] text-sm font-normal font-['Public Sans'] leading-tight">Password</div>
        <div class="h-11 px-4 py-3 bg-white rounded-sm border border-[#e4e7e9] justify-center items-start gap-[218px] inline-flex">
          <div class="text-[#76868e] text-sm font-normal font-['Public Sans'] leading-tight">8+ characters</div>
          <div class="w-5 h-5 relative flex-col justify-start items-start flex"></div>
        </div>
      </div>
      <div class="h-[72px] flex-col justify-start items-start gap-2 flex">
        <div class="self-stretch text-[#191c1e] text-sm font-normal font-['Public Sans'] leading-tight">Confirm Password</div>
        <div class="h-11 pl-[324px] pr-4 py-3 bg-white rounded-sm border border-[#e4e7e9] justify-end items-center inline-flex">
          <div class="w-5 h-5 relative flex-col justify-start items-start flex"></div>
        </div>
      </div>
      <div class="justify-start items-start gap-2 inline-flex">
        <div class="w-5 h-5 p-[3px] bg-[#f98131] rounded-sm justify-center items-center flex">
          <div class="w-3.5 h-3.5 relative flex-col justify-start items-start flex"></div>
        </div>
        <div class="w-[332px]"><span style="text-[#475156] text-sm font-normal font-['Public Sans'] leading-tight">Are you agree to Clicon </span><span style="text-[#2ca4f3] text-sm font-medium font-['Public Sans'] leading-tight">Terms of Condition</span><span style="text-[#475156] text-sm font-normal font-['Public Sans'] leading-tight"> and </span><span style="text-[#2ca4f3] text-sm font-medium font-['Public Sans'] leading-tight">Privacy Policy.
        </span></div>
      </div>
    </div>
    <div class="w-[360px] px-6 left-[32px] top-[508px] absolute bg-[#f98131] rounded-sm justify-center items-center gap-2 inline-flex">
      <div class="text-white text-sm font-bold font-['Public Sans'] uppercase leading-[48px] tracking-tight">Sign up</div>
      <div class="w-5 h-5 relative"></div>
    </div>
    <div class="left-[32px] top-[580px] absolute flex-col justify-start items-start gap-3 inline-flex">
      <div class="w-[360px] h-5 relative">
        <div class="w-[360px] h-[0px] left-0 top-[10px] absolute border border-[#e4e7e9]"></div>
        <div class="h-5 px-2 left-[165px] top-0 absolute bg-white justify-start items-start gap-2.5 inline-flex">
          <div class="text-[#76868e] text-sm font-normal font-['Public Sans'] leading-tight">or</div>
        </div>
      </div>
      <div class="w-[360px] h-11 pl-4 pr-[114px] py-3 bg-white rounded-sm border border-[#e4e7e9] justify-start items-start gap-[79px] inline-flex">
        <img class="w-5 h-5" src="https://via.placeholder.com/20x20" />
        <div class="text-center text-[#475156] text-sm font-normal font-['Public Sans'] leading-tight">Sign up with Google</div>
      </div>
      <div class="w-[360px] h-11 pl-4 pr-[118px] py-3 bg-white rounded-sm border border-[#e4e7e9] justify-start items-start gap-[83px] inline-flex">
        <div class="w-5 h-5 relative flex-col justify-start items-start flex"></div>
        <div class="text-center text-[#475156] text-sm font-normal font-['Public Sans'] leading-tight">Sign up with Apple</div>
      </div>
    </div>
    <div class="w-[424px] h-[0px] left-0 top-[60px] absolute border border-[#e4e7e9]"></div>
    <div class="left-0 top-0 absolute justify-start items-start inline-flex">
      <div class="py-4 justify-start items-start gap-2.5 flex">
        <div class="w-[212px] text-center text-[#76868e] text-xl font-semibold font-['Public Sans'] leading-7">Sign In</div>
      </div>
      <div class="py-4 bg-white shadow-inner justify-start items-start gap-2.5 flex">
        <div class="w-[212px] text-center text-[#191c1e] text-xl font-semibold font-['Public Sans'] leading-7">Sign Up</div>
      </div>
    </div>
  </div>
</div>



<%--  Sign up--%>



  </body>
</html>

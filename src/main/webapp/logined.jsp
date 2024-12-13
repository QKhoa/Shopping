<%--
  Created by IntelliJ IDEA.
  User: quang
  Date: 11/24/2024
  Time: 11:32 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />

  <style>

    :root {
      --background-colorswhite: rgba(255, 255, 255, 1);
      --text-colors950: rgba(13, 13, 13, 1);
      --brand-colors600: rgba(51, 40, 191, 1);
      --text-colors600: rgba(97, 97, 97, 1);
      --background-colorsgray-white-bg: rgba(249, 249, 251, 1);
      --text-sm-semibold-font-family: "Plus Jakarta Sans", Helvetica;
      --text-sm-semibold-font-weight: 600;
      --text-sm-semibold-font-size: 14px;
      --text-sm-semibold-letter-spacing: 0px;
      --text-sm-semibold-line-height: 20px;
      --text-sm-semibold-font-style: normal;
      --text-lg-regular-font-family: "Plus Jakarta Sans", Helvetica;
      --text-lg-regular-font-weight: 400;
      --text-lg-regular-font-size: 18px;
      --text-lg-regular-letter-spacing: 0px;
      --text-lg-regular-line-height: 28px;
      --text-lg-regular-font-style: normal;
      --text-sm-regular-font-family: "Plus Jakarta Sans", Helvetica;
      --text-sm-regular-font-weight: 400;
      --text-sm-regular-font-size: 14px;
      --text-sm-regular-letter-spacing: 0px;
      --text-sm-regular-line-height: 20px;
      --text-sm-regular-font-style: normal;
      --background-colorswhite: rgba(255, 255, 255, 1);
      --text-colors950: rgba(13, 13, 13, 1);
      --text-colors500: rgba(128, 128, 128, 1);
      --text-colors25: rgba(252, 252, 252, 1);
      --brand-colors600: rgba(51, 40, 191, 1);
      --text-colors200: rgba(214, 214, 214, 1);
      --display-2xl-semibold-font-family: "Plus Jakarta Sans", Helvetica;
      --display-2xl-semibold-font-weight: 600;
      --display-2xl-semibold-font-size: 72px;
      --display-2xl-semibold-letter-spacing: -1.44px;
      --display-2xl-semibold-line-height: 90px;
      --display-2xl-semibold-font-style: normal;
      --text-md-regular-font-family: "Plus Jakarta Sans", Helvetica;
      --text-md-regular-font-weight: 400;
      --text-md-regular-font-size: 16px;
      --text-md-regular-letter-spacing: 0px;
      --text-md-regular-line-height: 24px;
      --text-md-regular-font-style: normal;
      --text-md-semibold-font-family: "Plus Jakarta Sans", Helvetica;
      --text-md-semibold-font-weight: 600;
      --text-md-semibold-font-size: 16px;
      --text-md-semibold-letter-spacing: 0px;
      --text-md-semibold-line-height: 24px;
      --text-md-semibold-font-style: normal;
      --shadows-shadow-xs: 0px 1px 2px 0px rgba(16, 24, 40, 0.05);
      --variable-collection-spacing-1: 100px;
    }


    .navbar {
      display: flex;
      flex-direction: column;
      width: 1440px;
      align-items: center;
      justify-content: center;
      position: relative;
      background-color: var(--background-colorswhite);
    }

    .navbar .frame {
      display: flex;
      width: 1120px;
      align-items: center;
      justify-content: space-between;
      padding: 26px 0px;
      background-color: var(--background-colorswhite);
      position: relative;
      flex: 0 0 auto;
    }

    .navbar .div {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      position: relative;
      flex: 0 0 auto;
    }

    .navbar .frame-2 {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 10px;
      padding: 8px 12px;
      position: relative;
      flex: 0 0 auto;
    }

    .navbar .text {
      margin-top: -1.00px;
      font-family: var(--text-sm-semibold-font-family);
      font-weight: var(--text-sm-semibold-font-weight);
      color: var(--text-colors950);
      position: relative;
      width: fit-content;
      font-size: var(--text-sm-semibold-font-size);
      letter-spacing: var(--text-sm-semibold-letter-spacing);
      line-height: var(--text-sm-semibold-line-height);
      white-space: nowrap;
      font-style: var(--text-sm-semibold-font-style);
    }

    .navbar .arrow-chevron-down {
      position: relative;
      width: 20px;
      height: 20px;
    }

    .navbar .text-wrapper {
      margin-top: -1.00px;
      font-family: var(--text-sm-semibold-font-family);
      font-weight: var(--text-sm-semibold-font-weight);
      color: var(--brand-colors600);
      position: relative;
      width: fit-content;
      font-size: var(--text-sm-semibold-font-size);
      letter-spacing: var(--text-sm-semibold-letter-spacing);
      line-height: var(--text-sm-semibold-line-height);
      white-space: nowrap;
      font-style: var(--text-sm-semibold-font-style);
    }

    .navbar .frame-3 {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 16px;
      position: relative;
      flex: 0 0 auto;
    }

    .navbar .img-wrapper {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 10px;
      padding: 12px;
      background-color: var(--background-colorsgray-white-bg);
      border-radius: 50px;
      position: relative;
      flex: 0 0 auto;
    }

    .navbar .img {
      position: relative;
      width: 24px;
      height: 24px;
    }

    .navbar .frame-wrapper {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 10px;
      position: relative;
      flex: 0 0 auto;
    }

    .navbar .frame-4 {
      display: inline-flex;
      align-items: center;
      gap: 12px;
      position: relative;
      flex: 0 0 auto;
    }

    .navbar .image {
      position: relative;
      width: 44px;
      height: 44px;
      object-fit: cover;
    }

    .navbar .frame-5 {
      display: inline-flex;
      flex-direction: column;
      align-items: flex-start;
      position: relative;
      flex: 0 0 auto;
    }

    .navbar .text-wrapper-2 {
      position: relative;
      width: fit-content;
      margin-top: -1.00px;
      font-family: var(--text-lg-regular-font-family);
      font-weight: var(--text-lg-regular-font-weight);
      color: var(--text-colors950);
      font-size: var(--text-lg-regular-font-size);
      letter-spacing: var(--text-lg-regular-letter-spacing);
      line-height: var(--text-lg-regular-line-height);
      white-space: nowrap;
      font-style: var(--text-lg-regular-font-style);
    }

    .navbar .text-2 {
      font-family: var(--text-sm-regular-font-family);
      font-weight: var(--text-sm-regular-font-weight);
      color: var(--text-colors600);
      position: relative;
      width: fit-content;
      font-size: var(--text-sm-regular-font-size);
      letter-spacing: var(--text-sm-regular-letter-spacing);
      line-height: var(--text-sm-regular-line-height);
      white-space: nowrap;
      font-style: var(--text-sm-regular-font-style);
    }

  </style>
</head>
<body>
<div class="navbar">
  <div class="frame">
    <div class="div">
      <div class="frame-2"><div class="text">Home</div></div>
      <div class="frame-2">
        <div class="text">Pages</div>
        <img class="arrow-chevron-down" src="img/chevron-down.svg" />
      </div>
      <div class="frame-2">
        <div class="text">Resources</div>
        <img class="arrow-chevron-down" src="img/image.svg" />
      </div>
      <div class="frame-2"><div class="text-wrapper">Pricing</div></div>
    </div>
    <div class="frame-3">
      <div class="img-wrapper"><img class="img" src="img/search-magnifying-glass.svg" /></div>
      <img class="img" src="img/bell.svg" />
      <div class="frame-wrapper">
        <div class="frame-4">
          <img class="image" src="img/image-2136.png" />
          <div class="frame-5">
            <div class="text-wrapper-2">Niklas Schmidt</div>
            <div class="text-2">Stylist Artist</div>
          </div>
        </div>
      </div>
      <div class="img-wrapper"><img class="img" src="img/caret-down-MD.svg" /></div>
    </div>
  </div>
</div>

<%--hero banner--%>

<div class="frame">
  <div class="div">
    <div class="div-2">
      <p class="text-wrapper">Adapting and Thriving in a Changing World</p>
      <p class="p">
        Our comprehensive guide to strategies for entrepreneurs and leaders offers valuable insights, practical
        advice.
      </p>
    </div>
    <div class="div-3">
      <button class="buttons-button"><div class="text">Get Started</div></button>
      <button class="button">
        <div class="text-2">Learn More</div>
        <img class="arrow-arrow-right-MD" src="img/arrow-right-MD.svg" />
      </button>
    </div>
  </div>
  <div class="div-4"></div>
</div>



</body>
</html>

</body>
</html>

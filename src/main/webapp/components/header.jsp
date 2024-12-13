<div
        class="Navigation inline-flex h-[220px] w-full flex-col items-start justify-start"
>
  <div
          class="TopNav inline-flex w-full items-center justify-between bg-[#1b6392] px-[300px] py-3 shadow-inner border-b border-white border-opacity-20 "
  >
    <div
            class="WelcomeToCliconOnlineEcommerceStore font-['Public Sans'] text-sm font-normal leading-tight text-white"
    >
      Welcome to Clicon online eCommerce store.
    </div>
    <div class="LeftContent flex items-center justify-center gap-6">
      <div class="FollowUs flex items-center justify-center gap-3">
        <div
                class="FollowUs font-['Public Sans'] text-sm font-normal leading-tight text-white"
        >
          Follow us:
        </div>
        <div class="SocialIcon flex items-start justify-start gap-3">
          <a href="#">
            <div class="relative size-4">
              <img
                      class="twitter"
                      src="${pageContext.request.contextPath}/assets/img/icons/navigation/Twitter.svg"
                      alt="Twitter"
              />
            </div>
          </a
          ><a href="#">
          <div class="relative size-4">
            <img
                    src="${pageContext.request.contextPath}/assets/img/icons/navigation/Facebook.svg"
                    alt="Facebook"
            />
          </div>
        </a
        ><a href="#">
          <div class="relative size-4">
            <img
                    src="${pageContext.request.contextPath}/assets/img/icons/navigation/Pinterest.svg"
                    alt="Pinterest"
            />
          </div>
        </a
        ><a href="#">
          <div class="relative size-4">
            <img src="${pageContext.request.contextPath}/assets/img/icons/navigation/Reddit.svg" alt="Reddit"/>
          </div>
        </a
        ><a href="#">
          <div class="relative size-4">
            <img
                    src="${pageContext.request.contextPath}/assets/img/icons/navigation/Youtube.svg"
                    alt="Youtube"
            />
          </div>
        </a
        ><a href="#">
          <div class="relative size-4">
            <img
                    src="${pageContext.request.contextPath}/assets/img/icons/navigation/Instagram.svg"
                    alt="Instagram"
            />
          </div>
        </a>
        </div>
      </div>
      <div
              class="Line1 h-[0px] w-7 origin-top-left rotate-90 border border-white opacity-20"
      ></div>
      <div
              class="MultiLanguageDrodpwon flex h-5 w-11 items-center justify-center"
      >
        <div class="Dropdown inline-flex items-center justify-center gap-1.5">
          <div
                  class="Eng font-['Public Sans'] text-sm font-normal leading-tight text-white"
          >
            Eng
          </div>
          <div class="RegularCaretdown relative h-3 w-3 opacity-50">
            <img src="${pageContext.request.contextPath}/assets/img/icons/navigation/CaretDownGray.svg" alt=""/>
          </div>
        </div>
      </div>
      <div
              class="MultiCurrencyDropdown flex h-5 w-[47px] items-center justify-center"
      >
        <div class="Dropdown inline-flex items-center justify-center gap-1.5">
          <div
                  class="Usd font-['Public Sans'] text-sm font-normal leading-tight text-white"
          >
            USD
          </div>
          <div class="RegularCaretdown relative h-3 w-3 opacity-50">
            <img src="${pageContext.request.contextPath}/assets/img/icons/navigation/CaretDownGray.svg" alt=""/>
          </div>
        </div>
      </div>
    </div>
  </div>

  <%--  Middle navigation--%>
  <section
          class="middle-nav inline-flex h-[88px] w-full items-center justify-between bg-secondary-700 px-[300px]"
  >
    <!-- Logo section -->
    <a href="#" class="logo-box inline-flex items-center justify-start gap-2">
      <div class="logo-img">
        <img src="assets/img/icons/navigation/Logo.svg" alt="" srcset=""/>
      </div>
      <div class="text-[32px] font-bold uppercase leading-10 text-white">
        Clicon
      </div>
    </a>
    <!-- Search box -->
    <div
            class="search-box focus-visible:no-outline focus- inline-flex h-12 items-center justify-start gap-2 rounded-sm bg-white px-5 py-3.5"
    >
      <input
              type="text"
              class="w-[578px] focus:outline-none"
              value=""
              placeholder="Search for anything..."
      />
      <div class="search-icon relative size-5">
        <img src="assets/img/icons/navigation/MagnifyingGlass.svg" alt=""/>
      </div>
    </div>
    <!-- Icon box -->
    <div class="icon-box inline-flex items-center justify-start gap-6">
      <div class="shopping-cart relative size-8">
        <div>
          <img src="assets/img/icons/navigation/ShoppingCart.svg" alt=""/>
        </div>

        <div
                class="absolute right-[-4px] top-[-4px] inline-flex size-5 items-center justify-center rounded-full bg-white px-0.5 py-0.5"
        >
          <div
                  class="font-semiboldt font-['Public Sans'] w-5 text-center text-xs leading-none text-secondary-700"
          >
            50
          </div>
        </div>
      </div>
      <div><img src="assets/img/icons/navigation/Heart.svg" alt=""/></div>
      <div><img src="assets/img/icons/navigation/User.svg" alt=""/></div>
    </div>
  </section>
  <%--bottom nav--%>
  <div
          class="BottomNav inline-flex w-full items-center justify-between bg-white px-[300px] py-4 shadow-inner"
  >
    <div class="LeftSide flex items-center justify-center gap-6">
      <div class="Category flex h-12 w-[154px] items-center justify-center">
        <div
                class="Button inline-flex items-center justify-center gap-2 rounded-sm bg-[#f2f3f4] px-6 py-3.5"
        >
          <div
                  class="Label font-['Public Sans'] text-sm font-medium leading-tight text-[#191c1e]"
          >
            All Category
          </div>
          <div class="RegularCaretdown relative h-4 w-4">
            <img src="${pageContext.request.contextPath}/assets/img/icons/navigation/CaretDown.svg" alt=""/>
          </div>
        </div>
      </div>
      <a href="#" class="TrackOrder flex items-center justify-start gap-1.5">
        <div  class="RegularMappinline relative h-6 w-6">
          <img src="${pageContext.request.contextPath}/assets/img/icons/navigation/MapPinLine.svg" alt=""/>
        </div>
        <div
                class="TrackOrder font-['Public Sans'] text-sm font-normal leading-tight text-[#5f6c72]"
        >
          Track Order
        </div>
      </a>
      <a href="#" class="Compare flex items-center justify-start gap-1.5">
        <div  class="DuotoneArrowscounterclockwise relative h-6 w-6">
          <img
                  src="${pageContext.request.contextPath}/assets/img/icons/navigation/ArrowsCounterClockwise.svg"
                  alt=""
          />
        </div>
        <div
                class="Compare font-['Public Sans'] text-sm font-normal leading-tight text-[#5f6c72]"
        >
          Compare
        </div>
      </a>
      <a href="#" class="CustomerSupport flex items-center justify-start gap-1.5">
        <div  class="RegularHeadphones relative h-6 w-6">
          <img src="${pageContext.request.contextPath}/assets/img/icons/navigation/Headphones.svg" alt=""/>
        </div>
        <div
                class="CustomerSupport font-['Public Sans'] text-sm font-normal leading-tight text-[#5f6c72]"
        >
          Customer Support
        </div>
      </a>
      <a href="#" class="NeedHelp flex items-center justify-start gap-1.5">
        <div  class="RegularInfo relative h-6 w-6">
          <img src="${pageContext.request.contextPath}/assets/img/icons/navigation/Info.svg" alt=""/>
        </div>
        <div
                class="NeedHelp font-['Public Sans'] text-sm font-normal leading-tight text-[#5f6c72]"
        >
          Need Help
        </div>
      </a>
    </div>
    <a href="#" class="CallNow flex items-center justify-center gap-2">
      <div  class="RegularPhonecall relative h-7 w-7">
        <img src="${pageContext.request.contextPath}/assets/img/icons/navigation/PhoneCall.svg" alt=""/>
      </div>
      <div
              class="12025550104 font-['Public Sans'] text-lg font-normal leading-normal text-[#191c1e]"
      >
        +1-202-555-0104
      </div>
    </a>
  </div>
</div>

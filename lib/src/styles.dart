import "package:flutter/material.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppStyles {
  static const primaryColorGradientOne = Color(0xFF92A3FD);
  static const primaryColorGradientTwo = Color(0xFF9DCEFF);
  static const secondaryColorGradientOne = Color(0xFFC58BF2);
  static const secondaryColorGradientThree = Color(0XFFEEA4CE);
  static const secondaryGradient = Color(0XFFB4C0FE);
  static const blackColor = Color(0xFF1D1617);
  static const whiteColor = Color(0xFFFFFFFF);
  static const greyColor = Color(0xFF7B6F72);
  static const greyVariant = Color(0xFFADA4A5);
  static const greyVariantTwo = Color(0XFF92A3FD);
  static const dividerColor = Color(0XFFDDDADA);
  static const textInputFieldBackground = Color(0XFFF7F8F8);
  static const progressBackgroundColors = Color(0XFFF7F8F8);
  static const buttonShadowColor = Color(0XFF95ADFE);
  // ignore: use_full_hex_values_for_flutter_colors
  static const pinkShadowColor = Color(0xff4dc58bf2);
  static const boxShadowOne = Color(0XFF1D242A);
  static const boxShadowActivity = Color(0XFF1D1617);
  static const boxShadowTwo = Color(0XFF1D1617);
  static const textColor = Color(0XFFA4A9AD);
  static const workoutFrameColor = Color(0XFFC4C4C4);

  static var poppinsBold = GoogleFonts.poppins(fontWeight: FontWeight.w700);

  static var poppinsMedium = GoogleFonts.poppins(
    fontWeight: FontWeight.w500,
  );
  static var poppinsRegular = GoogleFonts.poppins(fontWeight: FontWeight.w200);
  static var semiRegular = GoogleFonts.poppins(fontWeight: FontWeight.w400);
  static var poppinsSemiBold = GoogleFonts.poppins(fontWeight: FontWeight.w600);
  static var marginLeftRight = 30.w;
  static var marginTop = 40.h;
  static var buttonVerticalPadding = 18.h;
  static var buttonBorderRadius = 99.r;

  static final Widget personSvg = SvgPicture.string(
    '''
<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
<g id="Iconly/Light/Profile">
<g id="Profile">
<path id="Stroke 1" fill-rule="evenodd" clip-rule="evenodd" d="M11.9849 15.3462C8.11731 15.3462 4.81445 15.931 4.81445 18.2729C4.81445 20.6148 8.09636 21.2205 11.9849 21.2205C15.8525 21.2205 19.1545 20.6348 19.1545 18.2938C19.1545 15.9529 15.8735 15.3462 11.9849 15.3462Z" stroke="#130F26" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
<path id="Stroke 3" fill-rule="evenodd" clip-rule="evenodd" d="M11.9849 12.0059C14.523 12.0059 16.5801 9.94779 16.5801 7.40969C16.5801 4.8716 14.523 2.81445 11.9849 2.81445C9.44679 2.81445 7.3887 4.8716 7.3887 7.40969C7.38013 9.93922 9.42394 11.9973 11.9525 12.0059H11.9849Z" stroke="#130F26" stroke-width="1.42857" stroke-linecap="round" stroke-linejoin="round"/>
</g>
</g>
</svg>

''',
    colorFilter: const ColorFilter.mode(greyColor, BlendMode.srcIn),
  );

  static final Widget outlinePersonSvg = SvgPicture.string(
    '''
      <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
      <path fill-rule="evenodd" clip-rule="evenodd" d="M11.9847 15.3462C8.11707 15.3462 4.81421 15.931 4.81421 18.2729C4.81421 20.6148 8.09611 21.2205 11.9847 21.2205C15.8523 21.2205 19.1542 20.6348 19.1542 18.2938C19.1542 15.9529 15.8733 15.3462 11.9847 15.3462Z" stroke="#ADA4A5" stroke-width="1.2" stroke-linecap="round" stroke-linejoin="round"/>
      <path fill-rule="evenodd" clip-rule="evenodd" d="M11.9846 12.0059C14.5227 12.0059 16.5799 9.94779 16.5799 7.40969C16.5799 4.8716 14.5227 2.81445 11.9846 2.81445C9.44655 2.81445 7.38845 4.8716 7.38845 7.40969C7.37988 9.93922 9.42369 11.9973 11.9523 12.0059H11.9846Z" stroke="#ADA4A5" stroke-width="1.2" stroke-linecap="round" stroke-linejoin="round"/>
      </svg>

      ''',
  );

  static final Widget lockSvg = SvgPicture.string(
    '''
<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
<g id="Iconly/Light/Lock">
<g id="Lock">
<path id="Stroke 1" d="M16.4232 9.4478V7.3008C16.4232 4.7878 14.3852 2.7498 11.8722 2.7498C9.35925 2.7388 7.31325 4.7668 7.30225 7.2808V7.3008V9.4478" stroke="#130F26" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
<path id="Stroke 3" fill-rule="evenodd" clip-rule="evenodd" d="M15.683 21.2496H8.042C5.948 21.2496 4.25 19.5526 4.25 17.4576V13.1686C4.25 11.0736 5.948 9.37659 8.042 9.37659H15.683C17.777 9.37659 19.475 11.0736 19.475 13.1686V17.4576C19.475 19.5526 17.777 21.2496 15.683 21.2496Z" stroke="#130F26" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
<path id="Stroke 5" d="M11.8628 14.2028V16.4238" stroke="#130F26" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
</g>
</g>
</svg>

''',
    colorFilter: const ColorFilter.mode(greyColor, BlendMode.srcIn),
  );

  static final Widget emailSvg = SvgPicture.string(
    '''
<svg width="18" height="16" viewBox="0 0 18 16" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M13.427 5.63837L10.0945 8.34815C9.46492 8.84765 8.57908 8.84765 7.94946 8.34815L4.58887 5.63837" stroke="#7B6F72" stroke-width="1.2" stroke-linecap="round" stroke-linejoin="round"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M12.6816 14.75C14.9627 14.7563 16.5 12.8822 16.5 10.5788V5.42751C16.5 3.12412 14.9627 1.25 12.6816 1.25H5.31835C3.03734 1.25 1.5 3.12412 1.5 5.42751V10.5788C1.5 12.8822 3.03734 14.7563 5.31835 14.75H12.6816Z" stroke="#7B6F72" stroke-width="1.2" stroke-linecap="round" stroke-linejoin="round"/>
</svg>
''',
    colorFilter: const ColorFilter.mode(greyColor, BlendMode.srcIn),
  );

  static final Widget visibilityHideSvg = SvgPicture.string(
    '''
<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
<g id="Iconly/Light/Hide">
<g id="Hide">
<path id="Stroke 1" d="M9.76045 14.3668C9.18545 13.7928 8.83545 13.0128 8.83545 12.1378C8.83545 10.3848 10.2474 8.9718 11.9994 8.9718C12.8664 8.9718 13.6644 9.3228 14.2294 9.8968" stroke="#130F26" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
<path id="Stroke 3" d="M15.1049 12.699C14.8729 13.989 13.8569 15.007 12.5679 15.241" stroke="#130F26" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
<path id="Stroke 5" d="M6.65451 17.4724C5.06751 16.2264 3.72351 14.4064 2.74951 12.1374C3.73351 9.85835 5.08651 8.02835 6.68351 6.77235C8.27051 5.51635 10.1015 4.83435 11.9995 4.83435C13.9085 4.83435 15.7385 5.52635 17.3355 6.79135" stroke="#130F26" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
<path id="Stroke 7" d="M19.4473 8.99084C20.1353 9.90484 20.7403 10.9598 21.2493 12.1368C19.2823 16.6938 15.8063 19.4388 11.9993 19.4388C11.1363 19.4388 10.2853 19.2988 9.46729 19.0258" stroke="#130F26" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
<path id="Stroke 9" d="M19.8868 4.24963L4.11279 20.0236" stroke="#130F26" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
</g>
</g>
</svg>
''',
    colorFilter: const ColorFilter.mode(greyColor, BlendMode.srcIn),
  );

  static final Widget visibilityShowSvg = SvgPicture.string(
    '''
<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
<g id="Iconly/Light/Show">
<g id="Show">
<path id="Stroke 1" fill-rule="evenodd" clip-rule="evenodd" d="M15.1614 12.0531C15.1614 13.7991 13.7454 15.2141 11.9994 15.2141C10.2534 15.2141 8.83838 13.7991 8.83838 12.0531C8.83838 10.3061 10.2534 8.89111 11.9994 8.89111C13.7454 8.89111 15.1614 10.3061 15.1614 12.0531Z" stroke="#130F26" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
<path id="Stroke 3" fill-rule="evenodd" clip-rule="evenodd" d="M11.998 19.3549C15.806 19.3549 19.289 16.6169 21.25 12.0529C19.289 7.48885 15.806 4.75085 11.998 4.75085H12.002C8.194 4.75085 4.711 7.48885 2.75 12.0529C4.711 16.6169 8.194 19.3549 12.002 19.3549H11.998Z" stroke="#130F26" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
</g>
</g>
</svg>
''',
    colorFilter: const ColorFilter.mode(greyColor, BlendMode.srcIn),
  );

  static final Widget calendarSvg = SvgPicture.string(
    '''
<svg width="16" height="18" viewBox="0 0 16 18" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M1.31946 7.0531H14.6874" stroke="#7B6F72" stroke-width="1.2" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M11.3316 9.9823H11.3385" stroke="#7B6F72" stroke-width="1.2" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M8.00347 9.9823H8.01042" stroke="#7B6F72" stroke-width="1.2" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M4.66839 9.9823H4.67534" stroke="#7B6F72" stroke-width="1.2" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M11.3316 12.8971H11.3385" stroke="#7B6F72" stroke-width="1.2" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M8.00347 12.8971H8.01042" stroke="#7B6F72" stroke-width="1.2" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M4.66839 12.8971H4.67534" stroke="#7B6F72" stroke-width="1.2" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M11.0328 1.5V3.96809" stroke="#7B6F72" stroke-width="1.2" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M4.97411 1.5V3.96809" stroke="#7B6F72" stroke-width="1.2" stroke-linecap="round" stroke-linejoin="round"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M11.1787 2.68433H4.82822C2.6257 2.68433 1.25 3.91128 1.25 6.1666V12.9538C1.25 15.2446 2.6257 16.4999 4.82822 16.4999H11.1718C13.3812 16.4999 14.75 15.2659 14.75 13.0106V6.1666C14.7569 3.91128 13.3882 2.68433 11.1787 2.68433Z" stroke="#7B6F72" stroke-width="1.2" stroke-linecap="round" stroke-linejoin="round"/>
</svg>
''',
    colorFilter: const ColorFilter.mode(greyColor, BlendMode.srcIn),
  );

  static final Widget heightSvg = SvgPicture.string(
    '''
<svg width="18" height="18" viewBox="0 0 18 18" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M12.6297 15.1232V4.90991" stroke="#7B6F72" stroke-width="1.2" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M15.688 12.051L12.6296 15.1235L9.57129 12.051" stroke="#7B6F72" stroke-width="1.2" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M5.18339 2.87476V13.0881" stroke="#7B6F72" stroke-width="1.2" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M2.12512 5.94677L5.18346 2.87427L8.24179 5.94677" stroke="#7B6F72" stroke-width="1.2" stroke-linecap="round" stroke-linejoin="round"/>
</svg>
''',
    colorFilter: const ColorFilter.mode(greyColor, BlendMode.srcIn),
  );

  static final Widget weightSvg = SvgPicture.string(
    '''
<svg width="18" height="18" viewBox="0 0 18 18" fill="none" xmlns="http://www.w3.org/2000/svg">
<g clip-path="url(#clip0_379_4206)">
<path d="M1.58203 0.5H16.418C17.0141 0.5 17.5 0.985859 17.5 1.58203V16.418C17.5 17.0141 17.0141 17.5 16.418 17.5H1.58203C0.985859 17.5 0.5 17.0141 0.5 16.418V1.58203C0.5 0.985859 0.985859 0.5 1.58203 0.5ZM16.418 17.4453C16.9848 17.4453 17.4453 16.9848 17.4453 16.418V1.58203C17.4453 1.01516 16.9848 0.554688 16.418 0.554688H1.58203C1.01516 0.554688 0.554688 1.01516 0.554688 1.58203V16.418C0.554688 16.9848 1.01516 17.4453 1.58203 17.4453H16.418Z" stroke="#7B6F72"/>
<path d="M11.9655 8.35389L11.9657 8.35399C11.9775 8.36288 11.9946 8.36062 12.0037 8.34847L12.0037 8.34842L14.7875 4.64493L14.7876 4.64481C14.7919 4.63912 14.7938 4.63193 14.7928 4.62475L14.7927 4.62434C14.7917 4.61751 14.788 4.61088 14.7819 4.60635C13.1006 3.34549 11.1028 2.67969 9.00013 2.67969C6.89752 2.67969 4.89968 3.34549 3.21834 4.60635C3.21224 4.61093 3.20839 4.61758 3.20737 4.62475L11.9655 8.35389ZM11.9655 8.35389C11.1042 7.70793 10.0771 7.36566 9.00013 7.36566C7.92301 7.36566 6.89616 7.70792 6.03481 8.35384L11.9655 8.35389ZM11.6011 8.04028L11.9887 8.27749L12.2618 7.91422L14.4177 5.04597L14.736 4.62243L14.2948 4.32914C12.7226 3.28413 10.9022 2.73438 9.00013 2.73438C7.09809 2.73438 5.27771 3.28413 3.70549 4.32914L3.26423 4.62243L3.58258 5.04597L5.73851 7.91422L6.01156 8.27749L6.39919 8.04028C7.04542 7.64481 7.76488 7.40543 8.51987 7.33402L8.97279 7.29119V6.83624V5.22894C8.97279 5.21381 8.985 5.2016 9.00013 5.2016C9.01527 5.2016 9.02748 5.21381 9.02748 5.22894V6.83624V7.29119L9.4804 7.33402C10.2354 7.40543 10.9549 7.64481 11.6011 8.04028ZM3.21273 4.64512C3.21272 4.6451 3.2127 4.64508 3.21268 4.64506L6.03474 8.35389C6.03162 8.35622 6.02902 8.35741 6.02684 8.35813C6.02446 8.35891 6.02173 8.35938 6.01872 8.35938C6.01404 8.35938 6.00952 8.35827 6.00585 8.35648C6.00271 8.35494 5.99958 8.35267 5.99633 8.34834L3.21273 4.64512Z" stroke="#7B6F72"/>
</g>
<defs>
<clipPath id="clip0_379_4206">
<rect width="18" height="18" fill="white"/>
</clipPath>
</defs>
</svg>

''',
    colorFilter: const ColorFilter.mode(greyColor, BlendMode.srcIn),
  );

  static final Widget twoUsersSvg = SvgPicture.string(
    '''
<svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
<path fill-rule="evenodd" clip-rule="evenodd" d="M6.19363 10.405C8.96038 10.405 11.3251 10.8243 11.3251 12.499C11.3251 14.1738 8.97613 14.605 6.19363 14.605C3.42613 14.605 1.06213 14.1895 1.06213 12.514C1.06213 10.8385 3.41038 10.405 6.19363 10.405Z" stroke="#7B6F72" stroke-width="1.2" stroke-linecap="round" stroke-linejoin="round"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M6.19367 8.01476C4.37717 8.01476 2.90417 6.54251 2.90417 4.72601C2.90417 2.90951 4.37717 1.43726 6.19367 1.43726C8.00942 1.43726 9.48242 2.90951 9.48242 4.72601C9.48917 6.53576 8.02667 8.00801 6.21692 8.01476H6.19367Z" stroke="#7B6F72" stroke-width="1.2" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M11.3623 7.16121C12.5631 6.99246 13.4878 5.96196 13.4901 4.71471C13.4901 3.48546 12.5938 2.46546 11.4186 2.27271" stroke="#7B6F72" stroke-width="1.2" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M12.9465 10.0491C14.1098 10.2223 14.922 10.6303 14.922 11.4703C14.922 12.0486 14.5395 12.4236 13.9215 12.6583" stroke="#7B6F72" stroke-width="1.2" stroke-linecap="round" stroke-linejoin="round"/>
</svg>

''',
    colorFilter: const ColorFilter.mode(greyColor, BlendMode.srcIn),
  );

  static final Widget arrowRightSvg = SvgPicture.string(
    '''
<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M8.5 5L15.5 12L8.5 19" stroke="#130F26" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
</svg>


''',
    colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
  );
  static final Widget dropDownSvg = SvgPicture.string(
    '''
<svg width="18" height="18" viewBox="0 0 18 18" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M14.25 6.375L9 11.625L3.75 6.375" stroke="#ADA4A5" stroke-width="1.2" stroke-linecap="round" stroke-linejoin="round"/>
</svg>



''',
    colorFilter: const ColorFilter.mode(whiteColor, BlendMode.srcIn),
  );

  static final Widget loginSvg = SvgPicture.string(
    '''
<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
<g id="Iconly/Bold/Login">
<g id="Login">
<path id="Login_2" fill-rule="evenodd" clip-rule="evenodd" d="M11.8861 2H16.9254C19.445 2 21.5 4 21.5 6.44V17.56C21.5 20.01 19.445 22 16.9047 22H11.8758C9.35611 22 7.29083 20.01 7.29083 17.57V12.77H13.6932L12.041 14.37C11.7312 14.67 11.7312 15.16 12.041 15.46C12.1959 15.61 12.4024 15.68 12.6089 15.68C12.8051 15.68 13.0117 15.61 13.1666 15.46L16.1819 12.55C16.3368 12.41 16.4194 12.21 16.4194 12C16.4194 11.8 16.3368 11.6 16.1819 11.46L13.1666 8.55C12.8568 8.25 12.3508 8.25 12.041 8.55C11.7312 8.85 11.7312 9.34 12.041 9.64L13.6932 11.23H7.29083V6.45C7.29083 4 9.35611 2 11.8861 2ZM2.5 11.9999C2.5 11.5799 2.85523 11.2299 3.2815 11.2299H7.29052V12.7699H3.2815C2.85523 12.7699 2.5 12.4299 2.5 11.9999Z" fill="#130F26"/>
</g>
</g>
</svg>



''',
    colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
  );

  static final Widget homeSvg = SvgPicture.string(
    '''
<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
<path fill-rule="evenodd" clip-rule="evenodd" d="M9.15722 20.7714V17.7047C9.1572 16.9246 9.79312 16.2908 10.581 16.2856H13.4671C14.2587 16.2856 14.9005 16.9209 14.9005 17.7047V20.7809C14.9003 21.4432 15.4343 21.9845 16.103 22H18.0271C19.9451 22 21.5 20.4607 21.5 18.5618V9.83784C21.4898 9.09083 21.1355 8.38935 20.538 7.93303L13.9577 2.6853C12.8049 1.77157 11.1662 1.77157 10.0134 2.6853L3.46203 7.94256C2.86226 8.39702 2.50739 9.09967 2.5 9.84736V18.5618C2.5 20.4607 4.05488 22 5.97291 22H7.89696C8.58235 22 9.13797 21.4499 9.13797 20.7714" fill="url(#paint0_linear_83_2101)"/>
<defs>
<linearGradient id="paint0_linear_83_2101" x1="21.5" y1="22" x2="-3.83778" y2="20.1374" gradientUnits="userSpaceOnUse">
<stop stop-color="#C58BF2"/>
<stop offset="1" stop-color="#EEA4CE"/>
</linearGradient>
</defs>
</svg>

''',
  );

  static final Widget homeNoGradientSvg = SvgPicture.string(
    '''
<svg width="22" height="22" viewBox="0 0 22 22" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M8.15722 19.7714V16.7047C8.1572 15.9246 8.79312 15.2908 9.58101 15.2856H12.4671C13.2587 15.2856 13.9005 15.9209 13.9005 16.7047V16.7047V19.7809C13.9003 20.4432 14.4343 20.9845 15.103 21H17.0271C18.9451 21 20.5 19.4607 20.5 17.5618V17.5618V8.83784C20.4898 8.09083 20.1355 7.38935 19.538 6.93303L12.9577 1.6853C11.8049 0.771566 10.1662 0.771566 9.01342 1.6853L2.46203 6.94256C1.86226 7.39702 1.50739 8.09967 1.5 8.84736V17.5618C1.5 19.4607 3.05488 21 4.97291 21H6.89696C7.58235 21 8.13797 20.4499 8.13797 19.7714V19.7714" stroke="#ADA4A5" stroke-width="1.2" stroke-linecap="round" stroke-linejoin="round"/>
</svg>


''',
  );
  static final Widget activitySvg = SvgPicture.string(
    '''
<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
<path fill-rule="evenodd" clip-rule="evenodd" d="M17.1798 4.41C17.1798 3.08 18.2598 2 19.5898 2C20.9198 2 21.9998 3.08 21.9998 4.41C21.9998 5.74 20.9198 6.82 19.5898 6.82C18.2598 6.82 17.1798 5.74 17.1798 4.41ZM13.3297 14.7593L16.2197 11.0303L16.1797 11.0503C16.3397 10.8303 16.3697 10.5503 16.2597 10.3003C16.1507 10.0503 15.9097 9.8803 15.6507 9.8603C15.3797 9.8303 15.1107 9.9503 14.9497 10.1703L12.5307 13.3003L9.75969 11.1203C9.58969 10.9903 9.38969 10.9393 9.18969 10.9603C8.99069 10.9903 8.81069 11.0993 8.68969 11.2593L5.73069 15.1103L5.66969 15.2003C5.49969 15.5193 5.57969 15.9293 5.87969 16.1503C6.01969 16.2403 6.16969 16.3003 6.33969 16.3003C6.57069 16.3103 6.78969 16.1893 6.92969 16.0003L9.43969 12.7693L12.2897 14.9103L12.3797 14.9693C12.6997 15.1393 13.0997 15.0603 13.3297 14.7593ZM15.4497 3.7803C15.4097 4.0303 15.3897 4.2803 15.3897 4.5303C15.3897 6.7803 17.2097 8.5993 19.4497 8.5993C19.6997 8.5993 19.9397 8.5703 20.1897 8.5303V16.5993C20.1897 19.9903 18.1897 22.0003 14.7897 22.0003H7.40069C3.99969 22.0003 1.99969 19.9903 1.99969 16.5993V9.2003C1.99969 5.8003 3.99969 3.7803 7.40069 3.7803H15.4497Z" fill="url(#paint0_linear_83_2428)"/>
<defs>
<linearGradient id="paint0_linear_83_2428" x1="21.9998" y1="22.0003" x2="-4.65621" y2="19.9377" gradientUnits="userSpaceOnUse">
<stop stop-color="#C58BF2"/>
<stop offset="1" stop-color="#EEA4CE"/>
</linearGradient>
</defs>
</svg>


''',
  );

  static final Widget activityNoGradienttSvg = SvgPicture.string(
    '''
<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M7.24481 14.7815L10.2379 10.8914L13.6521 13.5733L16.5812 9.79297" stroke="#ADA4A5" stroke-width="1.2" stroke-linecap="round" stroke-linejoin="round"/>
<circle cx="19.9954" cy="4.20027" r="1.9222" stroke="#ADA4A5" stroke-width="1.2" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M14.9245 3.12012H7.65673C4.64529 3.12012 2.77802 5.25284 2.77802 8.26428V16.3467C2.77802 19.3581 4.60868 21.4817 7.65673 21.4817H16.2609C19.2723 21.4817 21.1396 19.3581 21.1396 16.3467V9.30776" stroke="#ADA4A5" stroke-width="1.2" stroke-linecap="round" stroke-linejoin="round"/>
</svg>


''',
  );
  static final Widget searchSvg = SvgPicture.string(
    '''
<svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
<circle cx="9.80547" cy="9.80541" r="7.49047" stroke="white" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M15.0153 15.4043L17.9519 18.3334" stroke="white" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
</svg>


''',
  );
  static final Widget cameraSvg = SvgPicture.string(
    '''
<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
<path fill-rule="evenodd" clip-rule="evenodd" d="M17.44 6.2364C17.48 6.30633 17.55 6.35627 17.64 6.35627C20.04 6.35627 22 8.3141 22 10.7114V16.6448C22 19.0422 20.04 21 17.64 21H6.36C3.95 21 2 19.0422 2 16.6448V10.7114C2 8.3141 3.95 6.35627 6.36 6.35627C6.44 6.35627 6.52 6.31632 6.55 6.2364L6.61 6.11654C6.64448 6.04397 6.67987 5.96943 6.71579 5.89376C6.97161 5.35492 7.25463 4.75879 7.43 4.40844C7.89 3.50943 8.67 3.00999 9.64 3H14.35C15.32 3.00999 16.11 3.50943 16.57 4.40844C16.7275 4.72308 16.9674 5.2299 17.1987 5.71839C17.2464 5.81921 17.2938 5.91924 17.34 6.01665L17.44 6.2364ZM16.71 10.0721C16.71 10.5716 17.11 10.9711 17.61 10.9711C18.11 10.9711 18.52 10.5716 18.52 10.0721C18.52 9.5727 18.11 9.16315 17.61 9.16315C17.11 9.16315 16.71 9.5727 16.71 10.0721ZM10.27 11.6204C10.74 11.1509 11.35 10.9012 12 10.9012C12.65 10.9012 13.26 11.1509 13.72 11.6104C14.18 12.0699 14.43 12.6792 14.43 13.3285C14.42 14.667 13.34 15.7558 12 15.7558C11.35 15.7558 10.74 15.5061 10.28 15.0466C9.82 14.5871 9.57 13.9778 9.57 13.3285V13.3185C9.56 12.6892 9.81 12.0799 10.27 11.6204ZM14.77 16.1054C14.06 16.8147 13.08 17.2542 12 17.2542C10.95 17.2542 9.97 16.8446 9.22 16.1054C8.48 15.3563 8.07 14.3774 8.07 13.3285C8.06 12.2897 8.47 11.3108 9.21 10.5616C9.96 9.81243 10.95 9.40289 12 9.40289C13.05 9.40289 14.04 9.81243 14.78 10.5516C15.52 11.3008 15.93 12.2897 15.93 13.3285C15.92 14.4173 15.48 15.3962 14.77 16.1054Z" fill="url(#paint0_linear_83_2468)"/>
<defs>
<linearGradient id="paint0_linear_83_2468" x1="22" y1="21" x2="-4.6187" y2="18.7114" gradientUnits="userSpaceOnUse">
<stop stop-color="#C58BF2"/>
<stop offset="1" stop-color="#EEA4CE"/>
</linearGradient>
</defs>
</svg>




''',
  );

  static final Widget cameraNoGradientSvg = SvgPicture.string(
    '''
<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
<path fill-rule="evenodd" clip-rule="evenodd" d="M15.0402 4.05126C16.0502 4.45326 16.3592 5.85326 16.7722 6.30326C17.1852 6.75326 17.7762 6.90626 18.1032 6.90626C19.8412 6.90626 21.2502 8.31526 21.2502 10.0523V15.8473C21.2502 18.1773 19.3602 20.0673 17.0302 20.0673H6.97018C4.63918 20.0673 2.75018 18.1773 2.75018 15.8473V10.0523C2.75018 8.31526 4.15918 6.90626 5.89718 6.90626C6.22318 6.90626 6.81418 6.75326 7.22818 6.30326C7.64118 5.85326 7.94918 4.45326 8.95918 4.05126C9.97018 3.64926 14.0302 3.64926 15.0402 4.05126Z" stroke="#ADA4A5" stroke-width="1.2" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M17.4955 9.5H17.5045" stroke="#ADA4A5" stroke-width="1.2" stroke-linecap="round" stroke-linejoin="round"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M15.1789 13.128C15.1789 11.372 13.7559 9.94897 11.9999 9.94897C10.2439 9.94897 8.82086 11.372 8.82086 13.128C8.82086 14.884 10.2439 16.307 11.9999 16.307C13.7559 16.307 15.1789 14.884 15.1789 13.128Z" stroke="#ADA4A5" stroke-width="1.2" stroke-linecap="round" stroke-linejoin="round"/>
</svg>



''',
  );

  static final Widget personGradientSvg = SvgPicture.string(
    '''
<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
<path fill-rule="evenodd" clip-rule="evenodd" d="M17.294 7.29105C17.294 10.2281 14.9391 12.5831 12 12.5831C9.0619 12.5831 6.70601 10.2281 6.70601 7.29105C6.70601 4.35402 9.0619 2 12 2C14.9391 2 17.294 4.35402 17.294 7.29105ZM12 22C7.66237 22 4 21.295 4 18.575C4 15.8539 7.68538 15.1739 12 15.1739C16.3386 15.1739 20 15.8789 20 18.599C20 21.32 16.3146 22 12 22Z" fill="url(#paint0_linear_83_2509)"/>
<defs>
<linearGradient id="paint0_linear_83_2509" x1="20" y1="22" x2="-1.37048" y2="20.6771" gradientUnits="userSpaceOnUse">
<stop stop-color="#C58BF2"/>
<stop offset="1" stop-color="#EEA4CE"/>
</linearGradient>
</defs>
</svg>


''',
  );

  static final Widget notificationSvg = SvgPicture.string(
    '''
<svg width="18" height="18" viewBox="0 0 18 18" fill="none" xmlns="http://www.w3.org/2000/svg">
<mask id="mask0_414_4917" style="mask-type:luminance" maskUnits="userSpaceOnUse" x="2" y="0" width="15" height="14">
<path fill-rule="evenodd" clip-rule="evenodd" d="M2.25 0.75H16.1227V13.761H2.25V0.75Z" fill="white"/>
</mask>
<g mask="url(#mask0_414_4917)">
<path fill-rule="evenodd" clip-rule="evenodd" d="M9.18525 1.875C6.564 1.875 4.737 3.9285 4.737 5.77125C4.737 7.3305 4.30425 8.05125 3.92175 8.68725C3.615 9.198 3.37275 9.6015 3.37275 10.4782C3.498 11.8927 4.43175 12.636 9.18525 12.636C13.9125 12.636 14.8755 11.8597 15 10.4295C14.9977 9.6015 14.7555 9.198 14.4487 8.68725C14.0662 8.05125 13.6335 7.3305 13.6335 5.77125C13.6335 3.9285 11.8065 1.875 9.18525 1.875ZM9.18526 13.761C5.67826 13.761 2.50876 13.5135 2.25001 10.5262C2.24776 9.29025 2.62501 8.66175 2.95801 8.10825C3.29476 7.54725 3.61201 7.0185 3.61201 5.77125C3.61201 3.3465 5.85151 0.75 9.18526 0.75C12.519 0.75 14.7585 3.3465 14.7585 5.77125C14.7585 7.0185 15.0758 7.54725 15.4125 8.10825C15.7455 8.66175 16.1228 9.29025 16.1228 10.4782C15.861 13.5135 12.6923 13.761 9.18526 13.761Z" fill="#1D1617"/>
</g>
<path fill-rule="evenodd" clip-rule="evenodd" d="M9.14876 16.875H9.14726C8.30651 16.8742 7.51076 16.5037 6.90701 15.831C6.69926 15.6007 6.71801 15.2445 6.94901 15.0375C7.18001 14.829 7.53551 14.8477 7.74326 15.0795C8.13176 15.5122 8.63051 15.75 9.14801 15.75H9.14876C9.66851 15.75 10.1695 15.5122 10.5588 15.0787C10.7673 14.8485 11.1228 14.8297 11.353 15.0375C11.584 15.2452 11.6028 15.6015 11.395 15.8317C10.789 16.5045 9.99176 16.875 9.14876 16.875Z" fill="#1D1617"/>
<circle cx="12.5" cy="2.5" r="2.5" fill="#F7F8F8"/>
<circle cx="12.5" cy="2.5" r="1.5" fill="#FF0000"/>
</svg>


''',
  );

  static final Widget arrowRightGradientSvg = SvgPicture.string(
    '''
<svg width="14" height="14" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M4.9585 2.91658L9.04183 6.99992L4.9585 11.0833" stroke="url(#paint0_linear_414_5549)" stroke-width="1.2" stroke-linecap="round" stroke-linejoin="round"/>
<defs>
<linearGradient id="paint0_linear_414_5549" x1="9.04183" y1="2.91658" x2="7.38688" y2="13.6101" gradientUnits="userSpaceOnUse">
<stop stop-color="#C58BF2"/>
<stop offset="1" stop-color="#EEA4CE"/>
</linearGradient>
</defs>
</svg>



''',
  );

   static final Widget menu = SvgPicture.string(
    '''
<svg width="14" height="14" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M7.00008 7.58329C7.32225 7.58329 7.58341 7.32213 7.58341 6.99996C7.58341 6.67779 7.32225 6.41663 7.00008 6.41663C6.67792 6.41663 6.41675 6.67779 6.41675 6.99996C6.41675 7.32213 6.67792 7.58329 7.00008 7.58329Z" fill="#ADA4A5" stroke="#ADA4A5" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M7.00008 3.50004C7.32225 3.50004 7.58341 3.23887 7.58341 2.91671C7.58341 2.59454 7.32225 2.33337 7.00008 2.33337C6.67792 2.33337 6.41675 2.59454 6.41675 2.91671C6.41675 3.23887 6.67792 3.50004 7.00008 3.50004Z" fill="#ADA4A5" stroke="#ADA4A5" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M7.00008 11.6667C7.32225 11.6667 7.58341 11.4055 7.58341 11.0833C7.58341 10.7612 7.32225 10.5 7.00008 10.5C6.67792 10.5 6.41675 10.7612 6.41675 11.0833C6.41675 11.4055 6.67792 11.6667 7.00008 11.6667Z" fill="#ADA4A5" stroke="#ADA4A5" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
</svg>



''',
  );
  
    static final Widget dotMenu = SvgPicture.string(
  '''
<svg width="10" height="4" viewBox="0 0 10 4" fill="none" xmlns="http://www.w3.org/2000/svg">
<circle cx="2" cy="2" r="2" fill="#1D1617"/>
<circle cx="8" cy="2" r="2" fill="#1D1617"/>
</svg>
''',
  );
   static final Widget arrowLeft = SvgPicture.string(
  '''
<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M15.5 19L8.5 12L15.5 5" stroke="#1D1617" stroke-width="1.2" stroke-linecap="round" stroke-linejoin="round"/>
</svg>


''',

  );


}

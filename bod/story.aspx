<!DOCTYPE html>
<html lang="en-US">
<head>
  <meta charset="utf-8">
  <!-- Created using Storyline 360 - http://www.articulate.com  -->
  <!-- version: 3.37.21614.0 -->
  <title>The Benefits of Documentation</title>
  <meta http-equiv="x-ua-compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, shrink-to-fit=no, minimal-ui" />
  <meta name="apple-mobile-web-app-capable" content="yes" />
  <style>
    html, body { height: 100%; padding: 0; margin: 0 }
    #app { height: 100%; width: 100%; }
  </style>
  
  <script>window.THREE = { };</script>
</head>
<body style="background: #282828" class="cs-HTML theme-unified">
  <!-- 360 -->
  <script>!function(e){var n=/iPhone/i,t=/iPod/i,d=/iPad/i,s=/(?=.*\bAndroid\b)(?=.*\bMobile\b)/i,b=/Android/i,r=/(?=.*\bAndroid\b)(?=.*\bSD4930UR\b)/i,h=/(?=.*\bAndroid\b)(?=.*\b(?:KFOT|KFTT|KFJWI|KFJWA|KFSOWI|KFTHWI|KFTHWA|KFAPWI|KFAPWA|KFARWI|KFASWI|KFSAWI|KFSAWA)\b)/i,a=/IEMobile/i,l=/(?=.*\bWindows\b)(?=.*\bARM\b)/i,p=/BlackBerry/i,f=/BB10/i,u=/Opera Mini/i,c=/(CriOS|Chrome)(?=.*\bMobile\b)/i,w=/(?=.*\bFirefox\b)(?=.*\bMobile\b)/i,A=new RegExp("(?:Nexus 7|BNTV250|Kindle Fire|Silk|GT-P1000)","i"),v=function(e,i){return e.test(i)},i=function(e){var i=e||navigator.userAgent,o=i.split("[FBAN");if(void 0!==o[1]&&(i=o[0]),this.apple={phone:v(n,i),ipod:v(t,i),tablet:!v(n,i)&&v(d,i),device:v(n,i)||v(t,i)||v(d,i)},this.amazon={phone:v(r,i),tablet:!v(r,i)&&v(h,i),device:v(r,i)||v(h,i)},this.android={phone:v(r,i)||v(s,i),tablet:!v(r,i)&&!v(s,i)&&(v(h,i)||v(b,i)),device:v(r,i)||v(h,i)||v(s,i)||v(b,i)},this.windows={phone:v(a,i),tablet:v(l,i),device:v(a,i)||v(l,i)},this.other={blackberry:v(p,i),blackberry10:v(f,i),opera:v(u,i),firefox:v(w,i),chrome:v(c,i),device:v(p,i)||v(f,i)||v(u,i)||v(w,i)||v(c,i)},this.seven_inch=v(A,i),this.any=this.apple.device||this.android.device||this.windows.device||this.other.device||this.seven_inch,this.phone=this.apple.phone||this.android.phone||this.windows.phone,this.tablet=this.apple.tablet||this.android.tablet||this.windows.tablet,"undefined"==typeof window)return this},o=function(){var e=new i;return e.Class=i,e};"undefined"!=typeof module&&module.exports&&"undefined"==typeof window?module.exports=i:"undefined"!=typeof module&&module.exports&&"undefined"!=typeof window?module.exports=o():"function"==typeof define&&define.amd?define("isMobile",[],e.isMobile=o()):e.isMobile=o()}(this);
    window.isMobile.apple.tablet = window.isMobile.apple.tablet ||
      (navigator.platform === 'MacIntel' && navigator.maxTouchPoints > 1);
    window.isMobile.apple.device = window.isMobile.apple.device || window.isMobile.apple.tablet;
    window.isMobile.tablet = window.isMobile.tablet || window.isMobile.apple.tablet;
    window.isMobile.any = window.isMobile.any || window.isMobile.apple.tablet;
  </script>

  <div id="preso"></div>
  <script>
    window.DS = {};
    window.globals = {
      DATA_PATH_BASE: '',
      HAS_FRAME: true,
      HAS_SLIDE: true,

      lmsPresent: false,
      tinCanPresent: false,
      aoSupport: false,
      scale: 'noscale',
      captureRc: false,
      browserSize: 'optimal',
      bgColor: '#282828',
      features: '',
      themeName: 'unified',
      preloaderColor: '#FFFFFF',
      suppressAnalytics: false,
      productChannel: 'stable',
      publishSource: 'storyline',
      aid: 'aid|503bf0ab-4400-4e9e-b286-c3dc3c0d34f6',
      cid: 'c87377ef-e71c-4a71-b4f2-f1a5d50e9ffd',
      playerVersion: '3.37.21614.0',
      maxIosVideoElements: 5,

      
      parseParams: function(qs) {
        if (window.globals.parsedParams != null) {
          return window.globals.parsedParams;
        }
        qs = (qs || window.location.search.substr(1)).split('+').join(' ');
        var params = {},
            tokens,
            re = /[?&]?([^=]+)=([^&]*)/g;

        while (tokens = re.exec(qs)) {
          params[decodeURIComponent(tokens[1]).trim()] =
            decodeURIComponent(tokens[2]).trim();
        }
        window.globals.parsedParams = params;
        return params;
      }

    };

    (function() {

      var classTypes = [ 'desktop', 'mobile', 'phone', 'tablet' ];

      var addDeviceClasses = function(prefix, testObj) {
        var curr, i;
        for (i = 0; i < classTypes.length; i++) {
          curr = classTypes[i];
          if (testObj[curr]) {
            document.body.classList.add(prefix + curr);
          }
        }
      };

      var params = window.globals.parseParams(),
          isDevicePreview = params.devicepreview === '1',
          isPhoneOverride = params.deviceType === 'phone' || (isDevicePreview && params.phone == '1'),
          isTabletOverride = (params.deviceType === 'tablet' || isDevicePreview) && !isPhoneOverride,
          isMobileOverride = isPhoneOverride || isTabletOverride;

      var deviceView = {
        desktop: !window.isMobile.any && !isMobileOverride,
        mobile: window.isMobile.any || isMobileOverride,
        phone: isPhoneOverride || (window.isMobile.phone && !isTabletOverride),
        tablet: isTabletOverride || window.isMobile.tablet
      };

      window.globals.deviceView = deviceView;
      window.isMobile.desktop = !window.isMobile.any;
      window.isMobile.mobile = window.isMobile.any;

      addDeviceClasses('view-', deviceView);

    })();
  </script>
  
  <script src='story_content/user.js' type=text/javascript></script>
  <div class="slide-loader"></div>

  <script type="text/javascript">
    var doc = document, loader = doc.body.querySelector('.slide-loader'); [ 1, 2, 3 ].forEach(function(n) { var d = doc.createElement('div'); d.style.backgroundColor = window.globals.preloaderColor; d.classList.add('mobile-loader-dot'); d.classList.add('dot' + n); loader.appendChild(d); });
  </script>

  <div class="mobile-load-title-overlay">
    <div class="mobile-load-title">The Benefits of Documentation</div>
  </div>

  <div class="mobile-chrome-warning"></div>

  <script>
    
    if (window.autoSpider && window.vInterfaceObject) {
      document.querySelector('.mobile-load-title-overlay').style.display = 'none';
    }
  </script>

  

  <link rel="stylesheet" href="html5/data/css/output.min.css" data-noprefix />
</body>
<script src="html5/lib/scripts/ds-bootstrap.min.js"></script>
</html>

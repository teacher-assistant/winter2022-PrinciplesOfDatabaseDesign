(window.webpackJsonp=window.webpackJsonp||[]).push([[7,3,4,5],{252:function(t,e,n){"use strict";n.r(e);var r={data:function(){return{sections:[{to:"/",icon:"book-reader",text:"Home page"},{to:"/Homeworks/",icon:"edit-alt",text:"HomeWorks"},{to:"/sessions/",icon:"calendar",text:"Discussion Sessions Calender"}]}}},o=n(45),component=Object(o.a)(r,(function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("nav",{staticClass:"navbar center navbar-expand-lg navbar-dark bg-dark rounded"},[n("div",{staticClass:"collapse navbar-collapse d-flex justify-content-center",attrs:{id:"navbarSupportedContent"}},[n("ul",{staticClass:"navbar-nav mr-auto"},t._l(t.sections,(function(section){return n("li",{staticClass:"nav-item"},[n("NuxtLink",{staticClass:"nav-link d-flex align-items-center gap-1",attrs:{to:section.to}},[t._v("\n        \t"+t._s(section.text)+"\n        \t"),n("box-icon",{attrs:{type:"solid",name:section.icon,color:"#ffffff"}})],1)],1)})),0)])])}),[],!1,null,null,null);e.default=component.exports},253:function(t,e,n){"use strict";n.r(e);var r={props:{title:String},data:function(){return{sections:{full_name:{is_active:!1,title:"Winter 2022",class_name:"alert-primary"},first_title:{is_active:!1,title:"Principles Of Database Design",class_name:"alert-warning"},second_title:{is_active:!1,title:this.title,class_name:"alert-danger"}}}},methods:{changeBgColor:function(section){section.is_active=!section.is_active}}},o=n(45),component=Object(o.a)(r,(function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",{staticClass:"bg-warning rounded"},[n("div",{staticClass:"d-grid gap-3 rounded shadow-lg"},[n("div",{staticClass:"px-3 px-lg-5 px-lg-3 pt-3 pt-lg-5 pt-lg-3"},t._l(t.sections,(function(section){return n("div",{staticClass:"alert",class:[section.is_active?section.class_name:"alert-dark"],attrs:{role:"alert"},on:{mouseenter:function(e){return t.changeBgColor(section)},mouseleave:function(e){return t.changeBgColor(section)}}},[n("h1",{staticClass:"display-1 fw-bold lh-1"},[t._v("\n    \t\t\t"+t._s(section.title)+"\n    \t\t")])])})),0),t._v(" "),n("div",{staticClass:"px-3 px-lg-5 px-lg-3 pb-3 pb-lg-5 pb-lg-3"},[n("Menu")],1)])])}),[],!1,null,null,null);e.default=component.exports;installComponents(component,{Menu:n(252).default})},254:function(t,e,n){!function(t,e,n,r,o){if("customElements"in n)o();else{if(n.AWAITING_WEB_COMPONENTS_POLYFILL)return void n.AWAITING_WEB_COMPONENTS_POLYFILL.then(o);var a=n.AWAITING_WEB_COMPONENTS_POLYFILL=l();a.then(o);var i=n.WEB_COMPONENTS_POLYFILL||"//cdnjs.cloudflare.com/ajax/libs/webcomponentsjs/2.0.2/webcomponents-bundle.js",s=n.ES6_CORE_POLYFILL||"//cdnjs.cloudflare.com/ajax/libs/core-js/2.5.3/core.min.js";"Promise"in n?c(i).then((function(){a.isDone=!0,a.exec()})):c(s).then((function(){c(i).then((function(){a.isDone=!0,a.exec()}))}))}function l(){var t=[];return t.isDone=!1,t.exec=function(){t.splice(0).forEach((function(t){t()}))},t.then=function(e){return t.isDone?e():t.push(e),t},t}function c(t){var e=l(),n=r.createElement("script");return n.type="text/javascript",n.readyState?n.onreadystatechange=function(){"loaded"!=n.readyState&&"complete"!=n.readyState||(n.onreadystatechange=null,e.isDone=!0,e.exec())}:n.onload=function(){e.isDone=!0,e.exec()},n.src=t,r.getElementsByTagName("head")[0].appendChild(n),n.then=e.then,n}}(0,0,window,document,(function(){var e;window,e=function(){return function(t){var e={};function n(r){if(e[r])return e[r].exports;var o=e[r]={i:r,l:!1,exports:{}};return t[r].call(o.exports,o,o.exports,n),o.l=!0,o.exports}return n.m=t,n.c=e,n.d=function(t,e,r){n.o(t,e)||Object.defineProperty(t,e,{enumerable:!0,get:r})},n.r=function(t){"undefined"!=typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(t,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(t,"__esModule",{value:!0})},n.t=function(t,e){if(1&e&&(t=n(t)),8&e)return t;if(4&e&&"object"==typeof t&&t&&t.__esModule)return t;var r=Object.create(null);if(n.r(r),Object.defineProperty(r,"default",{enumerable:!0,value:t}),2&e&&"string"!=typeof t)for(var o in t)n.d(r,o,function(e){return t[e]}.bind(null,o));return r},n.n=function(t){var e=t&&t.__esModule?function(){return t.default}:function(){return t};return n.d(e,"a",e),e},n.o=function(t,e){return Object.prototype.hasOwnProperty.call(t,e)},n.p="",n(n.s=5)}([function(t,e){t.exports=function(t){var e=[];return e.toString=function(){return this.map((function(e){var n=function(t,e){var n,r=t[1]||"",o=t[3];if(!o)return r;if(e&&"function"==typeof btoa){var a=(n=o,"/*# sourceMappingURL=data:application/json;charset=utf-8;base64,"+btoa(unescape(encodeURIComponent(JSON.stringify(n))))+" */"),i=o.sources.map((function(t){return"/*# sourceURL="+o.sourceRoot+t+" */"}));return[r].concat(i).concat([a]).join("\n")}return[r].join("\n")}(e,t);return e[2]?"@media "+e[2]+"{"+n+"}":n})).join("")},e.i=function(t,n){"string"==typeof t&&(t=[[null,t,""]]);for(var r={},o=0;o<this.length;o++){var a=this[o][0];"number"==typeof a&&(r[a]=!0)}for(o=0;o<t.length;o++){var i=t[o];"number"==typeof i[0]&&r[i[0]]||(n&&!i[2]?i[2]=n:n&&(i[2]="("+i[2]+") and ("+n+")"),e.push(i))}},e}},function(t,e,n){var r=n(3);t.exports="string"==typeof r?r:r.toString()},function(t,e,n){var r=n(4);t.exports="string"==typeof r?r:r.toString()},function(t,e,n){(t.exports=n(0)(!1)).push([t.i,"@-webkit-keyframes spin{0%{-webkit-transform:rotate(0);transform:rotate(0)}to{-webkit-transform:rotate(359deg);transform:rotate(359deg)}}@keyframes spin{0%{-webkit-transform:rotate(0);transform:rotate(0)}to{-webkit-transform:rotate(359deg);transform:rotate(359deg)}}@-webkit-keyframes burst{0%{-webkit-transform:scale(1);transform:scale(1);opacity:1}90%{-webkit-transform:scale(1.5);transform:scale(1.5);opacity:0}}@keyframes burst{0%{-webkit-transform:scale(1);transform:scale(1);opacity:1}90%{-webkit-transform:scale(1.5);transform:scale(1.5);opacity:0}}@-webkit-keyframes flashing{0%{opacity:1}45%{opacity:0}90%{opacity:1}}@keyframes flashing{0%{opacity:1}45%{opacity:0}90%{opacity:1}}@-webkit-keyframes fade-left{0%{-webkit-transform:translateX(0);transform:translateX(0);opacity:1}75%{-webkit-transform:translateX(-20px);transform:translateX(-20px);opacity:0}}@keyframes fade-left{0%{-webkit-transform:translateX(0);transform:translateX(0);opacity:1}75%{-webkit-transform:translateX(-20px);transform:translateX(-20px);opacity:0}}@-webkit-keyframes fade-right{0%{-webkit-transform:translateX(0);transform:translateX(0);opacity:1}75%{-webkit-transform:translateX(20px);transform:translateX(20px);opacity:0}}@keyframes fade-right{0%{-webkit-transform:translateX(0);transform:translateX(0);opacity:1}75%{-webkit-transform:translateX(20px);transform:translateX(20px);opacity:0}}@-webkit-keyframes fade-up{0%{-webkit-transform:translateY(0);transform:translateY(0);opacity:1}75%{-webkit-transform:translateY(-20px);transform:translateY(-20px);opacity:0}}@keyframes fade-up{0%{-webkit-transform:translateY(0);transform:translateY(0);opacity:1}75%{-webkit-transform:translateY(-20px);transform:translateY(-20px);opacity:0}}@-webkit-keyframes fade-down{0%{-webkit-transform:translateY(0);transform:translateY(0);opacity:1}75%{-webkit-transform:translateY(20px);transform:translateY(20px);opacity:0}}@keyframes fade-down{0%{-webkit-transform:translateY(0);transform:translateY(0);opacity:1}75%{-webkit-transform:translateY(20px);transform:translateY(20px);opacity:0}}@-webkit-keyframes tada{0%{-webkit-transform:scaleX(1);transform:scaleX(1)}10%,20%{-webkit-transform:scale3d(.95,.95,.95) rotate(-10deg);transform:scale3d(.95,.95,.95) rotate(-10deg)}30%,50%,70%,90%{-webkit-transform:scaleX(1) rotate(10deg);transform:scaleX(1) rotate(10deg)}40%,60%,80%{-webkit-transform:scaleX(1) rotate(-10deg);transform:scaleX(1) rotate(-10deg)}to{-webkit-transform:scaleX(1);transform:scaleX(1)}}@keyframes tada{0%{-webkit-transform:scaleX(1);transform:scaleX(1)}10%,20%{-webkit-transform:scale3d(.95,.95,.95) rotate(-10deg);transform:scale3d(.95,.95,.95) rotate(-10deg)}30%,50%,70%,90%{-webkit-transform:scaleX(1) rotate(10deg);transform:scaleX(1) rotate(10deg)}40%,60%,80%{-webkit-transform:rotate(-10deg);transform:rotate(-10deg)}to{-webkit-transform:scaleX(1);transform:scaleX(1)}}.bx-spin,.bx-spin-hover:hover{-webkit-animation:spin 2s linear infinite;animation:spin 2s linear infinite}.bx-tada,.bx-tada-hover:hover{-webkit-animation:tada 1.5s ease infinite;animation:tada 1.5s ease infinite}.bx-flashing,.bx-flashing-hover:hover{-webkit-animation:flashing 1.5s infinite linear;animation:flashing 1.5s infinite linear}.bx-burst,.bx-burst-hover:hover{-webkit-animation:burst 1.5s infinite linear;animation:burst 1.5s infinite linear}.bx-fade-up,.bx-fade-up-hover:hover{-webkit-animation:fade-up 1.5s infinite linear;animation:fade-up 1.5s infinite linear}.bx-fade-down,.bx-fade-down-hover:hover{-webkit-animation:fade-down 1.5s infinite linear;animation:fade-down 1.5s infinite linear}.bx-fade-left,.bx-fade-left-hover:hover{-webkit-animation:fade-left 1.5s infinite linear;animation:fade-left 1.5s infinite linear}.bx-fade-right,.bx-fade-right-hover:hover{-webkit-animation:fade-right 1.5s infinite linear;animation:fade-right 1.5s infinite linear}",""])},function(t,e,n){(t.exports=n(0)(!1)).push([t.i,'.bx-rotate-90{transform:rotate(90deg);-ms-filter:"progid:DXImageTransform.Microsoft.BasicImage(rotation=1)"}.bx-rotate-180{transform:rotate(180deg);-ms-filter:"progid:DXImageTransform.Microsoft.BasicImage(rotation=2)"}.bx-rotate-270{transform:rotate(270deg);-ms-filter:"progid:DXImageTransform.Microsoft.BasicImage(rotation=3)"}.bx-flip-horizontal{transform:scaleX(-1);-ms-filter:"progid:DXImageTransform.Microsoft.BasicImage(rotation=0, mirror=1)"}.bx-flip-vertical{transform:scaleY(-1);-ms-filter:"progid:DXImageTransform.Microsoft.BasicImage(rotation=2, mirror=1)"}',""])},function(t,e,n){"use strict";n.r(e),n.d(e,"BoxIconElement",(function(){return g}));var r,o,a,i,s=n(1),l=n.n(s),c=n(2),f=n.n(c),d="function"==typeof Symbol&&"symbol"==typeof Symbol.iterator?function(t){return typeof t}:function(t){return t&&"function"==typeof Symbol&&t.constructor===Symbol&&t!==Symbol.prototype?"symbol":typeof t},u=function(){function t(t,e){for(var n=0;n<e.length;n++){var r=e[n];r.enumerable=r.enumerable||!1,r.configurable=!0,"value"in r&&(r.writable=!0),Object.defineProperty(t,r.key,r)}}return function(e,n,r){return n&&t(e.prototype,n),r&&t(e,r),e}}(),m=(o=(r=Object).getPrototypeOf||function(t){return t.__proto__},a=r.setPrototypeOf||function(t,e){return t.__proto__=e,t},i="object"===("undefined"==typeof Reflect?"undefined":d(Reflect))?Reflect.construct:function(t,e,n){var r,o=[null];return o.push.apply(o,e),r=t.bind.apply(t,o),a(new r,n.prototype)},function(t){var e=o(t);return a(t,a((function(){return i(e,arguments,o(this).constructor)}),e))}),p=window,b={},h=document.createElement("template"),v=function(){return!!p.ShadyCSS};h.innerHTML='\n<style>\n:host {\n  display: inline-block;\n  font-size: initial;\n  box-sizing: border-box;\n  width: 24px;\n  height: 24px;\n}\n:host([size=xs]) {\n    width: 0.8rem;\n    height: 0.8rem;\n}\n:host([size=sm]) {\n    width: 1.55rem;\n    height: 1.55rem;\n}\n:host([size=md]) {\n    width: 2.25rem;\n    height: 2.25rem;\n}\n:host([size=lg]) {\n    width: 3.0rem;\n    height: 3.0rem;\n}\n\n:host([size]:not([size=""]):not([size=xs]):not([size=sm]):not([size=md]):not([size=lg])) {\n    width: auto;\n    height: auto;\n}\n:host([pull=left]) #icon {\n    float: left;\n    margin-right: .3em!important;\n}\n:host([pull=right]) #icon {\n    float: right;\n    margin-left: .3em!important;\n}\n:host([border=square]) #icon {\n    padding: .25em;\n    border: .07em solid rgba(0,0,0,.1);\n    border-radius: .25em;\n}\n:host([border=circle]) #icon {\n    padding: .25em;\n    border: .07em solid rgba(0,0,0,.1);\n    border-radius: 50%;\n}\n#icon,\nsvg {\n  width: 100%;\n  height: 100%;\n}\n#icon {\n    box-sizing: border-box;\n} \n'+l.a+"\n"+f.a+'\n</style>\n<div id="icon"></div>';var g=m(function(t){function e(){!function(t,e){if(!(t instanceof e))throw new TypeError("Cannot call a class as a function")}(this,e);var t=function(t,e){if(!t)throw new ReferenceError("this hasn't been initialised - super() hasn't been called");return!e||"object"!=typeof e&&"function"!=typeof e?t:e}(this,(e.__proto__||Object.getPrototypeOf(e)).call(this));return t.$ui=t.attachShadow({mode:"open"}),t.$ui.appendChild(t.ownerDocument.importNode(h.content,!0)),v()&&p.ShadyCSS.styleElement(t),t._state={$iconHolder:t.$ui.getElementById("icon"),type:t.getAttribute("type")},t}return function(t,e){if("function"!=typeof e&&null!==e)throw new TypeError("Super expression must either be null or a function, not "+typeof e);t.prototype=Object.create(e&&e.prototype,{constructor:{value:t,enumerable:!1,writable:!0,configurable:!0}}),e&&(Object.setPrototypeOf?Object.setPrototypeOf(t,e):t.__proto__=e)}(e,HTMLElement),u(e,null,[{key:"getIconSvg",value:function(t,e){var n=this.cdnUrl+"/regular/bx-"+t+".svg";return"solid"===e?n=this.cdnUrl+"/solid/bxs-"+t+".svg":"logo"===e&&(n=this.cdnUrl+"/logos/bxl-"+t+".svg"),n&&b[n]||(b[n]=new Promise((function(t,e){var r=new XMLHttpRequest;r.addEventListener("load",(function(){this.status<200||this.status>=300?e(new Error(this.status+" "+this.responseText)):t(this.responseText)})),r.onerror=e,r.onabort=e,r.open("GET",n),r.send()}))),b[n]}},{key:"define",value:function(t){t=t||this.tagName,v()&&p.ShadyCSS.prepareTemplate(h,t),customElements.define(t,this)}},{key:"cdnUrl",get:function(){return"//unpkg.com/boxicons@2.1.1/svg"}},{key:"tagName",get:function(){return"box-icon"}},{key:"observedAttributes",get:function(){return["type","name","color","size","rotate","flip","animation","border","pull"]}}]),u(e,[{key:"attributeChangedCallback",value:function(t,e,n){var r=this._state.$iconHolder;switch(t){case"type":!function(t,e,n){var r=t._state;r.$iconHolder.textContent="",r.type&&(r.type=null),r.type=!n||"solid"!==n&&"logo"!==n?"regular":n,void 0!==r.currentName&&t.constructor.getIconSvg(r.currentName,r.type).then((function(t){r.type===n&&(r.$iconHolder.innerHTML=t)})).catch((function(t){console.error("Failed to load icon: "+r.currentName+"\n"+t)}))}(this,0,n);break;case"name":!function(t,e,n){var r=t._state;r.currentName=n,r.$iconHolder.textContent="",n&&void 0!==r.type&&t.constructor.getIconSvg(n,r.type).then((function(t){r.currentName===n&&(r.$iconHolder.innerHTML=t)})).catch((function(t){console.error("Failed to load icon: "+n+"\n"+t)}))}(this,0,n);break;case"color":r.style.fill=n||"";break;case"size":!function(t,e,n){var r=t._state;r.size&&(r.$iconHolder.style.width=r.$iconHolder.style.height="",r.size=r.sizeType=null),n&&!/^(xs|sm|md|lg)$/.test(r.size)&&(r.size=n.trim(),r.$iconHolder.style.width=r.$iconHolder.style.height=r.size)}(this,0,n);break;case"rotate":e&&r.classList.remove("bx-rotate-"+e),n&&r.classList.add("bx-rotate-"+n);break;case"flip":e&&r.classList.remove("bx-flip-"+e),n&&r.classList.add("bx-flip-"+n);break;case"animation":e&&r.classList.remove("bx-"+e),n&&r.classList.add("bx-"+n)}}},{key:"connectedCallback",value:function(){v()&&p.ShadyCSS.styleElement(this)}}]),e}());e.default=g,g.define()}])},t.exports=e()}))},255:function(t,e,n){"use strict";n.r(e);var r={data:function(){return{students:[]}},mounted:function(){var t=this;this.$nextTick((function(){t.$axios.$get("https://teacher-assistant.github.io/winter2022-PrinciplesOfDatabaseDesign/HomeWorks.json").then((function(e){return t.students=e}))}))}},o=n(45),component=Object(o.a)(r,(function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",{staticClass:"alert alert-dark"},[t.students.length?n("div",[t._m(0),t._v(" "),n("table",{staticClass:"table table-primary table-striped"},[n("thead",[n("tr",[n("th",{attrs:{scope:"col"}},[t._v("#")]),t._v(" "),n("th",{attrs:{scope:"col"}},[t._v("Student Number")]),t._v(" "),n("th",{attrs:{scope:"col"}},[n("button",{staticClass:"btn btn-outline-dark",attrs:{type:"button"}},[n("span",[t._v("\n\t\t\t\t\t\t\t\tHW1\n\t\t\t\t\t\t\t")]),t._v(" "),n("a",{attrs:{href:"https://teacher-assistant.github.io/winter2022-PrinciplesOfDatabaseDesign/HomeWorks/HW1.pdf"}},[n("box-icon",{attrs:{type:"solid",name:"file-pdf",color:"#F40F02"}})],1)])]),t._v(" "),n("th",{attrs:{scope:"col"}},[n("button",{staticClass:"btn btn-outline-dark",attrs:{type:"button"}},[n("span",[t._v("\n\t\t\t\t\t\t\t\tHW2\n\t\t\t\t\t\t\t")]),t._v(" "),n("a",{attrs:{href:"https://teacher-assistant.github.io/winter2022-PrinciplesOfDatabaseDesign/HomeWorks/HW2.pdf"}},[n("box-icon",{attrs:{type:"solid",name:"file-pdf",color:"#F40F02"}})],1)])]),t._v(" "),n("th",{attrs:{scope:"col"}},[n("button",{staticClass:"btn btn-outline-dark",attrs:{type:"button"}},[n("span",[t._v("\n\t\t\t\t\t\t\t\tHW3\n\t\t\t\t\t\t\t")]),t._v(" "),n("a",{attrs:{href:"https://teacher-assistant.github.io/winter2022-PrinciplesOfDatabaseDesign/HomeWorks/HW3.pdf"}},[n("box-icon",{attrs:{type:"solid",name:"file-pdf",color:"#F40F02"}})],1)])]),t._v(" "),n("th",{attrs:{scope:"col"}},[n("button",{staticClass:"btn btn-outline-dark",attrs:{type:"button"}},[n("span",[t._v("\n\t\t\t\t\t\t\t\tHW4(SQL)\n\t\t\t\t\t\t\t")]),t._v(" "),n("a",{attrs:{href:"https://teacher-assistant.github.io/winter2022-PrinciplesOfDatabaseDesign/HomeWorks/HW4(SQL).pdf"}},[n("box-icon",{attrs:{type:"solid",name:"file-pdf",color:"#F40F02"}})],1)])]),t._v(" "),n("th",{attrs:{scope:"col"}},[n("button",{staticClass:"btn btn-outline-dark",attrs:{type:"button"}},[n("span",[t._v("\n\t\t\t\t\t\t\t\tHW5(SQL)\n\t\t\t\t\t\t\t")]),t._v(" "),n("a",{attrs:{href:"https://teacher-assistant.github.io/winter2022-PrinciplesOfDatabaseDesign/HomeWorks/HW5(SQL).pdf"}},[n("box-icon",{attrs:{type:"solid",name:"file-pdf",color:"#F40F02"}})],1)])])])]),t._v(" "),n("tbody",t._l(t.students,(function(e,r){return n("tr",[n("th",{attrs:{scope:"row"}},[t._v(t._s(r+1))]),t._v(" "),n("td",[t._v(t._s(e.id))]),t._v(" "),n("td",[t._v(t._s(e.HW1))]),t._v(" "),n("td",[t._v(t._s(e.HW2))]),t._v(" "),n("td",[t._v(t._s(e.HW3))]),t._v(" "),n("td",[t._v(t._s(e.HW4))]),t._v(" "),n("td",[t._v(t._s(e.HW5))])])})),0)])]):n("div",{staticClass:"d-flex justify-content-center"},[n("h2",{staticClass:"alert-link"},[t._v("\n\t\t\t\tNo homework has been collected yet !\n\t\t\t")])])])}),[function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("h3",[t._v("\n\t    \t\tBelow table is updated "),n("span",{staticClass:"alert-link",attrs:{href:"#"}},[t._v("a few days after deadlines")])])}],!1,null,null,null);e.default=component.exports},258:function(t,e,n){"use strict";n.r(e);n(254);var r={head:function(){return{title:"Homeworks Status"}}},o=n(45),component=Object(o.a)(r,(function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",{staticClass:"container d-grid gap-2"},[n("div"),t._v(" "),n("MainCard",{attrs:{title:"Homeworks Status"}}),t._v(" "),n("HomeworkStatusTable")],1)}),[],!1,null,null,null);e.default=component.exports;installComponents(component,{MainCard:n(253).default,HomeworkStatusTable:n(255).default})}}]);
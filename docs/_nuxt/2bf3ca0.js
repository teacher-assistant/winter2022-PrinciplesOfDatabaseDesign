(window.webpackJsonp=window.webpackJsonp||[]).push([[6],{257:function(t,e,n){"use strict";n.r(e);var r={data:function(){return{classes:["alert alert-info","alert alert-primary","alert alert-success","alert alert-warning"],news_list:[]}},methods:{getClass:function(t){return this.classes[t%this.classes.length]}},mounted:function(){var t=this;this.$nextTick((function(){t.$axios.$get("https://teacher-assistant.github.io/winter2022-PrinciplesOfDatabaseDesign/News.json").then((function(e){return t.news_list=e}))}))}},l=n(45),component=Object(l.a)(r,(function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",[n("div",{staticClass:"alert alert-dark"},[n("h3",{staticClass:"alert-head"},[t._v("\n\t\t\tNews\n\t\t")]),t._v(" "),t._l(t.news_list,(function(e,r){return n("div",{class:t.getClass(r)},[n("div",{staticClass:"d-flex justify-content-between"},[n("span",{domProps:{innerHTML:t._s(e.body)}}),t._v(" "),n("span",[t._v("\n\t\t\t\t\t"+t._s(e.date)+"\n\t\t\t\t")])])])}))],2)])}),[],!1,null,null,null);e.default=component.exports}}]);
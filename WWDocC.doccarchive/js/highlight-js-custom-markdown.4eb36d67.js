(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["highlight-js-custom-markdown","highlight-js-markdown"],{"04b0":function(e,n){function t(e){return e?"string"===typeof e?e:e.source:null}function a(...e){const n=e.map(e=>t(e)).join("");return n}function i(e){const n={begin:/<\/?[A-Za-z_]/,end:">",subLanguage:"xml",relevance:0},t={begin:"^[-\\*]{3,}",end:"$"},i={className:"code",variants:[{begin:"(`{3,})[^`](.|\\n)*?\\1`*[ ]*"},{begin:"(~{3,})[^~](.|\\n)*?\\1~*[ ]*"},{begin:"```",end:"```+[ ]*$"},{begin:"~~~",end:"~~~+[ ]*$"},{begin:"`.+?`"},{begin:"(?=^( {4}|\\t))",contains:[{begin:"^( {4}|\\t)",end:"(\\n)$"}],relevance:0}]},c={className:"bullet",begin:"^[ \t]*([*+-]|(\\d+\\.))(?=\\s+)",end:"\\s+",excludeEnd:!0},s={begin:/^\[[^\n]+\]:/,returnBegin:!0,contains:[{className:"symbol",begin:/\[/,end:/\]/,excludeBegin:!0,excludeEnd:!0},{className:"link",begin:/:\s*/,end:/$/,excludeBegin:!0}]},r=/[A-Za-z][A-Za-z0-9+.-]*/,o={variants:[{begin:/\[.+?\]\[.*?\]/,relevance:0},{begin:/\[.+?\]\(((data|javascript|mailto):|(?:http|ftp)s?:\/\/).*?\)/,relevance:2},{begin:a(/\[.+?\]\(/,r,/:\/\/.*?\)/),relevance:2},{begin:/\[.+?\]\([./?&#].*?\)/,relevance:1},{begin:/\[.+?\]\(.*?\)/,relevance:0}],returnBegin:!0,contains:[{className:"string",relevance:0,begin:"\\[",end:"\\]",excludeBegin:!0,returnEnd:!0},{className:"link",relevance:0,begin:"\\]\\(",end:"\\)",excludeBegin:!0,excludeEnd:!0},{className:"symbol",relevance:0,begin:"\\]\\[",end:"\\]",excludeBegin:!0,excludeEnd:!0}]},d={className:"strong",contains:[],variants:[{begin:/_{2}/,end:/_{2}/},{begin:/\*{2}/,end:/\*{2}/}]},l={className:"emphasis",contains:[],variants:[{begin:/\*(?!\*)/,end:/\*/},{begin:/_(?!_)/,end:/_/,relevance:0}]};d.contains.push(l),l.contains.push(d);let b=[n,o];d.contains=d.contains.concat(b),l.contains=l.contains.concat(b),b=b.concat(d,l);const g={className:"section",variants:[{begin:"^#{1,6}",end:"$",contains:b},{begin:"(?=^.+?\\n[=-]{2,}$)",contains:[{begin:"^[=-]*$"},{begin:"^",end:"\\n",contains:b}]}]},u={className:"quote",begin:"^>\\s+",contains:b,end:"$"};return{name:"Markdown",aliases:["md","mkdown","mkd"],contains:[g,n,c,d,l,u,i,t,o,s]}}e.exports=i},"84cb":function(e,n,t){"use strict";t.r(n);t("8e6e"),t("ac6a"),t("456d");var a=t("bd86"),i=t("75fc"),c=(t("6762"),t("2fdb"),t("7514"),t("04b0")),s=t.n(c);function r(e,n){var t=Object.keys(e);if(Object.getOwnPropertySymbols){var a=Object.getOwnPropertySymbols(e);n&&(a=a.filter((function(n){return Object.getOwnPropertyDescriptor(e,n).enumerable}))),t.push.apply(t,a)}return t}function o(e){for(var n=1;n<arguments.length;n++){var t=null!=arguments[n]?arguments[n]:{};n%2?r(Object(t),!0).forEach((function(n){Object(a["a"])(e,n,t[n])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(t)):r(Object(t)).forEach((function(n){Object.defineProperty(e,n,Object.getOwnPropertyDescriptor(t,n))}))}return e}var d={begin:"<doc:",end:">",returnBegin:!0,contains:[{className:"link",begin:"doc:",end:">",excludeEnd:!0}]},l={className:"link",begin:/`{2}(?!`)/,end:/`{2}(?!`)/,excludeBegin:!0,excludeEnd:!0},b={begin:"^>\\s+[Note:|Tip:|Important:|Experiment:|Warning:]",end:"$",returnBegin:!0,contains:[{className:"quote",begin:"^>",end:"\\s+"},{className:"type",begin:"Note|Tip|Important|Experiment|Warning",end:":"},{className:"quote",begin:".*",end:"$",endsParent:!0}]},g={begin:"@",end:"[{\\)]",returnBegin:!0,contains:[{className:"title",begin:"@",end:"[\\s+(]",excludeEnd:!0},{begin:":",end:"[,\\)\n\t]",excludeBegin:!0,keywords:{literal:"true false null undefined"},contains:[{className:"number",begin:"\\b([\\d_]+(\\.[\\deE_]+)?|0x[a-fA-F0-9_]+(\\.[a-fA-F0-9p_]+)?|0b[01_]+|0o[0-7_]+)\\b",endsWithParent:!0,excludeEnd:!0},{className:"string",variants:[{begin:/"""/,end:/"""/},{begin:/"/,end:/"/}],endsParent:!0},{className:"link",begin:"http|https",endsWithParent:!0,excludeEnd:!0}]}]};n["default"]=function(e){var n=s()(e),t=n.contains.find((function(e){var n=e.className;return"code"===n}));t.variants=t.variants.filter((function(e){var n=e.begin;return!n.includes("( {4}|\\t)")}));var a=[].concat(Object(i["a"])(n.contains.filter((function(e){var n=e.className;return"code"!==n}))),[t]);return o(o({},n),{},{contains:[l,d,b,g].concat(Object(i["a"])(a))})}}}]);
// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

function init() {
    console.log("put something here");
    var alert_data = [
        ["30 Mar", "something new", true],
        ["31 Mar", "something something something", false],
        ["31 Mar", "something something something", true],
        ["31 Mar", "something something something", false],
        ["31 Mar", "something something something", false],
        ["31 Mar", "something something something", true]
    ];
//    alerts(alert_data,0);

}

function alerts(data, index) {
    setTimeout(function(){alerts(data,index+5)},5000);
}
window.addEventListener ?
    window.addEventListener("load", init, false) :
    window.attachEvent && window.attachEvent("onload", init);

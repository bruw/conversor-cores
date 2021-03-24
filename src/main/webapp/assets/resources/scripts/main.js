$(document).ready(function (){
    $("label[for='input-red']").css("color", "red");
    $("#input-red").css("border", "1px solid red");

    $("label[for='input-green']").css("color", "green");
    $("#input-green").css("border", "1px solid green");

    $("label[for='input-blue']").css("color", "blue");
    $("#input-blue").css("border", "1px solid blue");

    let c = document.getElementById("canvas-color");
    let ctx = c.getContext("2d");
    ctx.stroke();
});
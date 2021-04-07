$(document).ready(function () {
    $('.sidenav').sidenav();
    $('.modal').modal();

    (function () {
        let red = $("#input-red").val();

        if (red !== null && red !== undefined) {

            let green = $("#input-green").val();
            let blue = $("#input-blue").val();
            let hexadecimal = $("#input-hexadecimal").val();
            let conversion = {
                hexadecimal: hexadecimal,
                red: red,
                green: green,
                blue: blue
            };

            localStorage.clear();
            localStorage.setItem('last_conv', JSON.stringify(conversion));
        }
    })();

    (function () {
        let last_conv = JSON.parse(localStorage.getItem('last_conv'));
        console.log("Última Conversão: ");
        console.log("hexadecimal: " + last_conv.hexadecimal);
        console.log("RGB(" + last_conv.red + ", " + last_conv.green + ", " + last_conv.blue + ")");
    })();


    $("canvas").on("click", function () {
        let params = {hexadecimal: $("#input-hexadecimal").val()};
        $.get('nome-cor', $.param(params), function (data) {
            if (data != null) {
                let $color_name = $("#color-name");
                $color_name.html(data["name"]);
            }
        });

    });

    document.getElementById('input-hexadecimal').addEventListener('focus', function (event) {
        this.value = "";
    });

    document.getElementById('input-hexadecimal').addEventListener('keypress', function (event) {
        if ((this.value.length > 5) && (event.keyCode != 13)) {
            event.preventDefault();
        }

    });

    document.getElementById('input-hexadecimal').addEventListener('keypress', function (event) {
        if (((event.keyCode < 48) || (event.keyCode > 57)) &&
            ((event.keyCode < 65) || (event.keyCode > 70)) &&
            ((event.keyCode < 97) || (event.keyCode > 102)) &&
            (event.keyCode != 13)) {

            event.preventDefault();
        }
    });

    document.getElementById('input-hexadecimal').addEventListener('invalid', function () {
        if (this.validity.valueMissing) {
            this.setCustomValidity("Digite seis caracteres entre 0 e 9 ou entre A e F");
        } else {
            this.setCustomValidity("");
        }
    });

});
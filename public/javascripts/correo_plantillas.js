$(document).ready(function() {

    $(".saludo").click(function() {
        texto=$("textarea").val()
        $("textarea").val(texto=texto+"$[SALUDO]")
    });

    $(".codigo").click(function() {
        texto=$("textarea").val()
        $("textarea").val(texto=texto+"$[CODIGO]")
    });

    $(".nombre").click(function() {
        texto=$("textarea").val()
        $("textarea").val(texto=texto+"$[NOMBRE]")
    });

    $(".numRevision").click(function() {
        texto=$("textarea").val()
        $("textarea").val(texto=texto+"$[NUMREVISION]")
    });

    $(".fecha").click(function() {
        texto=$("textarea").val()
        $("textarea").val(texto=texto+"$[FECHA]")
    });

    $(".hora").click(function() {
        texto=$("textarea").val()
        $("textarea").val(texto=texto+"$[HORA]")
    });

    $(".dia").click(function() {
        texto=$("textarea").val()
        $("textarea").val(texto=texto+"$[DIA]")
    });

    $(".mesTexto").click(function() {
        texto=$("textarea").val()
        $("textarea").val(texto=texto+"$[MES_TEXTO]")
    });

    $(".anio").click(function() {
        texto=$("textarea").val()
        $("textarea").val(texto=texto+"$[ANIO]")
    });

    $(".tipo").click(function() {
        texto=$("textarea").val()
        $("textarea").val(texto=texto+"$[TIPO]")
    });

   $(".folio").click(function() {
       texto=$("textarea").val()
        $("textarea").val(texto=texto+"$[FOLIO]")
    });

    $(".liga").click(function() {
        texto=$("textarea").val()
        $("textarea").val(texto=texto+"$[LIGA]")
    });

    $(".orden").click(function() {
        texto=$("textarea").val()
        $("textarea").val(texto=texto+"$[ORDEN]")
    });

    $(".convocados").click(function() {
        texto=$("textarea").val()
        $("textarea").val(texto=texto+"$[CONVOCADOS]")
    });

    $(".tema").click(function() {
        texto=$("textarea").val()
        $("textarea").val(texto=texto+"$[TEMA]")
    });


});

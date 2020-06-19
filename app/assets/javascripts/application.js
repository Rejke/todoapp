// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery
//= require jquery_ujs
//= require_tree .

$(document).ready(function () {
    $('input').iCheck({
        checkboxClass: 'icheckbox_square-blue',
        radioClass: 'iradio_square-blue',
        increaseArea: '20%'
    });

    $('#todo_project_id').select2({
        minimumResultsForSearch: -1,
        width: '360px'
    });

    $('input[type=checkbox]').on('ifChanged', function (event) {
        this.form.submit();
        $(`label[for=todo-cb-${this.split('-')[2]}]`).toggleClass("checked");
    });

    let todoDiv = $("#newTodo");

    $("#submit-btn").click(function(event) {
        event.preventDefault();
        $("#newTodo-form").submit();
    });

    $("#showTodo-btn").click(function (event) {
        todoDiv.show();
    });

    $("#discard-btn").click(function (event) {
        todoDiv.hide();
    });
});
$(document).ready(function(){
    $('#myDynamicSelectBox').change(function(){
         localStorage.setItem('mySelectLocalstorageValue', $(this).val());
         $('#myDynamicSelectBox').value(localStorage.getItem('mySelectLocalstorageValue'));
    });
});
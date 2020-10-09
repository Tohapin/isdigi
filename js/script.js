var list = document.querySelectorAll('.list__item');
var idItemFlag = '';
var countItems = 0;

list.forEach(function(element, index){
    countItems++;
    if (idItemFlag !== element.getAttribute('dataCollection')) {
        if (!(countItems % 3)) {
            element.insertAdjacentHTML('beforebegin' ,'<div class="break"></div>');
        }
        idItemFlag = element.getAttribute('dataCollection');
        element.insertAdjacentHTML('beforebegin' ,'<li class="list__item list__item-collection">' + element.getAttribute('dataCollectionName') + '</li>');
    }
});
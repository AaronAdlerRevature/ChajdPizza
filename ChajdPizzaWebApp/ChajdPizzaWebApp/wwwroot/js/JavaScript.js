

    function printChecked() {
                var items = document.getElementsByName('Toppings');
    var selectedItems = "";
                for (var i = 0; i < items.length; i++) {
                    if (items[i].type == 'checkbox' && items[i].checked == true)
        selectedItems += items[i].value + "\n";
}
alert(selectedItems);
}
 


        function test() {
            var radios = document.getElementsByName("radio");
        var found = 1;
    for (var i = 0; i < radios.length; i++) {       
    if (radios[i].checked) {
            alert(radios[i].value);
        found = 0;
        break;
    }
}
   if(found == 1)
   {
            alert("Please Select Size ");
      }
   }
   
   
   



        function myFunction(){
            printChecked();
        test();
        }
  
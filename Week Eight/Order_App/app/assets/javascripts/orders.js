$(document).on("change", '#order_user_id', function() {
  // alert('DJ' );
  var user_id =  this.value;

  $.ajax({
       url: "/users/"+user_id+"/get_addresses", //+SELLERID,
       type: "GET",
       dataType: "json",
       complete: function() {},
       success: function(data) {
        var x = document.getElementById("order_address_id");
               x.innerHTML = "";
         for (i = 0; i < data.length; i++) {

               var option = document.createElement("option");
                option.text = data[i]['address_body'];
                option.value = data[i]['id']
                x.add(option);


          }

       },
       error: function(data) {
         $("#new_order").css('background-color', 'red')
         alert("error in ajax call");
       }
     });
 });


 $(document).on("change", '#order_address_id', function() {
 var add = $('#order_address_id :selected').val()
   $.ajax({
                url: "/addresses/" + add, // Route to the Script Controller method
               type: "GET",
           dataType: "json",

           complete: function() {},
            success: function(data) {

                      $('#1').val(data['address_body']);
                      $('#2').val(data['city']);
                      $('#3').val(data['state']);
                      $('#4').val(data['postal_code']);
                    },
              error: function() {
                       alert("Ajax error!")
                     }
   });
});

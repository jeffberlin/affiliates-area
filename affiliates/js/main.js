function submitToDiv (form, id) {
   $.ajax({
      url: $(form).attr('action'), // the file to call
      data: $(form).serialize(), // get the form data
      type: $(form).attr('method'), // GET or POST
      invokedata: { targetDiv: '#' + id },
      success: function (data, status) {
         $(this.invokedata.targetDiv).html (data); //content loads here
         $(this.invokedata.targetDiv).css ("display", "block");
         },                                     
           error: function (xhr, desc, err) {
         console.log ("error");
         }
      });   
   }
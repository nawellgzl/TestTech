$('#CSVbtn').on('click', function(){
    e.preventDefault();
    $.ajax(
                 
        { 
            url: "/graines/",
            type : 'POST',
            dataType: 'json',
            data : $(this).serialize(),
            
            success : function(data){
             
                downloadCSV(data)
                
            },
            error : function(jqxhr, textStatus, errorThrown){
                console.log(textStatus + ":" + jqxhr.status + "" + errorThrown);
                console.log(errorThrown);
            }
        }
    )


})

});

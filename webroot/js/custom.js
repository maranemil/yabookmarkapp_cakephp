$(function(){
 
    // Ajax csrf token setup
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': csrfToken // this is defined in app.php as a js variable
        }
    });
    
    // ajax request 
    $(document).on("click", ".btn-toggle-fav", function(){
        if(confirm("Are you sure want to add to favs ?")){
            var postdata = "bookmarks_id=" + $(this).attr("data-id");
            //console.log(postdata)
            $.ajax({
                url: "http://localhost/wwweb/yabookmarkapp_cakephp/index.php/ajax/toogle",
                data: postdata,
                type: "JSON",
                method: "post",
                success:function(response){                    
                    //window.location.href = '/bookmarks'
                    let json = $.parseJSON(response);
                    alert(json.message)
                }
            });
        }
    });
});
$(function(){
  $("#submit-comment").click(function(){
    var comment = $("#comment-body").val();
    var userId = $("#user-id").val();
    if(userId.length == 0) userId = "名無し" ;
    var request = $.ajax({
      type: "POST",
      url: "comment/new",
      data: {
        body: comment,
        user_id:  userId
      }
    });
  });
});

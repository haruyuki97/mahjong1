var count = 0;

function changePaiImage(img_src){
  if(count<=13){
    $("#img"+count).attr('src', img_src);
  }
  count++;
}

var paiString = '';

function makePaisString(pai_id){
  if(count<=14){
    paiString += pai_id + ',';
    if(count==14){
      // 最後の余分なカンマを除去
      paiString = paiString.slice(0,-1);
      $("#free_choice_post_pais").val(paiString);
    }
  }
}

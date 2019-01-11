$(function(){
  //function buildHTML(message){
    //ここにブラウザに返すHTMLを書く
    //return html;
  //}
  $('#message-form').on('submit', function(e){
    consol.log('発火されました')
    e.preventDafault();
    var formData = new formData(this);
  });
});

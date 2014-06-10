var todoApp = {
  onReady: function(){
    $('.addLibrary').on("click", todoApp.addLibraryToUser);
  },

  addLibraryToUser: function(event){
    var libraryId = this.id
    $.ajax({
      type: 'PUT',
      dataType: 'json',
      url: 'libraries/' + libraryId,
      context: this,
      data: {
        libraryId: libraryId
      },
    }).done(function(message){
      if(message.message == "Please log in or create an account."){
        alert(message)
      }else{
        this.remove();
        $('.responseDiv').text(message.message);
      }
    })
  },

};

$(document).ready(todoApp.onReady);

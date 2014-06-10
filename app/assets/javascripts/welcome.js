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
      data: {
        libraryId: libraryId
      },
    }).done(function(message){
      if(message.message == "Please log in or create an account."){
        alert(message)
      }else{
        this.find('button').remove();
        var response = $('<div>').text(message.message);
        this.append(response);
      }
    })
  },

};

$(document).ready(todoApp.onReady);

$(document).ready(function(){

    $('.userRecentLinks').draggable({
      revert: "invalid",
      zIndex:10000,
    });

    $('.userTopLibraries').droppable({
      accept: ".userRecentLinks",
      drop: function( event, ui ) {
        var libraryId = $( this ).attr('id')
        var linkId =  ui.draggable.attr('id')
        var dragBox = ui.draggable
        $.ajax({
          type: 'PUT',
          url: '/libraries/' + libraryId + '/link',
          dataType: 'JSON',
          context: this,
          data: {
            linkId: linkId,
            libraryId: libraryId
          }
        }).done(function(message){
            $(this).find('#numLink').text('Number of Links: ' + message.size);
            dragBox.remove()
            var response = $('<p>').text(message.message)
            $(this).append(response)
            response.fadeOut(2000)
          });
        }

    })
});

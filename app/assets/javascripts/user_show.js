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

        $.ajax({
          type: 'PUT',
          url: '/libraries/' + libraryId + '/link',
          dataType: 'JSON',
          data: {
            linkId: linkId,
            libraryId: libraryId
          }
        }).done(function(message){
            $item.remove();
            $('#numLinks').text('Number of Links: ' + message.size)
            $('#responseMessage').append('<p>').text(message.message).fadeOut(2000)
          });
        }

    })
});

$(document).ready(function(){

    $('.userRecentLinks').draggable({
      revert: "invalid",
      containment: "document"
    });

    $('.userTopLibraries').droppable({
      accept: ".userRecentLinks",
      activeClass: "custom-state-active",
      drop: function( event, ui ) {
        deleteLinkImage( ui.draggable );
      }
    });

    function deleteLinkImage( $item ){
      var linkId = $item.attr('id');
      var libraryId = $(event.target).attr('id')
      console.log($(event.target))
        $.ajax({
          type: 'PUT',
          url: '/libraries/' + libraryId,
          dataType: 'JSON',
          data: {
            linkId: linkId,
            libraryId: libraryId
          }
        }).done(function(message){
            $item.remove();
            $('#responseMessage').append('<p>').text(message.message).fadeOut(2000)
          });
        }

})

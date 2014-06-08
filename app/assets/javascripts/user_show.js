var showPage = {
  onReady: function(){
    $('.userRecentLinks').draggable();
    $('.userTopLibraries').droppable();
    $('.userRecentLinks').click(showPage.dragIt);
  },

  dragIt: function(e){
    console.log(this.id)
  }
}

$(document).ready(showPage.onReady)

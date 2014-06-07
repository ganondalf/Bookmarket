class UsersController < ApplicationController

  def show
    @user = current_user
  end


end


# $(window).load(function(){
#     $('.project').each(function(){
#         var maxWidth = 0;
#         $(this).find('.content img').each(function(){
#             var w = $(this).width();
#             if (w > maxWidth) {
#               maxWidth = w;
#             }
#         });
#         if (maxWidth) {
#           $(this).css({width:maxWidth});
#         }
#     });
# });

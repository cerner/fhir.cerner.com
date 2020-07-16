# frozen_string_literal: true

def redirect
  "<meta http-equiv=\"refresh\" content=\"5;URL=#{@item[:redirect_to]}\" />" if @item[:redirect]
end

def redirect
  if @item[:redirect]
    "<meta http-equiv=\"refresh\" content=\"5;URL=#{@item[:redirect_to]}\" />"
  end
end

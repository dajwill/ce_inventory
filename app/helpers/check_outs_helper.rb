module CheckOutsHelper
  def check_out_user check_out
    User.find(check_out.user_id)
  end

  def check_out_item check_out
    Item.find(check_out.item_id)
  end
end

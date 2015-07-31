module ItemsHelper
  def update_inventory item
    if !item.check_outs.empty?
      item.update(checked_out: true)
    else
      item.update(checked_out: false)
    end
  end

  def get_checkout_user item
    if item.checked_out
      User.find(item.check_outs.first.user_id).email
    end
  end
end

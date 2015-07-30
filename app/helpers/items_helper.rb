module ItemsHelper
  def update_inventory item
    if !item.check_outs.empty?
      item.update(checked_out: true)
    else
      item.update(checked_out: false)
    end
  end
end

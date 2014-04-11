# encoding: utf-8

class ApplicationSection < Prime::Section


  def on_delete
    if Device.simulator? && false
      to_delete
    else
      UIAlertView.alert("刪除確認", buttons: ["取消", "刪除"],
        message: "確定刪除？") { |button|
        if button == "刪除"
          to_delete
        end
      }
    end
  end

  def to_delete
    model.delete
    if container_view
      table_view = table.table_view
      index = table_view.indexPathForCell(container_view)
      table_view.beginUpdates
      table.data.delete(self)
      table_view.deleteRowsAtIndexPaths [index], withRowAnimation: UITableViewRowAnimationLeft
      table_view.endUpdates
    end
  end

end

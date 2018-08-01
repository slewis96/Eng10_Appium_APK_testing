class HomePage

  def click_skip
    $driver.find_element(:id, "com.android.packageinstaller:id/permission_allow_button").click
    $driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/btn_skip").click
  end
  
  def find_add
    $driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/main_btn1")
  end
  def click_add
    find_add.click
  end

  def notepage
    $driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/edit_note")
  end

  def input_title title
    $driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/edit_title").send_keys(title)
  end
  def input_text note
    $driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/edit_note").send_keys(note)
  end


end

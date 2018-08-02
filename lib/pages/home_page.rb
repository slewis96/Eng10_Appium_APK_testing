class HomePage

  def click_skip
    $driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/btn_start_skip").click
  end

  def find_add
    return $driver.find_elements(:id, "com.socialnmobile.dictapps.notepad.color.note:id/main_btn1")
    # com.socialnmobile.dictapps.notepad.color.note:id/empty
    # com.socialnmobile.dictapps.notepad.color.note:id/img_add
    # /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.RelativeLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.ImageView
    # com.socialnmobile.dictapps.notepad.color.note:id/empty_text
  end
  def click_add_note
    find_add.click
    $driver.find_elements(:xpath, "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[1]").click
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
  def save_and_back
    $driver.press_keycode(4)
    $driver.press_keycode(4)
    $driver.press_keycode(4)
  end

  def check_new_note
    element = $driver.find_element(:id, "com.socialnmobile.dictapps.notepad.color.note:id/title")
    return element.text
  end
end

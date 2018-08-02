class HomePage

  def click_add_note
    $driver.find_element(:id, "com.trantrigroup.note:id/addnotebutton").click
  end

  def input_title title
    $driver.find_element(:id, "com.trantrigroup.note:id/title").send_keys(title)
  end
  def input_text note
    $driver.find_element(:id, "com.trantrigroup.note:id/body").send_keys(note)
  end
  def save_and_back
    $driver.find_element(:accessibility_id, "Save").click
  end
  def notepage
    $driver.find_element(:id, "android:id/content")
  end
  def check_new_note
    element = $driver.find_element(:id, "com.trantrigroup.note:id/text1")
    return element.text
  end
end

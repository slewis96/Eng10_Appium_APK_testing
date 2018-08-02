require 'appium_lib'
require 'cucumber'
require 'rspec'
require_relative '../../lib/note_app.rb'


def opts
  {
    caps: {
      "app": "app/classicnote.apk",
      "deviceName": "emulator",
      "platformName": "android",
      "autoGrantPermissions": true
    }
  }
end

Appium::Driver.new(opts, true)
World(NoteApp)

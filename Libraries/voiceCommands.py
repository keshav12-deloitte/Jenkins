import pyttsx3
from robot.api.deco import library, keyword

@library
class voiceCommands:

    @keyword
    def texts_to_speech(self, command_txt):
        engine = pyttsx3.init()
        engine.setProperty('rate', 100)
        engine.say(command_txt)
        engine.runAndWait()
        engine.stop()

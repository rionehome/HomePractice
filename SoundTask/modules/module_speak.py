import os
import subprocess
import datetime

# Define path
file_path = os.path.abspath(__file__)
speech_wave = file_path.replace(
            'modules/module_speak.py', 'sound/speech.wav')
log_path = file_path.replace('modules/module_speak.py', 'speak_log/{}.txt').format(str(datetime.datetime.now()))

# Speak content
def speak(content):

    ###############
    #
    # 文章を発話させる関数
    #
    # 引数：発話させたい文書
    #
    # 戻り値：なし
    #
    ###############

    print("\n\n[*] SPEAKING ..............",flush=True)
    print("\n--------------------------- pico's answer ---------------------------", flush=True)
    print(str(content), flush=True)
    print("------------------------------------------------------------------------\n\n", flush=True)
    #subprocess.call('amixer sset Master 90% -q --quiet', shell=True)  # 大声
    subprocess.call(['pico2wave', '-w={}'.format(speech_wave), content])
    subprocess.call('aplay -q --quiet {}'.format(speech_wave), shell=True)
    #subprocess.call('amixer sset Master 75% -q --quiet', shell=True)  # 声の大きさを戻す

    # 発話させた内容をlogとして保存
    log = open(log_path, 'a')
    log.write(str(datetime.datetime.now()) + ":  " + content + "\n")
    log.close
    
if __name__ == '__main__':
    content = input("Please input content : ")
    speak(content)

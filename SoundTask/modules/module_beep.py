import os
import subprocess

# Define path
file_path = os.path.abspath(__file__)

def beep(when):
    ###############
    #
    # ビープ音を発話させる関数
    #
    # 引数：発話させたいビープ音「start / stop」
    #
    # 戻り値：なし
    #
    ###############

    beep_wave = file_path.replace(
        'modules/module_beep.py', 'sound/{}.wav').format(when)
    # ビープ音
    subprocess.call('aplay -q --quiet {}'.format(beep_wave), shell=True)

if __name__ == '__main__':
    when = input("start/stop:")
    beep(when)

import os
import csv

from pocketsphinx import LiveSpeech, get_model_path
from modules import module_beep
from modules import module_speak

# pathを定義
model_path = get_model_path()
dict_path = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'dictionary/qa_sphinx.dict')
gram_path = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'dictionary/qa_sphinx.gram')
QandA_path = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'dictionary/QandA_list.csv')



# QandAのファイルから辞書を作成
qa_dictionary = {}
with open(QandA_path, 'r') as f:
    for line in csv.reader(f):
        print(str(line[0]))
        qa_dictionary.setdefault(str(line[0]), str(line[1]))



def setup_LiveSpech():

    ###############
    #
    # pocketsphinxの設定を行う関数
    #
    # 引数：なし
    # 
    # 戻り値：なし
    #
    ###############

    global speech

    speech = LiveSpeech (
        verbose=False,
        sampling_rate=16000,
        buffer_size=2048,
        no_search=False,
        full_utt=False,
        lm=False,
        hmm=os.path.join(model_path, 'en-us'),
        dic=dict_path,
        jsgf=gram_path
    )
    


def main(number):

    ###############
    #
    # 音声認識で認識して答えを求め発話する関数
    #
    # 引数：質問をする回数
    #
    # 返り値：なし
    #
    ###############

    setup_LiveSpech()
    count = 0
    while count < number:
        module_beep.beep("start")
        print("[*] LISTENING ..............", flush=True)
        for question in speech:
            question = str(question)
            if not question in qa_dictionary.keys():
                continue
            print("\n--------------------------- your question ---------------------------", flush=True)
            print(question, flush=True)
            print("------------------------------------------------------------------------", flush=True)
            module_beep.beep("stop")
            module_speak.speak(str(qa_dictionary[question]))
            count += 1
            break


if __name__=='__main__':
    main(5)
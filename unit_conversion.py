#!/usr/bin/python3
# SPDX-FileCopyrightText: kankichi07610
# SPDX-License-Identifier: BSD-3-Clause

import sys
import re

def unit_main(text): #入力されたテキストの単位を変換
    
    def inch_cm(match):
        val = float(match.group(1))
        return f"{match.group(0)}(約{val * 2.54:.1f}cm)"

    def feet_cm(match):
        val = float(match.group(1))
        return f"{match.group(0)}(約{val * 30.48:.1f}cm)"

    def lb_kg(match):
        val = float(match.group(1))
        return f"{match.group(0)}(約{val * 0.453:.2f}kg)"

    def f_c(match):
        val = float(match.group(1))
        val_2 = (val - 32) * 5 / 9
        return f"{match.group(0)}(約{val_2:.1f}℃)"
    
    # インチ
    text = re.sub(r'(\d+(?:\.\d+)?)\s*(?:inch|in|inches)\b', inch_cm, text, flags=re.IGNORECASE)
    
    # フィート
    text = re.sub(r'(\d+(?:\.\d+)?)\s*(?:ft|feet)\b', feet_cm, text, flags=re.IGNORECASE)
    
    # ポンド
    text = re.sub(r'(\d+(?:\.\d+)?)\s*(?:lb|lbs|pounds)\b', lb_kg, text, flags=re.IGNORECASE)

    # 気温
    text = re.sub(r'(\d+(?:\.\d+)?)\s*(?:°F|degF|Fahrenheit)\b', f_c, text, flags=re.IGNORECASE)

    return text

def main():
    text_2 = sys.stdin.read()

    # 変換実行
    c_text = unit_main(text_2)
    
    # 標準出力
    print(c_text, end='')

if __name__ == "__main__":
    main()

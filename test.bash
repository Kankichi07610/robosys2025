#!/bin/bash
# SPDX-FileCopyrightText: Kankichi07610
# SPDX-License-Identifier: BSD-3-Clause

ng () {
      echo ${1}行目が違うよ
      res=1
}

res=0

# インチ
out=$(echo "10inch" | python3 unit_conversion.py)
[ "${out}" = "10inch(約25.4cm)" ] || ng ${LINENO}

#ポンド
out=$(echo "Weight: 2.5lbs" | python3 unit_conversion.py)
[ "${out}" = "Weight: 2.5lbs(約1.13kg)" ] || ng ${LINENO}

#空白のときはスルー
out=$(echo "" | python3 unit_conversion.py)
[ "${out}" = "" ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK
exit $res

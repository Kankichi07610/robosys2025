#!/bin/bash
# SPDX-FileCopyrightText: Kankichi07610
# SPDX-License-Identifier: BSD-3-Clause

ng () {
      echo ${1}行目が違うよ
      res=1
}

res=0

out=$(echo "10inch" | python3 unit_conversion)
[ "${out}" = "10inch 25.4cm" ] || ng ${LINENO}

out=$(echo "Weight: 2.5lb" | python3 unit_conversion)
[ "${out}" = "Weight: 2.5lb 1.13kg" ] || ng ${LINENO}

out=$(echo "Height: 5.9feet" | ./unit_conversion)
[ "${out}" = "Height: 5.9feet 179.8cm" ] || ng ${LINENO}

out=$(echo "Temp: 80F" | ./unit_conversion)
[ "${out}" = "Temp: 80F 26.7C" ] || ng ${LINENO}

echo "" | python3 unit_conversion > /dev/null 2>&1
if [ "$?" -eq 0 ]; then
    ng ${LINENO}
fi

[ "$res" = 0 ] && echo OK
exit $res


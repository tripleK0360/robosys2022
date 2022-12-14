#!/bin/bash -xv
# SPDX-FileCopyrightText: 2022 Koki Ikeda
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo NG at Line $1
	res=1
}

res=0
+ res=0

out=$(seq 5 | ./plus)
[ "${out}" = 15 ] || ng ${LINENO}

out=$(echo 0.2 | ./plus)
[ "${out}" = 0.2 ] || ng ${LINENO}

out=$(echo あ | ./plus)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo | ./plus)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(seq 5 | ./product)
[ "${out}" = 120 ] || ng ${LINENO}

out=$(echo 0.2 | ./product)
[ "${out}" = 0.2 ] || ng ${LINENO}

out=$(echo あ | ./product)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo | ./product)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(seq 5 | ./average)
[ "${out}" = 3.0 ] || ng ${LINENO}

out=$(echo 0.2 | ./average)
[ "${out}" = 0.2 ] || ng ${LINENO}

out=$(echo あ | ./average)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo | ./average)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK
exit $res

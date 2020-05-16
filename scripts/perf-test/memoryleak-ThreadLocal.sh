#!/bin/bash
set -eEuo pipefail
cd "$(dirname "$(readlink -f "$0")")"

source ../common_build.sh

runCmd "${JAVA_CMD[@]}" -cp "$(getClasspathWithoutTtlJar)" \
    com.alibaba.perf.memoryleak.NoMemoryLeak_ThreadLocal_NoRemove

# Synthetic SAST fixture — command injection
import os
def lookup(host):
    # SAST should flag: shell injection via os.system
    return os.system("ping -c 1 " + host)

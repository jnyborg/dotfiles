import re
from xml.dom import minidom
import xml.etree.ElementTree as ET
import sys

ssh_config = '/home/jnyborg/.ssh/config'
pycharm_webservers = '/home/jnyborg/.PyCharm2019.2/config/options/webServers.xml'
# ssh_config = 'config'
# pycharm_webservers = 'webServers.xml'

if __name__ == '__main__':
    if not len(sys.argv) == 2:
        print("Usage: setngrok <port>")
        exit(1)
    port = sys.argv[1]

    # write to ssh config
    with open(ssh_config, 'r+') as f:
        lines = f.readlines()
        current_host = None
        updated = False
        for idx, line in enumerate(lines):
            line = line.strip()
            if line.startswith('Host '):
                current_host = line.replace('Host ', '')
                print(current_host)

            if current_host == 'beastngrok' and line.startswith('Port'):
                newline = f"\tPort {port}\n"
                lines[idx] = newline
                updated = True
                break

        f.seek(0)
        f.writelines(lines)
        if updated:
            print("Updated ssh config")
        else:
            print("Failed to update ssh config")



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
        for idx, line in enumerate(lines):
            if line.strip().startswith('Port'):
                newline = f"\tPort {port}\n"
                lines[idx] = newline
                break

        f.seek(0)
        f.writelines(lines)

    # write to pycharm deployment servers
    xml = ET.parse(pycharm_webservers)
    for x in xml.getroot().iter('webServer'):
        if x.attrib['name'] == 'beast ngrok':
            file_transfer = x.find('fileTransfer')
            file_transfer.set('port', port)
            file_transfer.find('option').set('value', port)

    xml.write(pycharm_webservers)
    print("Updated ssh config and pycharm")


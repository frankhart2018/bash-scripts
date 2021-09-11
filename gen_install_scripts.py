import os
import glob
from simplpy.list_ import dump_list
import subprocess

from paths import COMMON_DIR_PATH, LINUX_DIR_PATH, MACOS_DIR_PATH
from paths import LINUX_INSTALLATION_PATH, MACOS_INSTALLATION_PATH
from paths import LINUX_SCRIPT_PATH, MACOS_SCRIPT_PATH

linux_script = ["echo 'Installing in linux...'\n"]
macos_script = ["echo 'Installing in macOS...'\n"]
script_mapper = {"linux": linux_script, "macos": macos_script}

common_dir_contents = glob.glob(os.path.join(COMMON_DIR_PATH, "*"))
linux_dir_contents = glob.glob(os.path.join(LINUX_DIR_PATH, "*"))
macos_dir_contents = glob.glob(os.path.join(MACOS_DIR_PATH, "*"))

class GenerateInstallScripts:
    def __init__(self):
        self.__linux_script_contents = ["sudo echo 'Installing in linux...'\n"]
        self.__macos_script_contents = ["sudo echo 'Installing in macOS...'\n"]
        
        self.__common_dir_contents = glob.glob(os.path.join(COMMON_DIR_PATH, "*"))
        self.__linux_dir_contents = glob.glob(os.path.join(LINUX_DIR_PATH, "*"))
        self.__macos_dir_contents = glob.glob(os.path.join(MACOS_DIR_PATH, "*"))

    def __get_script_contents_for_dir(self, dir_contents, os_name):
        os_name_to_installation_path = {"linux": LINUX_INSTALLATION_PATH, "macos": MACOS_INSTALLATION_PATH}

        script_contents = []
        for script_path in dir_contents:
            script_name = os.path.basename(script_path)
            script_contents.append(f"echo 'Installing {script_name}'")
            script_contents.append(f"sudo cp {script_path} {os_name_to_installation_path[os_name]}")
            script_contents.append(f"sudo chmod +x {os.path.join(os_name_to_installation_path[os_name], script_name)}")
            script_contents.append("")

        return script_contents

    def __get_script_contents_for_os(self, os_name):
        script_contents = []
        script_contents.extend(self.__get_script_contents_for_dir(dir_contents=self.__common_dir_contents, os_name=os_name))

        if os_name == "linux":
            script_contents.extend(self.__get_script_contents_for_dir(dir_contents=self.__linux_dir_contents, os_name=os_name))
            self.__linux_script_contents.extend(script_contents)
        elif os_name == "macos":
            script_contents.extend(self.__get_script_contents_for_dir(dir_contents=self.__macos_dir_contents, os_name=os_name))
            self.__macos_script_contents.extend(script_contents)

    def gen_scripts_and_write(self):
        self.__get_script_contents_for_os(os_name="linux")
        self.__get_script_contents_for_os(os_name="macos")

        dump_list(List=self.__linux_script_contents, filepath=LINUX_SCRIPT_PATH)
        dump_list(List=self.__macos_script_contents, filepath=MACOS_SCRIPT_PATH)

if __name__ == "__main__":
    script_generator = GenerateInstallScripts()
    script_generator.gen_scripts_and_write()

    _ = subprocess.getoutput(f"chmod +x {LINUX_SCRIPT_PATH}")
    _ = subprocess.getoutput(f"chmod +x {MACOS_SCRIPT_PATH}")
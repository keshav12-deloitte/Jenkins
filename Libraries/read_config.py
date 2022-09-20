"""
Python Function to read variables from properties file
"""
import os
import configparser


def read_config(cfg_file):
    BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
    cfg_path = os.path.join(BASE_DIR, cfg_file)
    if cfg_path is not None:
        config1 = configparser.RawConfigParser()
        if os.path.exists(cfg_path):
            config1.read(cfg_path)
        return config1


config = read_config('resources.properties')

device_name = config.get("DEVICE_DETAILS", "DEVICE_NAME")
app_id = config.get("APP_DETAILS", "APP_ID")

username = config.get("USER_DETAILS", "USERNAME")
accesskey = config.get("USER_DETAILS", "ACCESSKEY")

# setup details for Perfecto
remote_url = config.get("PERFECTO", "URL")
perfecto_token = config.get("PERFECTO", "TOKEN")
bundle_id = config.get("PERFECTO", "BUNDLE_ID")
device_id = config.get("PERFECTO", "DEVICEID")
perfecto_app_id = config.get("PERFECTO", "PERFECTO_APP_ID")
perfecto_app_package = config.get("PERFECTO", "PERFECTO_APP_PACKAGE")

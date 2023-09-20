from collections import defaultdict
from robot.libraries.BuiltIn import BuiltIn
import csv
import datetime as dt
import json
import numpy as np
import pandas as pd
import os


def defineEnvironmentVariablesFromJsonFile(prod,env):
    work_dir = BuiltIn().get_variable_value("${ROOT_DIR}")

    '''dir = os.getcwd()
    print(dir)
    dir_list = dir.partition("auto_syc_master")
    print(dir_list)
    work_dir = ''.join([dir_list[i] for i in [0, 1]])
    print(work_dir)'''

    print(f'Looking for {prod}:{env} environment')
    variables = {}
    environments_file_path = work_dir + '\\Environments\\' + prod + '.json'
    print(environments_file_path)
    try:
        with open(environments_file_path) as json_file:
            data = json.loads(json_file.read())
            print(data)

        if env in data.keys():
            print(f'Found an environment {env}!')

        values = data.get(env)
        print(type(values))

        for key, value in values.items():
            print(type(value))
            if type(value) == dict:
                for key, value in value.items():
                    if key not in variables:
                        variables[key] = value
            elif type(value) == str:
                if key not in variables:
                    variables[key] = value
    except:
        print(f'Failed loading data for {env} environment!')
    return variables

def read_csv_file(filename):
    data = []
    with open(filename, 'r') as csvfile:
        reader = csv.reader(csvfile, delimiter=';')
        for row in reader:
            data.append(row)
        print(data)
    return data

def convert_csv_to_dict(filename):
    '''with open(filename, 'r') as file:
        reader = csv.reader(file)
        for row in reader:
            print(row)'''
    df_to_dict = {}
    df = pd.read_csv(filename)
    df = df.fillna("")
    print(df)
    df_to_dict = df.to_dict(orient='records')
    print(type(df_to_dict))
    print(df_to_dict)
    return(df_to_dict)

def convert_csv_to_dict2(filename):
    with open(filename, 'r') as f:
        file_data = csv.reader(f)
        headers = next(file_data)
        return [dict(zip(headers,i)) for i in file_data]

def read_json_file(filename):
    variables = {}
    with open(filename) as json_file:
        data = json.loads(json_file.read())
        #print(data)

    for key, value in data.items():
        print(type(value))
        if type(value) == dict:
            for key, value in value.items():
                if key not in variables:
                    variables[key] = value
        elif type(value) == str:
            if key not in variables:
                variables[key] = value
        print(variables)
    return

def get_name_and_desc(mod):
    date = dt.date.today().strftime('%m%d%y')
    time = dt.datetime.now().strftime('%H%M%S')
    name = 'AUTO_' + mod.upper() + '_' + date + '_' + time
    desc = 'AUTO_DESC_' + mod.upper() + '_' + date + '_' + time
    print(name)
    print(desc)
    return [name,desc]
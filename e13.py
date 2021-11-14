#Daniel Ernesto Rangel Perez
#Esteban Osorio Rodriguez

import subprocess
import sys
import argparse

description = """

No es necesario el uso de argumentos, solo ejecutarlo

"""
parser = argparse.ArgumentParser(description='Python y PowerShell',
                                 epilog=description,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
params = parser.parse_args()

print ("Bienvenido a Powershell.")
print("Script para ver los status de perfil.")
p = subprocess.Popen(["powershell.exe", ".\\act13.ps1"], stdout=sys.stdout)

p.communicate()

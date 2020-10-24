import os
import sys



with open(sys.argv[1]+"/desktop.ini","w") as f:
	f.write("[.ShellClassInfo]\nCLSID={2559a1f2-21d7-11d4-bdaf-00c04f60b9f0}\n")
os.system(f"attrib +r {sys.argv[1]}&&cd {sys.argv[1]}&&attrib -a +s +h desktop.ini")
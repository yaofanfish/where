#!/usr/bin/env python3

with open(".where.c.c") as f:
	contents = f.readlines()

fix = contents[5000:7000]
fix = [i.replace("direct", "struct dirent") for i in fix]
contents = contents[:5000] + fix + contents[7000:]

with open(".where.c.c", "w") as f:
	f.writelines(fix)

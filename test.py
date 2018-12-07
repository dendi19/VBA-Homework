from xlrd import open_workbook
import xlrd
import os
import pprint
import numpy
import pandas as pd

data = {}
pc_cr = [] #players CR rating by the group


while (pc_cr) != "":
    cr = input("Provide the Level of your players (Press enter with no text to end):")
    if cr == '':
        break;
    else:
        pc_cr.append(cr)

print (pc_cr)
group_cr = sum(int(i) for i in pc_cr) / len(pc_cr)
print (group_cr)


monster_list = ('C:/Users/Dendi/Documents/D&D/D&D 5e Dungeon Masters Guide + Rules + Starter Set Characters Sheet/(DOWNLOAD) D&D 5e Monster Manual.xlsx')
wb = open_workbook(monster_list)
sheet = wb.sheet_by_index(0)

for row_num in range(sheet.nrows):
    row_value = sheet.row_values(row_num)
    challenger = row_value[5]
    print(type(challenger))
    print(type(group_cr))
    if challenger < group_cr:
        print(row_value[1])

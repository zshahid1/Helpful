import random
import sys
import os

grocery_list = ['juice,','tomatoes', 'potatoes', 'bananas']
print('First Item', grocery_list[0])
grocery_list[0] = "Green Juice"
print('First Item', grocery_list[0])
print(grocery_list[1:3])
other_events = ['Wash Car', 'Pick up Kids', 'Cash Check']
to_do_list = [other_events, grocery_list]
print(to_do_list)
print((to_do_list[1][0]))
grocery_list.append('onions')
print(to_do_list)
grocery_list.insert(1,"Pickle")
#grocery_list.remove()
grocery_list.sort()
print(grocery_list)

to_do_list2= other_events + grocery_list
print("\n" *1)
#print(len(to_do_list2))
print(min(to_do_list2))
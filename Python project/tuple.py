'''

pi_tuple=(3,1,4,1,5,9)

new_tuple = list(pi_tuple)
new_list = tuple(new_tuple)

len(tuple)
min(tuple)
'''

super_villains = {'Fiddler' : 'Isaac Bowin',
                  'Captain Cold' : 'Leonard Snart',
                  'Weather Wizard' : 'Mark Mardon',
                  'Mirror Master' : 'Sam Scudder',
                  'Pied Piper' : 'Thomas Peterson'}

#del super_villains ['Fiddler']

#print(super_villains['Pied Piper'])

super_villains['Pied Piper'] = 'don corleone'

print(super_villains['Pied Piper'])

print(len(super_villains))

print(super_villains.get("Pied Piper"))

print(super_villains.keys())
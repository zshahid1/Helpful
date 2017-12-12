
Let's go over a few last notes about dictionaries

my_dict = {
  "fish": ["c", "a", "r", "p"],
  "cash": -4483,
  "luck": "good"
}
print my_dict["fish"][0]

#The key "fish" has a list,
# the key "cash" has an int,
# and the key "luck" has a string.
#Finally, we print the letter "c".
# When we access a value in the dictionary like my_dict["fish"],
# we have direct access to that value (which happens to be a list).
# We can access the item at index 0 in the list stored by the key "fish".

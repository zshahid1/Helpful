


class Animal:
    __name = None
    __height = None
    __weight = None
    __sound = None

    def __init__(self, name, height, weight, sound):
        self.__name = name
        self.__height = height
        self.__weight = weight
        self.__sound = sound

    def set_name(self, name):
            self.__name = name

    def set_height(self, height):
            self.__height = height
    def set_weight(self, height):
            self.__height = height

    def set_sound(self, sound):
            self.__sound = sound

    def get_name(self):
            return self.__name

    def get_height(self):
            return str(self.__height)

    def get_weight(self):
            return str(self.__weight)

    def get_sound(self):
            return self.__sound

    def get_type(self):
            print("Animal")

    def toString(self):
            return "{} is {} cm tall and {} kilograms and says {}".format(self.__name, self.__height, self.__weight,
                                                                          self.__sound)

cat = Animal('whiskers', 33, 10,'meow')

print(cat.toString())
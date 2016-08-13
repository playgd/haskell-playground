type Name = String
type Age = Int
type Language = String
type Person = (Name, Age, Language)

person :: Person
person = ("Fernando", 31, "JS")

my_fst :: Person -> Name
my_fst (name, age, language) = name

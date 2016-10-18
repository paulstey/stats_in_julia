# Introduction to Statistical Computing with Julia
# Paul Stey
# 2016-10-19


# numeric vectors
v = [1, 2, 3]
u = [1.3, 4.3, 6.0]


# string vectors
w = ["cat", "dog", "bird"]


# growing a vector in place
a = Int[]                       # initialize empty vector to be filled with Ints
push!(a, 12)
push!(a, 1000)
push!(a, 3.14)                  # ERROR: trying to push Float into vector of Ints

s = String[]                    # initialize empty vector of strings
push!(s, "this")
push!(s, "is")
push!(s, "a string vector")


# indexing vector
s[3]                            # get third element
s[2]


# assigning to element
s[1] = "that"


# slicing vector
s[2:3]                          # get subset of vector (second and third elements)


# N-dimensional Array
A = Array{Int, 2}(4, 3)
B = [1 2 3;
     4 5 6;
     7 8 9;
     10 11 12]


# indexing matrix
B[2, 3]                         # get element in second row third column


# taking slice of matrix
B[1, :]                         # get entire first row


# Reading in data
d = readdlm("somedata.csv", ',')
d2 = readcsv("somedata.csv")
d3 = readcsv("somedata.csv", header = true)
d4 = readcsv("somedata.csv", skipstart = 3)


# DataFrames
using DataFrames

df = readtable("somedata.csv")
df2 = readtable("somedata.csv", makefactors = true)
df3 = readtable("somedata.csv", makefactors = true, seperator = '\t')
df4 = readtable("somedata.csv", nastring = "999")
df5 = readtable("somedata.csv", nastring = ["", "NA", "999")

# indexing dataframe
df[:age]                     # entire `age`
df[3, :condition]            # third participant's `condition`
df[4, :]                     # all fourth paticipant's data


# NA type

# Descriptive Statsitics
mean()
median()
mode()
std()
var()


# Indexing with Booleans

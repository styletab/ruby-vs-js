# https://web.stanford.edu/class/cs101/bits-bytes.html

# Bit
# Smallest unit of storage. 1 Bit can be either 1 or 0.
# Hardware/Electronics
# In a Memory chip a 1 or 0 value can be represented as a charge or no charge
# In a CPU chip a 1 or 0 value can be represented as a high or low voltage.
# On a Hard Drive 1 or 0 value can be represented as a magnetised or not.

###### Base 10, (Decimal) using digits 0 through 9
# '^' is exponent (10^3) is 10 raised to the 3rd power or 1000.
# The Base 10 number 653 is:
(10^2)* 6 + (10^1)* 5 + (10^0) * 3
100 * 6 + 10 * 5  + 1 * 3
600 + 5 + 3
653

(10^4) (10^3) (10^2) (10^1) (10^0)
10000 1000    100     10      1
========================================================
        5      3       7      3   = 5373
1       3      8       1      6   = 13816

###### Base 2 (Binary) using digits 0 and 1
# The Base 2, Binary, number 10110 is:
(2^4) * 1 + (2^3) * 0 + (2^2) *1 + (2^1) * 1 + (2^0) * 0
16 + 0 + 4 + 2 + 0
22

# Each position is represented by a power of 2
(2^8) (2^7) (2^5) (2^4) (2^3) (2^2) (2^1) (2^0)
64      32    16    8     4     2     1 (decimal/base 10)
========================================================
0        1     1    1     1     1     1  = 63 (11111)
1        0     1    0     0     1     1  = 83 (1010011)

# 9 (base 10) is 1001 (base 2)
# 156 (base 10) is 10011100 (base 2).

###### Base 16,(Hexadecimal), using digits 0 through 9 and a through f
# represent the base 10 numbers 0 through 15.
# 0 through 9 same as base 10
# 9 (base 10) is 9 (base 16)
# 10 (base 10) is a (base 16)
# 11 (base 10) is b (base 16)
# 12 (base 10) is c (base 16)
# 13 (base 10) is d (base 16)
# 14 (base 10) is e (base 16)
# 15 (base 10) is f (base 16)

(16^3) (16^2) (16^2) (16^1) (16^0)
65536   4096   256     16     1
==================================
0      0      0       1     A     = 26 (Decimal)
0      0      4       0     3     = 1027

# In Pry:
# Decimal to Binary
# 9.to_s(2)  => 00001001
# 156.to_s(2) => 10011100
# Decimal to Hex
# 12.to_s(16) => c
# 156.to_s(16) => 9c

# Byte.
# 1 byte = 8 bits
# Can represent the integer 9 (base 10) as 00001001 as binary.
# Can represent the integer 156 (base 10) as 10011100 as binary.
# Can contain from 0 to 255 different combinations of 1's and 0's.

# ASCII
# Simplest encoding system for characters. Each character is
# represented by one byte.
# 'A' is 65 Decimal (base 10)
# 'A' is 41 Hex (base 16)
# 'A' is 10001 Binary (base 2) (THIS IS WHAT IS STORED IN THE COMPUTER!!)

# In Pry:
# ASCII to Decimal
# 'A'.ord => 65
# ASCII to HexDecimal
# 'A'.ord.to_s(16) => 41
# ASCII to Binary
# 'A'.ord.to_s(2)  => 1000001

# Look up the ASCII encoding system and translate you first name
# from a set of ASCII characters to a set of Decimal numbers
# Tom => 84 111 109

# Create and save file with ONLY you're first name in it.
# echo 'Tom' > tom.txt
# cat tom.txt

# in Pry
'T'.ord.to_s(16)
'o'.ord.to_s(16)
'm'.ord.to_s(16)


# See the 'xxd' man page, make a hexdump.
# Shows the
xxd tom.txt
0000000: 546f 6d0a                                Tom.

# See the hex representations of the chars 'T', 'o', 'm', '\n'

# Another way
# See the 'od' man page and
# http://www.thegeekstuff.com/2012/08/od-command/

# Use the octal dump command 'od' to show the contents of this
# file in ASCII and hex
# od tom.txt  # defaults to showing Octal (Base 7)
# od -c -t x1 tom.txt # show characters in file. Including special chars.

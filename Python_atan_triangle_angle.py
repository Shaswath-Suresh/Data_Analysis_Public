import math
ab = float(input())
bc = float(input())

tan_angle = math.tan(ab/bc)
degree = round(math.degrees(math.atan2(ab,bc)))

print(str(degree)+ '\u00B0')
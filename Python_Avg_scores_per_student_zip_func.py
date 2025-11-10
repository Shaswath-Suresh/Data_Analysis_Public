# Enter your code here. Read input from STDIN. Print output to STDOUT
# zip() returns list of tuples, the i_th tuple contains the i_th element from each argument sequence/list

num_students, num_subjects = map(int,input().split())

X = []
for subject in range(num_subjects):
    X.append(list(map(float,input().split())))

z_list = zip(*X)

for subject_scores in z_list:
    print(sum(subject_scores) / num_subjects)
    
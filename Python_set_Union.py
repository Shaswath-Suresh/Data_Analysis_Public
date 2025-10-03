#s = set('Hacker')
#print(s.union({'Rank':1})) #WIll not split up 'Rank' stringinto individual chars 

n = int(input())
e_news = set(input().split())

b= int(input())
f_news = set(input().split())

print(len(e_news.union(f_news)))
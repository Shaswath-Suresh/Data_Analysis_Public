#s.intersection

n = int(input())

e_news = set(input().split())

b = int(input())
f_news = set(input().split())

print(len(e_news.intersection(f_news)))

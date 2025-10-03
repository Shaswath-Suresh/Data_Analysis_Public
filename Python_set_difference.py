#set_a.difference(set_b)

n = int(input())

e_news = set(input().split())

b = int(input())
f_news = set(input().split())

print(len(e_news.difference(f_news)))
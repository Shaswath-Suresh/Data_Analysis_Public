
#set_a.symmetric difference(b) -> in either a or b, but not both

n = input()
e_news = set(input().split())

b = input()
f_news = set(input().split())

print(len(e_news.symmetric_difference(f_news)))
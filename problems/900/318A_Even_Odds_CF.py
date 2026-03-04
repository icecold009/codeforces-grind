 # Codeforces 318A - Even Odds (900)


def main():
    n_str = input().split()
    if len(n_str) != 2:
        return
    n, k = map(int, n_str)

    odds = (n + 1) // 2
    if k <= odds:
        ans = 2 * k - 1
    else:
        ans = 2 * (k - odds)

    print(ans)


if __name__ == "__main__":
    main()


// Codeforces 71A - Way Too Long Words (800)
#include <bits/stdc++.h>
using namespace std;

int main() {
    ios::sync_with_stdio(false);
    cin.tie(nullptr);

    int n;
    if (!(cin >> n)) return 0;

    while (n--) {
        string s;
        cin >> s;
        if (s.size() > 10) {
            cout << s.front() << (s.size() - 2) << s.back() << '\n';
        } else {
            cout << s << '\n';
        }
    }

    return 0;
}

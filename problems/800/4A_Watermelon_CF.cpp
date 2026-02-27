// Codeforces 4A - Watermelon (800)
#include <bits/stdc++.h>
using namespace std;

int main() {
    ios::sync_with_stdio(false);
    cin.tie(nullptr);

    int w;
    if (!(cin >> w)) return 0;

    if (w > 2 && w % 2 == 0) {
        cout << "YES\n";
    } else {
        cout << "NO\n";
    }

    return 0;
}


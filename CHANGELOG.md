# Changelog

## 0.0.1 (2026-05-15)

Full Changelog: [v0.0.1...v0.0.1](https://github.com/privy-io/ruby-sdk/compare/v0.0.1...v0.0.1)

### Features

* **api:** api update ([8864864](https://github.com/privy-io/ruby-sdk/commit/8864864753502f6c439f556f2d0c600c80b41858))
* **api:** api update ([b7efbbc](https://github.com/privy-io/ruby-sdk/commit/b7efbbc57f39c88dca2f523a173f7d0afc408842))
* **api:** api update ([43c983a](https://github.com/privy-io/ruby-sdk/commit/43c983a91a908531b9e28ce35085ccd8115c712c))
* **api:** manual updates ([cc4c2cd](https://github.com/privy-io/ruby-sdk/commit/cc4c2cdc156e9a175310f0e508fb58073431fce1))
* **authorization:** add JwtExchangeService with HPKE encryption ([#12](https://github.com/privy-io/ruby-sdk/issues/12)) ([318b652](https://github.com/privy-io/ruby-sdk/commit/318b652dac0bb74028227de5a65086258dc2be9a))
* **authorization:** add user_jwts support to AuthorizationContext ([#16](https://github.com/privy-io/ruby-sdk/issues/16)) ([dfedc4e](https://github.com/privy-io/ruby-sdk/commit/dfedc4e07e64c92651b0a9a11400d86dd0242d31))
* **authorization:** P-256 signing, RFC 8785 canonicalization, prepare helper ([#5](https://github.com/privy-io/ruby-sdk/issues/5)) ([8a7255f](https://github.com/privy-io/ruby-sdk/commit/8a7255fdc926592d143e0f6e863901d0d3fcd643))
* **client:** add authorization_key_cache_max_capacity option ([#45](https://github.com/privy-io/ruby-sdk/issues/45)) ([3369bc7](https://github.com/privy-io/ruby-sdk/commit/3369bc7503f3e50bed56e8d74a034698c4c65671))
* **client:** Privy::PrivyClient wraps generated Privy::Client ([#4](https://github.com/privy-io/ruby-sdk/issues/4)) ([7ffbbc6](https://github.com/privy-io/ruby-sdk/commit/7ffbbc693f0d04c37dd5e0b046a08492c3617ccc))
* **key_quorums:** add create convenience wrapper with kwargs interface ([#27](https://github.com/privy-io/ruby-sdk/issues/27)) ([ff985f6](https://github.com/privy-io/ruby-sdk/commit/ff985f62766dbc5b2dcc0b19a76e17bcd9e96752))
* **key_quorums:** add delete convenience wrapper with authorization support ([#29](https://github.com/privy-io/ruby-sdk/issues/29)) ([cce679b](https://github.com/privy-io/ruby-sdk/commit/cce679b71c0129b1a95f473326634debe22bffb4))
* **key_quorums:** add update convenience wrapper with authorization support ([#28](https://github.com/privy-io/ruby-sdk/issues/28)) ([4a472e1](https://github.com/privy-io/ruby-sdk/commit/4a472e1650036d6ff57bf52b893c522c2a2f787b))
* **key_quorums:** request_expiry kwarg on update/delete ([#38](https://github.com/privy-io/ruby-sdk/issues/38)) ([50aebac](https://github.com/privy-io/ruby-sdk/commit/50aebacefbcd992f82d531ac7b033db95e24513a))
* **policies:** add create convenience wrapper with idempotency support ([#21](https://github.com/privy-io/ruby-sdk/issues/21)) ([4fb79c0](https://github.com/privy-io/ruby-sdk/commit/4fb79c0ec215dd56bcb231375b9917f78f461eef))
* **policies:** add create_rule convenience wrapper with authorization support ([#24](https://github.com/privy-io/ruby-sdk/issues/24)) ([87d1511](https://github.com/privy-io/ruby-sdk/commit/87d1511493e7ede9ef1e5dcf7494b805bef2c01d))
* **policies:** add delete convenience wrapper with authorization support ([#23](https://github.com/privy-io/ruby-sdk/issues/23)) ([7cfc41b](https://github.com/privy-io/ruby-sdk/commit/7cfc41b5113fc74db67a435d676d4aee2a5a5076))
* **policies:** add delete_rule convenience wrapper with authorization support ([#26](https://github.com/privy-io/ruby-sdk/issues/26)) ([88b4f02](https://github.com/privy-io/ruby-sdk/commit/88b4f02d82095558b0cd3a229364657181cce243))
* **policies:** add update convenience wrapper with authorization support ([#22](https://github.com/privy-io/ruby-sdk/issues/22)) ([94da7b6](https://github.com/privy-io/ruby-sdk/commit/94da7b694a0fcd91c7dfb806ac10962c5b50d20c))
* **policies:** add update_rule convenience wrapper with authorization support ([#25](https://github.com/privy-io/ruby-sdk/issues/25)) ([39ee81d](https://github.com/privy-io/ruby-sdk/commit/39ee81dc15e0784f04e9b93c801c5de1acc9fb42))
* **policies:** request_expiry kwarg on update/delete/*_rule ([#37](https://github.com/privy-io/ruby-sdk/issues/37)) ([0966ac3](https://github.com/privy-io/ruby-sdk/commit/0966ac3352bb339d5643264911af3e6c0b85c0bf))
* **public_api:** add PrivyRequestExpiryOptions config struct ([#34](https://github.com/privy-io/ruby-sdk/issues/34)) ([df65372](https://github.com/privy-io/ruby-sdk/commit/df65372803e9ce8946ed67e3069e7a144059a920))
* **public_api:** PrivyClient#compute_request_expiry resolver ([#35](https://github.com/privy-io/ruby-sdk/issues/35)) ([19ac733](https://github.com/privy-io/ruby-sdk/commit/19ac733a149a8f08a774c2200a85d214ade2991e))
* **services:** wallets create/update/rpc auto-inject auth + idempotency headers ([#10](https://github.com/privy-io/ruby-sdk/issues/10)) ([d03a736](https://github.com/privy-io/ruby-sdk/commit/d03a736cb79b638b46bfcade04fa8e97a5d1b19a))
* **users:** add create convenience wrapper with kwargs interface ([#33](https://github.com/privy-io/ruby-sdk/issues/33)) ([f93e451](https://github.com/privy-io/ruby-sdk/commit/f93e4519775e1cb2c4fbe21e6dad68d63ac30daf))
* **wallets:** add raw_sign and transfer convenience wrappers ([#18](https://github.com/privy-io/ruby-sdk/issues/18)) ([b4f1d1c](https://github.com/privy-io/ruby-sdk/commit/b4f1d1c4e61a8b101cad35aa108b3a8e267be234))
* **wallets:** request_expiry kwarg on update/rpc/raw_sign/transfer ([#36](https://github.com/privy-io/ruby-sdk/issues/36)) ([f8e1074](https://github.com/privy-io/ruby-sdk/commit/f8e10746f833fac3bf4e4096d78b05983995e261))


### Bug Fixes

* classes resulting from intersections cannot have union parents ([1abe573](https://github.com/privy-io/ruby-sdk/commit/1abe5731705a3db306793be1c6ca374923b8fe10))
* **client:** elide content type header on requests without body ([6741307](https://github.com/privy-io/ruby-sdk/commit/67413078f14b5dcb0dbca3acd35435765729ab4c))
* **gen:** resolve lint errors in generated models ([#2](https://github.com/privy-io/ruby-sdk/issues/2)) ([5ed45a4](https://github.com/privy-io/ruby-sdk/commit/5ed45a46a0f1dea5bd413ecc4f0bfdbea8e49139))
* **integration-tests:** isolate user data per test run ([#41](https://github.com/privy-io/ruby-sdk/issues/41)) ([a6ae14b](https://github.com/privy-io/ruby-sdk/commit/a6ae14b449eefc63cbb141f1840c21f2d545635f))
* rename gem to privy_ruby ([#44](https://github.com/privy-io/ruby-sdk/issues/44)) ([b27c0dd](https://github.com/privy-io/ruby-sdk/commit/b27c0dd09e1f037375d97c5dbc86ce77c640b3cc))


### Chores

* **test:** print test names via TESTOPTS=-v in scripts/test ([#3](https://github.com/privy-io/ruby-sdk/issues/3)) ([6dcc2eb](https://github.com/privy-io/ruby-sdk/commit/6dcc2ebaac142a5e79434f6e7ce7dd38568fae1f))


### Documentation

* add CLAUDE.md with repo conventions and pitfalls ([#9](https://github.com/privy-io/ruby-sdk/issues/9)) ([ace5249](https://github.com/privy-io/ruby-sdk/commit/ace52499c509ba468f3c8c0ea7471aaf2bd8f02e))
* document request-expiry configuration; ([#40](https://github.com/privy-io/ruby-sdk/issues/40)) ([e5b543b](https://github.com/privy-io/ruby-sdk/commit/e5b543bda950ca74fa3fd546544c6d1c11ea2bce))


### Refactors

* consolidate Privy::Authorization::Crypto into Privy::Cryptography ([#14](https://github.com/privy-io/ruby-sdk/issues/14)) ([8f096f7](https://github.com/privy-io/ruby-sdk/commit/8f096f7295ad41d7939805bae7d14a2d2dc22f24))
* move signed_url and merge_prepared_headers to Authorization module ([#20](https://github.com/privy-io/ruby-sdk/issues/20)) ([f789358](https://github.com/privy-io/ruby-sdk/commit/f7893587bbb7926c96305660cd501dacfd602f3a))
* **public_api:** drop content-type workarounds now obsolete ([#42](https://github.com/privy-io/ruby-sdk/issues/42)) ([afd9886](https://github.com/privy-io/ruby-sdk/commit/afd98860bbb3ceeabc45f07510ccef0ab11b8789))
* rename authorization methods for cross-SDK consistency ([#15](https://github.com/privy-io/ruby-sdk/issues/15)) ([0ee0513](https://github.com/privy-io/ruby-sdk/commit/0ee05135eaa5e027e0350e9fc48f669549cf6f44))
* rename prepare → prepare_request, align with Node SDK ([#17](https://github.com/privy-io/ruby-sdk/issues/17)) ([0fef5d2](https://github.com/privy-io/ruby-sdk/commit/0fef5d2b6a54b94fbbde13ec1e0c124382b22b61))
* **wallets:** convert create/update/rpc to explicit kwargs interface ([#19](https://github.com/privy-io/ruby-sdk/issues/19)) ([575ccf4](https://github.com/privy-io/ruby-sdk/commit/575ccf4d6fe071b55478528ec9aa65efd5a6f2c9))

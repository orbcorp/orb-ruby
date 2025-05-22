# Changelog

## 0.5.3 (2025-05-22)

Full Changelog: [v0.5.2...v0.5.3](https://github.com/orbcorp/orb-ruby/compare/v0.5.2...v0.5.3)

### Chores

* **docs:** grammar improvements ([3c1a4d4](https://github.com/orbcorp/orb-ruby/commit/3c1a4d421f276c01935659d401c8383470f2f10c))
* force utf-8 locale via `RUBYOPT` when formatting ([42a4919](https://github.com/orbcorp/orb-ruby/commit/42a49195c6ea42836d56e130113158c013f4d5d7))
* **internal:** version bump ([1decdd2](https://github.com/orbcorp/orb-ruby/commit/1decdd2778f75a19da2218937d4a4f6a44009b84))
* refine Yard and Sorbet types and ensure linting is turned on for examples ([8ec00ad](https://github.com/orbcorp/orb-ruby/commit/8ec00ad8007fa9ff78d8c479eb592f3083da8ad9))
* use fully qualified names for yard annotations and rbs aliases ([22efb17](https://github.com/orbcorp/orb-ruby/commit/22efb17c873701d2d583c9c517a128128b1bd4d5))

## 0.5.2 (2025-05-20)

Full Changelog: [v0.5.1...v0.5.2](https://github.com/orbcorp/orb-ruby/compare/v0.5.1...v0.5.2)

### Bug Fixes

* correctly instantiate sorbet type aliases for enums and unions ([fe6a29e](https://github.com/orbcorp/orb-ruby/commit/fe6a29e33ae5266fd130d703da02eec410a3902f))


### Chores

* **internal:** version bump ([b4afd0a](https://github.com/orbcorp/orb-ruby/commit/b4afd0af68ade8e7a53de012123bce96cedb8670))
* use sorbet union aliases where available ([444add5](https://github.com/orbcorp/orb-ruby/commit/444add556f04ae705e8c918421419cf43df1b053))

## 0.5.1 (2025-05-20)

Full Changelog: [v0.5.0...v0.5.1](https://github.com/orbcorp/orb-ruby/compare/v0.5.0...v0.5.1)

### Chores

* **internal:** version bump ([7e334e0](https://github.com/orbcorp/orb-ruby/commit/7e334e07c272ab3a1e2d155a02b6eb7396afafe2))
* whitespaces ([8481024](https://github.com/orbcorp/orb-ruby/commit/848102400193de0f80cc1d0cd12471486e072162))

## 0.5.0 (2025-05-14)

Full Changelog: [v0.4.0...v0.5.0](https://github.com/orbcorp/orb-ruby/compare/v0.4.0...v0.5.0)

### Features

* bump default connection pool size limit to minimum of 99 ([79f9994](https://github.com/orbcorp/orb-ruby/commit/79f9994e2a77d786a7e1ffaa52c56916835b9b5f))


### Chores

* **internal:** version bump ([cfc1793](https://github.com/orbcorp/orb-ruby/commit/cfc17939f09ece0217ea7683991e509c30491e96))


### Documentation

* rewrite much of README.md for readability ([ac8a45d](https://github.com/orbcorp/orb-ruby/commit/ac8a45d8765183d41fbeaf23d1bd03c372908b45))

## 0.4.0 (2025-05-13)

Full Changelog: [v0.3.2...v0.4.0](https://github.com/orbcorp/orb-ruby/compare/v0.3.2...v0.4.0)

### Features

* expose base client options as read only attributes ([1f638b6](https://github.com/orbcorp/orb-ruby/commit/1f638b60ad1679bc7969f441650ba61fb9a65e8a))
* expose recursive `#to_h` conversion ([cfd49a1](https://github.com/orbcorp/orb-ruby/commit/cfd49a15d805ffaa5828249c5b91565661ae7e52))
* support sorbet aliases at the runtime ([786d1e3](https://github.com/orbcorp/orb-ruby/commit/786d1e3dd882054bd298e33a448a194f1d68bac4))


### Bug Fixes

* **internal:** update gemspec name ([852ab56](https://github.com/orbcorp/orb-ruby/commit/852ab562ee4948d3fe4de8dd877f9301f36c8a4b))


### Chores

* fix misc linting / minor issues ([0e7dd84](https://github.com/orbcorp/orb-ruby/commit/0e7dd846c906cc2e72827f5477a93e4799ab9482))
* **internal:** version bump ([359839c](https://github.com/orbcorp/orb-ruby/commit/359839c734c4bcf8051490b1e8723674ef634753))

## 0.3.2 (2025-05-07)

Full Changelog: [v0.3.1...v0.3.2](https://github.com/orbcorp/orb-ruby/compare/v0.3.1...v0.3.2)

### Bug Fixes

* **internal:** ensure formatting always uses c.utf-8 locale ([c4cc44a](https://github.com/orbcorp/orb-ruby/commit/c4cc44a8e280089938586de353b08e8091056ca0))


### Chores

* **internal:** version bump ([fede0e6](https://github.com/orbcorp/orb-ruby/commit/fede0e64ca4753cc961e8308ddcef2b39dcb6f24))
* revert ignoring Gemfile.lock ([e572719](https://github.com/orbcorp/orb-ruby/commit/e572719854490cfa7735dcc70d9cfd1dc4d4a122))

## 0.3.1 (2025-05-06)

Full Changelog: [v0.3.0...v0.3.1](https://github.com/orbcorp/orb-ruby/compare/v0.3.0...v0.3.1)

### Bug Fixes

* **internal:** fix formatting script for macos ([3d4e166](https://github.com/orbcorp/orb-ruby/commit/3d4e166f77e3e15037d1bd000f249fcb73cd216e))


### Chores

* add generator safe directory ([dc351bd](https://github.com/orbcorp/orb-ruby/commit/dc351bdabe5a44981c8461a5cf8249df075c513f))
* always check if current page is empty in `next_page?` ([eca7722](https://github.com/orbcorp/orb-ruby/commit/eca772296d3bae2ca18fb60afdb7e3b66a8ae6a8))
* **internal:** annotate request options with type aliases in sorbet ([85ddf12](https://github.com/orbcorp/orb-ruby/commit/85ddf1253cab3253c621fe5da2715c4332c88f22))
* **internal:** codegen related update ([43622bc](https://github.com/orbcorp/orb-ruby/commit/43622bc6158b0409520ddafb16b3348b04f133e4))
* **internal:** codegen related update ([4b21f9a](https://github.com/orbcorp/orb-ruby/commit/4b21f9ae7e8b1d36342b6f4e9e01901b6ea662d5))
* **internal:** codegen related update ([143f9a8](https://github.com/orbcorp/orb-ruby/commit/143f9a890045832dc6a4690b098a6f54c3d61cb1))
* **internal:** codegen related update ([25413e1](https://github.com/orbcorp/orb-ruby/commit/25413e1323f09ed82730671f199b7c4b81277230))
* **internal:** codegen related update ([6d43598](https://github.com/orbcorp/orb-ruby/commit/6d43598c8ffca3220257f5cd6c5e0cbaf78a8322))
* loosen rubocop rules that don't always make sense ([5a71c5b](https://github.com/orbcorp/orb-ruby/commit/5a71c5b9dce0d43b9ba5016cdcd0a1fe00c62ee6))
* migrate away from deprecated `JSON#fast_generate` ([6207686](https://github.com/orbcorp/orb-ruby/commit/6207686bfea6cd2504a4a2cc74ca766bc916cb95))
* more accurate type annotations and aliases ([5528e59](https://github.com/orbcorp/orb-ruby/commit/5528e59e7f77d948dcc3942efd7f0dbc1a167215))
* re-export top level models under library namespace ([95cbfd9](https://github.com/orbcorp/orb-ruby/commit/95cbfd9241828bee0e537b69d3a014a5394f8ba3))
* remove Gemfile.lock during bootstrap ([a369d56](https://github.com/orbcorp/orb-ruby/commit/a369d5679a808b24fa88d986898ad0168af90202))
* reorganize type aliases ([22b91f9](https://github.com/orbcorp/orb-ruby/commit/22b91f9837bb3fd5677cb1325f3c221ae80c8663))
* validate request option coercion correctness ([2ba6032](https://github.com/orbcorp/orb-ruby/commit/2ba6032243950cdef75e63ea75dd3865d79bca02))


### Documentation

* illustrate environmental defaults for auth variables ([34613d7](https://github.com/orbcorp/orb-ruby/commit/34613d75cd3baab105f5dc5f0d4f4c7bb1fe1e3e))
* **readme:** fix typo ([9229774](https://github.com/orbcorp/orb-ruby/commit/9229774479cb18ea70941da9652094d4f4b7bfe6))

## 0.3.0 (2025-04-25)

Full Changelog: [v0.2.0...v0.3.0](https://github.com/orbcorp/orb-ruby/compare/v0.2.0...v0.3.0)

### Features

* implement `#hash` for data containers ([ba49d29](https://github.com/orbcorp/orb-ruby/commit/ba49d294bfa09eca64b9a137c730c452318a56d4))
* support specifying content-type with FilePart class ([200103f](https://github.com/orbcorp/orb-ruby/commit/200103fddf8b1d524caa1cb3a126d72b476315f4))
* support webmock for testing ([ca1c497](https://github.com/orbcorp/orb-ruby/commit/ca1c497d57309c0bd2518070a0f8af3e0c639be4))


### Bug Fixes

* ensure gem release is unaffected by renaming ([3e0fd9e](https://github.com/orbcorp/orb-ruby/commit/3e0fd9e21bb02529c0513b7a1e2fbdfa7d80b049))
* make a typo for `FilePart.content` ([f62d185](https://github.com/orbcorp/orb-ruby/commit/f62d18544ccd90a55bdfc520cbea03c1ea7583d1))


### Chores

* broadly detect json family of content-type headers ([d4e5904](https://github.com/orbcorp/orb-ruby/commit/d4e5904287b32db4efe997b617310670961be6b1))
* **ci:** add timeout thresholds for CI jobs ([450f552](https://github.com/orbcorp/orb-ruby/commit/450f552e892e75242d3ec3e3e0c98605e1ac0b61))
* **ci:** only use depot for staging repos ([fd387ce](https://github.com/orbcorp/orb-ruby/commit/fd387ce6f9dff526039887480712e8b0c35595b5))
* **ci:** run on more branches and use depot runners ([7f5a6c3](https://github.com/orbcorp/orb-ruby/commit/7f5a6c320853a23d5ac339ea368d7cad7bbc35c5))
* documentation improvements ([6e04e50](https://github.com/orbcorp/orb-ruby/commit/6e04e5062b468fdf1f40fe3cd491b9fbb610bc5c))
* explicitly mark apis public under `Internal` module ([d19524a](https://github.com/orbcorp/orb-ruby/commit/d19524a2a412b98ac4529b46c02e249e8a587c34))
* **internal:** improve response envelope unwrap functionality ([b3f0632](https://github.com/orbcorp/orb-ruby/commit/b3f0632eae23d838395933fe4a334fd23dff46fd))
* **internal:** minor type annotation improvements ([cf871bc](https://github.com/orbcorp/orb-ruby/commit/cf871bca5feacf6e95351418a3553c774889ccee))
* **internal:** version bump ([6b83db6](https://github.com/orbcorp/orb-ruby/commit/6b83db65c3d405b7f7c5e20a93be6428dcf7fc08))
* make sorbet enums easier to read ([3793346](https://github.com/orbcorp/orb-ruby/commit/3793346c4a6cd6ff18aad64e4c48933a5159ebe1))
* show truncated parameter docs in yard ([0fb86bd](https://github.com/orbcorp/orb-ruby/commit/0fb86bd1313bb300e565f873e5a181f652ce88fa))
* simplify yard annotations by removing most `@!parse` directives ([a94843b](https://github.com/orbcorp/orb-ruby/commit/a94843be3f13ed22ae07ded47bff22e044525f0b))
* update README with recommended editor plugins ([50771fd](https://github.com/orbcorp/orb-ruby/commit/50771fdf28dcee2856522c5c29a491873ec14a4a))
* use `@!method` instead of `@!parse` for virtual method type definitions ([21cfdfc](https://github.com/orbcorp/orb-ruby/commit/21cfdfcc91f9dbd04831e502b990f9118f4b5eb0))

## 0.2.0 (2025-04-17)

Full Changelog: [v0.1.3...v0.2.0](https://github.com/orbcorp/orb-ruby/compare/v0.1.3...v0.2.0)

### Features

* **client:** enable setting base URL from environment variable ([a472f4c](https://github.com/orbcorp/orb-ruby/commit/a472f4cdee0d969b7e240a9519acccd3877f3de6))


### Bug Fixes

* always send idempotency header when specified as a request option ([f570e93](https://github.com/orbcorp/orb-ruby/commit/f570e93e8fe1a2f6d6df495021ea1152aeaf1e58))


### Chores

* **internal:** always run post-processing when formatting when syntax_tree ([9df6d63](https://github.com/orbcorp/orb-ruby/commit/9df6d6382e67f6f28f1cedff4ee1c949ffd70237))
* **internal:** codegen related update ([202fff4](https://github.com/orbcorp/orb-ruby/commit/202fff413ad9e9be16b67a07270dd4ac2c4f14e4))
* **internal:** codegen related update ([2b99ae2](https://github.com/orbcorp/orb-ruby/commit/2b99ae2ea108ad4e6227bd5ab7e9a7dd064a8ded))
* **internal:** contribute.md and contributor QoL improvements ([cb204de](https://github.com/orbcorp/orb-ruby/commit/cb204de43549ee6aa9ead2d1e071ec5df0c58cb2))
* **internal:** loosen internal type restrictions ([9dc6b52](https://github.com/orbcorp/orb-ruby/commit/9dc6b52d1bfa57e3fab328bf8673872522ab7f25))
* **internal:** minor touch ups on sdk internals ([9297be8](https://github.com/orbcorp/orb-ruby/commit/9297be8eaa459f14cb0b4118066ecd59877686ab))
* **internal:** protect SSE parsing pipeline from broken UTF-8 characters ([bb2243a](https://github.com/orbcorp/orb-ruby/commit/bb2243a19fbd077687be4b2a4a001e4b7381c54d))
* **internal:** version bump ([c664f2f](https://github.com/orbcorp/orb-ruby/commit/c664f2fb5019cabca07ce026410d6951f9412d69))
* refine `#inspect` and `#to_s` for model classes ([86f8280](https://github.com/orbcorp/orb-ruby/commit/86f8280e1126e5bd4013f4c1e5ddd09190044fa3))


### Documentation

* update documentation links to be more uniform ([a0bfe42](https://github.com/orbcorp/orb-ruby/commit/a0bfe42c34e09819e4948069670cfdf895cb51af))

## 0.1.3 (2025-04-11)

Full Changelog: [v0.1.2...v0.1.3](https://github.com/orbcorp/orb-ruby/compare/v0.1.2...v0.1.3)

### Bug Fixes

* inaccuracies in the README.md ([f07ef0e](https://github.com/orbcorp/orb-ruby/commit/f07ef0e9ecbecd44e66bfb8df9fe5e271f19c09a))


### Chores

* fix lsp configuration file for local development ([9574fe5](https://github.com/orbcorp/orb-ruby/commit/9574fe55bec14d4356758e27f61b3be97395023a))
* **internal:** version bump ([a8232d6](https://github.com/orbcorp/orb-ruby/commit/a8232d644f3a97a6d8e339037faa5f4af7174c2a))

## 0.1.2 (2025-04-09)

Full Changelog: [v0.1.1...v0.1.2](https://github.com/orbcorp/orb-ruby/compare/v0.1.1...v0.1.2)

### Bug Fixes

* **internal:** update release-please to use ruby strategy for README.md ([#249](https://github.com/orbcorp/orb-ruby/issues/249)) ([f42f700](https://github.com/orbcorp/orb-ruby/commit/f42f700fecdad4e13ba63eea65f5373f70f633b9))


### Chores

* ensure readme.md is bumped when release please updates versions ([#248](https://github.com/orbcorp/orb-ruby/issues/248)) ([73a8093](https://github.com/orbcorp/orb-ruby/commit/73a8093faa0cb0f464b4dcdd3e4a90b0640225c6))
* **internal:** expand CI branch coverage ([#250](https://github.com/orbcorp/orb-ruby/issues/250)) ([fa4df80](https://github.com/orbcorp/orb-ruby/commit/fa4df80350ff5e9ec5856f2c39f86b09f73ce219))
* **internal:** reduce CI branch coverage ([8bed429](https://github.com/orbcorp/orb-ruby/commit/8bed429ae552ce4ca4fecf94ab537194513759f4))
* **internal:** version bump ([7d6f55c](https://github.com/orbcorp/orb-ruby/commit/7d6f55ccc4e2e107104d4fd99691179d73f2a926))

## 0.1.1 (2025-04-08)

Full Changelog: [v0.1.0...v0.1.1](https://github.com/orbcorp/orb-ruby/compare/v0.1.0...v0.1.1)

### Chores

* **internal:** version bump ([ef344e2](https://github.com/orbcorp/orb-ruby/commit/ef344e295d437e08f33fc7091a89be121ee6c5e9))
* loosen const and integer coercion rules ([#246](https://github.com/orbcorp/orb-ruby/issues/246)) ([715a138](https://github.com/orbcorp/orb-ruby/commit/715a138f44ddf1eaf26c4ffec32178f8591eb8d0))

## 0.1.0 (2025-04-08)

Full Changelog: [v0.1.0-alpha.39...v0.1.0](https://github.com/orbcorp/orb-ruby/compare/v0.1.0-alpha.39...v0.1.0)

### Bug Fixes

* raise connection error for errors that result from HTTP transports ([#244](https://github.com/orbcorp/orb-ruby/issues/244)) ([1213d2d](https://github.com/orbcorp/orb-ruby/commit/1213d2de5c7b0a80f1c96b8fed31a048ad57e2eb))


### Chores

* add README docs for using solargraph when installing gem from git ([#242](https://github.com/orbcorp/orb-ruby/issues/242)) ([48b892e](https://github.com/orbcorp/orb-ruby/commit/48b892e3b45412875d25c5683f0b7e1fd23d20ee))
* easier to read examples in README.md ([#240](https://github.com/orbcorp/orb-ruby/issues/240)) ([eb00ee4](https://github.com/orbcorp/orb-ruby/commit/eb00ee4e8564a44dad9320bf89f3a656764a38d9))
* **internal:** codegen related update ([#238](https://github.com/orbcorp/orb-ruby/issues/238)) ([fd54e32](https://github.com/orbcorp/orb-ruby/commit/fd54e32135d6ffbfbd3956b5505773169f5fca9f))
* **internal:** codegen related update ([#243](https://github.com/orbcorp/orb-ruby/issues/243)) ([edfc0bf](https://github.com/orbcorp/orb-ruby/commit/edfc0bfb29f6989cb5d249f9dcfd118c115a35a9))
* make client tests look prettier ([#241](https://github.com/orbcorp/orb-ruby/issues/241)) ([060c286](https://github.com/orbcorp/orb-ruby/commit/060c2864f0458bfc26030e97effa3340a0060dd0))

## 0.1.0-alpha.39 (2025-04-07)

Full Changelog: [v0.1.0-alpha.38...v0.1.0-alpha.39](https://github.com/orbcorp/orb-ruby/compare/v0.1.0-alpha.38...v0.1.0-alpha.39)

### Features

* **api:** api update ([#237](https://github.com/orbcorp/orb-ruby/issues/237)) ([0bb6400](https://github.com/orbcorp/orb-ruby/commit/0bb6400deb4cb2ab6959e45ca9a53bc51e040d7a))


### Chores

* always fold up method bodies in sorbet type definitions ([#233](https://github.com/orbcorp/orb-ruby/issues/233)) ([af4a884](https://github.com/orbcorp/orb-ruby/commit/af4a884f3c7eab12b9688cfd3c6d412cbae5bd58))
* **internal:** codegen related update ([#236](https://github.com/orbcorp/orb-ruby/issues/236)) ([8cf1bc4](https://github.com/orbcorp/orb-ruby/commit/8cf1bc47517a9262cbd58bf8c915b6a94b77cc96))
* **internal:** more concise handling of parameter naming conflicts ([#235](https://github.com/orbcorp/orb-ruby/issues/235)) ([ad10a69](https://github.com/orbcorp/orb-ruby/commit/ad10a69558d15218af07ce8c34d234d2ff0946bc))
* **internal:** rubocop rules ([#232](https://github.com/orbcorp/orb-ruby/issues/232)) ([6220144](https://github.com/orbcorp/orb-ruby/commit/62201445cab0f60cb1be36da6196da0fe7787d9b))
* **internal:** version bump ([#230](https://github.com/orbcorp/orb-ruby/issues/230)) ([d5e0113](https://github.com/orbcorp/orb-ruby/commit/d5e01130d014493b793d03f8e19033aa906ab07b))
* update yard comment formatting ([#234](https://github.com/orbcorp/orb-ruby/issues/234)) ([6211751](https://github.com/orbcorp/orb-ruby/commit/6211751f1f0c0aac4440d5d4faf76752a5e50acd))

## 0.1.0-alpha.38 (2025-04-05)

Full Changelog: [v0.1.0-alpha.37...v0.1.0-alpha.38](https://github.com/orbcorp/orb-ruby/compare/v0.1.0-alpha.37...v0.1.0-alpha.38)

### Features

* support query, header, and body params that have identical names ([#226](https://github.com/orbcorp/orb-ruby/issues/226)) ([edbbd05](https://github.com/orbcorp/orb-ruby/commit/edbbd057dcfe5cf5eaa12fed6f3cb2f25f56fa19))
* support solargraph generics ([#220](https://github.com/orbcorp/orb-ruby/issues/220)) ([3db38b4](https://github.com/orbcorp/orb-ruby/commit/3db38b4390902cf97c6942f83f1b5aed4e214041))


### Bug Fixes

* converter should transform stringio into string where applicable ([#228](https://github.com/orbcorp/orb-ruby/issues/228)) ([f818391](https://github.com/orbcorp/orb-ruby/commit/f818391228f86c671be20deb723a7570fbcdf18e))


### Chores

* document LSP support in read me ([#225](https://github.com/orbcorp/orb-ruby/issues/225)) ([574fdf4](https://github.com/orbcorp/orb-ruby/commit/574fdf455227a604a4e6370cfad093c278c1e6c4))
* **internal:** codegen related update ([#222](https://github.com/orbcorp/orb-ruby/issues/222)) ([f4b7010](https://github.com/orbcorp/orb-ruby/commit/f4b7010a5f7241a3c3f18ad2dd5000706216f8e9))
* **internal:** codegen related update ([#223](https://github.com/orbcorp/orb-ruby/issues/223)) ([e25b11c](https://github.com/orbcorp/orb-ruby/commit/e25b11c9a06d7fdca01fea78d0860ae41cdb4c52))
* **internal:** run rubocop linter in parallel ([#229](https://github.com/orbcorp/orb-ruby/issues/229)) ([7b6cedd](https://github.com/orbcorp/orb-ruby/commit/7b6cedd9f976a634b4f590237e421d3312495672))
* **internal:** version bump ([#218](https://github.com/orbcorp/orb-ruby/issues/218)) ([906a451](https://github.com/orbcorp/orb-ruby/commit/906a451f0e155d476b227d61d512b5d3cc476e43))
* misc sdk polish ([#224](https://github.com/orbcorp/orb-ruby/issues/224)) ([f2a6cec](https://github.com/orbcorp/orb-ruby/commit/f2a6cecdfe4a4bc98089ca0a6ea31a95a100f499))
* rename confusing `Type::BooleanModel` to `Type::Boolean` ([#227](https://github.com/orbcorp/orb-ruby/issues/227)) ([8950333](https://github.com/orbcorp/orb-ruby/commit/89503331236fa01589fe19228b6549d45f29238b))

## 0.1.0-alpha.37 (2025-04-03)

Full Changelog: [v0.1.0-alpha.36...v0.1.0-alpha.37](https://github.com/orbcorp/orb-ruby/compare/v0.1.0-alpha.36...v0.1.0-alpha.37)

### Bug Fixes

* pre-release version string should match ruby, not semver conventions ([#217](https://github.com/orbcorp/orb-ruby/issues/217)) ([a625486](https://github.com/orbcorp/orb-ruby/commit/a625486906ad75706e32c1c0542be9dafe9a8934))


### Chores

* demonstrate how to make undocumented requests in README ([#216](https://github.com/orbcorp/orb-ruby/issues/216)) ([fb65338](https://github.com/orbcorp/orb-ruby/commit/fb65338138069e09385b7d8f0f21eab810c39b91))
* **internal:** codegen related update ([#214](https://github.com/orbcorp/orb-ruby/issues/214)) ([3c5cd96](https://github.com/orbcorp/orb-ruby/commit/3c5cd96ec0ef0d725e327d40979456c0dea9b434))
* **internal:** codegen related update ([#215](https://github.com/orbcorp/orb-ruby/issues/215)) ([a7b225e](https://github.com/orbcorp/orb-ruby/commit/a7b225e091e967479f57ec0ba956d39e1fedb367))
* **internal:** version bump ([#211](https://github.com/orbcorp/orb-ruby/issues/211)) ([7c53448](https://github.com/orbcorp/orb-ruby/commit/7c53448564312f3fb638811f826366fcc267caa5))
* move private classes into internal module ([#213](https://github.com/orbcorp/orb-ruby/issues/213)) ([9217e7b](https://github.com/orbcorp/orb-ruby/commit/9217e7bff4eb522d63dde18e65ee5075ba851ab7))

## 0.1.0-alpha.36 (2025-04-02)

Full Changelog: [v0.1.0-alpha.35...v0.1.0-alpha.36](https://github.com/orbcorp/orb-ruby/compare/v0.1.0-alpha.35...v0.1.0-alpha.36)

### ⚠ BREAKING CHANGES

* use descriptive prefixes for enum names that start with otherwise illegal identifiers ([#209](https://github.com/orbcorp/orb-ruby/issues/209))

### Bug Fixes

* use descriptive prefixes for enum names that start with otherwise illegal identifiers ([#209](https://github.com/orbcorp/orb-ruby/issues/209)) ([0baed23](https://github.com/orbcorp/orb-ruby/commit/0baed2304bbd33fe3f03cf365e5b64b796ace2b2))

## 0.1.0-alpha.35 (2025-04-02)

Full Changelog: [v0.1.0-alpha.34...v0.1.0-alpha.35](https://github.com/orbcorp/orb-ruby/compare/v0.1.0-alpha.34...v0.1.0-alpha.35)

### ⚠ BREAKING CHANGES

* support `for item in stream` style iteration on `Stream`s ([#173](https://github.com/orbcorp/orb-ruby/issues/173))
* **model:** base model should recursively store coerced base models ([#165](https://github.com/orbcorp/orb-ruby/issues/165))
* remove unreachable properties ([#159](https://github.com/orbcorp/orb-ruby/issues/159))

### Features

* add deprecation notice to enum members and resources ([#74](https://github.com/orbcorp/orb-ruby/issues/74)) ([313a3c7](https://github.com/orbcorp/orb-ruby/commit/313a3c7b60f104e881d935374996c7fb4e5737b0))
* add jsonl support ([#109](https://github.com/orbcorp/orb-ruby/issues/109)) ([3f405b8](https://github.com/orbcorp/orb-ruby/commit/3f405b8356001ee4792c6e28b79b2254a99098f3))
* add SKIP_BREW env var to ./scripts/bootstrap ([#116](https://github.com/orbcorp/orb-ruby/issues/116)) ([6f36366](https://github.com/orbcorp/orb-ruby/commit/6f3636651d235d242e6c7a7045f803956f237bf7))
* **api:** api update ([#105](https://github.com/orbcorp/orb-ruby/issues/105)) ([ad830f6](https://github.com/orbcorp/orb-ruby/commit/ad830f65f4bb8bf646c3a7ead31c03d630838117))
* **api:** api update ([#111](https://github.com/orbcorp/orb-ruby/issues/111)) ([c8448fa](https://github.com/orbcorp/orb-ruby/commit/c8448fafc7d44ac51b9af4ebac6ac82e55c9279b))
* **api:** api update ([#119](https://github.com/orbcorp/orb-ruby/issues/119)) ([4854737](https://github.com/orbcorp/orb-ruby/commit/4854737359bd587266a5b987867b6d74bb807d02))
* **api:** api update ([#137](https://github.com/orbcorp/orb-ruby/issues/137)) ([5c3fe9a](https://github.com/orbcorp/orb-ruby/commit/5c3fe9af681f01a0dbe82f428c9bcbd4f9e375d4))
* **api:** api update ([#20](https://github.com/orbcorp/orb-ruby/issues/20)) ([00281c5](https://github.com/orbcorp/orb-ruby/commit/00281c5d7eb26600df84018b76e0b1536e98f0fe))
* **api:** api update ([#25](https://github.com/orbcorp/orb-ruby/issues/25)) ([d86e6cb](https://github.com/orbcorp/orb-ruby/commit/d86e6cb7026f83d7a01727b7f8378f6dc09006d8))
* **api:** api update ([#34](https://github.com/orbcorp/orb-ruby/issues/34)) ([0715c37](https://github.com/orbcorp/orb-ruby/commit/0715c37d2b43883ad1fa57034a0fdcbea489530c))
* **api:** api update ([#37](https://github.com/orbcorp/orb-ruby/issues/37)) ([6da6f31](https://github.com/orbcorp/orb-ruby/commit/6da6f31d8222d929e2a3a7802ec889f8baeaed1e))
* **api:** api update ([#51](https://github.com/orbcorp/orb-ruby/issues/51)) ([14bff7d](https://github.com/orbcorp/orb-ruby/commit/14bff7d43b36bbbb0d81742e1490d7cd41d8c3d0))
* **api:** api update ([#58](https://github.com/orbcorp/orb-ruby/issues/58)) ([154d0d8](https://github.com/orbcorp/orb-ruby/commit/154d0d8ce614713b649e9325c410c5802a25f278))
* **api:** api update ([#64](https://github.com/orbcorp/orb-ruby/issues/64)) ([43a5316](https://github.com/orbcorp/orb-ruby/commit/43a5316f12e891a24c12a6d9fedda57f7cfb2fd5))
* **api:** api update ([#67](https://github.com/orbcorp/orb-ruby/issues/67)) ([9e97c79](https://github.com/orbcorp/orb-ruby/commit/9e97c79cb767c07e65f476095fe6aa4f4b91931d))
* **api:** api update ([#71](https://github.com/orbcorp/orb-ruby/issues/71)) ([112cb35](https://github.com/orbcorp/orb-ruby/commit/112cb3558d8053058459fa79225af3f9464539b6))
* **api:** api update ([#78](https://github.com/orbcorp/orb-ruby/issues/78)) ([f19ffe6](https://github.com/orbcorp/orb-ruby/commit/f19ffe6cd41f6814b1097bf22695766bd4775645))
* **api:** api update ([#87](https://github.com/orbcorp/orb-ruby/issues/87)) ([a7801c3](https://github.com/orbcorp/orb-ruby/commit/a7801c39f518b82232f7987976624533e618395a))
* **api:** api update ([#91](https://github.com/orbcorp/orb-ruby/issues/91)) ([6278f76](https://github.com/orbcorp/orb-ruby/commit/6278f7662c367d4bbb0df3c5c03129d2f76684e1))
* **api:** manual updates ([#1](https://github.com/orbcorp/orb-ruby/issues/1)) ([c5ce652](https://github.com/orbcorp/orb-ruby/commit/c5ce652446cc5db4f7d87b1f9f281e648e7019ec))
* **api:** manual updates ([#204](https://github.com/orbcorp/orb-ruby/issues/204)) ([3ab6edd](https://github.com/orbcorp/orb-ruby/commit/3ab6eddfbde941968ab24354b9c312adc54ddf5a))
* **api:** manual updates ([#95](https://github.com/orbcorp/orb-ruby/issues/95)) ([0b30d81](https://github.com/orbcorp/orb-ruby/commit/0b30d8168d0cc59ff4d16ee0490a61c9257eaf80))
* **api:** manual updates ([#96](https://github.com/orbcorp/orb-ruby/issues/96)) ([34852f6](https://github.com/orbcorp/orb-ruby/commit/34852f6f331edc64694c9cbfba3250f90716f3d8))
* **api:** manual updates ([#99](https://github.com/orbcorp/orb-ruby/issues/99)) ([28da2f4](https://github.com/orbcorp/orb-ruby/commit/28da2f4bbcd4768b06bb7c879f6f645a84f35bd7))
* **api:** remove unsupported params ([bc0ff3a](https://github.com/orbcorp/orb-ruby/commit/bc0ff3a901cf9a790f6bcf5cd5b74fee05e04986))
* **api:** updates ([cf773b5](https://github.com/orbcorp/orb-ruby/commit/cf773b54f507991f83d675eac765882e7b475070))
* **api:** updates ([5a0c078](https://github.com/orbcorp/orb-ruby/commit/5a0c07810335ababdd14e14fc5873267036b8ce5))
* **api:** updates ([71edb4f](https://github.com/orbcorp/orb-ruby/commit/71edb4f4dcafd4c5b3a3ca44c6b403cebfca6c94))
* **api:** updates ([d26936e](https://github.com/orbcorp/orb-ruby/commit/d26936ebdab15ca264facaf1a8118475c7567e44))
* avoid overwriting Ruby class members ([6cc8147](https://github.com/orbcorp/orb-ruby/commit/6cc8147317f23809af06682705c752572084c276))
* basic Ruby pagination support ([15d64b4](https://github.com/orbcorp/orb-ruby/commit/15d64b4fa4fd15ead82b00996c30f737a03e9ed9))
* bundle typing manifests with gem release ([#17](https://github.com/orbcorp/orb-ruby/issues/17)) ([9013287](https://github.com/orbcorp/orb-ruby/commit/9013287a9bf221acf3294c93745a87525bf7485b))
* document Ruby SDK basics ([cd30a25](https://github.com/orbcorp/orb-ruby/commit/cd30a25d9b8c847a3b95743f32e25a83d97e218d))
* handle HTTP errors in Ruby ([11d81db](https://github.com/orbcorp/orb-ruby/commit/11d81dbc47a14233ca28100a567301bce24b7fea))
* initial commit ([647e35c](https://github.com/orbcorp/orb-ruby/commit/647e35ca0153e2226f00b858e4e45a967fe605a8))
* initial commit ([#1](https://github.com/orbcorp/orb-ruby/issues/1)) ([ef4701e](https://github.com/orbcorp/orb-ruby/commit/ef4701ecf8ca4a1b6361796ac9ebf1e6e0879e3c))
* initial commit ([#2](https://github.com/orbcorp/orb-ruby/issues/2)) ([8f144a1](https://github.com/orbcorp/orb-ruby/commit/8f144a12004ae09b742e1848fcc1b5e6844b33dc))
* inline sorbet type aliases ([#11](https://github.com/orbcorp/orb-ruby/issues/11)) ([0f5b2b7](https://github.com/orbcorp/orb-ruby/commit/0f5b2b7c00996b1ff26f516ebafd236e4098cf1e))
* **internal:** modified tests for thread and fiber safety ([#82](https://github.com/orbcorp/orb-ruby/issues/82)) ([38d20f9](https://github.com/orbcorp/orb-ruby/commit/38d20f9675b7b76b6fe1f8396ee9c39f204cd495))
* isolate platform headers ([#75](https://github.com/orbcorp/orb-ruby/issues/75)) ([de4be0b](https://github.com/orbcorp/orb-ruby/commit/de4be0bc02d778bbed6c28a35818343b97c1e17c))
* link response models to their methods in yard doc ([#198](https://github.com/orbcorp/orb-ruby/issues/198)) ([6f6cc29](https://github.com/orbcorp/orb-ruby/commit/6f6cc2972dd0f0863201d4d7642dbec922893364))
* prettier Ruby code ([1849b10](https://github.com/orbcorp/orb-ruby/commit/1849b106a22de8247eaad0520cd03aa00f5cae5c))
* produce unit tests for generated code ([c0075ce](https://github.com/orbcorp/orb-ruby/commit/c0075ceb23efebbb6eaffdf9f0ac5fac764c91a6))
* provide code at less ambiguous paths ([deddf74](https://github.com/orbcorp/orb-ruby/commit/deddf74670653a0ceb929988aceabd4dd42d92cd))
* ruby support for some auth methods ([0e3eb7d](https://github.com/orbcorp/orb-ruby/commit/0e3eb7df13890cb930aabef71d87da268e2391f1))
* support `for item in stream` style iteration on `Stream`s ([#173](https://github.com/orbcorp/orb-ruby/issues/173)) ([9952d9b](https://github.com/orbcorp/orb-ruby/commit/9952d9ba725231af5d33f16c07282689e6c8706d))
* support client level methods ([#122](https://github.com/orbcorp/orb-ruby/issues/122)) ([aab20a5](https://github.com/orbcorp/orb-ruby/commit/aab20a5fac2a97f01ef1dae7d650f339a5202488))
* support jsonl uploads ([#158](https://github.com/orbcorp/orb-ruby/issues/158)) ([f691831](https://github.com/orbcorp/orb-ruby/commit/f691831dd98fecfdfe9874a92bfbe0a780ad212a))
* support overlapping HTTP requests in same Fiber ([#43](https://github.com/orbcorp/orb-ruby/issues/43)) ([484d479](https://github.com/orbcorp/orb-ruby/commit/484d4791d026ba3ce4ae69468217da340d7d57dc))
* use example values in tests ([08f866a](https://github.com/orbcorp/orb-ruby/commit/08f866a942b86395733bd86ee52e37dd0783f3c3))


### Bug Fixes

* better support header parameters ([#83](https://github.com/orbcorp/orb-ruby/issues/83)) ([f6f6527](https://github.com/orbcorp/orb-ruby/commit/f6f652734348bc29ee768847e5dff84d90327ac3))
* **client:** include more detail in error messages ([7b46a84](https://github.com/orbcorp/orb-ruby/commit/7b46a841c02805c5703eb919d62cbcc7d457e2d4))
* enums should only coerce matching symbols into strings ([#149](https://github.com/orbcorp/orb-ruby/issues/149)) ([b536985](https://github.com/orbcorp/orb-ruby/commit/b536985c7a75aa0b4fbb1010be21de4c8ccd42ec))
* fix casing in tests ([#129](https://github.com/orbcorp/orb-ruby/issues/129)) ([9bfc61f](https://github.com/orbcorp/orb-ruby/commit/9bfc61fa21c7eb71f30c15eff7d83b63b345b826))
* **model:** base model should recursively store coerced base models ([#165](https://github.com/orbcorp/orb-ruby/issues/165)) ([c8947df](https://github.com/orbcorp/orb-ruby/commit/c8947dfb03112df6830e38da75a4491962413824))
* pages should be able to accept non-converter models ([#176](https://github.com/orbcorp/orb-ruby/issues/176)) ([7c5f5b3](https://github.com/orbcorp/orb-ruby/commit/7c5f5b3e946b1aa0b6f8b4143962b549c7d2d1a9))
* path interpolation template strings ([#193](https://github.com/orbcorp/orb-ruby/issues/193)) ([27697de](https://github.com/orbcorp/orb-ruby/commit/27697dec9e7ab9af394d81178cb20f84c5c711df))
* remove unreachable properties ([#159](https://github.com/orbcorp/orb-ruby/issues/159)) ([cbb9c65](https://github.com/orbcorp/orb-ruby/commit/cbb9c658a2423962ed14833acee1407dc0fea827))
* rename customer.credits.ledger.create_entry_by_exteral_id and RequestValidationErrors ([3468947](https://github.com/orbcorp/orb-ruby/commit/3468947cbe45a79fac30c05872b8727b4362fef4))
* sorbet request method signatures should support default values ([#8](https://github.com/orbcorp/orb-ruby/issues/8)) ([bf4b221](https://github.com/orbcorp/orb-ruby/commit/bf4b221b22be15d14509309dfb5eb40b767836fc))
* ssl timeout not required when TCP socket open timeout specified ([#44](https://github.com/orbcorp/orb-ruby/issues/44)) ([ac73bab](https://github.com/orbcorp/orb-ruby/commit/ac73bab1e63022180a53d2a73a89369a03f61c8a))
* switch to github compatible markdown engine ([#189](https://github.com/orbcorp/orb-ruby/issues/189)) ([9b80618](https://github.com/orbcorp/orb-ruby/commit/9b80618466b7622fe76b0c54ac3180c81eeaa430))
* temporarily run CI without bundler cache ([#13](https://github.com/orbcorp/orb-ruby/issues/13)) ([2aa75ea](https://github.com/orbcorp/orb-ruby/commit/2aa75ea44a1f340cf16e4394428aba9bf0cd4238))
* update outdated examples ([#5](https://github.com/orbcorp/orb-ruby/issues/5)) ([556a64e](https://github.com/orbcorp/orb-ruby/commit/556a64e95c22472c68c50bdf691a04a69caf2449))


### Chores

* add `[@yieldparam](https://github.com/yieldparam)` to yard doc ([#170](https://github.com/orbcorp/orb-ruby/issues/170)) ([56a1b88](https://github.com/orbcorp/orb-ruby/commit/56a1b88d1e2fb276de42204c57856848758c61b7))
* add `sorbet` section to README ([#117](https://github.com/orbcorp/orb-ruby/issues/117)) ([a12ec56](https://github.com/orbcorp/orb-ruby/commit/a12ec561dba3e21e4d82f572df7b61d9a0bee11e))
* add more examples to README.md ([#118](https://github.com/orbcorp/orb-ruby/issues/118)) ([cbd569f](https://github.com/orbcorp/orb-ruby/commit/cbd569fd6c089834db159fd3aa6791909388c94d))
* **api:** correctly support ExternalCustomerID array filter on Subscriptions.List ([#157](https://github.com/orbcorp/orb-ruby/issues/157)) ([cef6c13](https://github.com/orbcorp/orb-ruby/commit/cef6c13562cc0493c94701350cf8887922a75a3d))
* be consistent and use lower case headers everywhere ([#86](https://github.com/orbcorp/orb-ruby/issues/86)) ([78c0967](https://github.com/orbcorp/orb-ruby/commit/78c0967a9b8db882f6a4d25f21e11e1f19506281))
* better phone number examples ([#127](https://github.com/orbcorp/orb-ruby/issues/127)) ([b13d4f1](https://github.com/orbcorp/orb-ruby/commit/b13d4f15d2e5aecf6a0dc7c670f5679bb61b04e2))
* bump lockfile ([#103](https://github.com/orbcorp/orb-ruby/issues/103)) ([f380e10](https://github.com/orbcorp/orb-ruby/commit/f380e109ef79f0d9c99b627e653f38cd860a1924))
* bump lockfile ([#49](https://github.com/orbcorp/orb-ruby/issues/49)) ([88d992c](https://github.com/orbcorp/orb-ruby/commit/88d992c496e299ccde62cdd2c22d8dcc896c8092))
* clean up client tests ([#47](https://github.com/orbcorp/orb-ruby/issues/47)) ([e4fe1da](https://github.com/orbcorp/orb-ruby/commit/e4fe1da269abde5b827e76d1f03f2424a184b541))
* disable dangerous rubocop auto correct rule ([#180](https://github.com/orbcorp/orb-ruby/issues/180)) ([3c3bb3a](https://github.com/orbcorp/orb-ruby/commit/3c3bb3a26c65f64ce2d89d9f48f8a21e835aa7ee))
* disable overloads in `*.rbs` definitions for readable LSP errors ([#172](https://github.com/orbcorp/orb-ruby/issues/172)) ([834ed6c](https://github.com/orbcorp/orb-ruby/commit/834ed6cbc3404d697279e1dca3bcf2c70865cbb1))
* do not git ignore `bin/` ([#16](https://github.com/orbcorp/orb-ruby/issues/16)) ([898b0e9](https://github.com/orbcorp/orb-ruby/commit/898b0e97a7584d98beb9ab20fc9e417f714e0aa6))
* do not label modules as abstract ([#163](https://github.com/orbcorp/orb-ruby/issues/163)) ([4e07d42](https://github.com/orbcorp/orb-ruby/commit/4e07d429894478220f164f0555d1a8c52eb85ac8))
* document Client's concurrency capability ([#169](https://github.com/orbcorp/orb-ruby/issues/169)) ([46a330f](https://github.com/orbcorp/orb-ruby/commit/46a330fa8054b6cb1998d4270f0b3c854b6bab4d))
* enable full pagination tests ([#32](https://github.com/orbcorp/orb-ruby/issues/32)) ([6737926](https://github.com/orbcorp/orb-ruby/commit/6737926742afc044a7d21f526c2344563964b64d))
* enable full pagination tests ([#41](https://github.com/orbcorp/orb-ruby/issues/41)) ([e405eac](https://github.com/orbcorp/orb-ruby/commit/e405eacaa115401bb9d9fd57310c6bace88ccc9e))
* fix misc rubocop errors ([#192](https://github.com/orbcorp/orb-ruby/issues/192)) ([ab1b0ae](https://github.com/orbcorp/orb-ruby/commit/ab1b0ae8f02df56e14c7f77060099467ea7dab2a))
* formatting change for `*.rbi` files ([#12](https://github.com/orbcorp/orb-ruby/issues/12)) ([c7398b4](https://github.com/orbcorp/orb-ruby/commit/c7398b497fce075904e867216da9807b60bd683f))
* fully qualify `Array` and `Hash` in rbs files to avoid collisions ([#19](https://github.com/orbcorp/orb-ruby/issues/19)) ([f540c15](https://github.com/orbcorp/orb-ruby/commit/f540c15aa4383970aa382e5ecc1306f9deeb8999))
* fused enum should use faster internal iteration by default ([#143](https://github.com/orbcorp/orb-ruby/issues/143)) ([61a812b](https://github.com/orbcorp/orb-ruby/commit/61a812b2730157a6dc987d09018f27991ffd2fc4))
* generate better supported rbi signatures ([#114](https://github.com/orbcorp/orb-ruby/issues/114)) ([86de590](https://github.com/orbcorp/orb-ruby/commit/86de59048ac723badd1ef521c41e28d291c92c0c))
* ignore some spurious linter warnings and formatting changes ([#168](https://github.com/orbcorp/orb-ruby/issues/168)) ([12e5add](https://github.com/orbcorp/orb-ruby/commit/12e5addd51efe24873d016c1f1250892e4cb712a))
* improve documentation ([#144](https://github.com/orbcorp/orb-ruby/issues/144)) ([d8b33bf](https://github.com/orbcorp/orb-ruby/commit/d8b33bf62e9adb4964a3df72dfe05cb12ffed09b))
* improve rbi typedef for page classes ([#154](https://github.com/orbcorp/orb-ruby/issues/154)) ([9336e0e](https://github.com/orbcorp/orb-ruby/commit/9336e0e82ce0b7364ef9bf78f49ff4078077c125))
* improve yard docs readability ([#197](https://github.com/orbcorp/orb-ruby/issues/197)) ([6416b4c](https://github.com/orbcorp/orb-ruby/commit/6416b4c1725c50e22dd7360ce0175651cc7b86fa))
* **internal:** add utils methods for parsing SSE ([#90](https://github.com/orbcorp/orb-ruby/issues/90)) ([a6bfafc](https://github.com/orbcorp/orb-ruby/commit/a6bfafc35cf4be0c4621a8e0450758e129ff51c2))
* **internal:** codegen related update ([#123](https://github.com/orbcorp/orb-ruby/issues/123)) ([d8bbc5d](https://github.com/orbcorp/orb-ruby/commit/d8bbc5d6510f32fd763054051fb08fc2c6877c40))
* **internal:** codegen related update ([#124](https://github.com/orbcorp/orb-ruby/issues/124)) ([10d3e8d](https://github.com/orbcorp/orb-ruby/commit/10d3e8d26ab4fc1c85db51d7349b325eb590a328))
* **internal:** codegen related update ([#125](https://github.com/orbcorp/orb-ruby/issues/125)) ([6d759b9](https://github.com/orbcorp/orb-ruby/commit/6d759b989eb9df6a7355dbb2c724df56133b361f))
* **internal:** codegen related update ([#126](https://github.com/orbcorp/orb-ruby/issues/126)) ([f8b38cf](https://github.com/orbcorp/orb-ruby/commit/f8b38cf0328872c57d4a6e1117bade3583e559df))
* **internal:** codegen related update ([#128](https://github.com/orbcorp/orb-ruby/issues/128)) ([e57b393](https://github.com/orbcorp/orb-ruby/commit/e57b39337b2d272d33ce39fb86b6e57f0f6923b2))
* **internal:** codegen related update ([#132](https://github.com/orbcorp/orb-ruby/issues/132)) ([8aa6855](https://github.com/orbcorp/orb-ruby/commit/8aa6855fec3f537776eff654b8bb25fb0f5f4cdb))
* **internal:** codegen related update ([#133](https://github.com/orbcorp/orb-ruby/issues/133)) ([8ab104c](https://github.com/orbcorp/orb-ruby/commit/8ab104c2d3ec220ca08d1485848157b2f8d7d41c))
* **internal:** codegen related update ([#135](https://github.com/orbcorp/orb-ruby/issues/135)) ([7ba213f](https://github.com/orbcorp/orb-ruby/commit/7ba213f3e0bdaf3c11a1fa948f3ca1fab46d3401))
* **internal:** codegen related update ([#136](https://github.com/orbcorp/orb-ruby/issues/136)) ([753d3e0](https://github.com/orbcorp/orb-ruby/commit/753d3e0af8ffad60472b65ef415791fa48dbcf3e))
* **internal:** codegen related update ([#140](https://github.com/orbcorp/orb-ruby/issues/140)) ([05695ba](https://github.com/orbcorp/orb-ruby/commit/05695ba7c7ddd79f005c39c0ef20448576838d3b))
* **internal:** codegen related update ([#141](https://github.com/orbcorp/orb-ruby/issues/141)) ([6694ee3](https://github.com/orbcorp/orb-ruby/commit/6694ee323d953fa811fe9408b0e0f181042e57e5))
* **internal:** codegen related update ([#145](https://github.com/orbcorp/orb-ruby/issues/145)) ([bf4a13d](https://github.com/orbcorp/orb-ruby/commit/bf4a13d67ec58c4219c70753b6d971042e9a30b6))
* **internal:** codegen related update ([#146](https://github.com/orbcorp/orb-ruby/issues/146)) ([377ba18](https://github.com/orbcorp/orb-ruby/commit/377ba18d6a25623402da4f95385e7ce7a00a7d99))
* **internal:** codegen related update ([#148](https://github.com/orbcorp/orb-ruby/issues/148)) ([71d6e57](https://github.com/orbcorp/orb-ruby/commit/71d6e57d1d6e3eb9abd336079faf7c1f17dcf284))
* **internal:** codegen related update ([#153](https://github.com/orbcorp/orb-ruby/issues/153)) ([c818f87](https://github.com/orbcorp/orb-ruby/commit/c818f87549733d39e9e956844701becfc3f3a854))
* **internal:** codegen related update ([#155](https://github.com/orbcorp/orb-ruby/issues/155)) ([a247ed6](https://github.com/orbcorp/orb-ruby/commit/a247ed6791b6695ee048d0b628630aee7b56dc4a))
* **internal:** codegen related update ([#160](https://github.com/orbcorp/orb-ruby/issues/160)) ([2aa6307](https://github.com/orbcorp/orb-ruby/commit/2aa630745f902c96f14a8c01841548f4e51828cc))
* **internal:** codegen related update ([#164](https://github.com/orbcorp/orb-ruby/issues/164)) ([1a5ea02](https://github.com/orbcorp/orb-ruby/commit/1a5ea02d73218ee3f88ce7bbea7a43f94690d0db))
* **internal:** codegen related update ([#174](https://github.com/orbcorp/orb-ruby/issues/174)) ([cce83b8](https://github.com/orbcorp/orb-ruby/commit/cce83b81eff00a659a11cb54fa9cbd38458e3f49))
* **internal:** codegen related update ([#179](https://github.com/orbcorp/orb-ruby/issues/179)) ([74e96ab](https://github.com/orbcorp/orb-ruby/commit/74e96ab7f97126122c186b194740362282f0e869))
* **internal:** codegen related update ([#18](https://github.com/orbcorp/orb-ruby/issues/18)) ([5c816e5](https://github.com/orbcorp/orb-ruby/commit/5c816e5375edae0fe1603db6771ad1d33300f000))
* **internal:** codegen related update ([#184](https://github.com/orbcorp/orb-ruby/issues/184)) ([d355e2f](https://github.com/orbcorp/orb-ruby/commit/d355e2f954c2bb62b8947b013257ef5d8fa4d5d0))
* **internal:** codegen related update ([#196](https://github.com/orbcorp/orb-ruby/issues/196)) ([d2e04d6](https://github.com/orbcorp/orb-ruby/commit/d2e04d695150fc6253f47f00693f9967a7fa69d4))
* **internal:** codegen related update ([#199](https://github.com/orbcorp/orb-ruby/issues/199)) ([70d35b6](https://github.com/orbcorp/orb-ruby/commit/70d35b67ae45e59e17e3cbc8b490094b5e74ae75))
* **internal:** codegen related update ([#201](https://github.com/orbcorp/orb-ruby/issues/201)) ([641222f](https://github.com/orbcorp/orb-ruby/commit/641222f1f19b2e4d14e7eabe8f9b4ef429fe02e9))
* **internal:** codegen related update ([#23](https://github.com/orbcorp/orb-ruby/issues/23)) ([9d51842](https://github.com/orbcorp/orb-ruby/commit/9d51842021a4fb81bbb51632fbeded034ce57f5f))
* **internal:** codegen related update ([#24](https://github.com/orbcorp/orb-ruby/issues/24)) ([e19f19a](https://github.com/orbcorp/orb-ruby/commit/e19f19a3323b6872c2dd3d497998d2e98f4a63be))
* **internal:** codegen related update ([#28](https://github.com/orbcorp/orb-ruby/issues/28)) ([7f4da2f](https://github.com/orbcorp/orb-ruby/commit/7f4da2fd3864f0c76f97be851b33067f29ca978a))
* **internal:** codegen related update ([#30](https://github.com/orbcorp/orb-ruby/issues/30)) ([72ca1df](https://github.com/orbcorp/orb-ruby/commit/72ca1df63f02354e66becafaaecbe8aacadd6cc0))
* **internal:** codegen related update ([#42](https://github.com/orbcorp/orb-ruby/issues/42)) ([57f6bb8](https://github.com/orbcorp/orb-ruby/commit/57f6bb8b7b59140ca98e947acb9e666c3705179c))
* **internal:** codegen related update ([#55](https://github.com/orbcorp/orb-ruby/issues/55)) ([dc7ec63](https://github.com/orbcorp/orb-ruby/commit/dc7ec63555275bc05f521fb34d42957d391c63a0))
* **internal:** codegen related update ([#56](https://github.com/orbcorp/orb-ruby/issues/56)) ([a0ccf53](https://github.com/orbcorp/orb-ruby/commit/a0ccf53c3a974a42b9c4da02ced2a53cab7c236a))
* **internal:** codegen related update ([#59](https://github.com/orbcorp/orb-ruby/issues/59)) ([0ce0a33](https://github.com/orbcorp/orb-ruby/commit/0ce0a332593e5cdad202108a19b204edc56f199f))
* **internal:** formatting ([#48](https://github.com/orbcorp/orb-ruby/issues/48)) ([aa308dc](https://github.com/orbcorp/orb-ruby/commit/aa308dc953254a22052429577b570e35e1f47ee9))
* **internal:** group related utils together ([#77](https://github.com/orbcorp/orb-ruby/issues/77)) ([54fcc6d](https://github.com/orbcorp/orb-ruby/commit/54fcc6d1298164bad1f5204b1ce35ac4855eab1a))
* **internal:** minor refactoring of utils ([#183](https://github.com/orbcorp/orb-ruby/issues/183)) ([ed6c7f4](https://github.com/orbcorp/orb-ruby/commit/ed6c7f4ffc2cec2001db3e26ece5e1486f6693b5))
* **internal:** prune unused `extern` references ([#70](https://github.com/orbcorp/orb-ruby/issues/70)) ([23383d0](https://github.com/orbcorp/orb-ruby/commit/23383d08702686796a7c0404156412a4a1bee2a5))
* **internal:** version bump ([#100](https://github.com/orbcorp/orb-ruby/issues/100)) ([7e2624c](https://github.com/orbcorp/orb-ruby/commit/7e2624cf392c70714240d9306cfc1b7062a16a33))
* **internal:** version bump ([#106](https://github.com/orbcorp/orb-ruby/issues/106)) ([1b1f479](https://github.com/orbcorp/orb-ruby/commit/1b1f47944c8c5f4c0e126323d9395b0f8a908274))
* **internal:** version bump ([#112](https://github.com/orbcorp/orb-ruby/issues/112)) ([77692ba](https://github.com/orbcorp/orb-ruby/commit/77692ba104bd3007657bb91836c1a568f6894c3a))
* **internal:** version bump ([#120](https://github.com/orbcorp/orb-ruby/issues/120)) ([c1d0f6d](https://github.com/orbcorp/orb-ruby/commit/c1d0f6dbb9760d1ffa6a3a8f7e4fa0aa959ef923))
* **internal:** version bump ([#130](https://github.com/orbcorp/orb-ruby/issues/130)) ([86a7f4d](https://github.com/orbcorp/orb-ruby/commit/86a7f4d3bd6cb7a09cb4a695cd63e4de39fcf3c1))
* **internal:** version bump ([#138](https://github.com/orbcorp/orb-ruby/issues/138)) ([b49ebce](https://github.com/orbcorp/orb-ruby/commit/b49ebcef8096a86e960d906537c4e32701bfa6a1))
* **internal:** version bump ([#14](https://github.com/orbcorp/orb-ruby/issues/14)) ([53cad46](https://github.com/orbcorp/orb-ruby/commit/53cad46583d6ab7a96b2363c571d6f4931ee2009))
* **internal:** version bump ([#150](https://github.com/orbcorp/orb-ruby/issues/150)) ([ab22d74](https://github.com/orbcorp/orb-ruby/commit/ab22d74fe25dd2f2f1f6cc328033bbb6b51a22b1))
* **internal:** version bump ([#166](https://github.com/orbcorp/orb-ruby/issues/166)) ([07a8060](https://github.com/orbcorp/orb-ruby/commit/07a8060f7ee3e39e6eded7a7d651033465e814bd))
* **internal:** version bump ([#177](https://github.com/orbcorp/orb-ruby/issues/177)) ([31b7f94](https://github.com/orbcorp/orb-ruby/commit/31b7f9423c84ab41e9f9baad47142a73a399beb5))
* **internal:** version bump ([#190](https://github.com/orbcorp/orb-ruby/issues/190)) ([6f81049](https://github.com/orbcorp/orb-ruby/commit/6f810496b80fa713e3e51010a603bf7f84916fba))
* **internal:** version bump ([#194](https://github.com/orbcorp/orb-ruby/issues/194)) ([42ffeeb](https://github.com/orbcorp/orb-ruby/commit/42ffeebb1ea9141981bd5a92ad8268db02162d7b))
* **internal:** version bump ([#202](https://github.com/orbcorp/orb-ruby/issues/202)) ([5cab2fc](https://github.com/orbcorp/orb-ruby/commit/5cab2fcd8720e9e786511783fac9b6613ff4efa4))
* **internal:** version bump ([#205](https://github.com/orbcorp/orb-ruby/issues/205)) ([eff998e](https://github.com/orbcorp/orb-ruby/commit/eff998ea9bb85edc4987b45026da06d14b905964))
* **internal:** version bump ([#207](https://github.com/orbcorp/orb-ruby/issues/207)) ([3d17f9a](https://github.com/orbcorp/orb-ruby/commit/3d17f9af06ad6df2eacafe90f6c832325b1205ee))
* **internal:** version bump ([#21](https://github.com/orbcorp/orb-ruby/issues/21)) ([4ac9520](https://github.com/orbcorp/orb-ruby/commit/4ac95206d325d8b337c9273950a2fa3151f239bc))
* **internal:** version bump ([#26](https://github.com/orbcorp/orb-ruby/issues/26)) ([81c72a8](https://github.com/orbcorp/orb-ruby/commit/81c72a8197600340286db64f24e83ef677877fb2))
* **internal:** version bump ([#3](https://github.com/orbcorp/orb-ruby/issues/3)) ([e6ff4d9](https://github.com/orbcorp/orb-ruby/commit/e6ff4d95aa6239c4e1a0c133a754e74ff1b6046d))
* **internal:** version bump ([#35](https://github.com/orbcorp/orb-ruby/issues/35)) ([fe89e0f](https://github.com/orbcorp/orb-ruby/commit/fe89e0f555daf17b12a06cf32eb4c9a32bdb2d7e))
* **internal:** version bump ([#39](https://github.com/orbcorp/orb-ruby/issues/39)) ([1463068](https://github.com/orbcorp/orb-ruby/commit/1463068caddc781d30c3a2cc1bde27ce88555968))
* **internal:** version bump ([#45](https://github.com/orbcorp/orb-ruby/issues/45)) ([779671f](https://github.com/orbcorp/orb-ruby/commit/779671fbeee8a442bc251a889ff58f5d1e239508))
* **internal:** version bump ([#53](https://github.com/orbcorp/orb-ruby/issues/53)) ([452805e](https://github.com/orbcorp/orb-ruby/commit/452805eca635996582a80635e83086206c624ba5))
* **internal:** version bump ([#6](https://github.com/orbcorp/orb-ruby/issues/6)) ([138bb1d](https://github.com/orbcorp/orb-ruby/commit/138bb1d5569d7dcb8eb4b363154ce9751dcd2aaa))
* **internal:** version bump ([#61](https://github.com/orbcorp/orb-ruby/issues/61)) ([c3e9732](https://github.com/orbcorp/orb-ruby/commit/c3e9732c10345bc478045250494e660e9175a461))
* **internal:** version bump ([#65](https://github.com/orbcorp/orb-ruby/issues/65)) ([56e41cc](https://github.com/orbcorp/orb-ruby/commit/56e41cc96efa900c5c259b7a500029ab0d11b43e))
* **internal:** version bump ([#68](https://github.com/orbcorp/orb-ruby/issues/68)) ([a43f80c](https://github.com/orbcorp/orb-ruby/commit/a43f80cc29be1f173c32f7d8dbbc406572ca1eff))
* **internal:** version bump ([#72](https://github.com/orbcorp/orb-ruby/issues/72)) ([c4ef374](https://github.com/orbcorp/orb-ruby/commit/c4ef3746f33dc7f85cc059820829d181698c3c1d))
* **internal:** version bump ([#79](https://github.com/orbcorp/orb-ruby/issues/79)) ([8a2bd26](https://github.com/orbcorp/orb-ruby/commit/8a2bd2684285bdf8102218052da1d00888a3a1e0))
* **internal:** version bump ([#84](https://github.com/orbcorp/orb-ruby/issues/84)) ([1648fb2](https://github.com/orbcorp/orb-ruby/commit/1648fb23ba955f8bcbfec6ce8df9c432ff040595))
* **internal:** version bump ([#88](https://github.com/orbcorp/orb-ruby/issues/88)) ([df38ad4](https://github.com/orbcorp/orb-ruby/commit/df38ad415548918138ae38dc8799755d90e6d5a1))
* **internal:** version bump ([#9](https://github.com/orbcorp/orb-ruby/issues/9)) ([f1ae294](https://github.com/orbcorp/orb-ruby/commit/f1ae2944a6024c512281a6cdfd57bf7502809556))
* **internal:** version bump ([#93](https://github.com/orbcorp/orb-ruby/issues/93)) ([177d1a0](https://github.com/orbcorp/orb-ruby/commit/177d1a066235448daf3956e5c51678480366fe08))
* **internal:** version bump ([#97](https://github.com/orbcorp/orb-ruby/issues/97)) ([8fc7d80](https://github.com/orbcorp/orb-ruby/commit/8fc7d80f454a44404b65beb20ffa202ea7764c1a))
* modify sorbet initializers to better support auto-completion ([#115](https://github.com/orbcorp/orb-ruby/issues/115)) ([5a79d86](https://github.com/orbcorp/orb-ruby/commit/5a79d865b35da4fe71790edb51755455f1b9b8aa))
* more accurate type annotations for SDK internals ([#187](https://github.com/orbcorp/orb-ruby/issues/187)) ([82263d4](https://github.com/orbcorp/orb-ruby/commit/82263d432603b4eab5bccf68d3bad4a6261f4602))
* more readable output when tests fail ([#181](https://github.com/orbcorp/orb-ruby/issues/181)) ([7a67ad5](https://github.com/orbcorp/orb-ruby/commit/7a67ad5d5704aa80b3ea421bc3fc74da6578ae70))
* move examples into tests ([#108](https://github.com/orbcorp/orb-ruby/issues/108)) ([9baac79](https://github.com/orbcorp/orb-ruby/commit/9baac79a26f376344b477da3e107bf0dff63a8cd))
* order client variables by "importance" ([#200](https://github.com/orbcorp/orb-ruby/issues/200)) ([59fb348](https://github.com/orbcorp/orb-ruby/commit/59fb348f33a4379778338d4f1791707713627a1e))
* pagination ([#134](https://github.com/orbcorp/orb-ruby/issues/134)) ([31cf86a](https://github.com/orbcorp/orb-ruby/commit/31cf86ac955ff71962c946fafb887992c97da21f))
* re-order assignment lines to make unions easier to read ([#182](https://github.com/orbcorp/orb-ruby/issues/182)) ([59cb453](https://github.com/orbcorp/orb-ruby/commit/59cb453e59caf5cce7359b8d79484c8c5e6b0892))
* **refactor:** improve requester internals ([#76](https://github.com/orbcorp/orb-ruby/issues/76)) ([e963335](https://github.com/orbcorp/orb-ruby/commit/e96333552205daa37746ac044078dba79c1d29e0))
* relocate internal modules ([#186](https://github.com/orbcorp/orb-ruby/issues/186)) ([b99b677](https://github.com/orbcorp/orb-ruby/commit/b99b6774dc7cbe13100199a2e6905fd3f8168a07))
* remove stale thread local checks ([#152](https://github.com/orbcorp/orb-ruby/issues/152)) ([d884e2c](https://github.com/orbcorp/orb-ruby/commit/d884e2c88219bec03381b0ff352035ee3e64b559))
* remove unnecessary & confusing module ([#185](https://github.com/orbcorp/orb-ruby/issues/185)) ([bab2114](https://github.com/orbcorp/orb-ruby/commit/bab211490857ff8839d09e1321e1346b77450ddc))
* rename internal type aliases ([#50](https://github.com/orbcorp/orb-ruby/issues/50)) ([b621b1e](https://github.com/orbcorp/orb-ruby/commit/b621b1eb87d38087e615be841ddee9da4838db59))
* rename misleading variable ([#104](https://github.com/orbcorp/orb-ruby/issues/104)) ([6ad6413](https://github.com/orbcorp/orb-ruby/commit/6ad641324cb953961c820d2068c139a4fb64f99b))
* reorganize import ordering ([#60](https://github.com/orbcorp/orb-ruby/issues/60)) ([cebf315](https://github.com/orbcorp/orb-ruby/commit/cebf3150cf5a5d8b2fae9a3a2d97462a1b6c9989))
* sdk internal updates ([#156](https://github.com/orbcorp/orb-ruby/issues/156)) ([766979f](https://github.com/orbcorp/orb-ruby/commit/766979f0a51ae1e14820b22f020f0a8962d02de2))
* sort imports via topological dependency & file path ([#63](https://github.com/orbcorp/orb-ruby/issues/63)) ([2cd7ebe](https://github.com/orbcorp/orb-ruby/commit/2cd7ebe627261a7a3ad17187348693ef96321fa1))
* support different EOLs in streaming ([#110](https://github.com/orbcorp/orb-ruby/issues/110)) ([ba6217c](https://github.com/orbcorp/orb-ruby/commit/ba6217c4837051dfe16f4db8fda4f56d476957ba))
* switch away from `attr_accessor` annotations to better match tapioca's compilation ([#38](https://github.com/orbcorp/orb-ruby/issues/38)) ([3241c57](https://github.com/orbcorp/orb-ruby/commit/3241c579fd924c2a4690f8d0d14ebed4567bace4))
* switch to prettier looking sorbet annotations ([#175](https://github.com/orbcorp/orb-ruby/issues/175)) ([1261c0d](https://github.com/orbcorp/orb-ruby/commit/1261c0d2f41e52158e6679eb203e947de24dd7a5))
* update custom timeout header name ([#102](https://github.com/orbcorp/orb-ruby/issues/102)) ([f755b0f](https://github.com/orbcorp/orb-ruby/commit/f755b0fbc2cb5fdc28c039e10201e8ff021a0c46))
* update readme ([#188](https://github.com/orbcorp/orb-ruby/issues/188)) ([4b7b08a](https://github.com/orbcorp/orb-ruby/commit/4b7b08a07bf52b47068ad9fb07ec3043d8de2827))
* use concise syntax for pattern matching ([#29](https://github.com/orbcorp/orb-ruby/issues/29)) ([15f1a0e](https://github.com/orbcorp/orb-ruby/commit/15f1a0ef488b88c0bdde9a92a2f3cd77bf8d7267))
* use generics instead of overloading for sorbet type definitions ([#162](https://github.com/orbcorp/orb-ruby/issues/162)) ([ad323e4](https://github.com/orbcorp/orb-ruby/commit/ad323e451f10cb439257851b59cdb7c5ef5bcd5c))
* use multi-line formatting style for really long lines ([#171](https://github.com/orbcorp/orb-ruby/issues/171)) ([9a8a2f7](https://github.com/orbcorp/orb-ruby/commit/9a8a2f7451daf021b255eddaf0f1388f433ea6f8))
* whitespace changes ([#31](https://github.com/orbcorp/orb-ruby/issues/31)) ([9d4bda7](https://github.com/orbcorp/orb-ruby/commit/9d4bda7d97a19ee063b708ac82d07ce6db247210))


### Documentation

* **readme:** improve example snippets ([92c7892](https://github.com/orbcorp/orb-ruby/commit/92c78921b97b4d6e7155bd8a093bb0d4eac834ae))
* update URLs from stainlessapi.com to stainless.com ([#81](https://github.com/orbcorp/orb-ruby/issues/81)) ([10b05dc](https://github.com/orbcorp/orb-ruby/commit/10b05dc4316417b8eed56fc025544f9e0f341307))

## 0.1.0-alpha.34 (2025-04-02)

Full Changelog: [v0.1.0-alpha.33...v0.1.0-alpha.34](https://github.com/orbcorp/orb-ruby/compare/v0.1.0-alpha.33...v0.1.0-alpha.34)

### Chores

* **internal:** version bump ([#205](https://github.com/orbcorp/orb-ruby/issues/205)) ([eff998e](https://github.com/orbcorp/orb-ruby/commit/eff998ea9bb85edc4987b45026da06d14b905964))

## 0.1.0-alpha.33 (2025-04-02)

Full Changelog: [v0.1.0-alpha.32...v0.1.0-alpha.33](https://github.com/orbcorp/orb-ruby/compare/v0.1.0-alpha.32...v0.1.0-alpha.33)

### Features

* **api:** manual updates ([#204](https://github.com/orbcorp/orb-ruby/issues/204)) ([f84bfec](https://github.com/orbcorp/orb-ruby/commit/f84bfecd675818d145d86039dce348b2dd3a945c))


### Chores

* **internal:** version bump ([#202](https://github.com/orbcorp/orb-ruby/issues/202)) ([1ce7849](https://github.com/orbcorp/orb-ruby/commit/1ce7849036d0aabfba3c3d2f93897f5a851ed1ae))

## 0.1.0-alpha.32 (2025-04-02)

Full Changelog: [v0.1.0-alpha.31...v0.1.0-alpha.32](https://github.com/orbcorp/orb-ruby/compare/v0.1.0-alpha.31...v0.1.0-alpha.32)

### Features

* link response models to their methods in yard doc ([#198](https://github.com/orbcorp/orb-ruby/issues/198)) ([6f6cc29](https://github.com/orbcorp/orb-ruby/commit/6f6cc2972dd0f0863201d4d7642dbec922893364))


### Chores

* improve yard docs readability ([#197](https://github.com/orbcorp/orb-ruby/issues/197)) ([6416b4c](https://github.com/orbcorp/orb-ruby/commit/6416b4c1725c50e22dd7360ce0175651cc7b86fa))
* **internal:** codegen related update ([#196](https://github.com/orbcorp/orb-ruby/issues/196)) ([d2e04d6](https://github.com/orbcorp/orb-ruby/commit/d2e04d695150fc6253f47f00693f9967a7fa69d4))
* **internal:** codegen related update ([#199](https://github.com/orbcorp/orb-ruby/issues/199)) ([70d35b6](https://github.com/orbcorp/orb-ruby/commit/70d35b67ae45e59e17e3cbc8b490094b5e74ae75))
* **internal:** codegen related update ([#201](https://github.com/orbcorp/orb-ruby/issues/201)) ([641222f](https://github.com/orbcorp/orb-ruby/commit/641222f1f19b2e4d14e7eabe8f9b4ef429fe02e9))
* **internal:** version bump ([#194](https://github.com/orbcorp/orb-ruby/issues/194)) ([42ffeeb](https://github.com/orbcorp/orb-ruby/commit/42ffeebb1ea9141981bd5a92ad8268db02162d7b))
* order client variables by "importance" ([#200](https://github.com/orbcorp/orb-ruby/issues/200)) ([59fb348](https://github.com/orbcorp/orb-ruby/commit/59fb348f33a4379778338d4f1791707713627a1e))

## 0.1.0-alpha.31 (2025-04-01)

Full Changelog: [v0.1.0-alpha.30...v0.1.0-alpha.31](https://github.com/orbcorp/orb-ruby/compare/v0.1.0-alpha.30...v0.1.0-alpha.31)

### Bug Fixes

* path interpolation template strings ([#193](https://github.com/orbcorp/orb-ruby/issues/193)) ([d7f8470](https://github.com/orbcorp/orb-ruby/commit/d7f847086456498cf218c449137e88d9b6d2aa64))


### Chores

* fix misc rubocop errors ([#192](https://github.com/orbcorp/orb-ruby/issues/192)) ([9a01dbc](https://github.com/orbcorp/orb-ruby/commit/9a01dbc37ef0e6508ed133d1a7e1891b6883f498))
* **internal:** version bump ([#190](https://github.com/orbcorp/orb-ruby/issues/190)) ([a25b776](https://github.com/orbcorp/orb-ruby/commit/a25b776d48ecb47779a0ec9d57d9047d5b627ed7))

## 0.1.0-alpha.30 (2025-04-01)

Full Changelog: [v0.1.0-alpha.29...v0.1.0-alpha.30](https://github.com/orbcorp/orb-ruby/compare/v0.1.0-alpha.29...v0.1.0-alpha.30)

### Bug Fixes

* switch to github compatible markdown engine ([#189](https://github.com/orbcorp/orb-ruby/issues/189)) ([d7fc30d](https://github.com/orbcorp/orb-ruby/commit/d7fc30ddbf8ff3310c14184dea09dd1c54f29f2d))


### Chores

* disable dangerous rubocop auto correct rule ([#180](https://github.com/orbcorp/orb-ruby/issues/180)) ([0fdaa59](https://github.com/orbcorp/orb-ruby/commit/0fdaa59ee48e9a3e5563c209eb1fc1a4535f5897))
* **internal:** codegen related update ([#179](https://github.com/orbcorp/orb-ruby/issues/179)) ([7946e79](https://github.com/orbcorp/orb-ruby/commit/7946e79a28f9451e9c4bd00d43333734e7f5c4a6))
* **internal:** codegen related update ([#184](https://github.com/orbcorp/orb-ruby/issues/184)) ([ecaf100](https://github.com/orbcorp/orb-ruby/commit/ecaf100bea5029971bcf424a48fe5fe241a433b4))
* **internal:** minor refactoring of utils ([#183](https://github.com/orbcorp/orb-ruby/issues/183)) ([3ac6554](https://github.com/orbcorp/orb-ruby/commit/3ac65546773f869f554233156f4c958b1a1d0810))
* **internal:** version bump ([#177](https://github.com/orbcorp/orb-ruby/issues/177)) ([adbaaa7](https://github.com/orbcorp/orb-ruby/commit/adbaaa7ee0d790f72fa67d6f2b7e5b12ff2314c2))
* more accurate type annotations for SDK internals ([#187](https://github.com/orbcorp/orb-ruby/issues/187)) ([76fc06e](https://github.com/orbcorp/orb-ruby/commit/76fc06e5b6566c63b7521db57089112014b507c3))
* more readable output when tests fail ([#181](https://github.com/orbcorp/orb-ruby/issues/181)) ([8310ee4](https://github.com/orbcorp/orb-ruby/commit/8310ee4c764c7edec013d71b07dac2c6025df5a7))
* re-order assignment lines to make unions easier to read ([#182](https://github.com/orbcorp/orb-ruby/issues/182)) ([384e751](https://github.com/orbcorp/orb-ruby/commit/384e751c5f36eec90e1e31b6a6110abe22ed0890))
* relocate internal modules ([#186](https://github.com/orbcorp/orb-ruby/issues/186)) ([b939695](https://github.com/orbcorp/orb-ruby/commit/b9396955c4ae4b18356218fb1742c6518e3ad37e))
* remove unnecessary & confusing module ([#185](https://github.com/orbcorp/orb-ruby/issues/185)) ([aa3588c](https://github.com/orbcorp/orb-ruby/commit/aa3588c525b6f62bda302bd3ad80228035972448))
* update readme ([#188](https://github.com/orbcorp/orb-ruby/issues/188)) ([6a671ec](https://github.com/orbcorp/orb-ruby/commit/6a671ec91b3f11cd3a7a4e1359d795e8d2fdf22c))

## 0.1.0-alpha.29 (2025-03-21)

Full Changelog: [v0.1.0-alpha.28...v0.1.0-alpha.29](https://github.com/orbcorp/orb-ruby/compare/v0.1.0-alpha.28...v0.1.0-alpha.29)

### ⚠ BREAKING CHANGES

* support `for item in stream` style iteration on `Stream`s ([#173](https://github.com/orbcorp/orb-ruby/issues/173))

### Features

* support `for item in stream` style iteration on `Stream`s ([#173](https://github.com/orbcorp/orb-ruby/issues/173)) ([588fd1d](https://github.com/orbcorp/orb-ruby/commit/588fd1de378ca262b9db8b368386a7aab7b2a36f))


### Bug Fixes

* pages should be able to accept non-converter models ([#176](https://github.com/orbcorp/orb-ruby/issues/176)) ([99b36e2](https://github.com/orbcorp/orb-ruby/commit/99b36e212b42bcc173fb6b37991f4d82731ef507))


### Chores

* add `[@yieldparam](https://github.com/yieldparam)` to yard doc ([#170](https://github.com/orbcorp/orb-ruby/issues/170)) ([b6918c1](https://github.com/orbcorp/orb-ruby/commit/b6918c1152a904e29ce040c5dd2cd5e5cb056191))
* disable overloads in `*.rbs` definitions for readable LSP errors ([#172](https://github.com/orbcorp/orb-ruby/issues/172)) ([44a5b19](https://github.com/orbcorp/orb-ruby/commit/44a5b194dfcbea531ee4bdf63a34008304f9c878))
* document Client's concurrency capability ([#169](https://github.com/orbcorp/orb-ruby/issues/169)) ([99f36ef](https://github.com/orbcorp/orb-ruby/commit/99f36efba8586dae3cde19d103254335142e8341))
* ignore some spurious linter warnings and formatting changes ([#168](https://github.com/orbcorp/orb-ruby/issues/168)) ([0925835](https://github.com/orbcorp/orb-ruby/commit/0925835eceda886f027946a4368ddc534f5c3ce0))
* **internal:** codegen related update ([#174](https://github.com/orbcorp/orb-ruby/issues/174)) ([4b4ddd6](https://github.com/orbcorp/orb-ruby/commit/4b4ddd67f9c8f51e786dd6cd902f0e4677942945))
* **internal:** version bump ([#166](https://github.com/orbcorp/orb-ruby/issues/166)) ([421c2f7](https://github.com/orbcorp/orb-ruby/commit/421c2f770dcb42147266c5630f0919f247d21b9c))
* switch to prettier looking sorbet annotations ([#175](https://github.com/orbcorp/orb-ruby/issues/175)) ([19ab2d6](https://github.com/orbcorp/orb-ruby/commit/19ab2d6ba75461fd1f96598b480932e152407157))
* use multi-line formatting style for really long lines ([#171](https://github.com/orbcorp/orb-ruby/issues/171)) ([7b3ad6e](https://github.com/orbcorp/orb-ruby/commit/7b3ad6e5dbee813dfc0a7f1ea04e01a48e31dd11))

## 0.1.0-alpha.28 (2025-03-18)

Full Changelog: [v0.1.0-alpha.27...v0.1.0-alpha.28](https://github.com/orbcorp/orb-ruby/compare/v0.1.0-alpha.27...v0.1.0-alpha.28)

### ⚠ BREAKING CHANGES

* **model:** base model should recursively store coerced base models ([#165](https://github.com/orbcorp/orb-ruby/issues/165))

### Bug Fixes

* **model:** base model should recursively store coerced base models ([#165](https://github.com/orbcorp/orb-ruby/issues/165)) ([da71413](https://github.com/orbcorp/orb-ruby/commit/da71413184f24adcd89ce5bf302077a29193c14c))


### Chores

* do not label modules as abstract ([#163](https://github.com/orbcorp/orb-ruby/issues/163)) ([ac4e54c](https://github.com/orbcorp/orb-ruby/commit/ac4e54cf7a68dae174ee27b6477fd5d1a6a6b98a))
* **internal:** codegen related update ([#160](https://github.com/orbcorp/orb-ruby/issues/160)) ([2efe526](https://github.com/orbcorp/orb-ruby/commit/2efe526cc8937e1e6c3e334edc1f09ca0b0060d8))
* **internal:** codegen related update ([#164](https://github.com/orbcorp/orb-ruby/issues/164)) ([8b4921d](https://github.com/orbcorp/orb-ruby/commit/8b4921d27329bfbb3d4a27c8105d3dfa963b744d))
* use generics instead of overloading for sorbet type definitions ([#162](https://github.com/orbcorp/orb-ruby/issues/162)) ([9cec19b](https://github.com/orbcorp/orb-ruby/commit/9cec19b1e001799c2b69e68d37405a30d7f85432))

## 0.1.0-alpha.27 (2025-03-14)

Full Changelog: [v0.1.0-alpha.26...v0.1.0-alpha.27](https://github.com/orbcorp/orb-ruby/compare/v0.1.0-alpha.26...v0.1.0-alpha.27)

### ⚠ BREAKING CHANGES

* remove unreachable properties ([#159](https://github.com/orbcorp/orb-ruby/issues/159))

### Features

* support jsonl uploads ([#158](https://github.com/orbcorp/orb-ruby/issues/158)) ([1859c05](https://github.com/orbcorp/orb-ruby/commit/1859c05fc738cd31ca79a550c7d62ec2bb75e8ce))


### Bug Fixes

* remove unreachable properties ([#159](https://github.com/orbcorp/orb-ruby/issues/159)) ([9df3b18](https://github.com/orbcorp/orb-ruby/commit/9df3b182dfdc9182f8b6ea2f9673520f2f9450c1))


### Chores

* **api:** correctly support ExternalCustomerID array filter on Subscriptions.List ([#157](https://github.com/orbcorp/orb-ruby/issues/157)) ([5eac667](https://github.com/orbcorp/orb-ruby/commit/5eac66704bf01cf68e277eee50ae5ee9d62cc730))
* improve rbi typedef for page classes ([#154](https://github.com/orbcorp/orb-ruby/issues/154)) ([bfdeb0d](https://github.com/orbcorp/orb-ruby/commit/bfdeb0d60063461b2e4f1e5357a6d1227dfd47e1))
* **internal:** codegen related update ([#153](https://github.com/orbcorp/orb-ruby/issues/153)) ([9351bfa](https://github.com/orbcorp/orb-ruby/commit/9351bfa48cacf7ee3ba254920d8ba711760b651a))
* **internal:** codegen related update ([#155](https://github.com/orbcorp/orb-ruby/issues/155)) ([e7a9137](https://github.com/orbcorp/orb-ruby/commit/e7a913713378f7fc95c60c0dae1deebc4aafa137))
* **internal:** version bump ([#150](https://github.com/orbcorp/orb-ruby/issues/150)) ([db96109](https://github.com/orbcorp/orb-ruby/commit/db96109a5b6d706f6719f3b07e5478d005dcd394))
* remove stale thread local checks ([#152](https://github.com/orbcorp/orb-ruby/issues/152)) ([ff62da0](https://github.com/orbcorp/orb-ruby/commit/ff62da08426e3d52d7b2b8c602e19c951cf89d8f))
* sdk internal updates ([#156](https://github.com/orbcorp/orb-ruby/issues/156)) ([1c988cb](https://github.com/orbcorp/orb-ruby/commit/1c988cb0b9c9f687ce9ae7dfaf4865bbbe313a5e))

## 0.1.0-alpha.26 (2025-03-12)

Full Changelog: [v0.1.0-alpha.25...v0.1.0-alpha.26](https://github.com/orbcorp/orb-ruby/compare/v0.1.0-alpha.25...v0.1.0-alpha.26)

### Bug Fixes

* enums should only coerce matching symbols into strings ([#149](https://github.com/orbcorp/orb-ruby/issues/149)) ([1de63b1](https://github.com/orbcorp/orb-ruby/commit/1de63b1d39a7747b08b51cf416b5fa3db6a980a1))


### Chores

* fused enum should use faster internal iteration by default ([#143](https://github.com/orbcorp/orb-ruby/issues/143)) ([1e20ed1](https://github.com/orbcorp/orb-ruby/commit/1e20ed147852db214689352294b4818fb76eff00))
* improve documentation ([#144](https://github.com/orbcorp/orb-ruby/issues/144)) ([afa2343](https://github.com/orbcorp/orb-ruby/commit/afa234381c6955219e184aa8c14084cdfa8a072d))
* **internal:** codegen related update ([#140](https://github.com/orbcorp/orb-ruby/issues/140)) ([c7a3c48](https://github.com/orbcorp/orb-ruby/commit/c7a3c48caa6e26c736623c29eaac2466c28083e2))
* **internal:** codegen related update ([#141](https://github.com/orbcorp/orb-ruby/issues/141)) ([6d86b55](https://github.com/orbcorp/orb-ruby/commit/6d86b558ac458e6f560dcd753bfbbe417dc81f76))
* **internal:** codegen related update ([#145](https://github.com/orbcorp/orb-ruby/issues/145)) ([39ef52b](https://github.com/orbcorp/orb-ruby/commit/39ef52b535d1495da3b5717b98cf9ea5cba94eff))
* **internal:** codegen related update ([#146](https://github.com/orbcorp/orb-ruby/issues/146)) ([e26d896](https://github.com/orbcorp/orb-ruby/commit/e26d896ac7e4704a4186e68db3b5784f377e723d))
* **internal:** codegen related update ([#148](https://github.com/orbcorp/orb-ruby/issues/148)) ([d6758f6](https://github.com/orbcorp/orb-ruby/commit/d6758f61a116f2ec4e7b22010b6a99f1ec6b6318))
* **internal:** version bump ([#138](https://github.com/orbcorp/orb-ruby/issues/138)) ([94e3490](https://github.com/orbcorp/orb-ruby/commit/94e34903c66b574ac35cd441625e95bf38c4c710))

## 0.1.0-alpha.25 (2025-03-11)

Full Changelog: [v0.1.0-alpha.24...v0.1.0-alpha.25](https://github.com/orbcorp/orb-ruby/compare/v0.1.0-alpha.24...v0.1.0-alpha.25)

### Features

* **api:** api update ([#137](https://github.com/orbcorp/orb-ruby/issues/137)) ([7f2a33b](https://github.com/orbcorp/orb-ruby/commit/7f2a33b6f4794aefe50733a9867f5be9c1314482))


### Chores

* **internal:** codegen related update ([#132](https://github.com/orbcorp/orb-ruby/issues/132)) ([d86f52b](https://github.com/orbcorp/orb-ruby/commit/d86f52ba1a56416fe826861e19bcebf314287bab))
* **internal:** codegen related update ([#133](https://github.com/orbcorp/orb-ruby/issues/133)) ([55e3ee5](https://github.com/orbcorp/orb-ruby/commit/55e3ee56ef6931491e3da4853bc92bcec4a8ec38))
* **internal:** codegen related update ([#135](https://github.com/orbcorp/orb-ruby/issues/135)) ([4dde2f2](https://github.com/orbcorp/orb-ruby/commit/4dde2f205ea576930473bacad398511a72d23cb5))
* **internal:** codegen related update ([#136](https://github.com/orbcorp/orb-ruby/issues/136)) ([c6b55f4](https://github.com/orbcorp/orb-ruby/commit/c6b55f457aebc74a4edac6bbcd51363c9be88214))
* **internal:** version bump ([#130](https://github.com/orbcorp/orb-ruby/issues/130)) ([a9aff2a](https://github.com/orbcorp/orb-ruby/commit/a9aff2a5177db007f46407a3b76dd8ce35ec46af))
* pagination ([#134](https://github.com/orbcorp/orb-ruby/issues/134)) ([9265d32](https://github.com/orbcorp/orb-ruby/commit/9265d320d1a3e5b4647eff35ec9e3145d59ffea5))

## 0.1.0-alpha.24 (2025-03-11)

Full Changelog: [v0.1.0-alpha.23...v0.1.0-alpha.24](https://github.com/orbcorp/orb-ruby/compare/v0.1.0-alpha.23...v0.1.0-alpha.24)

### Features

* support client level methods ([#122](https://github.com/orbcorp/orb-ruby/issues/122)) ([6b55a65](https://github.com/orbcorp/orb-ruby/commit/6b55a652c0b5e6456c4462d0fe4adcee4dc6445e))


### Bug Fixes

* fix casing in tests ([#129](https://github.com/orbcorp/orb-ruby/issues/129)) ([229b22c](https://github.com/orbcorp/orb-ruby/commit/229b22cd7c2464423c24df52bb3e613a4860d6ce))


### Chores

* better phone number examples ([#127](https://github.com/orbcorp/orb-ruby/issues/127)) ([ba7c288](https://github.com/orbcorp/orb-ruby/commit/ba7c288a8f7fdaf87ad78616086d3528632b07ef))
* **internal:** codegen related update ([#123](https://github.com/orbcorp/orb-ruby/issues/123)) ([b4835ec](https://github.com/orbcorp/orb-ruby/commit/b4835ecf97fa5c665b0a6bf5b31d4892557e1475))
* **internal:** codegen related update ([#124](https://github.com/orbcorp/orb-ruby/issues/124)) ([278685d](https://github.com/orbcorp/orb-ruby/commit/278685d61c77bb43bb17ffa8c2430cf66e13bcf7))
* **internal:** codegen related update ([#125](https://github.com/orbcorp/orb-ruby/issues/125)) ([4c6c880](https://github.com/orbcorp/orb-ruby/commit/4c6c8809f4801174629ee0794162e8d8111eb250))
* **internal:** codegen related update ([#126](https://github.com/orbcorp/orb-ruby/issues/126)) ([354931c](https://github.com/orbcorp/orb-ruby/commit/354931ceb58243c25b6dfb71ef480d093128ce4f))
* **internal:** codegen related update ([#128](https://github.com/orbcorp/orb-ruby/issues/128)) ([7e38127](https://github.com/orbcorp/orb-ruby/commit/7e381278a3814fc508d73a4cf0126e59776fd1f1))
* **internal:** version bump ([#120](https://github.com/orbcorp/orb-ruby/issues/120)) ([95888ac](https://github.com/orbcorp/orb-ruby/commit/95888acba23ab3068b2830fe5abfc046c9ea7dc4))

## 0.1.0-alpha.23 (2025-03-10)

Full Changelog: [v0.1.0-alpha.22...v0.1.0-alpha.23](https://github.com/orbcorp/orb-ruby/compare/v0.1.0-alpha.22...v0.1.0-alpha.23)

### Features

* add SKIP_BREW env var to ./scripts/bootstrap ([#116](https://github.com/orbcorp/orb-ruby/issues/116)) ([13e5aee](https://github.com/orbcorp/orb-ruby/commit/13e5aeefd3b81ab28d68c5b20cfeea50f95615a7))
* **api:** api update ([#119](https://github.com/orbcorp/orb-ruby/issues/119)) ([7e4a750](https://github.com/orbcorp/orb-ruby/commit/7e4a750bfa69726c4fd112f3dce9d4ee8adc1df8))


### Chores

* add `sorbet` section to README ([#117](https://github.com/orbcorp/orb-ruby/issues/117)) ([9b1ea1d](https://github.com/orbcorp/orb-ruby/commit/9b1ea1d610be3cf87332ec4bdab36f1c57f30db9))
* add more examples to README.md ([#118](https://github.com/orbcorp/orb-ruby/issues/118)) ([0420f35](https://github.com/orbcorp/orb-ruby/commit/0420f3533b7548de13162ff194fe1cc78d9fa2de))
* generate better supported rbi signatures ([#114](https://github.com/orbcorp/orb-ruby/issues/114)) ([0c64668](https://github.com/orbcorp/orb-ruby/commit/0c6466871d43ec9bfe380f050f2d7a2267373465))
* **internal:** version bump ([#112](https://github.com/orbcorp/orb-ruby/issues/112)) ([90a1f37](https://github.com/orbcorp/orb-ruby/commit/90a1f37d3fbe4c92126e3a7d6de4aba91dbaf193))
* modify sorbet initializers to better support auto-completion ([#115](https://github.com/orbcorp/orb-ruby/issues/115)) ([cbc6906](https://github.com/orbcorp/orb-ruby/commit/cbc69067aa90231c564ecc3f6cb6076aa1dfd343))

## 0.1.0-alpha.22 (2025-03-07)

Full Changelog: [v0.1.0-alpha.21...v0.1.0-alpha.22](https://github.com/orbcorp/orb-ruby/compare/v0.1.0-alpha.21...v0.1.0-alpha.22)

### Features

* add jsonl support ([#109](https://github.com/orbcorp/orb-ruby/issues/109)) ([4ea2359](https://github.com/orbcorp/orb-ruby/commit/4ea235901520cd3474067b7269ba91dbac18a847))
* **api:** api update ([#111](https://github.com/orbcorp/orb-ruby/issues/111)) ([172e598](https://github.com/orbcorp/orb-ruby/commit/172e5983879cd507a2a31c9c903a1ab244e871dc))


### Chores

* **internal:** version bump ([#106](https://github.com/orbcorp/orb-ruby/issues/106)) ([c5992c6](https://github.com/orbcorp/orb-ruby/commit/c5992c62af1f5438f6845ce242209c69fae268b8))
* move examples into tests ([#108](https://github.com/orbcorp/orb-ruby/issues/108)) ([e6134d2](https://github.com/orbcorp/orb-ruby/commit/e6134d271d4e2949c0c314b79d195ae213dd7aef))
* support different EOLs in streaming ([#110](https://github.com/orbcorp/orb-ruby/issues/110)) ([f87af8c](https://github.com/orbcorp/orb-ruby/commit/f87af8cab1e87b87bb5adfe1cbfb51204f6ee23c))

## 0.1.0-alpha.21 (2025-03-06)

Full Changelog: [v0.1.0-alpha.20...v0.1.0-alpha.21](https://github.com/orbcorp/orb-ruby/compare/v0.1.0-alpha.20...v0.1.0-alpha.21)

### Features

* **api:** api update ([#105](https://github.com/orbcorp/orb-ruby/issues/105)) ([7968ec9](https://github.com/orbcorp/orb-ruby/commit/7968ec90b70b5d3651cb27c8f2ea70b5cf09fd65))


### Chores

* bump lockfile ([#103](https://github.com/orbcorp/orb-ruby/issues/103)) ([1244c07](https://github.com/orbcorp/orb-ruby/commit/1244c07b21d5c1c6753e1f5f1f96ed997ed8b1cc))
* **internal:** version bump ([#100](https://github.com/orbcorp/orb-ruby/issues/100)) ([f7cc952](https://github.com/orbcorp/orb-ruby/commit/f7cc95244aab1e0e7f8f7ccc6f651b7544e54dfb))
* rename misleading variable ([#104](https://github.com/orbcorp/orb-ruby/issues/104)) ([1ce27e9](https://github.com/orbcorp/orb-ruby/commit/1ce27e9467cd10ebeb1ac5b6d8079faeb65867b2))
* update custom timeout header name ([#102](https://github.com/orbcorp/orb-ruby/issues/102)) ([8b2b509](https://github.com/orbcorp/orb-ruby/commit/8b2b509a07bd74385e63fb8a016e5b916e884946))

## 0.1.0-alpha.20 (2025-03-05)

Full Changelog: [v0.1.0-alpha.19...v0.1.0-alpha.20](https://github.com/orbcorp/orb-ruby/compare/v0.1.0-alpha.19...v0.1.0-alpha.20)

### Features

* **api:** manual updates ([#99](https://github.com/orbcorp/orb-ruby/issues/99)) ([abe0ccd](https://github.com/orbcorp/orb-ruby/commit/abe0ccd4fe7215cfc5ea9fa0d72f79d26375e454))


### Chores

* **internal:** version bump ([#97](https://github.com/orbcorp/orb-ruby/issues/97)) ([9d82cdc](https://github.com/orbcorp/orb-ruby/commit/9d82cdcb739548892f695e48673b517762cc59fb))

## 0.1.0-alpha.19 (2025-03-05)

Full Changelog: [v0.1.0-alpha.18...v0.1.0-alpha.19](https://github.com/orbcorp/orb-ruby/compare/v0.1.0-alpha.18...v0.1.0-alpha.19)

### Features

* **api:** manual updates ([#95](https://github.com/orbcorp/orb-ruby/issues/95)) ([d7826fe](https://github.com/orbcorp/orb-ruby/commit/d7826fe2ee1ca27d972194f00849b64bab0b2682))
* **api:** manual updates ([#96](https://github.com/orbcorp/orb-ruby/issues/96)) ([22ac7b8](https://github.com/orbcorp/orb-ruby/commit/22ac7b8781a78616dabf24e804041f8eefc502a8))


### Chores

* **internal:** version bump ([#93](https://github.com/orbcorp/orb-ruby/issues/93)) ([d3c901a](https://github.com/orbcorp/orb-ruby/commit/d3c901a742fa08d9e8d569d80b65395256b1d094))

## 0.1.0-alpha.18 (2025-03-05)

Full Changelog: [v0.1.0-alpha.17...v0.1.0-alpha.18](https://github.com/orbcorp/orb-ruby/compare/v0.1.0-alpha.17...v0.1.0-alpha.18)

### Features

* **api:** api update ([#91](https://github.com/orbcorp/orb-ruby/issues/91)) ([0015e59](https://github.com/orbcorp/orb-ruby/commit/0015e597f3fcfb220c64629ba7d4333fe7c28779))


### Chores

* **internal:** add utils methods for parsing SSE ([#90](https://github.com/orbcorp/orb-ruby/issues/90)) ([bb62fe0](https://github.com/orbcorp/orb-ruby/commit/bb62fe012b79d6282a5e504d64e11034cdb88839))
* **internal:** version bump ([#88](https://github.com/orbcorp/orb-ruby/issues/88)) ([09ec55d](https://github.com/orbcorp/orb-ruby/commit/09ec55da5db443078c7f7fe36f4af348a01979b8))

## 0.1.0-alpha.17 (2025-03-01)

Full Changelog: [v0.1.0-alpha.16...v0.1.0-alpha.17](https://github.com/orbcorp/orb-ruby/compare/v0.1.0-alpha.16...v0.1.0-alpha.17)

### Features

* **api:** api update ([#87](https://github.com/orbcorp/orb-ruby/issues/87)) ([6ff5a68](https://github.com/orbcorp/orb-ruby/commit/6ff5a682d25a1cbb2f6a304170470d9d3dd70d75))


### Chores

* be consistent and use lower case headers everywhere ([#86](https://github.com/orbcorp/orb-ruby/issues/86)) ([5685579](https://github.com/orbcorp/orb-ruby/commit/568557971e59178c9fbc1ff5c652bc877339f99a))
* **internal:** version bump ([#84](https://github.com/orbcorp/orb-ruby/issues/84)) ([dde5ec6](https://github.com/orbcorp/orb-ruby/commit/dde5ec65592643398e1947680317208ebeb3bb8c))

## 0.1.0-alpha.16 (2025-02-28)

Full Changelog: [v0.1.0-alpha.15...v0.1.0-alpha.16](https://github.com/orbcorp/orb-ruby/compare/v0.1.0-alpha.15...v0.1.0-alpha.16)

### Features

* **internal:** modified tests for thread and fiber safety ([#82](https://github.com/orbcorp/orb-ruby/issues/82)) ([a133366](https://github.com/orbcorp/orb-ruby/commit/a13336658840813e03b78c935b37691794213a58))


### Bug Fixes

* better support header parameters ([#83](https://github.com/orbcorp/orb-ruby/issues/83)) ([4ad1f41](https://github.com/orbcorp/orb-ruby/commit/4ad1f41c3238a3d9e089dcfce72079a76868eb1e))


### Chores

* **internal:** version bump ([#79](https://github.com/orbcorp/orb-ruby/issues/79)) ([01fd69a](https://github.com/orbcorp/orb-ruby/commit/01fd69a0b7be1b6b394b9b3c39410d4782382ce3))


### Documentation

* update URLs from stainlessapi.com to stainless.com ([#81](https://github.com/orbcorp/orb-ruby/issues/81)) ([333e153](https://github.com/orbcorp/orb-ruby/commit/333e1539913d5b7e5298e5de7a6574456b5d8975))

## 0.1.0-alpha.15 (2025-02-27)

Full Changelog: [v0.1.0-alpha.14...v0.1.0-alpha.15](https://github.com/orbcorp/orb-ruby/compare/v0.1.0-alpha.14...v0.1.0-alpha.15)

### Features

* add deprecation notice to enum members and resources ([#74](https://github.com/orbcorp/orb-ruby/issues/74)) ([0cecdf1](https://github.com/orbcorp/orb-ruby/commit/0cecdf1e6cf6db440f2054a4eee82de2b90c5f4f))
* **api:** api update ([#78](https://github.com/orbcorp/orb-ruby/issues/78)) ([e26110d](https://github.com/orbcorp/orb-ruby/commit/e26110dc8f300916944fd4dfe1cdeb16eaa4a434))
* isolate platform headers ([#75](https://github.com/orbcorp/orb-ruby/issues/75)) ([eda97ab](https://github.com/orbcorp/orb-ruby/commit/eda97abd0731fef8fdc57ef87b1561994e523cce))


### Chores

* **internal:** group related utils together ([#77](https://github.com/orbcorp/orb-ruby/issues/77)) ([e23b128](https://github.com/orbcorp/orb-ruby/commit/e23b12879de3ef390cc88ab5ef3a623d579a1281))
* **internal:** version bump ([#72](https://github.com/orbcorp/orb-ruby/issues/72)) ([3176998](https://github.com/orbcorp/orb-ruby/commit/3176998d707c6a87564818d1c6d3de33fbc80738))
* **refactor:** improve requester internals ([#76](https://github.com/orbcorp/orb-ruby/issues/76)) ([4a1ea7b](https://github.com/orbcorp/orb-ruby/commit/4a1ea7b11a546d74f1e20d229c43ec30ac58b4c5))

## 0.1.0-alpha.14 (2025-02-25)

Full Changelog: [v0.1.0-alpha.13...v0.1.0-alpha.14](https://github.com/orbcorp/orb-ruby/compare/v0.1.0-alpha.13...v0.1.0-alpha.14)

### Features

* **api:** api update ([#71](https://github.com/orbcorp/orb-ruby/issues/71)) ([764f299](https://github.com/orbcorp/orb-ruby/commit/764f2994cf9b747cd2aff3c1e5a64de106736534))


### Chores

* **internal:** prune unused `extern` references ([#70](https://github.com/orbcorp/orb-ruby/issues/70)) ([4106e51](https://github.com/orbcorp/orb-ruby/commit/4106e51d8e188ca27ebce51e851c2a501a58d3aa))
* **internal:** version bump ([#68](https://github.com/orbcorp/orb-ruby/issues/68)) ([f3ee7c1](https://github.com/orbcorp/orb-ruby/commit/f3ee7c1b71a56d535b20d85e4d092f4c0c5b348b))

## 0.1.0-alpha.13 (2025-02-21)

Full Changelog: [v0.1.0-alpha.12...v0.1.0-alpha.13](https://github.com/orbcorp/orb-ruby/compare/v0.1.0-alpha.12...v0.1.0-alpha.13)

### Features

* **api:** api update ([#67](https://github.com/orbcorp/orb-ruby/issues/67)) ([5c5c429](https://github.com/orbcorp/orb-ruby/commit/5c5c42934b7146ddeb9b33ed8bf95527442ef983))


### Chores

* **internal:** version bump ([#65](https://github.com/orbcorp/orb-ruby/issues/65)) ([546b5c4](https://github.com/orbcorp/orb-ruby/commit/546b5c4ecea2d86738bd9dd2548658ece35358bb))

## 0.1.0-alpha.12 (2025-02-21)

Full Changelog: [v0.1.0-alpha.11...v0.1.0-alpha.12](https://github.com/orbcorp/orb-ruby/compare/v0.1.0-alpha.11...v0.1.0-alpha.12)

### Features

* **api:** api update ([#64](https://github.com/orbcorp/orb-ruby/issues/64)) ([d32e004](https://github.com/orbcorp/orb-ruby/commit/d32e00419803bd61930782859f50c90223688b86))


### Chores

* **internal:** version bump ([#61](https://github.com/orbcorp/orb-ruby/issues/61)) ([e75cd95](https://github.com/orbcorp/orb-ruby/commit/e75cd95f6ad3bd68ae4eeb43a2b3af86664b5d7e))
* sort imports via topological dependency & file path ([#63](https://github.com/orbcorp/orb-ruby/issues/63)) ([ae2296e](https://github.com/orbcorp/orb-ruby/commit/ae2296e987462259283f548724b46200c50cc752))

## 0.1.0-alpha.11 (2025-02-20)

Full Changelog: [v0.1.0-alpha.10...v0.1.0-alpha.11](https://github.com/orbcorp/orb-ruby/compare/v0.1.0-alpha.10...v0.1.0-alpha.11)

### Features

* **api:** api update ([#58](https://github.com/orbcorp/orb-ruby/issues/58)) ([c583464](https://github.com/orbcorp/orb-ruby/commit/c583464a5a4f8b4c5cb5e478d784452300a43976))


### Chores

* **internal:** codegen related update ([#55](https://github.com/orbcorp/orb-ruby/issues/55)) ([b4c2f83](https://github.com/orbcorp/orb-ruby/commit/b4c2f83f13f7728839247370d0302fbbccbe61f4))
* **internal:** codegen related update ([#56](https://github.com/orbcorp/orb-ruby/issues/56)) ([0743711](https://github.com/orbcorp/orb-ruby/commit/0743711518c96c53eb3f048368e438c6d75694a2))
* **internal:** codegen related update ([#59](https://github.com/orbcorp/orb-ruby/issues/59)) ([b543b0e](https://github.com/orbcorp/orb-ruby/commit/b543b0e32f6f249481e163d3571d6b158eaafb95))
* **internal:** version bump ([#53](https://github.com/orbcorp/orb-ruby/issues/53)) ([da269bc](https://github.com/orbcorp/orb-ruby/commit/da269bcc0d4cbe139dca3dc4ad6d4f694e2227af))
* reorganize import ordering ([#60](https://github.com/orbcorp/orb-ruby/issues/60)) ([aee7303](https://github.com/orbcorp/orb-ruby/commit/aee73038273f61eec76466f5630b07f06ba151e7))

## 0.1.0-alpha.10 (2025-02-20)

Full Changelog: [v0.1.0-alpha.9...v0.1.0-alpha.10](https://github.com/orbcorp/orb-ruby/compare/v0.1.0-alpha.9...v0.1.0-alpha.10)

### Features

* **api:** api update ([#51](https://github.com/orbcorp/orb-ruby/issues/51)) ([19b3ac2](https://github.com/orbcorp/orb-ruby/commit/19b3ac2be442d35c0ce83f284f1b8783b237eb32))


### Chores

* bump lockfile ([#49](https://github.com/orbcorp/orb-ruby/issues/49)) ([3a0849b](https://github.com/orbcorp/orb-ruby/commit/3a0849b4d7b9dfa147a020cba70d19199dcd3fab))
* clean up client tests ([#47](https://github.com/orbcorp/orb-ruby/issues/47)) ([809ff79](https://github.com/orbcorp/orb-ruby/commit/809ff79703568188c692a227f3dfff77b9529b94))
* **internal:** formatting ([#48](https://github.com/orbcorp/orb-ruby/issues/48)) ([ad2f4de](https://github.com/orbcorp/orb-ruby/commit/ad2f4de8fd380b7aa46fa9d2d516ab32b3b3b1dc))
* **internal:** version bump ([#45](https://github.com/orbcorp/orb-ruby/issues/45)) ([4206454](https://github.com/orbcorp/orb-ruby/commit/4206454c3173411199eb6167fe53fedc44e58ce5))
* rename internal type aliases ([#50](https://github.com/orbcorp/orb-ruby/issues/50)) ([ffe0640](https://github.com/orbcorp/orb-ruby/commit/ffe0640993d3b9784ec3e97250ec6c02e7899522))

## 0.1.0-alpha.9 (2025-02-18)

Full Changelog: [v0.1.0-alpha.8...v0.1.0-alpha.9](https://github.com/orbcorp/orb-ruby/compare/v0.1.0-alpha.8...v0.1.0-alpha.9)

### Features

* support overlapping HTTP requests in same Fiber ([#43](https://github.com/orbcorp/orb-ruby/issues/43)) ([35549e0](https://github.com/orbcorp/orb-ruby/commit/35549e0240188802f66cab3d0c45573631f8baa7))


### Bug Fixes

* ssl timeout not required when TCP socket open timeout specified ([#44](https://github.com/orbcorp/orb-ruby/issues/44)) ([2734175](https://github.com/orbcorp/orb-ruby/commit/2734175c6c31340d8f6d2d32b41be08dd30249a4))


### Chores

* enable full pagination tests ([#41](https://github.com/orbcorp/orb-ruby/issues/41)) ([e70e98b](https://github.com/orbcorp/orb-ruby/commit/e70e98b41b346edcee0076741f11f8b8a186c33e))
* **internal:** codegen related update ([#42](https://github.com/orbcorp/orb-ruby/issues/42)) ([f34e03e](https://github.com/orbcorp/orb-ruby/commit/f34e03eb511117f21282716401ba8c129d0b15e4))
* **internal:** version bump ([#39](https://github.com/orbcorp/orb-ruby/issues/39)) ([21d40f8](https://github.com/orbcorp/orb-ruby/commit/21d40f8d2177b1ab3e5df755911e39576e4ef11d))

## 0.1.0-alpha.8 (2025-02-15)

Full Changelog: [v0.1.0-alpha.7...v0.1.0-alpha.8](https://github.com/orbcorp/orb-ruby/compare/v0.1.0-alpha.7...v0.1.0-alpha.8)

### Features

* **api:** api update ([#37](https://github.com/orbcorp/orb-ruby/issues/37)) ([2b667fc](https://github.com/orbcorp/orb-ruby/commit/2b667fc67c4b4cfa160e33a7c4dbcae69fc210f5))


### Chores

* **internal:** version bump ([#35](https://github.com/orbcorp/orb-ruby/issues/35)) ([9b1a8f4](https://github.com/orbcorp/orb-ruby/commit/9b1a8f4e71797f83a536ae7aae4ef4322422328d))
* switch away from `attr_accessor` annotations to better match tapioca's compilation ([#38](https://github.com/orbcorp/orb-ruby/issues/38)) ([9173dba](https://github.com/orbcorp/orb-ruby/commit/9173dba60188d34ac9f4f71a40bdb61c7f5705fe))

## 0.1.0-alpha.7 (2025-02-13)

Full Changelog: [v0.1.0-alpha.6...v0.1.0-alpha.7](https://github.com/orbcorp/orb-ruby/compare/v0.1.0-alpha.6...v0.1.0-alpha.7)

### Features

* **api:** api update ([#34](https://github.com/orbcorp/orb-ruby/issues/34)) ([9fad0c4](https://github.com/orbcorp/orb-ruby/commit/9fad0c4f6f7ab7db26866956ad724afcc785297e))


### Chores

* enable full pagination tests ([#32](https://github.com/orbcorp/orb-ruby/issues/32)) ([df07d96](https://github.com/orbcorp/orb-ruby/commit/df07d9620a969672cb6cf34d633a3e4ae6b5f789))
* **internal:** codegen related update ([#28](https://github.com/orbcorp/orb-ruby/issues/28)) ([8d0a108](https://github.com/orbcorp/orb-ruby/commit/8d0a10834d2b8f07f30c117f725c2eaed72f3eb8))
* **internal:** codegen related update ([#30](https://github.com/orbcorp/orb-ruby/issues/30)) ([fc2a760](https://github.com/orbcorp/orb-ruby/commit/fc2a7602ed78b5c13e72e5bfc4484a5d2c2fe56c))
* **internal:** version bump ([#26](https://github.com/orbcorp/orb-ruby/issues/26)) ([91b6be8](https://github.com/orbcorp/orb-ruby/commit/91b6be8a802fde161cb861607c8a1e7259830c3f))
* use concise syntax for pattern matching ([#29](https://github.com/orbcorp/orb-ruby/issues/29)) ([f04c8e3](https://github.com/orbcorp/orb-ruby/commit/f04c8e3ad6e0f52e95877c1ed07df0a592b68f5b))
* whitespace changes ([#31](https://github.com/orbcorp/orb-ruby/issues/31)) ([4d8cd6f](https://github.com/orbcorp/orb-ruby/commit/4d8cd6fa546c909abc40f40167f8c234b9b69057))

## 0.1.0-alpha.6 (2025-02-11)

Full Changelog: [v0.1.0-alpha.5...v0.1.0-alpha.6](https://github.com/orbcorp/orb-ruby/compare/v0.1.0-alpha.5...v0.1.0-alpha.6)

### Features

* **api:** api update ([#25](https://github.com/orbcorp/orb-ruby/issues/25)) ([5b9ccc0](https://github.com/orbcorp/orb-ruby/commit/5b9ccc0cdf609ccf737a5a34c33a401156c14aec))


### Chores

* **internal:** codegen related update ([#23](https://github.com/orbcorp/orb-ruby/issues/23)) ([bc60b57](https://github.com/orbcorp/orb-ruby/commit/bc60b57689b51660c5b740acec4555acb2f045d8))
* **internal:** codegen related update ([#24](https://github.com/orbcorp/orb-ruby/issues/24)) ([6e8da47](https://github.com/orbcorp/orb-ruby/commit/6e8da47d5be16544f8656f1dc3998b7b9deb32fe))
* **internal:** version bump ([#21](https://github.com/orbcorp/orb-ruby/issues/21)) ([a85c7c7](https://github.com/orbcorp/orb-ruby/commit/a85c7c76d45acf6060bbc15097d6b535e36ab6da))

## 0.1.0-alpha.5 (2025-02-07)

Full Changelog: [v0.1.0-alpha.4...v0.1.0-alpha.5](https://github.com/orbcorp/orb-ruby/compare/v0.1.0-alpha.4...v0.1.0-alpha.5)

### Features

* **api:** api update ([#20](https://github.com/orbcorp/orb-ruby/issues/20)) ([42c0f92](https://github.com/orbcorp/orb-ruby/commit/42c0f9247cb57c4d6654b596261612c1a6dafbd0))
* bundle typing manifests with gem release ([#17](https://github.com/orbcorp/orb-ruby/issues/17)) ([68023cc](https://github.com/orbcorp/orb-ruby/commit/68023ccc8969d72343cb78714878f908aa15627a))


### Chores

* do not git ignore `bin/` ([#16](https://github.com/orbcorp/orb-ruby/issues/16)) ([fc125dd](https://github.com/orbcorp/orb-ruby/commit/fc125dd7dc0ba99427bba5779d115d5231c9999c))
* fully qualify `Array` and `Hash` in rbs files to avoid collisions ([#19](https://github.com/orbcorp/orb-ruby/issues/19)) ([291a741](https://github.com/orbcorp/orb-ruby/commit/291a741ba6f569df26328854a3a951502a652fae))
* **internal:** codegen related update ([#18](https://github.com/orbcorp/orb-ruby/issues/18)) ([88b565d](https://github.com/orbcorp/orb-ruby/commit/88b565db466d101670a2951ba881e24304ce633a))
* **internal:** version bump ([#14](https://github.com/orbcorp/orb-ruby/issues/14)) ([338b17a](https://github.com/orbcorp/orb-ruby/commit/338b17ad3c66fa1641fc51860b6845b8606652c5))

## 0.1.0-alpha.4 (2025-02-06)

Full Changelog: [v0.1.0-alpha.3...v0.1.0-alpha.4](https://github.com/orbcorp/orb-ruby/compare/v0.1.0-alpha.3...v0.1.0-alpha.4)

### Features

* inline sorbet type aliases ([#11](https://github.com/orbcorp/orb-ruby/issues/11)) ([6a9e53b](https://github.com/orbcorp/orb-ruby/commit/6a9e53bc2ca595dc364d24344fd4699943185320))


### Bug Fixes

* temporarily run CI without bundler cache ([#13](https://github.com/orbcorp/orb-ruby/issues/13)) ([ea23c80](https://github.com/orbcorp/orb-ruby/commit/ea23c80e845b00492b113262bfe1d0e1cc0d0e89))


### Chores

* formatting change for `*.rbi` files ([#12](https://github.com/orbcorp/orb-ruby/issues/12)) ([cf7f557](https://github.com/orbcorp/orb-ruby/commit/cf7f557bf34c636a7df13c9d38c7be4f1895c24f))
* **internal:** version bump ([#9](https://github.com/orbcorp/orb-ruby/issues/9)) ([87701c3](https://github.com/orbcorp/orb-ruby/commit/87701c374f150d57cc7db255d2b2fed4fe952138))

## 0.1.0-alpha.3 (2025-02-06)

Full Changelog: [v0.1.0-alpha.2...v0.1.0-alpha.3](https://github.com/orbcorp/orb-ruby/compare/v0.1.0-alpha.2...v0.1.0-alpha.3)

### Bug Fixes

* sorbet request method signatures should support default values ([#8](https://github.com/orbcorp/orb-ruby/issues/8)) ([8c16b32](https://github.com/orbcorp/orb-ruby/commit/8c16b3236ef57d2dfec07abc397460a0f8a4abb9))


### Chores

* **internal:** version bump ([#6](https://github.com/orbcorp/orb-ruby/issues/6)) ([c9eff92](https://github.com/orbcorp/orb-ruby/commit/c9eff92e7d797af0922215f92007a5eeefc4219f))

## 0.1.0-alpha.2 (2025-02-06)

Full Changelog: [v0.1.0-alpha.1...v0.1.0-alpha.2](https://github.com/orbcorp/orb-ruby/compare/v0.1.0-alpha.1...v0.1.0-alpha.2)

### Bug Fixes

* update outdated examples ([#5](https://github.com/orbcorp/orb-ruby/issues/5)) ([311b749](https://github.com/orbcorp/orb-ruby/commit/311b749020de437b6434e8af54e88e1b7261daef))


### Chores

* **internal:** version bump ([#3](https://github.com/orbcorp/orb-ruby/issues/3)) ([22794fd](https://github.com/orbcorp/orb-ruby/commit/22794fdb04836b18e1a9e06f507d1b86c907a4c9))

## 0.1.0-alpha.1 (2025-02-06)

Full Changelog: [v0.0.1-alpha.0...v0.1.0-alpha.1](https://github.com/orbcorp/orb-ruby/compare/v0.0.1-alpha.0...v0.1.0-alpha.1)

### Features

* **api:** manual updates ([#1](https://github.com/orbcorp/orb-ruby/issues/1)) ([77ed62a](https://github.com/orbcorp/orb-ruby/commit/77ed62a9e0db52bad066462d12b7a66625d9dd89))
* **api:** remove unsupported params ([bc0ff3a](https://github.com/orbcorp/orb-ruby/commit/bc0ff3a901cf9a790f6bcf5cd5b74fee05e04986))
* **api:** updates ([cf773b5](https://github.com/orbcorp/orb-ruby/commit/cf773b54f507991f83d675eac765882e7b475070))
* **api:** updates ([5a0c078](https://github.com/orbcorp/orb-ruby/commit/5a0c07810335ababdd14e14fc5873267036b8ce5))
* **api:** updates ([71edb4f](https://github.com/orbcorp/orb-ruby/commit/71edb4f4dcafd4c5b3a3ca44c6b403cebfca6c94))
* **api:** updates ([d26936e](https://github.com/orbcorp/orb-ruby/commit/d26936ebdab15ca264facaf1a8118475c7567e44))
* avoid overwriting Ruby class members ([6cc8147](https://github.com/orbcorp/orb-ruby/commit/6cc8147317f23809af06682705c752572084c276))
* basic Ruby pagination support ([15d64b4](https://github.com/orbcorp/orb-ruby/commit/15d64b4fa4fd15ead82b00996c30f737a03e9ed9))
* document Ruby SDK basics ([cd30a25](https://github.com/orbcorp/orb-ruby/commit/cd30a25d9b8c847a3b95743f32e25a83d97e218d))
* handle HTTP errors in Ruby ([11d81db](https://github.com/orbcorp/orb-ruby/commit/11d81dbc47a14233ca28100a567301bce24b7fea))
* initial commit ([647e35c](https://github.com/orbcorp/orb-ruby/commit/647e35ca0153e2226f00b858e4e45a967fe605a8))
* initial commit ([#1](https://github.com/orbcorp/orb-ruby/issues/1)) ([ef4701e](https://github.com/orbcorp/orb-ruby/commit/ef4701ecf8ca4a1b6361796ac9ebf1e6e0879e3c))
* initial commit ([#2](https://github.com/orbcorp/orb-ruby/issues/2)) ([8f144a1](https://github.com/orbcorp/orb-ruby/commit/8f144a12004ae09b742e1848fcc1b5e6844b33dc))
* prettier Ruby code ([1849b10](https://github.com/orbcorp/orb-ruby/commit/1849b106a22de8247eaad0520cd03aa00f5cae5c))
* produce unit tests for generated code ([c0075ce](https://github.com/orbcorp/orb-ruby/commit/c0075ceb23efebbb6eaffdf9f0ac5fac764c91a6))
* provide code at less ambiguous paths ([deddf74](https://github.com/orbcorp/orb-ruby/commit/deddf74670653a0ceb929988aceabd4dd42d92cd))
* ruby support for some auth methods ([0e3eb7d](https://github.com/orbcorp/orb-ruby/commit/0e3eb7df13890cb930aabef71d87da268e2391f1))
* use example values in tests ([08f866a](https://github.com/orbcorp/orb-ruby/commit/08f866a942b86395733bd86ee52e37dd0783f3c3))


### Bug Fixes

* **client:** include more detail in error messages ([7b46a84](https://github.com/orbcorp/orb-ruby/commit/7b46a841c02805c5703eb919d62cbcc7d457e2d4))
* rename customer.credits.ledger.create_entry_by_exteral_id and RequestValidationErrors ([3468947](https://github.com/orbcorp/orb-ruby/commit/3468947cbe45a79fac30c05872b8727b4362fef4))


### Documentation

* **readme:** improve example snippets ([92c7892](https://github.com/orbcorp/orb-ruby/commit/92c78921b97b4d6e7155bd8a093bb0d4eac834ae))

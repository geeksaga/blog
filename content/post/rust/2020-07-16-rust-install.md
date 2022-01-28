---
categories:
- Rust
date: "2020-07-16T00:00:00Z"
description: Rust 프로그래밍 언어 설치
published: true
tags:
- rust
- programming
title: Rust Programming Language install
---

# rustup을 이용하여 Rust 설치하기. 
다음 명령어를 통해 rustup을 먼저 설치 한다.

{{< highlight shell >}}
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
{{< / highlight >}}

이미 설치되어 있는 경우에는 `rust update` 명령어를 통해 최신 버전으로 업데이트 한다.

{{< highlight shell >}}
λ rustup -V
rustup 1.21.1 (7832b2ebe 2019-12-20)

λ rustup update stable
info: syncing channel updates for 'stable-x86_64-unknown-linux-gnu'
info: latest update on 2020-06-18, rust version 1.44.1 (c7087fe00 2020-06-17)
info: downloading component 'rustc'
 60.3 MiB /  60.3 MiB (100 %)  10.7 MiB/s in  5s ETA:  0s
info: downloading component 'rust-std'
 17.7 MiB /  17.7 MiB (100 %)  10.3 MiB/s in  1s ETA:  0s
info: downloading component 'cargo'
info: downloading component 'rust-docs'
 12.2 MiB /  12.2 MiB (100 %)   5.3 MiB/s in  1s ETA:  0s
info: removing previous version of component 'rustc'
info: removing previous version of component 'rust-std'
info: removing previous version of component 'cargo'
info: removing previous version of component 'rust-docs'
info: installing component 'rustc'
 60.3 MiB /  60.3 MiB (100 %)  14.9 MiB/s in  4s ETA:  0s
info: installing component 'rust-std'
info: installing component 'cargo'
info: installing component 'rust-docs'
 12.2 MiB /  12.2 MiB (100 %)   9.1 MiB/s in  1s ETA:  0s

  stable-x86_64-unknown-linux-gnu updated - rustc 1.44.1 (c7087fe00 2020-06-17) (from rustc 1.37.0 (eae3437df 2019-08-13))

info: checking for self-updates
info: downloading self-update
{{< / highlight >}}


현재 기준으로 최신 Stable version은 1.44.1 버전이다. 


설정 및 설치가 잘되었는지 확인 해본다.
{{< highlight shell >}}
λ rustc --version
rustc 1.44.1 (c7087fe00 2020-06-17)
{{< / highlight >}}


첫 번째 rust 프로그램인 hello world를 작성해서 설치 및 설정을 확인해 보자.

WORKSPACE를 하나 만들어 주고 hello.rs 파일을 작성한다.

{{< highlight rust >}}
fn main() {
    println!("Hello, world!");
}
{{< / highlight >}}

`rustc` 명령어를 이용하여 컴파일 할 경우 별도 옵션을 지정하지 않으면 실행 파일 이름은 소스 파일과 동일한 이름으로 만들어진다.

{{< highlight shell >}}
~/workspace/rust_workspace
λ rustc hello.rs 

~/workspace/rust_workspace
λ ll
Permissions Size User   Date Modified Name
.rwxrwxr-x  2.9M geeksaga 16 Jul 16:31  hello
.rw-rw-r--    45 geeksaga 16 Jul 16:31  hello.rs
{{< / highlight >}}

생성된 실행 파일을 실행하면 결과를 볼 수 있다.

{{< highlight shell >}}
λ ./hello    
Hello, world!
{{< / highlight >}}

## 참고 링크

* [Rust Home][1]

[1]: https://www.rust-lang.org/ "Rust Home"
{:target="blank"}

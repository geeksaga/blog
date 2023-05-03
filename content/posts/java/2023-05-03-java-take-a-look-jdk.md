---
comments: true
date: "2023-05-03"
description: JDK 살펴보기
header: null
published: true
tags:
- jdk
- java
title: JDK 살펴보기
toc: true
toc_label: 목록
toc_sticky: true
---

## Java Version
```shell
$> java -version
java version "1.8.0_271"
Java(TM) SE Runtime Environment (build 1.8.0_271-b09)
Java HotSpot(TM) 64-Bit Server VM (build 25.271-b09, mixed mode)
```

## Properties
```shell
$> java -XshowSettings:properties -version
Property settings:
    awt.toolkit = sun.awt.X11.XToolkit
    file.encoding = UTF-8
    file.encoding.pkg = sun.io
    file.separator = /
    java.awt.graphicsenv = sun.awt.X11GraphicsEnvironment
    java.awt.printerjob = sun.print.PSPrinterJob
    java.class.path = .
    java.class.version = 52.0
    java.endorsed.dirs = /opt/java/jdk1.8.0_271_64/jre/lib/endorsed
    java.ext.dirs = /opt/java/jdk1.8.0_271_64/jre/lib/ext
        /usr/java/packages/lib/ext
    java.home = /opt/java/jdk1.8.0_271_64/jre
    java.io.tmpdir = /tmp
    java.library.path = /usr/java/packages/lib/amd64
        /usr/lib64
        /lib64
        /lib
        /usr/lib
    java.runtime.name = Java(TM) SE Runtime Environment
    java.runtime.version = 1.8.0_271-b09
    java.specification.name = Java Platform API Specification
    java.specification.vendor = Oracle Corporation
    java.specification.version = 1.8
    java.vendor = Oracle Corporation
    java.vendor.url = http://java.oracle.com/
    java.vendor.url.bug = http://bugreport.sun.com/bugreport/
    java.version = 1.8.0_271
    java.vm.info = mixed mode
    java.vm.name = Java HotSpot(TM) 64-Bit Server VM
    java.vm.specification.name = Java Virtual Machine Specification
    java.vm.specification.vendor = Oracle Corporation
    java.vm.specification.version = 1.8
    java.vm.vendor = Oracle Corporation
    java.vm.version = 25.271-b09
    line.separator = \n 
    os.arch = amd64
    os.name = Linux
    os.version = 5.15.108-1-MANJARO
    path.separator = :
    sun.arch.data.model = 64
    sun.boot.class.path = /opt/java/jdk1.8.0_271_64/jre/lib/resources.jar
        /opt/java/jdk1.8.0_271_64/jre/lib/rt.jar
        /opt/java/jdk1.8.0_271_64/jre/lib/sunrsasign.jar
        /opt/java/jdk1.8.0_271_64/jre/lib/jsse.jar
        /opt/java/jdk1.8.0_271_64/jre/lib/jce.jar
        /opt/java/jdk1.8.0_271_64/jre/lib/charsets.jar
        /opt/java/jdk1.8.0_271_64/jre/lib/jfr.jar
        /opt/java/jdk1.8.0_271_64/jre/classes
    sun.boot.library.path = /opt/java/jdk1.8.0_271_64/jre/lib/amd64
    sun.cpu.endian = little
    sun.cpu.isalist = 
    sun.io.unicode.encoding = UnicodeLittle
    sun.java.launcher = SUN_STANDARD
    sun.jnu.encoding = UTF-8
    sun.management.compiler = HotSpot 64-Bit Tiered Compilers
    sun.os.patch.level = unknown
    user.country = US
    user.country.format = KR
    user.dir = /home/geeksaga/test
    user.home = /home/geeksaga
    user.language = en
    user.language.format = ko
    user.name = geeksaga
    user.timezone = 

java version "1.8.0_271"
Java(TM) SE Runtime Environment (build 1.8.0_271-b09)
Java HotSpot(TM) 64-Bit Server VM (build 25.271-b09, mixed mode)
```

### java.class.version
<!--
| Java Release | Class Version |
|         ---: |          ---: |
| 5            |            49 |
| 6            |            50 |
-->

| Java Release  |  7 |  8 |  9 | 10 | 11 | 12 | 13 | 14 | 15 | 16 | 17 | 18 | 19 | 20 |
|          ---: |---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| Class Version | 51 | 52 | 53 | 54 | 55 | 56 | 57 | 58 | 59 | 60 | 61 | 62 | 63 | 64 |


## Flags

```shell
$> java -XX:+PrintFlagsFinal -version
[Global flags]
     intx ActiveProcessorCount                      = -1                                  {product}
    uintx AdaptiveSizeDecrementScaleFactor          = 4                                   {product}
    uintx AdaptiveSizeMajorGCDecayTimeScale         = 10                                  {product}
    uintx AdaptiveSizePausePolicy                   = 0                                   {product}
    uintx AdaptiveSizePolicyCollectionCostMargin    = 50                                  {product}
    uintx AdaptiveSizePolicyInitializingSteps       = 20                                  {product}
    uintx AdaptiveSizePolicyOutputInterval          = 0                                   {product}
    uintx AdaptiveSizePolicyWeight                  = 10                                  {product}
    uintx AdaptiveSizeThroughPutPolicy              = 0                                   {product}
    uintx AdaptiveTimeWeight                        = 25                                  {product}
     bool AdjustConcurrency                         = false                               {product}
     bool AggressiveHeap                            = false                               {product}
     bool AggressiveOpts                            = false                               {product}
     ...
     ...
    uintx YoungGenerationSizeIncrement              = 20                                  {product}
    uintx YoungGenerationSizeSupplement             = 80                                  {product}
    uintx YoungGenerationSizeSupplementDecay        = 8                                   {product}
    uintx YoungPLABSize                             = 4096                                {product}
     bool ZeroTLAB                                  = false                               {product}
     intx hashCode                                  = 5                                   {product}
java version "1.8.0_271"
Java(TM) SE Runtime Environment (build 1.8.0_271-b09)
Java HotSpot(TM) 64-Bit Server VM (build 25.271-b09, mixed mode)
```

## 참고링크

* [What Java Version Are You Running? Let’s Take a Look Under the Hood of the JDK!][1]
* [SKDMAN][2]
* [VM Options Explorer][3]

[1]: https://foojay.io/today/what-java-version-are-you-running-lets-take-a-look-under-the-hood-of-the-jdk "foojay.io"
[2]: https://sdkman.io/ "SKDMAN"
[3]: https://chriswhocodes.com/ "VM Options Explorer"

# Swift-DI-Performance-Compare
Compare performance between most popular Swift DI Framework

Результат performance тестов

#|
||


|

Resolver, ms

|

Needle, ms

|

Factory, ms

|

Swinject, ms

||
||

First time resolve

|

**2.526**

|

**5.387**

|

**5000\+**

|

**2.031**

||
||

Avg resolve

|

**0.061**

|

**0.999**

|

**77.138**

|

**0.190**

||
||

1000 resolve

|

**61.203**

|

**998.752**

|

**117.245**

|

**190.354**

||
|#

С кэшированием

#|
||


|

Resolver, ms

|

Needle, ms

|

Factory, ms

|

Swinject, ms

||
||

First time resolve

|

**0.912**

|

**4.466**

|

**102.375**

|

**1.417**

||
||

Avg resolve

|

**0.001**

|

**0.569**

|

**0.105**

|

**0.003**

||
||

1000 resolve

|

**1.341**

|

**569.203**

|

**104.978**

|

**3.097**

||
|#


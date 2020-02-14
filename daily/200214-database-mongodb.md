# 200214 -
# To Day I Learned..
## mongodb

```
show collections
```

#### create database
```
use dss
```
#### check
```
db
```
#### database list check
```
show dbs
```
#### document create
```use dss
db.user.insert(
    {'name':'alice','age':20,'email':'alice@gmail.com'}
)
```

#### delete database
```
db.dropDatabase()
```

#### create Collection
#### name : collection name
#### option 
#### capped : true, max byte
#### autoindex : true, id fild auto index
#### size : number use max size byte
#### max : number, document 
    
#### create user collection

```
db.createCollection("user")
```
#### create user1, user2 collection, with autoindex, max option
```
db.createCollection("user1',{autoindex:true, capped:true,size:500, max:5})

db.createCollection("user2',{autoindex:true, capped:true,size:500, max:5})
```   
#### article collection
```
db.article.insert({'title':'data science','contents':'mongodb'})
```
#### collection list check

```
show collection
```
    

#### collection delete

```
db.user.drop()
```

#### insert db

```
db.user1.insert({'subject':'python','level':3})

db.user1.insert({'subject':'web','level':2})

db.user1.insert({'subject':'sql','level':1})
```

#### insert db2

```
db.user1.insert([
{'subject':'python','level':3},
{'subject':'web','level':2},
{'subject':'sql','level':1},
{'subject':'python','level':3},
{'subject':'web','level':2},
{'subject':'sql','level':1}
])
```

#### insert user2

```
db.user2.insert([
{'subject':'python','level':3},
{'subject':'web','level':2},
{'subject':'sql','level':1},
{'subject':'python','level':3},
{'subject':'web','level':2},
{'subject':'sql','level':1}
])
```

#### insert info

```db.info.insert([
{'subject':'python','level':3},
{'subject':'web','level':2},
{'subject':'sql','level':1},
{'subject':'python','level':3},
{'subject':'web','level':2},
{'subject':'sql','level':1}
])
```

#### delete

```
db.info.remove({level:2})
```

#### find(query, projection)
#### query : where
#### projection : filde, select

```
db.info.find()

db.info.find({'subject':'python'})
```


#### lte = less than equl <=
#### lt = less than <
#### gte = greater than equl >=
#### gr = greater than >

```
db.info..find({'level':{$lte:2}})
```

```
db.info..insert([
    {'subject':'web','level':1},
    {'subject':'sql','level':2},
    {'subject':'java','level':3},
    {'subject':'html','level':1},
    {'subject':'css','level':2}
    ])
```   


#### in

```db.info.find({'subject':{$in:['java','python']}}
)
```

#### $or, $and, $not, $nor

```
db.info.find({$and:[{'subject':'python'},{'level':{$gte:3}}]})

db.info.find({$or:[{'subject':'python'},{'level':{$gte:3}}]})

db.info.find({$nor:[{'subject':'python'},{'level':{$gte:3}}]})
```

#### where
```
db.info.find({$where:'this.level==1'})
```

#### projection

```
db.info.find({}, {'_id' : false, 'level':false})

db.info.find({}, {'subject' : true, 'level':true})

db.info.find({}, {'_id' : false,'subject':true, 'level':true})
```

#### sort

#### asc

```
db.info.find().sort({'level':1})
```

#### desc

```
db.info.find().sort({'level':-1})
```

#### desc + asc

```
db.info.find().sort({'level':-1, 'subject':1})
```

#### limit up to limit

```
db.info.find().limit(3)
```

#### sort $ limit

```
db.info.find().sort({'level':1}).limit(3)
```

#### skip up to skip

```
db.info.find().skip(2)
```

#### sort # skip

```
db.info.find().sort({'level':1}).skip(3)
```

#### update
#### update if data in update not in linsert
#### one update possible
#### multi : true option

```
db.info.update(
    {'subject':'html'},
    {'subject':'sass', 'level':2}
)
```

#### upsert

```
db.info.update(
    {'subject':'less'},
    {'subject':'less','level':2},
    {'upsert':true}
)
```    

#### $set, #unset
#### $set

```
db.info.update(
    {'level':2},
    {$set:{'level':1}},
    {multi:true}
)    
```

#### function

```
var showSkip = function(start){
    return db.info.find().skip(start-1)
}
showSkip(2)
```

# Tomorrow I'll learned
## 엔트로피와 정보이론..
# 🔧understanding how existing scripts in repo work

# 🔧script 1

  ```
 #!/bin/bash      - shebang
 echo "hello, world!"     - printing hello world
 name="vansh"   - taking vansh in variable name
 age=17     -  taking 17 in variable age 

 echo "My name is $name ansd I am $age year old."  - printing name and age
```
![alt text](../images/img36.png)

![alt text](../images/img37.png)
# 🔧 script 2

```
#!/bin/bash        -shebang
a="vansh"           -taking vansh in the variable a
b=40                 -taking 40 in the variable b

if [ $a="vansh" ] && [ $b -gt 18 ]; then      -checking conditions and using an opreator and(&&)
    echo " you are adult "                     - printing you are adult
fi

if [ $a=" akshat" ] && [ $b -lt 18 ]; then       -checking conditions and using an opreator and(&&)
    echo "you are minor"                         - printing you are minor
fi

```
![alt text](../images/img38.png)

![alt text](../images/img39.png)


### 🔧 Q1 what is the purpose of #!/bin/bash at the top of the script

    ans= the shebang line at the top of a script specifies the interpreter that should be used to the run the script.

### 🔧 Q2 how do you make a script executable?
    ans = 1. add the shebang at the top
          2. give permission using the chmod command
          3. run the code.
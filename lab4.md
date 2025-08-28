# Advanced File Linux Commands

---



##  **1. Copy files form one directory to another**

### objetive

copying a data.txt file from a child folder to parent folder using cp command

#  command 

```bash
$ cp childfolder/data.txt parentfolder/
```


# image for the following operation

### mv--Move or rename files

Rename a file

```bash
mv oldname.txt newname.txt
```

Move file to another directory

```bash
### mv file.txt /path/tp/destination/
```

Move and overwrite without prompt

```bash
### mv -f file.txt /destination/
```

---


## **2. File Manipulation Commands**

### **`touch`** – Create or Update File Timestamps

```bash
# Create an empty file
touch file1.txt

# Update timestamp of an existing file
touch existing.txt

# Create multiple files at once
touch file2.txt file3.txt
```

---

### **`mv`** – Move or Rename Files

```bash
# Rename a file
mv oldname.txt newname.txt

# Move file to another directory
mv file.txt /path/to/destination/

# Move and overwrite without prompt
mv -f file.txt /destination/
```

---

### **`rm`** – Remove Files and Directories

```bash
# Remove a file
rm file.txt

# Remove multiple files
rm file1.txt file2.txt

# Remove a directory recursively
rm -r foldername/

# Force remove without prompt
rm -rf foldername/
```

---

### **`cat`** – View or Concatenate Files

```bash
# Display file contents
cat file.txt

# Combine multiple files into one
cat file1.txt file2.txt > combined.txt

# Display file with line numbers
cat -n file.txt
```

---

---

### **`less`** – View File One Page at a Time

```bash
less file.txt
# Navigation inside less:
# Space → next page
# b → previous page
# q → quit
```

---

### **`head`** – Show First Lines of a File

```bash
# First 10 lines (default)
head file.txt

# First 20 lines
head -n 20 file.txt
```

---

### **`tail`** – Show Last Lines of a File

```bash
# Last 10 lines (default)
tail file.txt

# Last 15 lines
tail -n 15 file.txt

# Monitor file changes in real-time
tail -f logfile.txt
```
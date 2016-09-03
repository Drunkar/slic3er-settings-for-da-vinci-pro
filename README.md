# Slic3er settings for Da Vinci Pro

## Installation

### 1. clone

```
git clone https://github.com/Drunkar/slic3er-settings-for-da-vinci-pro.git
```

### 2. rewrite the path of post_processing.pl

```
vi slic3er-settings-for-da-vinci-pro/post_processing.pl
```

example diff

```diff
-post_process = /Path/to/your/directory/slic3er-settings-for-da-vinci-pro/post_processing.pl
+post_process = /Users/Drunkar/slic3er-settings-for-da-vinci-pro/post_processing.pl
```

### 3. load config: File > Load Config
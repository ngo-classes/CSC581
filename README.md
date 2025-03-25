# Miniconda with Tensorflow

A template to support development of containerization learning materials

## Notes:

### Warning
https://github.com/ngo-classes/CSC581/blob/main/README.md
- If you clone into a Windows environment, makes sure that your git is set to keep `LF`:

~~~
git config --global core.autocrlf false
git clone https://github.com/CSC581/interactive_book
~~~

### Building the images

- You should build the images in the following order:
~~~
docker compose build base --no-cache
docker compose build master --no-cache
docker compose build worker --no-cache
~~~

### Pushing the images

~~~
docker compose push base
docker compose push master
docker compose push worker
~~~

### Launching the cluster

- You should launch in the following order:
~~~
docker compose up -d master
docker compose up -d worker
~~~

### Test

- Access the VSCode server via http://127.0.0.1:18088/
    - Password is **goldenrams** 

### Build mkdocs server (for instructor)

`mkdocs serve --dev-addr=0.0.0.0:18000` to support external view of mkdocs

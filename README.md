### HTTP hello world example

1. Build

    ```
    sudo docker build -t <image-name> .
    ```

    e.g.
    ```
    sudo docker build -t http-helloworld:v1.0.0 .
    ```

2. Run

    ```
    sudo docker run -p 8080:80 --name helloworld <image-name>
    ```

    e.g.

    ```
    sudo docker run -p 8080:80 --name helloworld http-helloworld:v1.0.0
    ```

3. Browse http://localhost:8080

---

Stop

```
sudo docker stop helloworld
```

Remove

```
sudo docker rm helloworld
```

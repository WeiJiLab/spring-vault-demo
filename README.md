# spring-vault-demo

* [环境搭建](./docs/environment.md)

```shell
docker-compose up -d
```

## vault使用

- 启动项目
  - 编译项目
  ```shell
  ./gradlew build
  ```
  - 运行项目
  ```shell
  ./gradlew bootRun
  ```
  - 

- 报错，执行脚本插入正确的用户名密码
```shell
./script/vault/put_mysql_credentials_id_true.sh
```
  - 可以访问业务数据
  ```shell
  ./script/employees/find_all_employees.sh
  ./script/employees/find_employees_with_id.sh
  ```
- 更新密码为错误的数据，再次启动项目，会报错
```shell
./script/vault/put_mysql_credentials_id_false.sh
```


### UI访问
访问： http://127.0.0.1:8200/

### key-value

- 写入route
    - 注意： value为写入的路由 
      ```shell
      vault secrets enable -version=1 -path value kv
      ```
    - eg: 
      ```shell
      vault secrets enable -version=1 -path transit/encrypt/my-key kv
      ```
    
